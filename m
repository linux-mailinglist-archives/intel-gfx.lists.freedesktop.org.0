Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4639C13CE19
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 21:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 846E06EB35;
	Wed, 15 Jan 2020 20:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378A26EB35
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 20:33:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 12:33:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="423717627"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jan 2020 12:33:57 -0800
Date: Wed, 15 Jan 2020 12:33:57 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200115203357.GA2203518@mdroper-desk1.amr.corp.intel.com>
References: <20200113214603.52158-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113214603.52158-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH CI] drm/i915/psr: Share the computation of
 idle frames
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 13, 2020 at 01:46:03PM -0800, Jos=E9 Roberto de Souza wrote:
> Both activate functions and the dc3co disable function were doing the
> same thing, so better move to a function and share.
> Also while at it adding a WARN_ON to catch invalid values.
> =

> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 43 +++++++++++-------------
>  1 file changed, 19 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 89c9cf5f38d2..bd713ca8d5fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -454,22 +454,29 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *=
intel_dp)
>  	return val;
>  }
>  =

> -static void hsw_activate_psr1(struct intel_dp *intel_dp)
> +static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	u32 max_sleep_time =3D 0x1f;
> -	u32 val =3D EDP_PSR_ENABLE;
> +	int idle_frames;
>  =

>  	/* Let's use 6 as the minimum to cover all known cases including the
>  	 * off-by-one issue that HW has in some cases.
>  	 */
> -	int idle_frames =3D max(6, dev_priv->vbt.psr.idle_frames);
> -
> -	/* sink_sync_latency of 8 means source has to wait for more than 8
> -	 * frames, we'll go with 9 frames for now
> -	 */
> +	idle_frames =3D max(6, dev_priv->vbt.psr.idle_frames);
>  	idle_frames =3D max(idle_frames, dev_priv->psr.sink_sync_latency + 1);
> -	val |=3D idle_frames << EDP_PSR_IDLE_FRAME_SHIFT;
> +
> +	WARN_ON(idle_frames > 0xf);

Should we clamp the value if the VBT gives us something that's too large
to fit in the register bits?  Seems like

        if (WARN_ON(idle_frames > 0xf))
                idle_frames =3D 0xf;

might be better than letting the value spill over into unrelated
parts of the register?

Either way, the changes here maintain the code's current logic, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> +
> +	return idle_frames;
> +}
> +
> +static void hsw_activate_psr1(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	u32 max_sleep_time =3D 0x1f;
> +	u32 val =3D EDP_PSR_ENABLE;
> +
> +	val |=3D psr_compute_idle_frames(intel_dp) << EDP_PSR_IDLE_FRAME_SHIFT;
>  =

>  	val |=3D max_sleep_time << EDP_PSR_MAX_SLEEP_TIME_SHIFT;
>  	if (IS_HASWELL(dev_priv))
> @@ -493,13 +500,7 @@ static void hsw_activate_psr2(struct intel_dp *intel=
_dp)
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u32 val;
>  =

> -	/* Let's use 6 as the minimum to cover all known cases including the
> -	 * off-by-one issue that HW has in some cases.
> -	 */
> -	int idle_frames =3D max(6, dev_priv->vbt.psr.idle_frames);
> -
> -	idle_frames =3D max(idle_frames, dev_priv->psr.sink_sync_latency + 1);
> -	val =3D idle_frames << EDP_PSR2_IDLE_FRAME_SHIFT;
> +	val =3D psr_compute_idle_frames(intel_dp) << EDP_PSR2_IDLE_FRAME_SHIFT;
>  =

>  	val |=3D EDP_PSR2_ENABLE | EDP_SU_TRACK_ENABLE;
>  	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> @@ -566,16 +567,10 @@ static void tgl_psr2_enable_dc3co(struct drm_i915_p=
rivate *dev_priv)
>  =

>  static void tgl_psr2_disable_dc3co(struct drm_i915_private *dev_priv)
>  {
> -	int idle_frames;
> +	struct intel_dp *intel_dp =3D dev_priv->psr.dp;
>  =

>  	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
> -	/*
> -	 * Restore PSR2 idle frame let's use 6 as the minimum to cover all known
> -	 * cases including the off-by-one issue that HW has in some cases.
> -	 */
> -	idle_frames =3D max(6, dev_priv->vbt.psr.idle_frames);
> -	idle_frames =3D max(idle_frames, dev_priv->psr.sink_sync_latency + 1);
> -	psr2_program_idle_frames(dev_priv, idle_frames);
> +	psr2_program_idle_frames(dev_priv, psr_compute_idle_frames(intel_dp));
>  }
>  =

>  static void tgl_dc5_idle_thread(struct work_struct *work)
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
