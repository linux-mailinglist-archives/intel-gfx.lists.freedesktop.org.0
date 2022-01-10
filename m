Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386E8489E83
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 18:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD31D112D20;
	Mon, 10 Jan 2022 17:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67589112D44
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 17:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641836317; x=1673372317;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DWPZuMth+MIE1cAaW/Lz+OiONq1rD6InuNNGj+Be908=;
 b=Gx5N6SLK1IQP2WulIsChOO0LbNhvdaUDzTaY1GlIp5OAsUKez/nBXZis
 FzQFp39ys+j+9WBjj7VZYrTXsRECrF3zUvYgES/rwGDr2/4gePhPhfTEd
 m6ffkLzgefkLD8LFChoChG2RYKogHh0Uj6G6QksHoRhoAAuFBq3miR1Pj
 KuxJhz+KPH+2FUNVGxVpN331is9nE78eRq5ho6VrULnbB1StPF4MFR8hJ
 nVfF7ZWkTrQiNPcUVL135k3D2tBP70xGXceWjNTbsFnHC5+6I1HeLtOGx
 lRTKmqe8chdYSJJeEsiwHvC8Zdr/j5WwblE46JS436dT8L08kkTtqiJUC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="306634907"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="306634907"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 09:37:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="528361329"
Received: from ryanjor-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.36.174])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 09:37:09 -0800
Date: Mon, 10 Jan 2022 12:37:08 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <YdxuxIx7X8mncC/D@intel.com>
References: <YdxoyHIYssuJjN4w@intel.com>
 <20220110173211.GA61717@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220110173211.GA61717@bhelgaas>
Subject: Re: [Intel-gfx] [PATCH v3 3/3] x86/quirks: Fix stolen detection
 with integrated + discrete GPU
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: x86@kernel.org, linux-pci@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 10, 2022 at 11:32:11AM -0600, Bjorn Helgaas wrote:
> On Mon, Jan 10, 2022 at 12:11:36PM -0500, Rodrigo Vivi wrote:
> > On Fri, Jan 07, 2022 at 08:57:32PM -0600, Bjorn Helgaas wrote:
> > > On Fri, Jan 07, 2022 at 01:05:16PM -0800, Lucas De Marchi wrote:
> > > > early_pci_scan_bus() does a depth-first traversal, possibly calling
> > > > the quirk functions for each device based on vendor, device and class
> > > > from early_qrk table. intel_graphics_quirks() however uses PCI_ANY_ID
> > > > and does additional filtering in the quirk.
> > > > 
> > > > If there is an Intel integrated + discrete GPU the quirk may be called
> > > > first for the discrete GPU based on the PCI topology. Then we will fail
> > > > to reserve the system stolen memory for the integrated GPU, because we
> > > > will already have marked the quirk as "applied".
> > > > 
> > > > This was reproduced in a setup with Alderlake-P (integrated) + DG2
> > > > (discrete), with the following PCI topology:
> > > > 
> > > > 	- 00:01.0 Bridge
> > > > 	  `- 03:00.0 DG2
> > > > 	- 00:02.0 Integrated GPU
> > > > 
> > > > Move the setting of quirk_applied in intel_graphics_quirks() so it's
> > > > mark as applied only when we find the integrated GPU based on the
> > > > intel_early_ids table.
> > > > 
> > > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > 
> > > I don't know the details of stolen memory, but the implementation of
> > > this quirk looks good to me.  Very nice that it's now very clear
> > > exactly what the change is.
> > 
> > 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > 
> > Bjorn, ack to merge through drm-intel?
> 
> This is a bit of a shared area between the x86 folks and me, but
> certainly no objection from me.

Lucas brought a good point about patch 1 touching more stuff than i915 one,
so to minimize conflicts maybe the x86 tree would be better...
also works for us if you prefer.

> 
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> 
> > > > ---
> > > > 
> > > > v3: now that we do the refactor before the fix, we can do a single line
> > > > change to fix intel_graphics_quirks(). Also, we don't change
> > > > intel_graphics_stolen() anymore as we did in v2: we don't have to check
> > > > other devices anymore if there was a previous match causing
> > > > intel_graphics_stolen() to be called (there can only be one integrated
> > > > GPU reserving the stolen memory).
> > > > 
> > > >  arch/x86/kernel/early-quirks.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> > > > index df34963e23bf..932f9087c324 100644
> > > > --- a/arch/x86/kernel/early-quirks.c
> > > > +++ b/arch/x86/kernel/early-quirks.c
> > > > @@ -609,8 +609,6 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
> > > >  	if (quirk_applied)
> > > >  		return;
> > > >  
> > > > -	quirk_applied = true;
> > > > -
> > > >  	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
> > > >  
> > > >  	for (i = 0; i < ARRAY_SIZE(intel_early_ids); i++) {
> > > > @@ -623,6 +621,8 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
> > > >  
> > > >  		intel_graphics_stolen(num, slot, func, early_ops);
> > > >  
> > > > +		quirk_applied = true;
> > > > +
> > > >  		return;
> > > >  	}
> > > >  }
> > > > -- 
> > > > 2.34.1
> > > > 
