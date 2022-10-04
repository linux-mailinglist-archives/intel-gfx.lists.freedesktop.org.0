Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 480F85F404C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 11:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E2F10E40F;
	Tue,  4 Oct 2022 09:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51A410E40F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 09:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664877061; x=1696413061;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8pvhWedZ35Fa8H/DGQwOwMc1uXZTdrzfg8gBjrqrFgY=;
 b=It2i8aPJ6b/eu9qxp6MNE7wpt58o4q2KNs+SMQhZR9w3LjSySvHqdSS2
 KurPFgU4Xby5hwrKvir/0cQ5R7vbwf+DhgbW6/hO6KHOJesFJSo32PTPe
 129Y9v446BsZ6aqa0InuIJLw2KuGr/bVc6bhWAPlrtoGV2zjV2GTb5ntq
 pi3vk/Wut+FtNHbvJoN9Qq/SsxVHRoY2zA8YBGSuMCD3WtmtizAHBZXfh
 sqE6CjoBR44h5T+0UMz99mdSAXgteMQ7IN8VLfjYuS+S/whVHmL4JtDUR
 E/+kN2S8+iywk/k8cM49hbn/0vOk18RFddT8hBF9/L3fk3vmeWw7hoNGD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="282582170"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="282582170"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:51:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686486376"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="686486376"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.85])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:50:58 -0700
Date: Tue, 4 Oct 2022 11:50:56 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YzwCAEvilpouJegg@ashyti-mobl2.lan>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-2-andrzej.hajda@intel.com>
 <87o7usuk7d.fsf@intel.com>
 <6ee039ba-280b-f147-4c3e-716bbbe4bd21@intel.com>
 <87a66cugb5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a66cugb5.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Use drm_device alias
 if defined
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Tue, Oct 04, 2022 at 11:46:38AM +0300, Jani Nikula wrote:
> On Tue, 04 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> > On 04.10.2022 09:22, Jani Nikula wrote:
> >> On Tue, 04 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> >>> Alias is shorter and more readable.
> >> But it's preferrable to *not* have struct drm_device * around at all,
> >> only struct drm_i915_private *.
> >>
> >> So this is kind of going the wrong way.
> >
> > I guess this is some misunderstanding.
> > The patch does not add any permanent fields to structs, it just makes 
> > broader use of local aliases (pointers to dev_priv->drm).
> > For example:
> >
> > void icl_dsi_init(struct drm_i915_private *dev_priv)
> > {
> >          struct drm_device *dev = &dev_priv->drm;
> 
> Remove this line, and proceed from there. That's what I was trying to
> say.

sorry, I'm not really understanding here. Is there any reason for
cleaning up the "other way" or is it just a matter of taste?
(considering that "*dev" was not added by Andrze but his patch
just uses it)

Normally it's a good idea to have aliases to avoid unreadable
links like:

	mutex_unlock(&dev_priv->drm.mode_config.mutex);

preferring a slightly more compact way:

	mutex_unlock(&dev->mode_config.mutex);

(The example is taken from the same function where the patch
applies)

Thanks for your comment,
Andi

> BR,
> Jani.
> 
> >          ...
> > -        drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
> > +       drm_err(dev, "DSI fixed mode info missing\n");
> >
> > Is it sth wrong?
> >
> > Regards
> > Andrzej
> >
> >>
> >> BR,
> >> Jani.
> >>
> >>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> >>> ---
> >>>   drivers/gpu/drm/i915/display/icl_dsi.c               |  4 ++--
> >>>   drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
> >>>   drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
> >>>   drivers/gpu/drm/i915/display/intel_hotplug.c         |  2 +-
> >>>   drivers/gpu/drm/i915/display/intel_lvds.c            | 10 +++++-----
> >>>   drivers/gpu/drm/i915/display/intel_opregion.c        |  2 +-
> >>>   drivers/gpu/drm/i915/display/vlv_dsi.c               |  2 +-
> >>>   7 files changed, 12 insertions(+), 12 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> >>> index 47f13750f6fa66..bdf874c9f66b00 100644
> >>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >>> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
> >>>   	mutex_unlock(&dev->mode_config.mutex);
> >>>   
> >>>   	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
> >>> -		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
> >>> +		drm_err(dev, "DSI fixed mode info missing\n");
> >>>   		goto err;
> >>>   	}
> >>>   
> >>> @@ -2063,7 +2063,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
> >>>   	else
> >>>   		intel_dsi->ports = BIT(port);
> >>>   
> >>> -	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
> >>> +	if (drm_WARN_ON(dev, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
> >>>   		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
> >>>   
> >>>   	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >>> index 3ffd8fc0b05c10..22248422b2a98c 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>> @@ -8708,7 +8708,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
> >>>   
> >>>   	intel_gmbus_setup(i915);
> >>>   
> >>> -	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
> >>> +	drm_dbg_kms(dev, "%d display pipe%s available.\n",
> >>>   		    INTEL_NUM_PIPES(i915),
> >>>   		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
> >>>   
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>> index c5f47df0f3622b..8c7d775af5d9e9 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>> @@ -998,7 +998,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
> >>>   
> >>>   	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
> >>>   
> >>> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> >>> +	for_each_intel_crtc(dev, crtc) {
> >>>   		struct intel_crtc_state *crtc_state =
> >>>   			to_intel_crtc_state(crtc->base.state);
> >>>   		enum pipe pipe = crtc->pipe;
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> >>> index 352a1b53b63ed6..6bad2e7543c427 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> >>> @@ -378,7 +378,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
> >>>   	u32 hpd_retry_bits;
> >>>   
> >>>   	mutex_lock(&dev->mode_config.mutex);
> >>> -	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
> >>> +	drm_dbg_kms(dev, "running encoder hotplug functions\n");
> >>>   
> >>>   	spin_lock_irq(&dev_priv->irq_lock);
> >>>   
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> >>> index e97e24f690a9f8..2d07e2a13b1faa 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> >>> @@ -847,7 +847,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
> >>>   	}
> >>>   
> >>>   	if (!dev_priv->display.vbt.int_lvds_support) {
> >>> -		drm_dbg_kms(&dev_priv->drm,
> >>> +		drm_dbg_kms(dev,
> >>>   			    "Internal LVDS support disabled by VBT\n");
> >>>   		return;
> >>>   	}
> >>> @@ -867,11 +867,11 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
> >>>   	pin = GMBUS_PIN_PANEL;
> >>>   	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
> >>>   		if ((lvds & LVDS_PORT_EN) == 0) {
> >>> -			drm_dbg_kms(&dev_priv->drm,
> >>> +			drm_dbg_kms(dev,
> >>>   				    "LVDS is not present in VBT\n");
> >>>   			return;
> >>>   		}
> >>> -		drm_dbg_kms(&dev_priv->drm,
> >>> +		drm_dbg_kms(dev,
> >>>   			    "LVDS is not present in VBT, but enabled anyway\n");
> >>>   	}
> >>>   
> >>> @@ -993,7 +993,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
> >>>   	intel_backlight_setup(intel_connector, INVALID_PIPE);
> >>>   
> >>>   	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
> >>> -	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
> >>> +	drm_dbg_kms(dev, "detected %s-link lvds configuration\n",
> >>>   		    lvds_encoder->is_dual_link ? "dual" : "single");
> >>>   
> >>>   	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
> >>> @@ -1001,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
> >>>   	return;
> >>>   
> >>>   failed:
> >>> -	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
> >>> +	drm_dbg_kms(dev, "No LVDS modes found, disabling.\n");
> >>>   	drm_connector_cleanup(connector);
> >>>   	drm_encoder_cleanup(encoder);
> >>>   	kfree(lvds_encoder);
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> >>> index caa07ef34f21ef..ba3666e94fc48d 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> >>> @@ -465,7 +465,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
> >>>   	struct opregion_asle *asle = dev_priv->display.opregion.asle;
> >>>   	struct drm_device *dev = &dev_priv->drm;
> >>>   
> >>> -	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
> >>> +	drm_dbg(dev, "bclp = 0x%08x\n", bclp);
> >>>   
> >>>   	if (acpi_video_get_backlight_type() == acpi_backlight_native) {
> >>>   		drm_dbg_kms(&dev_priv->drm,
> >>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >>> index dee0147a316ce7..fdfe3611e74a76 100644
> >>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >>> @@ -1855,7 +1855,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
> >>>   	enum port port;
> >>>   	enum pipe pipe;
> >>>   
> >>> -	drm_dbg_kms(&dev_priv->drm, "\n");
> >>> +	drm_dbg_kms(dev, "\n");
> >>>   
> >>>   	/* There is no detection method for MIPI so rely on VBT */
> >>>   	if (!intel_bios_is_dsi_present(dev_priv, &port))
> >
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
