Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D07CF1FB731
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 17:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD2D6E8FB;
	Tue, 16 Jun 2020 15:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ECD06E8FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 15:46:26 +0000 (UTC)
IronPort-SDR: tO60hWj4jusorNYjMsVQne5hQFr9O9/h8wfp8F+qtebpkhp7czYyK/kZLi+a/3xJMl70RykPE5
 XYPnJY1SmIzg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:46:25 -0700
IronPort-SDR: Sy0FpN00RjK1J7cebDLotk8C5ZHXKr5h9D3ZaS60sZy3GfV6qeoZXxmjFXTHgXaJWtBomy773d
 vg44pU075qAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="382907184"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 16 Jun 2020 08:46:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jun 2020 18:46:22 +0300
Date: Tue, 16 Jun 2020 18:46:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200616154622.GZ6112@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/tgl+: Use the correct DP_TP_*
 register instances in MST encoders
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

On Tue, Jun 16, 2020 at 05:18:50PM +0300, Imre Deak wrote:
> MST encoders must use the master MST transcoder's DP_TP_STATUS and
> DP_TP_CONTROL registers. Atm, during the HW readout of a slave
> transcoder's CRTC state we reset these register addresses in
> intel_dp::regs.dp_tp_* to the slave transcoder's DP_TP_* register
> addresses incorrectly; fix this.
> =

> This issue led at least to
> 'Timed out waiting for ACT sent when disabling'
> errors during output disabling in a multiple MST stream config.
> =

> This change replaces
> https://patchwork.freedesktop.org/patch/369577/?series=3D78193&rev=3D1
> which just papered over the problem.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index ca7bb2294d2b..73d6cc29291a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4193,11 +4193,6 @@ void intel_ddi_get_config(struct intel_encoder *en=
coder,
>  	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
>  		return;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 12) {
> -		intel_dp->regs.dp_tp_ctl =3D TGL_DP_TP_CTL(cpu_transcoder);
> -		intel_dp->regs.dp_tp_status =3D TGL_DP_TP_STATUS(cpu_transcoder);
> -	}
> -
>  	intel_dsc_get_config(encoder, pipe_config);
>  =

>  	temp =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> @@ -4299,6 +4294,16 @@ void intel_ddi_get_config(struct intel_encoder *en=
coder,
>  		break;
>  	}
>  =

> +	if (INTEL_GEN(dev_priv) >=3D 12) {
> +		enum transcoder transcoder =3D
> +			intel_dp_mst_is_slave_trans(pipe_config) ?
> +			pipe_config->mst_master_transcoder :
> +			pipe_config->cpu_transcoder;
> +
> +		intel_dp->regs.dp_tp_ctl =3D TGL_DP_TP_CTL(transcoder);
> +		intel_dp->regs.dp_tp_status =3D TGL_DP_TP_STATUS(transcoder);
> +	}
> +
>  	pipe_config->has_audio =3D
>  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
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
