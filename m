Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A5D87FCA7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 12:14:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6884C10F9CF;
	Tue, 19 Mar 2024 11:14:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="XaVppJZk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2722210F221
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 11:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1710846850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wTgQRorcbweqVaHOpbwG9lsYfXZcZSKbvGA/ouG3pl8=;
 b=XaVppJZkGnlgP7dNiXJV8ICqeVwFBUH5+r4lvtDPA+3rnFzxkxGWwaxp34IvzFjnY9Z8Ay
 3q56ChC5EQTl7GGdLHCtkOH048R6Mph00s0rdu8mRWkbnOYLDenqlad5WjAmKIokDKnZOB
 lpUb95SwATYJYWRcssBqYg7p2edr+2M=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-384-uBwpfyCrM3OBGzr4lxmuRg-1; Tue, 19 Mar 2024 07:14:08 -0400
X-MC-Unique: uBwpfyCrM3OBGzr4lxmuRg-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-56b829a3b41so876903a12.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 04:14:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710846847; x=1711451647;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wTgQRorcbweqVaHOpbwG9lsYfXZcZSKbvGA/ouG3pl8=;
 b=VSlt1W50kPGZwUJ4Vr7aVILzBDTM5wlGox1hPsjdcRKanTrg88N9mYXwuQqA8C9XX5
 LRjgiGWXrx6pu5WBdTYVprQ8U3m6o/2/LO1X/hgSHaFY1AtKPgGqS/vflaRamFJpB0/Z
 MV/7Cxjv5Gk/b5+EXOdOdhYHKTkNjprqDS3Yi29Y4xN4fYJRYc4l352aZ20xcsYe2SjR
 eBXn/PbS8HlLAKRn3yK049R/taXIZBDWY0dcp7gnOdEu4DrKEYE7fb2ld3ka7RaU3eyu
 LYhxosGrwVjxivXAJ/MfRL84QYIhYNH9VXVXKXR+htB4G7RHOWCaYFp7Jbcqsqt5kNCq
 jxLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV5MBsqojo+rkyOlzTjA1KypAKZRZUUIaLC6qafBxdXXCSPErduCfg65t8R01ZCagwJFgzNLlu3apqBWPkbOUkIuePoU8TsXQU9o4cHoNrO
X-Gm-Message-State: AOJu0Yw3z/Go8AZxRz33Hal3DbUao5k0XFtiDK3CErx4SFFf0V7BBgWW
 19YLfyVF8mIrnpMR0xPhkKNbkWhXOnubGEXcLEMxeuVwwOLYuqGbz+tP9tkB72gjveAXCNnOb90
 S+ubIaLjwkRpAm0s9cNmbTl/Pslmp8lYoDlKeuVvyr9wvdT7kMwJBCLfcvJfvlyDgAA==
X-Received: by 2002:a05:6402:4013:b0:567:ff26:4bcb with SMTP id
 d19-20020a056402401300b00567ff264bcbmr10707411eda.30.1710846847710; 
 Tue, 19 Mar 2024 04:14:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiiGjQqciqMnsAjE+h4b53xkXlJ5Y4nzLhO4CE+h2udCcBAppsoiwsS3WPN/MIojOXiSQU/g==
X-Received: by 2002:a05:6402:4013:b0:567:ff26:4bcb with SMTP id
 d19-20020a056402401300b00567ff264bcbmr10707393eda.30.1710846847353; 
 Tue, 19 Mar 2024 04:14:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:4b3f:ee94:abf:b8ff:feee:998b?
 ([2a02:810d:4b3f:ee94:abf:b8ff:feee:998b])
 by smtp.gmail.com with ESMTPSA id
 d22-20020aa7d5d6000000b0056b9b64bdfasm441112eds.69.2024.03.19.04.14.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Mar 2024 04:14:07 -0700 (PDT)
Message-ID: <a4fd01a5-fbc8-4c1f-828e-2d9dde256892@redhat.com>
Date: Tue, 19 Mar 2024 12:14:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND v3 1/6] drm/mst: read sideband messaging cap
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Arun R Murthy <arun.r.murthy@intel.com>,
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
References: <cover.1710839496.git.jani.nikula@intel.com>
 <b32a3704934871a67d06420b760e148b76c5ced8.1710839496.git.jani.nikula@intel.com>
 <87v85io9wv.fsf@intel.com>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <87v85io9wv.fsf@intel.com>
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

On 3/19/24 10:20, Jani Nikula wrote:
> On Tue, 19 Mar 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> Amend drm_dp_read_mst_cap() to return an enum, indicating "SST", "SST
>> with sideband messaging", or "MST". Modify all call sites to take the
>> new return value into account.
> 
> drm-misc and nouveau maintainers, ack for merging this via drm-intel,
> please?

Sure, please go ahead.

Thanks,
Danilo

> 
> BR,
> Jani.
> 
> 
> 
>>
>> v2:
>> - Rename enumerators (Ville)
>>
>> Cc: Arun R Murthy <arun.r.murthy@intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Karol Herbst <kherbst@redhat.com>
>> Cc: Lyude Paul <lyude@redhat.com>
>> Cc: Danilo Krummrich <dakr@redhat.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/display/drm_dp_mst_topology.c | 20 ++++++++++------
>>   drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++--
>>   drivers/gpu/drm/nouveau/nouveau_dp.c          |  2 +-
>>   include/drm/display/drm_dp_mst_helper.h       | 23 ++++++++++++++++++-
>>   4 files changed, 38 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
>> index 03d528209426..c193be3577f7 100644
>> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
>> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
>> @@ -3608,24 +3608,30 @@ fixed20_12 drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
>>   EXPORT_SYMBOL(drm_dp_get_vc_payload_bw);
>>   
>>   /**
>> - * drm_dp_read_mst_cap() - check whether or not a sink supports MST
>> + * drm_dp_read_mst_cap() - Read the sink's MST mode capability
>>    * @aux: The DP AUX channel to use
>>    * @dpcd: A cached copy of the DPCD capabilities for this sink
>>    *
>> - * Returns: %True if the sink supports MST, %false otherwise
>> + * Returns: enum drm_dp_mst_mode to indicate MST mode capability
>>    */
>> -bool drm_dp_read_mst_cap(struct drm_dp_aux *aux,
>> -			 const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>> +enum drm_dp_mst_mode drm_dp_read_mst_cap(struct drm_dp_aux *aux,
>> +					 const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>>   {
>>   	u8 mstm_cap;
>>   
>>   	if (dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
>> -		return false;
>> +		return DRM_DP_SST;
>>   
>>   	if (drm_dp_dpcd_readb(aux, DP_MSTM_CAP, &mstm_cap) != 1)
>> -		return false;
>> +		return DRM_DP_SST;
>> +
>> +	if (mstm_cap & DP_MST_CAP)
>> +		return DRM_DP_MST;
>> +
>> +	if (mstm_cap & DP_SINGLE_STREAM_SIDEBAND_MSG)
>> +		return DRM_DP_SST_SIDEBAND_MSG;
>>   
>> -	return mstm_cap & DP_MST_CAP;
>> +	return DRM_DP_SST;
>>   }
>>   EXPORT_SYMBOL(drm_dp_read_mst_cap);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index af7ca00e9bc0..91c42949ac7e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4046,7 +4046,7 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
>>   
>>   	return i915->display.params.enable_dp_mst &&
>>   		intel_dp_mst_source_support(intel_dp) &&
>> -		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
>> +		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
>>   }
>>   
>>   static void
>> @@ -4055,7 +4055,7 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   	struct intel_encoder *encoder =
>>   		&dp_to_dig_port(intel_dp)->base;
>> -	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
>> +	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
>> diff --git a/drivers/gpu/drm/nouveau/nouveau_dp.c b/drivers/gpu/drm/nouveau/nouveau_dp.c
>> index 7de7707ec6a8..fb06ee17d9e5 100644
>> --- a/drivers/gpu/drm/nouveau/nouveau_dp.c
>> +++ b/drivers/gpu/drm/nouveau/nouveau_dp.c
>> @@ -181,7 +181,7 @@ nouveau_dp_probe_dpcd(struct nouveau_connector *nv_connector,
>>   	if (nouveau_mst) {
>>   		mstm = outp->dp.mstm;
>>   		if (mstm)
>> -			mstm->can_mst = drm_dp_read_mst_cap(aux, dpcd);
>> +			mstm->can_mst = drm_dp_read_mst_cap(aux, dpcd) == DRM_DP_MST;
>>   	}
>>   
>>   	if (nouveau_dp_has_sink_count(connector, outp)) {
>> diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
>> index 3ae88a383a41..cbcb49cb6a46 100644
>> --- a/include/drm/display/drm_dp_mst_helper.h
>> +++ b/include/drm/display/drm_dp_mst_helper.h
>> @@ -817,7 +817,28 @@ int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
>>   
>>   void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr);
>>   
>> -bool drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);
>> +/**
>> + * enum drm_dp_mst_mode - sink's MST mode capability
>> + */
>> +enum drm_dp_mst_mode {
>> +	/**
>> +	 * @DRM_DP_SST: The sink does not support MST nor single stream sideband
>> +	 * messaging.
>> +	 */
>> +	DRM_DP_SST,
>> +	/**
>> +	 * @DRM_DP_MST: Sink supports MST, more than one stream and single
>> +	 * stream sideband messaging.
>> +	 */
>> +	DRM_DP_MST,
>> +	/**
>> +	 * @DRM_DP_SST_SIDEBAND_MSG: Sink supports only one stream and single
>> +	 * stream sideband messaging.
>> +	 */
>> +	DRM_DP_SST_SIDEBAND_MSG,
>> +};
>> +
>> +enum drm_dp_mst_mode drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);
>>   int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool mst_state);
>>   
>>   int drm_dp_mst_hpd_irq_handle_event(struct drm_dp_mst_topology_mgr *mgr,
> 

