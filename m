Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB4C82C296
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 16:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F7110E037;
	Fri, 12 Jan 2024 15:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6CF410E037
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 15:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705072350; x=1736608350;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ej020eyCCReh/IubVw6U+7IrpQLHxqwqiFm8KagH1x4=;
 b=EGZL9frcdJGEwTwJadA1yUZEJAPnCBsXkesIzxAMJugxKbCpPhLkH4h0
 s5A+pb5U6SvoIeELWXBxW0Ls3PuY0GbTIF01TgBEmcN1LF/glJhpp2/GA
 xrqwuz+gn1Q88peHnjVrHxxS0DWbZBaclLwXEpAmIaNCJYWm2jpgoJNIe
 7Hv5E58DFJwo7Fmy7QwOc3l/cgY8yaJbz7NROe6U1Zs6NHgzpD7kPTAHA
 r2v0QPRrM/8i+geewmOwld3nrj7wH9EruFe2KBUaYqOmJjCxXMJ0WaK/4
 T2AtKUWBY40RTXem0j4aV7i0MFKjupasPcaOeQKu5zDtRcvAf8calerbH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="5960173"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; 
   d="scan'208";a="5960173"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 07:12:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="776026071"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="776026071"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Jan 2024 07:12:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jan 2024 17:12:25 +0200
Date: Fri, 12 Jan 2024 17:12:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Subject: Re: [PATCH v2 04/15] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
 stolen memory access
Message-ID: <ZaFW2arHcLdDLTK-@intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-5-ville.syrjala@linux.intel.com>
 <b266f56d-ddad-4836-b888-800c213e842f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b266f56d-ddad-4836-b888-800c213e842f@linux.intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 10, 2024 at 11:49:47AM +0100, Nirmoy Das wrote:
> Hi Ville,
> 
> Apologies, but I lost track of this series after I returned from sick leave.
> 
> 
> On 12/15/2023 11:59 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > On MTL accessing stolen memory via the BARs is somehow borked,
> > and it can hang the machine. As a workaround let's bypass the
> > BARs and just go straight to DSMBASE/GSMBASE instead.
> >
> > Note that on every other platform this itself would hang the
> > machine, but on MTL the system firmware is expected to relax
> > the access permission guarding stolen memory to enable this
> > workaround, and thus direct CPU accesses should be fine.
> >
> > TODO: add w/a numbers and whatnot
> >
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Cc: Nirmoy Das <nirmoy.das@intel.com>
> > Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
> >   drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
> >   2 files changed, 22 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > index ee237043c302..252fe5cd6ede 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
> >   		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
> >   	}
> >   
> > -	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> > +	if (IS_METEORLAKE(i915)) {
> > +		/*
> > +		 * Workaround: access via BAR can hang MTL, go directly to DSM.
> > +		 *
> > +		 * Normally this would not work but on MTL the system firmware
> > +		 * should have relaxed the access permissions sufficiently.
> > +		 */
> > +		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> > +		io_size = dsm_size;
> 
> This will work well on host driver but I am afraid this will not work on 
> VM when someone tries to do direct device assignment of the igfx.
> 
> GSMBASE/DSMBASE is reserved region so won't show up in VM, last I checked.

Hmm. So BARs get passed over but other regions won't be? I wonder if
there's a way to pass them explicitly...

> 
> This is an obscure usages but are we suppose to support that? If so then 
> we need to detect that and fall back to binder approach.

I suppose some people may attempt it. But I'm not sure how well that
will work in practice even on other platforms. I don't think we've
ever really considered that use case any kind of priority so bug
reports tend to go unanswered.

My main worry with the MI_UPDATE_GTT stuff is:
- only used on this one platform so very limited testing coverage
- async so more opprtunities to screw things up
- what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
  to finish?
- requires working command submission, so even getting a working
  display now depends on a lot more extra components working correctly

hence the patch to disable it. During testing my MTL was very unstable
so I wanted to eliminate all potential sources of new bugs.

Hmm. But we can't even use MI_UPDATE_GTT until command submission is
up and running, so we still need the direct CPU path for early ggtt
setup no? So if we can't pass the stolen directly to the VM the only
option would be to use the BARs for that and risk hanging the machine.

-- 
Ville Syrjälä
Intel
