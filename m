Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F532B5DF1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 12:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BE889EFF;
	Tue, 17 Nov 2020 11:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F3E89EFF
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 11:07:11 +0000 (UTC)
IronPort-SDR: hpW4bMyQyuaV2QrHfqAuJ08WGlMf7GZxvQARAuwI5GJL/sHo/d5ZYpzHg0SrgTRTf0OT7PSFsr
 6VGhZ8IWG5Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="170120535"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="170120535"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 03:07:11 -0800
IronPort-SDR: 6NoLb8ISgygE1i2kV1d6hLNmuOb5+FLTn1ybNCaNvTTk4eS5P/OVd2QEzNufk7MaH+/ch13NmI
 D5Nuq4AjB30w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="532183508"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 17 Nov 2020 03:07:11 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Nov 2020 03:07:10 -0800
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Nov 2020 16:37:07 +0530
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.1713.004;
 Tue, 17 Nov 2020 16:37:07 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 19/23] drm/i915: Add debugfs dumping for
 bigjoiner, v3.
Thread-Index: AQHWugkMeykF4hyXGUW6HGSzLYxJfanMLyjA
Date: Tue, 17 Nov 2020 11:07:07 +0000
Message-ID: <923f25b003cd47e4a1ef05f783f09ebc@intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-20-ville.syrjala@linux.intel.com>
In-Reply-To: <20201113220358.24794-20-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 19/23] drm/i915: Add debugfs dumping for
 bigjoiner, v3.
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> Syrjala
> Sent: Saturday, November 14, 2020 3:34 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 19/23] drm/i915: Add debugfs dumping for bigjoiner,
> v3.
> 
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> 
> Dump debugfs and planar links as well, this will make it easier to debug when
> things go wrong.
> 
> v4:
> * Rebase
> Changes since v1:
> - Report planar slaves as such, now that we have the plane_state switch.
> Changes since v2:
> - Rebase on top of the new plane format dumping
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 25 ++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 00b79593bcef..ca41e8c00ad7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -755,6 +755,17 @@ static void plane_rotation(char *buf, size_t bufsize,
> unsigned int rotation)
>  		 rotation);
>  }
> 
> +static const char *plane_visibility(const struct intel_plane_state
> +*plane_state) {
> +	if (plane_state->uapi.visible)
> +		return "visible";
> +
> +	if (plane_state->planar_slave)
> +		return "planar-slave";
> +
> +	return "hidden";
> +}
> +
>  static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane *plane)  {
>  	const struct intel_plane_state *plane_state = @@ -773,13 +784,19 @@
> static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane *plane)
>  	plane_rotation(rot_str, sizeof(rot_str),
>  		       plane_state->uapi.rotation);
> 
> -	seq_printf(m, "\t\tuapi: [FB:%d] %s,0x%llx,%dx%d, src="
> DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",
> +	seq_printf(m, "\t\tuapi: [FB:%d] %s,0x%llx,%dx%d, visible=%s, src="
> +DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",
>  		   fb ? fb->base.id : 0, fb ? format_name.str : "n/a",
>  		   fb ? fb->modifier : 0,
>  		   fb ? fb->width : 0, fb ? fb->height : 0,
> +		   plane_visibility(plane_state),
>  		   DRM_RECT_FP_ARG(&src),
>  		   DRM_RECT_ARG(&dst),
>  		   rot_str);
> +
> +	if (plane_state->planar_linked_plane)
> +		seq_printf(m, "\t\tplanar: Linked to [PLANE:%d:%s] as a %s\n",
> +			   plane_state->planar_linked_plane->base.base.id,
> plane_state->planar_linked_plane->base.name,
> +			   plane_state->planar_slave ? "slave" : "master");
>  }
> 
>  static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *plane)
> @@ -875,6 +892,12 @@ static void intel_crtc_info(struct seq_file *m, struct
> intel_crtc *crtc)
>  		intel_scaler_info(m, crtc);
>  	}
> 
> +	if (crtc_state->bigjoiner)
> +		seq_printf(m, "\tLinked to [CRTC:%d:%s] as a %s\n",
> +			   crtc_state->bigjoiner_linked_crtc->base.base.id,
> +			   crtc_state->bigjoiner_linked_crtc->base.name,
> +			   crtc_state->bigjoiner_slave ? "slave" : "master");
> +
>  	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
>  				    crtc_state->uapi.encoder_mask)
>  		intel_encoder_info(m, crtc, encoder);
> --
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
