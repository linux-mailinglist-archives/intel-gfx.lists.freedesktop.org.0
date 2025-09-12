Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BBBB54E92
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 14:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B6A10EC3F;
	Fri, 12 Sep 2025 12:56:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iVBZRbRy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5993810EC46
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 12:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757681780; x=1789217780;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oJ7lpTVpvUa6P/2zoJ0q+fqaUv0E1vSTZfAueO0YyWQ=;
 b=iVBZRbRypmwLqGrmS4VvB1iRg70l1mmGNOokx+3bqlZGlg6vTxd2s7Rz
 ADZoxMV15yQJnJiQ2tb/lh8vhKJ3LOzPa+elHo+3oOhKQtaMFGbbp9KLc
 5zlfkGAb9bF11EC+aThBr8+URu8bRHlHkA3+g+oMpMYBFBYYfLS3v8yCD
 kozfS0LoiNm9XBCzUvjfO8FLcCMMsKzfXfK1To8sepq3FkWCeFyxmsVd+
 Z+kSLWSa+ApOEUcUdPriMO/lt1Dt1hbclkqSMdR4Uhal+QRiVcx5p3+w9
 8uJDi7nFU8hf63fEI0C4GXa3eH1/ViPENNCf/dI2ipAkxuwjEZhxBOxR0 A==;
X-CSE-ConnectionGUID: Gbd9Tpk8TImtTONjXjLw8w==
X-CSE-MsgGUID: /lYdGyWJR36XMjDKwaI8sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63848517"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63848517"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 05:56:20 -0700
X-CSE-ConnectionGUID: 5tHtWTUaSFW0+a2BxnYHcw==
X-CSE-MsgGUID: 6iJVeUbcT6G1RR2CaXlNrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="179134983"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.171])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 05:56:18 -0700
Date: Fri, 12 Sep 2025 15:56:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/6] drm/i915/pm: Drop redundant pci stuff from
 suspend/resume paths
Message-ID: <aMQYcPE73nEgx1ZN@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-7-ville.syrjala@linux.intel.com>
 <8507920a2e7ffc94fb6ad71fb2b7c35191ae176d.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8507920a2e7ffc94fb6ad71fb2b7c35191ae176d.camel@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Sep 12, 2025 at 09:44:15AM +0000, Hogander, Jouni wrote:
> On Tue, 2025-03-11 at 21:56 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > I don't think there should be any need for us to call any of
> > pci_enable_device(), pci_disable_device() or pci_set_master()
> > from the suspend/resume paths. The config space save/restore should
> > take care of all of this.
> 
> I couldn't find out what save/restore you are referring here. At least
> driver/pci isn't doing these in it's suspend/resume paths. Can you
> please point me out?

The save/restore of config space. IIRC the io, mem, and
busmaster enable bits all live in the pci command register.

> 
> BR,
> 
> Jouni Högander
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 31 ----------------------------
> > --
> >  1 file changed, 31 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index 503f1b6b694f..d3d1b2d082dd 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1092,7 +1092,6 @@ static int i915_drm_suspend_late(struct
> > drm_device *dev, bool hibernation)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(dev);
> >  	struct intel_display *display = &dev_priv->display;
> > -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> >  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> >  	struct intel_gt *gt;
> >  	int ret, i;
> > @@ -1113,21 +1112,10 @@ static int i915_drm_suspend_late(struct
> > drm_device *dev, bool hibernation)
> >  	if (ret) {
> >  		drm_err(&dev_priv->drm, "Suspend complete failed:
> > %d\n", ret);
> >  		intel_display_power_resume_early(display);
> > -
> > -		goto fail;
> >  	}
> >  
> >  	enable_rpm_wakeref_asserts(rpm);
> >  
> > -	if (!dev_priv->uncore.user_forcewake_count)
> > -		intel_runtime_pm_driver_release(rpm);
> > -
> > -	pci_disable_device(pdev);
> > -
> > -	return 0;
> > -
> > -fail:
> > -	enable_rpm_wakeref_asserts(rpm);
> >  	if (!dev_priv->uncore.user_forcewake_count)
> >  		intel_runtime_pm_driver_release(rpm);
> >  
> > @@ -1278,7 +1266,6 @@ static int i915_drm_resume_early(struct
> > drm_device *dev)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(dev);
> >  	struct intel_display *display = &dev_priv->display;
> > -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> >  	struct intel_gt *gt;
> >  	int ret, i;
> >  
> > @@ -1292,24 +1279,6 @@ static int i915_drm_resume_early(struct
> > drm_device *dev)
> >  	 * similar so that power domains can be employed.
> >  	 */
> >  
> > -	/*
> > -	 * Note that pci_enable_device() first enables any parent
> > bridge
> > -	 * device and only then sets the power state for this
> > device. The
> > -	 * bridge enabling is a nop though, since bridge devices are
> > resumed
> > -	 * first. The order of enabling power and enabling the
> > device is
> > -	 * imposed by the PCI core as described above, so here we
> > preserve the
> > -	 * same order for the freeze/thaw phases.
> > -	 *
> > -	 * TODO: eventually we should remove pci_disable_device() /
> > -	 * pci_enable_enable_device() from suspend/resume. Due to
> > how they
> > -	 * depend on the device enable refcount we can't anyway
> > depend on them
> > -	 * disabling/enabling the device.
> > -	 */
> > -	if (pci_enable_device(pdev))
> > -		return -EIO;
> > -
> > -	pci_set_master(pdev);
> > -
> >  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> >  
> >  	ret = vlv_resume_prepare(dev_priv, false);
> 

-- 
Ville Syrjälä
Intel
