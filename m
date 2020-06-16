Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E87141FB75B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 17:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C516E8FA;
	Tue, 16 Jun 2020 15:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 671046E8FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 15:47:06 +0000 (UTC)
IronPort-SDR: e9Ha168fnoDPGSgc6DJOYv3t8QfHIFUkmtjNJdX+uZKK5DPipwa9ZrpL8c/Ckxl0y8o1StSexq
 3eVihCtWsWiw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:47:05 -0700
IronPort-SDR: OIu7AK55m6U3lMcroGel+GQ7XcW1PzGojMmN6kZipURFlQ3kHMS7+NKC+BKAi0HDcFsO1yr+cy
 U1HtVBuKDfHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="308497579"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 16 Jun 2020 08:47:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jun 2020 18:47:02 +0300
Date: Tue, 16 Jun 2020 18:47:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200616154702.GA6112@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
 <20200616141855.746-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616141855.746-3-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/dp_mst: Move clearing the ACT
 sent flag closer to its polling
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

On Tue, Jun 16, 2020 at 05:18:52PM +0300, Imre Deak wrote:
> During transcoder enabling we'll configure the transcoder in MST mode
> and enable the VC payload allocation, which will start the ACT sequence.
> Before waiting for the ACT sequence completion, we need to clear the ACT
> sent flag, but based on the above we can do this right before enabling
> the transcoder.
> =

> For clarity, move the flag clearing closer to where we wait for it.
> =

> While at it also factor out some common code.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 36 +++++++++++++--------
>  1 file changed, 23 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 2e6c6375a23b..3977ee4f7176 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -317,6 +317,25 @@ intel_dp_mst_atomic_check(struct drm_connector *conn=
ector,
>  	return ret;
>  }
>  =

> +static void clear_act_sent(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
> +	intel_de_write(i915, intel_dp->regs.dp_tp_status,
> +		       intel_de_read(i915, intel_dp->regs.dp_tp_status));
> +}
> +
> +static void wait_for_act_sent(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
> +	if (intel_de_wait_for_set(i915, intel_dp->regs.dp_tp_status,
> +				  DP_TP_STATUS_ACT_SENT, 1))
> +		drm_err(&i915->drm, "Timed out waiting for ACT sent\n");
> +
> +	drm_dp_check_act_status(&intel_dp->mst_mgr);
> +}
> +
>  static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  				 struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *old_crtc_state,
> @@ -377,11 +396,7 @@ static void intel_mst_post_disable_dp(struct intel_a=
tomic_state *state,
>  		       TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
>  		       val);
>  =

> -	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
> -				  DP_TP_STATUS_ACT_SENT, 1))
> -		drm_err(&dev_priv->drm,
> -			"Timed out waiting for ACT sent when disabling\n");
> -	drm_dp_check_act_status(&intel_dp->mst_mgr);
> +	wait_for_act_sent(intel_dp);
>  =

>  	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);
>  =

> @@ -452,7 +467,6 @@ static void intel_mst_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>  	int ret;
> -	u32 temp;
>  	bool first_mst_stream;
>  =

>  	/* MST encoders are bound to a crtc, not to a connector,
> @@ -485,8 +499,6 @@ static void intel_mst_pre_enable_dp(struct intel_atom=
ic_state *state,
>  		drm_err(&dev_priv->drm, "failed to allocate vcpi\n");
>  =

>  	intel_dp->active_mst_links++;
> -	temp =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_status);
> -	intel_de_write(dev_priv, intel_dp->regs.dp_tp_status, temp);
>  =

>  	ret =3D drm_dp_update_payload_part1(&intel_dp->mst_mgr);
>  =

> @@ -517,16 +529,14 @@ static void intel_mst_enable_dp(struct intel_atomic=
_state *state,
>  =

>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>  =

> +	clear_act_sent(intel_dp);
> +
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>  =

>  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>  =

> -	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
> -				  DP_TP_STATUS_ACT_SENT, 1))
> -		drm_err(&dev_priv->drm, "Timed out waiting for ACT sent\n");
> -
> -	drm_dp_check_act_status(&intel_dp->mst_mgr);
> +	wait_for_act_sent(intel_dp);
>  =

>  	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
>  =

> -- =

> 2.23.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
