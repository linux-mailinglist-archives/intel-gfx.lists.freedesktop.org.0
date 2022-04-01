Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63B84EED58
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 14:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F153D10E064;
	Fri,  1 Apr 2022 12:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F9210E064
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 12:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648816849; x=1680352849;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=iBhVxGztLKL2ZfKv0PvFn4YVfZmhZm8UOG5K0/VnKno=;
 b=g+UeBpj23xsKQuKgb4Soof5lGDQy++D+GBXaw7IgJt39Fla5VbdY7mAh
 lLvUEknluppTXb4NX3HnxVKhiz+2ZJePRoHTw+Fjjc4pK9YDd6TJSQF1N
 Yc+i8K0vmVTx/ILCQzkuTxBfjeliNv8wSwaG4klnyKE3v+ZYf7xBzedrx
 pmtTYdsTfRvZojMzwteiNUIb2dZKxaOCls70rqBvcIzmd2X1mW+zG6bIc
 1v/IVVmbAzNUMZl2a8WnspbF7LGulIerFd1ygAeAG1D1MUUG7/zgPUBt6
 WqpOtq02tRTWzTjZZ0OmZXHtzSMWO362ElUQrRWs6luKoNotaV7s5WFpP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="323299163"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="323299163"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:40:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="567460321"
Received: from kohnenth-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.214])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:40:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220329060731.785476-1-bhanuprakash.modem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220328075020.708022-1-bhanuprakash.modem@intel.com>
 <20220329060731.785476-1-bhanuprakash.modem@intel.com>
Date: Fri, 01 Apr 2022 15:40:43 +0300
Message-ID: <877d897z90.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/debugfs: Add connector
 debugfs for "output_bpc"
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

On Tue, 29 Mar 2022, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrot=
e:
> This new debugfs will expose the connector's max supported bpc
> and the bpc currently using. It is very useful for verifying
> whether we enter the correct output color depth from IGT.
>
> Example:
> cat /sys/kernel/debug/dri/0/DP-1/output_bpc
> Current: 8
> Maximum: 10
>
> V2: Add connector's max bpc to i915_display_info
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index c1e74a13a0828..694d27f3b109c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -663,6 +663,8 @@ static void intel_connector_info(struct seq_file *m,
>  	seq_puts(m, "\tHDCP version: ");
>  	intel_hdcp_info(m, intel_connector);
>=20=20
> +	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
> +
>  	intel_panel_info(m, intel_connector);
>=20=20
>  	seq_printf(m, "\tmodes:\n");
> @@ -2275,6 +2277,47 @@ static const struct file_operations i915_dsc_bpp_f=
ops =3D {
>  	.write =3D i915_dsc_bpp_write
>  };
>=20=20
> +/*
> + * Returns the maximum output bpc for the connector.
> + * Example usage: cat /sys/kernel/debug/dri/0/DP-1/output_bpc
> + */
> +static int output_bpc_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector =3D m->private;
> +	struct drm_device *dev =3D connector->dev;
> +	struct drm_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_encoder *encoder =3D intel_attached_encoder(to_intel_conne=
ctor(connector));
> +	int res;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	res =3D drm_modeset_lock_single_interruptible(&dev->mode_config.connect=
ion_mutex);
> +	if (res)
> +		return res;
> +
> +	crtc =3D connector->state->crtc;
> +	if (connector->status !=3D connector_status_connected || !crtc) {
> +		res =3D -ENODEV;
> +		goto unlock;
> +	}
> +
> +	crtc_state =3D to_intel_crtc_state(crtc->state);
> +	if (!crtc_state->hw.active)
> +		goto unlock;
> +
> +	seq_printf(m, "Current: %u\n", crtc_state->pipe_bpp / 3);
> +	seq_printf(m, "Maximum: %u\n", connector->display_info.bpc);
> +	res =3D 0;
> +
> +unlock:
> +	drm_modeset_unlock(&dev->mode_config.connection_mutex);
> +
> +	return res;
> +}
> +DEFINE_SHOW_ATTRIBUTE(output_bpc);

Looks like an excessive amount of code for a single value.

BR,
Jani.

> +
>  /**
>   * intel_connector_debugfs_add - add i915 specific connector debugfs fil=
es
>   * @connector: pointer to a registered drm_connector
> @@ -2330,6 +2373,9 @@ void intel_connector_debugfs_add(struct intel_conne=
ctor *intel_connector)
>  	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB)
>  		debugfs_create_file("i915_lpsp_capability", 0444, root,
>  				    connector, &i915_lpsp_capability_fops);
> +
> +	debugfs_create_file("output_bpc", 0444, root,
> +			    connector, &output_bpc_fops);
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel Open Source Graphics Center
