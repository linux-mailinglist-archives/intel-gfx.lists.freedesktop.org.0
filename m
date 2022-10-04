Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF9F5F40F1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A1110E052;
	Tue,  4 Oct 2022 10:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1424610E052
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 10:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664880059; x=1696416059;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=seiIlKOz6F3H6Wmo3y5Dbv47aGvgEx6NZuCW75bqFPQ=;
 b=htbFq7gWLh2t6+ALE4ffocg1V6SLYYi5eMmOG1pDdNLo4ccXkgixM31m
 m6GmkWYJPGtmmEPN3hmvo8OrunI2lSdPrRqA29sBco5rlAo4oY1+qa4QB
 +AjV4lmmA6a1UdiN7OGioMCcdddqy1nu5HLcGqZW3oH3lfXTI08e00EuF
 lTxzf4vGVk78lrPHpfIypYQIy2TO1+H8aQ6GFhRqWFP/cMzFOoq4+gIy/
 +5vfjuIeGlhE87ttOy4LypGNfY8bTI7D8G7ZWjUm4YkH/dwlPs1OotS5Z
 vwgvTzgiHzZQDngT0pUrwJXpVamMKBH/WVWrXgmQ0LV2yjHBw5Tv+ZpSz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="286069115"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="286069115"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:40:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692441936"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="692441936"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:40:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <YzwCAEvilpouJegg@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-2-andrzej.hajda@intel.com>
 <87o7usuk7d.fsf@intel.com>
 <6ee039ba-280b-f147-4c3e-716bbbe4bd21@intel.com>
 <87a66cugb5.fsf@intel.com> <YzwCAEvilpouJegg@ashyti-mobl2.lan>
Date: Tue, 04 Oct 2022 13:40:53 +0300
Message-ID: <87pmf7ub0q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 04 Oct 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Jani,
>
> On Tue, Oct 04, 2022 at 11:46:38AM +0300, Jani Nikula wrote:
>> On Tue, 04 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> > On 04.10.2022 09:22, Jani Nikula wrote:
>> >> On Tue, 04 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> >>> Alias is shorter and more readable.
>> >> But it's preferrable to *not* have struct drm_device * around at all,
>> >> only struct drm_i915_private *.
>> >>
>> >> So this is kind of going the wrong way.
>> >
>> > I guess this is some misunderstanding.
>> > The patch does not add any permanent fields to structs, it just makes=
=20
>> > broader use of local aliases (pointers to dev_priv->drm).
>> > For example:
>> >
>> > void icl_dsi_init(struct drm_i915_private *dev_priv)
>> > {
>> >  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 struct drm_device *dev =3D &dev=
_priv->drm;
>>=20
>> Remove this line, and proceed from there. That's what I was trying to
>> say.
>
> sorry, I'm not really understanding here. Is there any reason for
> cleaning up the "other way" or is it just a matter of taste?
> (considering that "*dev" was not added by Andrze but his patch
> just uses it)

It's a matter of taste. Prefer our own types instead of drm_* where
possible.

I don't want to add more dependencies or examples on having that struct
drm_device *dev around. The more you have that, the more it's
copy-pasted everywhere else.

Personally I also think "dev" should be reserved for struct device *dev,
but I guess that ship has sailed in drm code.

If &dev_priv->drm feels too long, the way to go is s/dev_priv/i915/g to
have &i915->drm.

> Normally it's a good idea to have aliases to avoid unreadable
> links like:
>
> 	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>
> preferring a slightly more compact way:
>
> 	mutex_unlock(&dev->mode_config.mutex);
>
> (The example is taken from the same function where the patch
> applies)

IMO doesn't matter so much if there aren't so many uses. And if there
are, for that particular one, you should probably have struct
drm_mode_config *config, not dev.


BR,
Jani.

>
> Thanks for your comment,
> Andi
>
>> BR,
>> Jani.
>>=20
>> >  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ...
>> > -=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 drm_err(&dev_priv->drm, "DSI fi=
xed mode info missing\n");
>> > +=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 drm_err(dev, "DSI fixed mode info mis=
sing\n");
>> >
>> > Is it sth wrong?
>> >
>> > Regards
>> > Andrzej
>> >
>> >>
>> >> BR,
>> >> Jani.
>> >>
>> >>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> >>> ---
>> >>>   drivers/gpu/drm/i915/display/icl_dsi.c               |  4 ++--
>> >>>   drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
>> >>>   drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
>> >>>   drivers/gpu/drm/i915/display/intel_hotplug.c         |  2 +-
>> >>>   drivers/gpu/drm/i915/display/intel_lvds.c            | 10 +++++---=
--
>> >>>   drivers/gpu/drm/i915/display/intel_opregion.c        |  2 +-
>> >>>   drivers/gpu/drm/i915/display/vlv_dsi.c               |  2 +-
>> >>>   7 files changed, 12 insertions(+), 12 deletions(-)
>> >>>
>> >>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/dr=
m/i915/display/icl_dsi.c
>> >>> index 47f13750f6fa66..bdf874c9f66b00 100644
>> >>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> >>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> >>> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev=
_priv)
>> >>>   	mutex_unlock(&dev->mode_config.mutex);
>> >>>=20=20=20
>> >>>   	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>> >>> -		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
>> >>> +		drm_err(dev, "DSI fixed mode info missing\n");
>> >>>   		goto err;
>> >>>   	}
>> >>>=20=20=20
>> >>> @@ -2063,7 +2063,7 @@ void icl_dsi_init(struct drm_i915_private *dev=
_priv)
>> >>>   	else
>> >>>   		intel_dsi->ports =3D BIT(port);
>> >>>=20=20=20
>> >>> -	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_=
ports & ~intel_dsi->ports))
>> >>> +	if (drm_WARN_ON(dev, intel_connector->panel.vbt.dsi.bl_ports & ~in=
tel_dsi->ports))
>> >>>   		intel_connector->panel.vbt.dsi.bl_ports &=3D intel_dsi->ports;
>> >>>=20=20=20
>> >>>   	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.ca=
bc_ports & ~intel_dsi->ports))
>> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/=
gpu/drm/i915/display/intel_display.c
>> >>> index 3ffd8fc0b05c10..22248422b2a98c 100644
>> >>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> >>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> >>> @@ -8708,7 +8708,7 @@ int intel_modeset_init_nogem(struct drm_i915_p=
rivate *i915)
>> >>>=20=20=20
>> >>>   	intel_gmbus_setup(i915);
>> >>>=20=20=20
>> >>> -	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
>> >>> +	drm_dbg_kms(dev, "%d display pipe%s available.\n",
>> >>>   		    INTEL_NUM_PIPES(i915),
>> >>>   		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
>> >>>=20=20=20
>> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/=
drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> >>> index c5f47df0f3622b..8c7d775af5d9e9 100644
>> >>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> >>> @@ -998,7 +998,7 @@ static int i915_ddb_info(struct seq_file *m, voi=
d *unused)
>> >>>=20=20=20
>> >>>   	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
>> >>>=20=20=20
>> >>> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
>> >>> +	for_each_intel_crtc(dev, crtc) {
>> >>>   		struct intel_crtc_state *crtc_state =3D
>> >>>   			to_intel_crtc_state(crtc->base.state);
>> >>>   		enum pipe pipe =3D crtc->pipe;
>> >>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/=
gpu/drm/i915/display/intel_hotplug.c
>> >>> index 352a1b53b63ed6..6bad2e7543c427 100644
>> >>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> >>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> >>> @@ -378,7 +378,7 @@ static void i915_hotplug_work_func(struct work_s=
truct *work)
>> >>>   	u32 hpd_retry_bits;
>> >>>=20=20=20
>> >>>   	mutex_lock(&dev->mode_config.mutex);
>> >>> -	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
>> >>> +	drm_dbg_kms(dev, "running encoder hotplug functions\n");
>> >>>=20=20=20
>> >>>   	spin_lock_irq(&dev_priv->irq_lock);
>> >>>=20=20=20
>> >>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu=
/drm/i915/display/intel_lvds.c
>> >>> index e97e24f690a9f8..2d07e2a13b1faa 100644
>> >>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> >>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> >>> @@ -847,7 +847,7 @@ void intel_lvds_init(struct drm_i915_private *de=
v_priv)
>> >>>   	}
>> >>>=20=20=20
>> >>>   	if (!dev_priv->display.vbt.int_lvds_support) {
>> >>> -		drm_dbg_kms(&dev_priv->drm,
>> >>> +		drm_dbg_kms(dev,
>> >>>   			    "Internal LVDS support disabled by VBT\n");
>> >>>   		return;
>> >>>   	}
>> >>> @@ -867,11 +867,11 @@ void intel_lvds_init(struct drm_i915_private *=
dev_priv)
>> >>>   	pin =3D GMBUS_PIN_PANEL;
>> >>>   	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
>> >>>   		if ((lvds & LVDS_PORT_EN) =3D=3D 0) {
>> >>> -			drm_dbg_kms(&dev_priv->drm,
>> >>> +			drm_dbg_kms(dev,
>> >>>   				    "LVDS is not present in VBT\n");
>> >>>   			return;
>> >>>   		}
>> >>> -		drm_dbg_kms(&dev_priv->drm,
>> >>> +		drm_dbg_kms(dev,
>> >>>   			    "LVDS is not present in VBT, but enabled anyway\n");
>> >>>   	}
>> >>>=20=20=20
>> >>> @@ -993,7 +993,7 @@ void intel_lvds_init(struct drm_i915_private *de=
v_priv)
>> >>>   	intel_backlight_setup(intel_connector, INVALID_PIPE);
>> >>>=20=20=20
>> >>>   	lvds_encoder->is_dual_link =3D compute_is_dual_link_lvds(lvds_enc=
oder);
>> >>> -	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n=
",
>> >>> +	drm_dbg_kms(dev, "detected %s-link lvds configuration\n",
>> >>>   		    lvds_encoder->is_dual_link ? "dual" : "single");
>> >>>=20=20=20
>> >>>   	lvds_encoder->a3_power =3D lvds & LVDS_A3_POWER_MASK;
>> >>> @@ -1001,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *=
dev_priv)
>> >>>   	return;
>> >>>=20=20=20
>> >>>   failed:
>> >>> -	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
>> >>> +	drm_dbg_kms(dev, "No LVDS modes found, disabling.\n");
>> >>>   	drm_connector_cleanup(connector);
>> >>>   	drm_encoder_cleanup(encoder);
>> >>>   	kfree(lvds_encoder);
>> >>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers=
/gpu/drm/i915/display/intel_opregion.c
>> >>> index caa07ef34f21ef..ba3666e94fc48d 100644
>> >>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> >>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> >>> @@ -465,7 +465,7 @@ static u32 asle_set_backlight(struct drm_i915_pr=
ivate *dev_priv, u32 bclp)
>> >>>   	struct opregion_asle *asle =3D dev_priv->display.opregion.asle;
>> >>>   	struct drm_device *dev =3D &dev_priv->drm;
>> >>>=20=20=20
>> >>> -	drm_dbg(&dev_priv->drm, "bclp =3D 0x%08x\n", bclp);
>> >>> +	drm_dbg(dev, "bclp =3D 0x%08x\n", bclp);
>> >>>=20=20=20
>> >>>   	if (acpi_video_get_backlight_type() =3D=3D acpi_backlight_native)=
 {
>> >>>   		drm_dbg_kms(&dev_priv->drm,
>> >>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/dr=
m/i915/display/vlv_dsi.c
>> >>> index dee0147a316ce7..fdfe3611e74a76 100644
>> >>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> >>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> >>> @@ -1855,7 +1855,7 @@ void vlv_dsi_init(struct drm_i915_private *dev=
_priv)
>> >>>   	enum port port;
>> >>>   	enum pipe pipe;
>> >>>=20=20=20
>> >>> -	drm_dbg_kms(&dev_priv->drm, "\n");
>> >>> +	drm_dbg_kms(dev, "\n");
>> >>>=20=20=20
>> >>>   	/* There is no detection method for MIPI so rely on VBT */
>> >>>   	if (!intel_bios_is_dsi_present(dev_priv, &port))
>> >
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
