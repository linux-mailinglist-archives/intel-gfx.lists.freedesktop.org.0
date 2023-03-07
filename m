Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC4D6AF835
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 23:06:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F6010E14B;
	Tue,  7 Mar 2023 22:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBAB510E14B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 22:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678226776; x=1709762776;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ST9lNTBe/5fOcBi5UK3ZaZUfB9IhYCQv/nGC2GRGDK4=;
 b=gmtEPODk90DqK3nDIq3iJXrWda8aQrgs2j68X8iCXHsyjJvpX2dRnbVh
 q0V8r5CE+V6FFd/WIClQLNBsRCPkt/hC/+YkRUiJl9NWuiKkmSANKPlhk
 DLF1XDuRneM5mCpFCsJup9V8lG73CCHlt4TdghOriFKXFiyoAWkLvPqxF
 fFDn/KElF7QX+Z1u8R9rqPNg/2t753Wie9HhoNTpT8QGnDclzMB1dpk+4
 27mq4/r2txHGOooa7ZSpYAIpmDCrPnr4qYXq8pwefgACaVD1aaT42QjSJ
 l17ri7zyi+c1i2gHegacxBM6WfGW+pqy0XbetY093aF4EW8xM0I6m+K7G A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="422256795"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="422256795"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 14:06:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="819938784"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="819938784"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 14:06:14 -0800
Date: Wed, 8 Mar 2023 00:06:13 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZAe1VRg+vjbCFeeQ@ideak-desk.fi.intel.com>
References: <20230221125737.1813187-1-imre.deak@intel.com>
 <20230221125737.1813187-4-imre.deak@intel.com>
 <87ttyxrlli.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ttyxrlli.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/opregion: Register/unregister
 opregion on platforms without display
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 07, 2023 at 10:50:49AM +0200, Jani Nikula wrote:
> On Tue, 21 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> > Call the opregion register/unregister functions during driver
> > loading/unloading on !HAS_DISPLAY platforms. These functions will send
> > the opregion adapter power state notifications which is required on all
> > platforms (similarly how this is sent during runtime and system
> > suspend/resume). Skip registering the ACPI video notifier callback on
> > !HAS_DISPLAY, where the corresponding video extensions are not
> > supported.
> 
> I think the direction should be towards better separation of display
> code, and this patch is counter productive. Basically we shouldn't
> require calling display functions on !HAS_DISPLAY, and the early return
> is what we should do.

Ok, missed this point.

> This, in turn, means we probably need to handle opregion differently. :(
> 
> Dunno, maybe we need to move opregion under soc/ and have parts called
> by high level driver code, and some other parts from display code.

Yes, I think we can be sure that some part of the opregion i/f is not
display-only (VRAM SR), so makes sense, though it's a bigger change. I think
the following instead of patch 4 would be more in line with what you said
above:

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index b7973a05d022d..abfe1615afb06 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1155,8 +1155,6 @@ void intel_opregion_register(struct drm_i915_private *i915)
 			intel_opregion_video_event;
 		register_acpi_notifier(&opregion->acpi_notifier);
 	}
-
-	intel_opregion_resume(i915);
 }
 
 static void intel_opregion_resume_display(struct drm_i915_private *i915)
@@ -1228,8 +1226,6 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->display.opregion;
 
-	intel_opregion_suspend(i915, PCI_D1);
-
 	if (!opregion->header)
 		return;
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8f5e3ded52233..c554495d4f8e1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -633,6 +633,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_register(dev_priv);
 
+	intel_opregion_resume(i915);
+
 	intel_power_domains_enable(dev_priv);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
@@ -658,6 +660,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
 	intel_power_domains_disable(dev_priv);
 
+	intel_opregion_suspend(i915, PCI_D1);
+
 	intel_display_driver_unregister(dev_priv);
 
 	intel_pxp_fini(dev_priv);

> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 11 +++++++----
> >  drivers/gpu/drm/i915/display/intel_opregion.c |  2 +-
> >  2 files changed, 8 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 7827ef3e2d1e6..467f6e2376057 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8882,11 +8882,12 @@ bool intel_modeset_probe_defer(struct pci_dev *pdev)
> >  
> >  void intel_display_driver_register(struct drm_i915_private *i915)
> >  {
> > -	if (!HAS_DISPLAY(i915))
> > -		return;
> > -
> >  	/* Must be done after probing outputs */
> >  	intel_opregion_register(i915);
> > +
> > +	if (!HAS_DISPLAY(i915))
> > +		return;
> > +
> >  	intel_acpi_video_register(i915);
> >  
> >  	intel_audio_init(i915);
> > @@ -8914,7 +8915,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
> >  void intel_display_driver_unregister(struct drm_i915_private *i915)
> >  {
> >  	if (!HAS_DISPLAY(i915))
> > -		return;
> > +		goto unregister_opregion;
> >  
> >  	intel_fbdev_unregister(i915);
> >  	intel_audio_deinit(i915);
> > @@ -8928,6 +8929,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
> >  	drm_atomic_helper_shutdown(&i915->drm);
> >  
> >  	acpi_video_unregister();
> > +
> > +unregister_opregion:
> >  	intel_opregion_unregister(i915);
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> > index b7973a05d022d..37098e7f607e6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> > +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> > @@ -1150,7 +1150,7 @@ void intel_opregion_register(struct drm_i915_private *i915)
> >  	if (!opregion->header)
> >  		return;
> >  
> > -	if (opregion->acpi) {
> > +	if (HAS_DISPLAY(i915) && opregion->acpi) {
> >  		opregion->acpi_notifier.notifier_call =
> >  			intel_opregion_video_event;
> >  		register_acpi_notifier(&opregion->acpi_notifier);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
