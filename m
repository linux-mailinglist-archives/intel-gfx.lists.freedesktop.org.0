Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0FF152861
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 10:33:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B78996F4EF;
	Wed,  5 Feb 2020 09:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0AC6F4EF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 09:33:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 01:33:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="343371813"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 05 Feb 2020 01:33:17 -0800
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Feb 2020 01:33:16 -0800
Received: from bgsmsx155.gar.corp.intel.com (10.224.48.102) by
 fmsmsx158.amr.corp.intel.com (10.18.116.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Feb 2020 01:33:16 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.91]) by
 BGSMSX155.gar.corp.intel.com ([169.254.12.108]) with mapi id 14.03.0439.000;
 Wed, 5 Feb 2020 15:03:13 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mst: fix pipe and vblank enable
Thread-Index: AQHV2/52sVzYLMphdkuzHs4d60OK2KgMVdKw
Date: Wed, 5 Feb 2020 09:33:12 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B80A2F9F0@BGSMSX108.gar.corp.intel.com>
References: <20200205082959.31317-1-jani.nikula@intel.com>
In-Reply-To: <20200205082959.31317-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjI2ZTZhMTEtMzQwYy00ODQxLTkyMzUtMGE3YzM0Yjg1ODczIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVlVlc3p0SkNXK0FZanVnNHhrXC9BUFNOVUFuOVgra2VicW9KazR5ZThZM2RcLzFzWWJ5Ulk1Y2NOY09DMzQwcm9UIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: fix pipe and vblank enable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Wednesday, February 5, 2020 2:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>; Ville Syrjala <ville.syrjala@linux.intel.com>;
> Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Subject: [PATCH] drm/i915/mst: fix pipe and vblank enable
> 
> Commit 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to
> encoders on DDI platforms") pushed pipe and vblank enable to encoders on DDI
> platforms, however it missed the DP MST encoder. Fix it.
> 
> Fixes: 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to encoders
> on DDI platforms")
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks good to me.
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b8aee506d595..9cd59141953d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -491,6 +491,12 @@ static void intel_mst_enable_dp(struct intel_encoder
> *encoder,
>  	struct intel_dp *intel_dp = &intel_dig_port->dp;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> 
> +	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
> +
> +	intel_enable_pipe(pipe_config);
> +
> +	intel_crtc_vblank_on(pipe_config);
> +
>  	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
> 
>  	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
