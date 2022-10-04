Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B2E5F3EBB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 10:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C2510E18C;
	Tue,  4 Oct 2022 08:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837EC10E18C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 08:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664873204; x=1696409204;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZmtP47cHoJL09wG0PZpai15DPTHdSImR9DdRPLxhxOY=;
 b=GLYYAbFmsz5CPjfO+SIICEde3ARVKTCEAVMCfq0rb/OSukoH2EemB057
 KwLiPWIe1MGFdHfR60JzWA+hPzxSMELLhLV2xRmkvGFKC5fhz9QMRBMn0
 SLNv5PLImZkQMPKwPyrwAKQDbb6gVggud06hyY7vN/aXClH3BoMvfjvZS
 IY6ONguahpM6Q8h7ZcAGezhiDW6ScA9ADOpiR5FoodfplAO1+mywB9B9C
 U4gG1ZOdsj8DBtJUuOdjWzUgDM45yIKsA0+JZmkwIoX+g/Rr+edfS8DAN
 9+tQk2NrIQL7Mw70eUP22homiTcwJVUcFglX+ujYB87CqKwz95WlPQji7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366956905"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="366956905"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 01:46:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="619034848"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="619034848"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 01:46:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <6ee039ba-280b-f147-4c3e-716bbbe4bd21@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-2-andrzej.hajda@intel.com>
 <87o7usuk7d.fsf@intel.com>
 <6ee039ba-280b-f147-4c3e-716bbbe4bd21@intel.com>
Date: Tue, 04 Oct 2022 11:46:38 +0300
Message-ID: <87a66cugb5.fsf@intel.com>
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 04 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On 04.10.2022 09:22, Jani Nikula wrote:
>> On Tue, 04 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>>> Alias is shorter and more readable.
>> But it's preferrable to *not* have struct drm_device * around at all,
>> only struct drm_i915_private *.
>>
>> So this is kind of going the wrong way.
>
> I guess this is some misunderstanding.
> The patch does not add any permanent fields to structs, it just makes=20
> broader use of local aliases (pointers to dev_priv->drm).
> For example:
>
> void icl_dsi_init(struct drm_i915_private *dev_priv)
> {
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 struct drm_device *dev =3D &dev_pr=
iv->drm;

Remove this line, and proceed from there. That's what I was trying to
say.

BR,
Jani.

>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ...
> -=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 drm_err(&dev_priv->drm, "DSI fixed=
 mode info missing\n");
> +=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 drm_err(dev, "DSI fixed mode info missin=
g\n");
>
> Is it sth wrong?
>
> Regards
> Andrzej
>
>>
>> BR,
>> Jani.
>>
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/icl_dsi.c               |  4 ++--
>>>   drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_hotplug.c         |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_lvds.c            | 10 +++++-----
>>>   drivers/gpu/drm/i915/display/intel_opregion.c        |  2 +-
>>>   drivers/gpu/drm/i915/display/vlv_dsi.c               |  2 +-
>>>   7 files changed, 12 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i=
915/display/icl_dsi.c
>>> index 47f13750f6fa66..bdf874c9f66b00 100644
>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_pr=
iv)
>>>   	mutex_unlock(&dev->mode_config.mutex);
>>>=20=20=20
>>>   	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>>> -		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
>>> +		drm_err(dev, "DSI fixed mode info missing\n");
>>>   		goto err;
>>>   	}
>>>=20=20=20
>>> @@ -2063,7 +2063,7 @@ void icl_dsi_init(struct drm_i915_private *dev_pr=
iv)
>>>   	else
>>>   		intel_dsi->ports =3D BIT(port);
>>>=20=20=20
>>> -	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_por=
ts & ~intel_dsi->ports))
>>> +	if (drm_WARN_ON(dev, intel_connector->panel.vbt.dsi.bl_ports & ~intel=
_dsi->ports))
>>>   		intel_connector->panel.vbt.dsi.bl_ports &=3D intel_dsi->ports;
>>>=20=20=20
>>>   	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_=
ports & ~intel_dsi->ports))
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
>>> index 3ffd8fc0b05c10..22248422b2a98c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -8708,7 +8708,7 @@ int intel_modeset_init_nogem(struct drm_i915_priv=
ate *i915)
>>>=20=20=20
>>>   	intel_gmbus_setup(i915);
>>>=20=20=20
>>> -	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
>>> +	drm_dbg_kms(dev, "%d display pipe%s available.\n",
>>>   		    INTEL_NUM_PIPES(i915),
>>>   		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
>>>=20=20=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/dri=
vers/gpu/drm/i915/display/intel_display_debugfs.c
>>> index c5f47df0f3622b..8c7d775af5d9e9 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> @@ -998,7 +998,7 @@ static int i915_ddb_info(struct seq_file *m, void *=
unused)
>>>=20=20=20
>>>   	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
>>>=20=20=20
>>> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
>>> +	for_each_intel_crtc(dev, crtc) {
>>>   		struct intel_crtc_state *crtc_state =3D
>>>   			to_intel_crtc_state(crtc->base.state);
>>>   		enum pipe pipe =3D crtc->pipe;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu=
/drm/i915/display/intel_hotplug.c
>>> index 352a1b53b63ed6..6bad2e7543c427 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> @@ -378,7 +378,7 @@ static void i915_hotplug_work_func(struct work_stru=
ct *work)
>>>   	u32 hpd_retry_bits;
>>>=20=20=20
>>>   	mutex_lock(&dev->mode_config.mutex);
>>> -	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
>>> +	drm_dbg_kms(dev, "running encoder hotplug functions\n");
>>>=20=20=20
>>>   	spin_lock_irq(&dev_priv->irq_lock);
>>>=20=20=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/dr=
m/i915/display/intel_lvds.c
>>> index e97e24f690a9f8..2d07e2a13b1faa 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>>> @@ -847,7 +847,7 @@ void intel_lvds_init(struct drm_i915_private *dev_p=
riv)
>>>   	}
>>>=20=20=20
>>>   	if (!dev_priv->display.vbt.int_lvds_support) {
>>> -		drm_dbg_kms(&dev_priv->drm,
>>> +		drm_dbg_kms(dev,
>>>   			    "Internal LVDS support disabled by VBT\n");
>>>   		return;
>>>   	}
>>> @@ -867,11 +867,11 @@ void intel_lvds_init(struct drm_i915_private *dev=
_priv)
>>>   	pin =3D GMBUS_PIN_PANEL;
>>>   	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
>>>   		if ((lvds & LVDS_PORT_EN) =3D=3D 0) {
>>> -			drm_dbg_kms(&dev_priv->drm,
>>> +			drm_dbg_kms(dev,
>>>   				    "LVDS is not present in VBT\n");
>>>   			return;
>>>   		}
>>> -		drm_dbg_kms(&dev_priv->drm,
>>> +		drm_dbg_kms(dev,
>>>   			    "LVDS is not present in VBT, but enabled anyway\n");
>>>   	}
>>>=20=20=20
>>> @@ -993,7 +993,7 @@ void intel_lvds_init(struct drm_i915_private *dev_p=
riv)
>>>   	intel_backlight_setup(intel_connector, INVALID_PIPE);
>>>=20=20=20
>>>   	lvds_encoder->is_dual_link =3D compute_is_dual_link_lvds(lvds_encode=
r);
>>> -	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
>>> +	drm_dbg_kms(dev, "detected %s-link lvds configuration\n",
>>>   		    lvds_encoder->is_dual_link ? "dual" : "single");
>>>=20=20=20
>>>   	lvds_encoder->a3_power =3D lvds & LVDS_A3_POWER_MASK;
>>> @@ -1001,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *dev=
_priv)
>>>   	return;
>>>=20=20=20
>>>   failed:
>>> -	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
>>> +	drm_dbg_kms(dev, "No LVDS modes found, disabling.\n");
>>>   	drm_connector_cleanup(connector);
>>>   	drm_encoder_cleanup(encoder);
>>>   	kfree(lvds_encoder);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gp=
u/drm/i915/display/intel_opregion.c
>>> index caa07ef34f21ef..ba3666e94fc48d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>>> @@ -465,7 +465,7 @@ static u32 asle_set_backlight(struct drm_i915_priva=
te *dev_priv, u32 bclp)
>>>   	struct opregion_asle *asle =3D dev_priv->display.opregion.asle;
>>>   	struct drm_device *dev =3D &dev_priv->drm;
>>>=20=20=20
>>> -	drm_dbg(&dev_priv->drm, "bclp =3D 0x%08x\n", bclp);
>>> +	drm_dbg(dev, "bclp =3D 0x%08x\n", bclp);
>>>=20=20=20
>>>   	if (acpi_video_get_backlight_type() =3D=3D acpi_backlight_native) {
>>>   		drm_dbg_kms(&dev_priv->drm,
>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i=
915/display/vlv_dsi.c
>>> index dee0147a316ce7..fdfe3611e74a76 100644
>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> @@ -1855,7 +1855,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_pr=
iv)
>>>   	enum port port;
>>>   	enum pipe pipe;
>>>=20=20=20
>>> -	drm_dbg_kms(&dev_priv->drm, "\n");
>>> +	drm_dbg_kms(dev, "\n");
>>>=20=20=20
>>>   	/* There is no detection method for MIPI so rely on VBT */
>>>   	if (!intel_bios_is_dsi_present(dev_priv, &port))
>

--=20
Jani Nikula, Intel Open Source Graphics Center
