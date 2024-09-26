Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA43698769B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 17:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D4A10E320;
	Thu, 26 Sep 2024 15:36:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZBOSsLc6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A7110E320
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 15:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727364978; x=1758900978;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iH5NKtPl+sVwvJSTAprOedM3IxW5u+ld2hMpbYFJy78=;
 b=ZBOSsLc6jY2I9B2GBuh+nrRbqQCUtlRxfkN9ZeBm2UhKg+BhqD4nVUZH
 AKRNARik7aitCtuUVDgdj8/uPSBLVGr0oD0eN1T6U5Ogn7kqDYGOhkto7
 /b5tQGudtaQPWkLlSachSdoVjMRvebUsX1ja6YBAjHCyf91va/pwMDUfr
 LBAYvxbSXEg3rb5nRC+6y0TU7wqmvwzcayfkFux0Q0gyKqs3WwWNB2LW0
 vz9eAg8Mt8TxpUnFom1va5c/g9CDcXQIPsx3DgXsWfTutqj25M4vPXhDs
 7+/HSUDx2g9oGo63BPHe+S+hNW/MT3oyDCXVx8M7o3Sz6jZLQcqwT+FaI Q==;
X-CSE-ConnectionGUID: iyxi4nbCSwSy2NjMZDiQLQ==
X-CSE-MsgGUID: wKAF7DDESCWjr5XCh72z3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26343522"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="26343522"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 08:36:17 -0700
X-CSE-ConnectionGUID: NwHverycQ2WPkRO0v6+dqA==
X-CSE-MsgGUID: en3z69NcSbqUtRb3s27lxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72347893"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 08:36:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2024 18:36:13 +0300
Date: Thu, 26 Sep 2024 18:36:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 5/6] drm/i915/pm: Do pci_restore_state() in switcheroo
 resume hook
Message-ID: <ZvV_bdAIYcVQVold@intel.com>
References: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
 <20240925144526.2482-6-ville.syrjala@linux.intel.com>
 <ZvV0STiWx6xyIE0E@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvV0STiWx6xyIE0E@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 26, 2024 at 10:48:41AM -0400, Rodrigo Vivi wrote:
> On Wed, Sep 25, 2024 at 05:45:25PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Since this switcheroo stuff bypasses all the core pm we
> > have to manually manage the pci state. To that end add the
> > missing pci_restore_state() to the switcheroo resume hook.
> > We already have the pci_save_state() counterpart on the
> > suspend side.
> > 
> > I suppose this might not matter in practice as the
> > integrated GPU probably won't lose any state in D3,
> > and I presume there are no machines where this code
> > would come into play with an Intel discrete GPU.
> > 
> > Arguably none of this code should exist in the driver
> > in the first place, and instead the entire switcheroo
> > mechanism should be rewritten and properly integrated into
> > core pm code...
> > 
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: linux-pci@vger.kernel.org
> > Cc: intel-gfx@lists.freedesktop.org
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index fe7c34045794..c3e7225ea1ba 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1311,6 +1311,8 @@ int i915_driver_resume_switcheroo(struct drm_i915_private *i915)
> >  	if (ret)
> >  		return ret;
> >  
> > +	pci_restore_state(pdev);
> 
> then why not simply call that inside the resume, for a better alignment
> with the save counterpart?

This is switcheroo resume. And the counterpart is in switcheroo suspend.

For the core pm hooks I'm getting rid of both save and restore.

> 
> > +
> >  	ret = i915_drm_resume_early(&i915->drm);
> >  	if (ret)
> >  		return ret;
> > -- 
> > 2.44.2
> > 

-- 
Ville Syrjälä
Intel
