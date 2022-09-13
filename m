Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E505B775D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 19:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E7C10E795;
	Tue, 13 Sep 2022 17:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5068610E795
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 17:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663088950; x=1694624950;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=sfYNk64liQr2Kz50EA95eyLjrVsk80mv9IR/HmDh1Tk=;
 b=C4iZg97KfE2maN1L0z4nBQPAlgKShjjxZf832qhD4Zu3TavxsNao/Gop
 2UMoeIiCTIyT0NVXFznyW6gMaAHvluV3UJKv4Y5WtNUcPmZHno60foH2B
 Z9k6vkwqBpuIgDRdArf2rdm4G40YT/eC2+6mWWg5BR7wZUhzbVIlo925z
 BFJdlVt0MxMoObjiqV3DSpR5wqr51IJEOs6360H/mGugJGQrold5nQL3C
 HUU1xTl+6qknQqow5u0L1GgaBtkN8hzTZ/In28f5Mzzb/WXsAEZANNBQi
 LpksRNQrVa1LGnyItyiw+UuleltTT648IMLmkirwFviWL1NQ0OPol2s3t w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="362145280"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="362145280"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 10:09:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="678657889"
Received: from baumeish-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.168])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 10:09:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YyBMAwJodjmJ9J9H@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1662983005.git.jani.nikula@intel.com>
 <536237d5bc919e8c97a96796f235f5bb264ceff2.1662983005.git.jani.nikula@intel.com>
 <YyBMAwJodjmJ9J9H@intel.com>
Date: Tue, 13 Sep 2022 20:09:03 +0300
Message-ID: <878rmn42xc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/ipc: refactor and rename IPC
 functions
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Sep 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Sep 12, 2022 at 02:45:12PM +0300, Jani Nikula wrote:
>> Rename the IPC functions to have skl_watermark_ipc_ prefix, rename
>> enable to update to reflect what the function actually does, and add
>> enabled function to abstract direct ->ipc_enabled access for state
>> query.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c  |  6 ++---
>>  .../drm/i915/display/intel_display_debugfs.c  |  6 ++---
>>  drivers/gpu/drm/i915/display/skl_watermark.c  | 25 +++++++++++--------
>>  drivers/gpu/drm/i915/display/skl_watermark.h  |  5 ++--
>>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>>  5 files changed, 24 insertions(+), 20 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 2d0018ae34b1..a0829dcfd6d3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4779,7 +4779,7 @@ static u16 skl_linetime_wm(const struct intel_crtc=
_state *crtc_state)
>>=20=20
>>  	/* Display WA #1135: BXT:ALL GLK:ALL */
>>  	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
>> -	    dev_priv->ipc_enabled)
>> +	    skl_watermark_ipc_enabled(dev_priv))
>
> I forgot this spilled so far :/
>
> But yeah, looks OK to me. Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>>  		linetime_wm /=3D 2;
>>=20=20
>>  	return min(linetime_wm, 0x1ff);
>> @@ -8782,7 +8782,7 @@ int intel_modeset_init(struct drm_i915_private *i9=
15)
>>  	intel_hpd_init(i915);
>>  	intel_hpd_poll_disable(i915);
>>=20=20
>> -	intel_init_ipc(i915);
>> +	skl_watermark_ipc_init(i915);
>>=20=20
>>  	return 0;
>>  }
>> @@ -8913,7 +8913,7 @@ void intel_display_resume(struct drm_device *dev)
>>  	if (!ret)
>>  		ret =3D __intel_display_resume(i915, state, &ctx);
>>=20=20
>> -	intel_enable_ipc(i915);
>> +	skl_watermark_ipc_update(i915);
>>  	drm_modeset_drop_locks(&ctx);
>>  	drm_modeset_acquire_fini(&ctx);
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index fe40e2a226d6..d2139cf4f825 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -988,7 +988,7 @@ static int i915_ipc_status_show(struct seq_file *m, =
void *data)
>>  	struct drm_i915_private *dev_priv =3D m->private;
>>=20=20
>>  	seq_printf(m, "Isochronous Priority Control: %s\n",
>> -			str_yes_no(dev_priv->ipc_enabled));
>> +		   str_yes_no(skl_watermark_ipc_enabled(dev_priv)));
>>  	return 0;
>>  }
>>=20=20
>> @@ -1016,11 +1016,11 @@ static ssize_t i915_ipc_status_write(struct file=
 *file, const char __user *ubuf,
>>  		return ret;
>>=20=20
>>  	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
>> -		if (!dev_priv->ipc_enabled && enable)
>> +		if (!skl_watermark_ipc_enabled(dev_priv) && enable)
>>  			drm_info(&dev_priv->drm,
>>  				 "Enabling IPC: WM will be proper only after next commit\n");
>>  		dev_priv->ipc_enabled =3D enable;
>> -		intel_enable_ipc(dev_priv);
>> +		skl_watermark_ipc_update(dev_priv);
>>  	}
>>=20=20
>>  	return len;
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index cb297725d5b9..df505ca6ef91 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -1837,10 +1837,8 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
>>  	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
>>  	 * Display WA #1141: kbl,cfl
>>  	 */
>> -	if ((IS_KABYLAKE(i915) ||
>> -	     IS_COFFEELAKE(i915) ||
>> -	     IS_COMETLAKE(i915)) &&
>> -	    i915->ipc_enabled)
>> +	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
>> +	    skl_watermark_ipc_enabled(i915))
>>  		latency +=3D 4;
>>=20=20
>>  	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
>> @@ -2008,7 +2006,7 @@ static void skl_compute_transition_wm(struct drm_i=
915_private *i915,
>>  	u16 wm0_blocks, trans_offset, blocks;
>>=20=20
>>  	/* Transition WM don't make any sense if ipc is disabled */
>> -	if (!i915->ipc_enabled)
>> +	if (!skl_watermark_ipc_enabled(i915))
>>  		return;
>>=20=20
>>  	/*
>> @@ -3116,7 +3114,12 @@ void intel_wm_state_verify(struct intel_crtc *crt=
c,
>>  	kfree(hw);
>>  }
>>=20=20
>> -void intel_enable_ipc(struct drm_i915_private *i915)
>> +bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
>> +{
>> +	return i915->ipc_enabled;
>> +}
>> +
>> +void skl_watermark_ipc_update(struct drm_i915_private *i915)
>>  {
>>  	u32 val;
>>=20=20
>> @@ -3125,7 +3128,7 @@ void intel_enable_ipc(struct drm_i915_private *i91=
5)
>>=20=20
>>  	val =3D intel_uncore_read(&i915->uncore, DISP_ARB_CTL2);
>>=20=20
>> -	if (i915->ipc_enabled)
>> +	if (skl_watermark_ipc_enabled(i915))
>>  		val |=3D DISP_IPC_ENABLE;
>>  	else
>>  		val &=3D ~DISP_IPC_ENABLE;
>> @@ -3133,7 +3136,7 @@ void intel_enable_ipc(struct drm_i915_private *i91=
5)
>>  	intel_uncore_write(&i915->uncore, DISP_ARB_CTL2, val);
>>  }
>>=20=20
>> -static bool intel_can_enable_ipc(struct drm_i915_private *i915)
>> +static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
>>  {
>>  	/* Display WA #0477 WaDisableIPC: skl */
>>  	if (IS_SKYLAKE(i915))
>> @@ -3148,14 +3151,14 @@ static bool intel_can_enable_ipc(struct drm_i915=
_private *i915)
>>  	return true;
>>  }
>>=20=20
>> -void intel_init_ipc(struct drm_i915_private *i915)
>> +void skl_watermark_ipc_init(struct drm_i915_private *i915)
>>  {
>>  	if (!HAS_IPC(i915))
>>  		return;
>>=20=20
>> -	i915->ipc_enabled =3D intel_can_enable_ipc(i915);
>> +	i915->ipc_enabled =3D skl_watermark_ipc_can_enable(i915);
>>=20=20
>> -	intel_enable_ipc(i915);
>> +	skl_watermark_ipc_update(i915);
>>  }
>>=20=20
>>  static void
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/=
drm/i915/display/skl_watermark.h
>> index 50da05932750..7e5adef0c510 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -44,8 +44,9 @@ void skl_wm_sanitize(struct drm_i915_private *i915);
>>  void intel_wm_state_verify(struct intel_crtc *crtc,
>>  			   struct intel_crtc_state *new_crtc_state);
>>=20=20
>> -void intel_enable_ipc(struct drm_i915_private *i915);
>> -void intel_init_ipc(struct drm_i915_private *i915);
>> +void skl_watermark_ipc_init(struct drm_i915_private *i915);
>> +void skl_watermark_ipc_update(struct drm_i915_private *i915);
>> +bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
>>=20=20
>>  void skl_wm_init(struct drm_i915_private *i915);
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index 8262bfb2a2d9..c459eb362c47 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -1756,7 +1756,7 @@ static int intel_runtime_resume(struct device *kde=
v)
>>  		intel_hpd_poll_disable(dev_priv);
>>  	}
>>=20=20
>> -	intel_enable_ipc(dev_priv);
>> +	skl_watermark_ipc_update(dev_priv);
>>=20=20
>>  	enable_rpm_wakeref_asserts(rpm);
>>=20=20
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
