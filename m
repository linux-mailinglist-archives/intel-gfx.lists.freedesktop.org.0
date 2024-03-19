Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EC187FC9A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 12:12:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B89410F9C4;
	Tue, 19 Mar 2024 11:12:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="HLrxohhy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD3210F9C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1710846719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=94+QAb0wp+6gGptZx+uOOi3f4vyGO0zxoBUxwFRWbnc=;
 b=HLrxohhyO2EuT1SJUlCJ1W86WuU0xgxYT2wEami1f26gAGGV2T735rREvRUZiE7bCuNd5V
 f5VxUJw3wdn0q5tHpteBbX542WPO/yZVwyEmmtjdx+bqt0+8aAzRKqfqdRNORXl8ImMLXO
 8NmtomQI8vUaFBYbz14DX15iBAKMwTM=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-692-PoF9odPBNG2i_E5BzpWQpA-1; Tue, 19 Mar 2024 07:11:57 -0400
X-MC-Unique: PoF9odPBNG2i_E5BzpWQpA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a35ef7abe08so239416266b.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 04:11:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710846716; x=1711451516;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=94+QAb0wp+6gGptZx+uOOi3f4vyGO0zxoBUxwFRWbnc=;
 b=D3KcmTsNF3XLj+0yodhnlsOYcwjC1INqmTN+zdtijMhFzucRg6iUzZ03mDckljHwsm
 vOb8EcHGoB/If/fMZucha+Y+QgOXhNdzaygzYeG4RTvgRZsxhnXLCTxNUZ0EbkmVd0ft
 Himk6hoadlnJGxb97qd3tZy0kg4ZJELiQ1nMgCCxMQSFmzxozzezaIePrGBtYGU3C3BK
 YW+PSyh+gBIueG+Tj7C3+svKpche0GRCZL9EMlK0///V1bqG2baJc5i2VKMVltC2Vs/s
 QQKFzD+mBv9CgyI4Y7KvzPA1PQDvMlzHnn3w+A9ps+XgPU2URQN+7u2ezYxLXmayBJ/o
 asPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMS+2NIve/VDMGe9mlkxyeKPjl4iP1URaEHTTmJLqbq6XAD9mfyx66y/7Yt+dNiTrIc3rFBu1gx3MrE7/QWxpAEL0qq+tbOpVcrsMbIPxP
X-Gm-Message-State: AOJu0Yy/L9vXmknep6Bq31ST9OMvZrPWdSSbpH/GMleZlTPlJYcSEUp5
 xK8SzZ2ZVYXzF6MwQ/R+Azgyn5Y8gnaUIEiPMI3yZhXyjNLWvm8d6rdE70U4c0MSGdr3hFi8QrV
 U5mHLH1yGLQu2+YowDa4JKdG2hyDeC0hEfZrXsIFwx3EgKdx3HNNwYISzlShgcsam0hCGx3pm1g
 ==
X-Received: by 2002:a17:906:2613:b0:a46:be1a:46d9 with SMTP id
 h19-20020a170906261300b00a46be1a46d9mr1422030ejc.15.1710846715916; 
 Tue, 19 Mar 2024 04:11:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyM6sHmSc6qS2z7VRRiP+pHqzWaasTsG7f/ZMS+/tCDUfpUhRgKe6bdCmkZoASI0vOgQ1Amg==
X-Received: by 2002:a17:906:2613:b0:a46:be1a:46d9 with SMTP id
 h19-20020a170906261300b00a46be1a46d9mr1422013ejc.15.1710846715563; 
 Tue, 19 Mar 2024 04:11:55 -0700 (PDT)
Received: from ?IPV6:2a02:810d:4b3f:ee94:abf:b8ff:feee:998b?
 ([2a02:810d:4b3f:ee94:abf:b8ff:feee:998b])
 by smtp.gmail.com with ESMTPSA id
 st6-20020a170907c08600b00a46af639a77sm3185616ejc.172.2024.03.19.04.11.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Mar 2024 04:11:55 -0700 (PDT)
Message-ID: <2996bb47-4be1-400a-b844-42be05f4b7ad@redhat.com>
Date: Tue, 19 Mar 2024 12:11:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND v3 1/6] drm/mst: read sideband messaging cap
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Arun R Murthy <arun.r.murthy@intel.com>,
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>
References: <cover.1710839496.git.jani.nikula@intel.com>
 <b32a3704934871a67d06420b760e148b76c5ced8.1710839496.git.jani.nikula@intel.com>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <b32a3704934871a67d06420b760e148b76c5ced8.1710839496.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 3/19/24 10:12, Jani Nikula wrote:
> Amend drm_dp_read_mst_cap() to return an enum, indicating "SST", "SST
> with sideband messaging", or "MST". Modify all call sites to take the
> new return value into account.
> 
> v2:
> - Rename enumerators (Ville)
> 
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Karol Herbst <kherbst@redhat.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Danilo Krummrich <dakr@redhat.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Danilo Krummrich <dakr@redhat.com>

> ---
>   drivers/gpu/drm/display/drm_dp_mst_topology.c | 20 ++++++++++------
>   drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++--
>   drivers/gpu/drm/nouveau/nouveau_dp.c          |  2 +-
>   include/drm/display/drm_dp_mst_helper.h       | 23 ++++++++++++++++++-
>   4 files changed, 38 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index 03d528209426..c193be3577f7 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -3608,24 +3608,30 @@ fixed20_12 drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
>   EXPORT_SYMBOL(drm_dp_get_vc_payload_bw);
>   
>   /**
> - * drm_dp_read_mst_cap() - check whether or not a sink supports MST
> + * drm_dp_read_mst_cap() - Read the sink's MST mode capability
>    * @aux: The DP AUX channel to use
>    * @dpcd: A cached copy of the DPCD capabilities for this sink
>    *
> - * Returns: %True if the sink supports MST, %false otherwise
> + * Returns: enum drm_dp_mst_mode to indicate MST mode capability
>    */
> -bool drm_dp_read_mst_cap(struct drm_dp_aux *aux,
> -			 const u8 dpcd[DP_RECEIVER_CAP_SIZE])
> +enum drm_dp_mst_mode drm_dp_read_mst_cap(struct drm_dp_aux *aux,
> +					 const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>   {
>   	u8 mstm_cap;
>   
>   	if (dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
> -		return false;
> +		return DRM_DP_SST;
>   
>   	if (drm_dp_dpcd_readb(aux, DP_MSTM_CAP, &mstm_cap) != 1)
> -		return false;
> +		return DRM_DP_SST;
> +
> +	if (mstm_cap & DP_MST_CAP)
> +		return DRM_DP_MST;
> +
> +	if (mstm_cap & DP_SINGLE_STREAM_SIDEBAND_MSG)
> +		return DRM_DP_SST_SIDEBAND_MSG;
>   
> -	return mstm_cap & DP_MST_CAP;
> +	return DRM_DP_SST;
>   }
>   EXPORT_SYMBOL(drm_dp_read_mst_cap);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index af7ca00e9bc0..91c42949ac7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4046,7 +4046,7 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
>   
>   	return i915->display.params.enable_dp_mst &&
>   		intel_dp_mst_source_support(intel_dp) &&
> -		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
> +		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
>   }
>   
>   static void
> @@ -4055,7 +4055,7 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   	struct intel_encoder *encoder =
>   		&dp_to_dig_port(intel_dp)->base;
> -	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
> +	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
>   
>   	drm_dbg_kms(&i915->drm,
>   		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
> diff --git a/drivers/gpu/drm/nouveau/nouveau_dp.c b/drivers/gpu/drm/nouveau/nouveau_dp.c
> index 7de7707ec6a8..fb06ee17d9e5 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_dp.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_dp.c
> @@ -181,7 +181,7 @@ nouveau_dp_probe_dpcd(struct nouveau_connector *nv_connector,
>   	if (nouveau_mst) {
>   		mstm = outp->dp.mstm;
>   		if (mstm)
> -			mstm->can_mst = drm_dp_read_mst_cap(aux, dpcd);
> +			mstm->can_mst = drm_dp_read_mst_cap(aux, dpcd) == DRM_DP_MST;
>   	}
>   
>   	if (nouveau_dp_has_sink_count(connector, outp)) {
> diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
> index 3ae88a383a41..cbcb49cb6a46 100644
> --- a/include/drm/display/drm_dp_mst_helper.h
> +++ b/include/drm/display/drm_dp_mst_helper.h
> @@ -817,7 +817,28 @@ int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
>   
>   void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr);
>   
> -bool drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);
> +/**
> + * enum drm_dp_mst_mode - sink's MST mode capability
> + */
> +enum drm_dp_mst_mode {
> +	/**
> +	 * @DRM_DP_SST: The sink does not support MST nor single stream sideband
> +	 * messaging.
> +	 */
> +	DRM_DP_SST,
> +	/**
> +	 * @DRM_DP_MST: Sink supports MST, more than one stream and single
> +	 * stream sideband messaging.
> +	 */
> +	DRM_DP_MST,
> +	/**
> +	 * @DRM_DP_SST_SIDEBAND_MSG: Sink supports only one stream and single
> +	 * stream sideband messaging.
> +	 */
> +	DRM_DP_SST_SIDEBAND_MSG,
> +};
> +
> +enum drm_dp_mst_mode drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);
>   int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool mst_state);
>   
>   int drm_dp_mst_hpd_irq_handle_event(struct drm_dp_mst_topology_mgr *mgr,

