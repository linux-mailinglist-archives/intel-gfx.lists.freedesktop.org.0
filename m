Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B3B152884
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 10:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C287F6F4F8;
	Wed,  5 Feb 2020 09:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB41E6F4F8
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 09:38:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 01:38:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="264161468"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga002.fm.intel.com with ESMTP; 05 Feb 2020 01:38:14 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Feb 2020 09:38:13 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 5 Feb 2020 09:38:13 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 5 Feb 2020 09:38:13 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH] drm/i915/mst: fix pipe and vblank enable
Thread-Index: AQHV2/50Y7tL1mcXdE2Pjql3ch2ptagMVwiA
Date: Wed, 5 Feb 2020 09:38:13 +0000
Message-ID: <d508d51472343614c50338b2b28fc0dfd10993a0.camel@intel.com>
References: <20200205082959.31317-1-jani.nikula@intel.com>
In-Reply-To: <20200205082959.31317-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <52B8F8AB04CEF54A9CB4F1474D79AB65@intel.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-02-05 at 10:29 +0200, Jani Nikula wrote:
> Commit 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to
> encoders on DDI platforms") pushed pipe and vblank enable to encoders
> on
> DDI platforms, however it missed the DP MST encoder. Fix it.
> 
> Fixes: 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to
> encoders on DDI platforms")
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Checked, seems to fix my displays, so

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b8aee506d595..9cd59141953d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -491,6 +491,12 @@ static void intel_mst_enable_dp(struct
> intel_encoder *encoder,
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
>  	if (intel_de_wait_for_set(dev_priv, intel_dp-
> >regs.dp_tp_status,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
