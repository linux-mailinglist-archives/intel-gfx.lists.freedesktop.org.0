Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDI8Lnzm8WlZlAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 13:07:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF86493570
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 13:07:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3FD510EF16;
	Wed, 29 Apr 2026 11:07:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k2isLlLi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com
 [74.125.82.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0359F10EF2E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2026 11:07:33 +0000 (UTC)
Received: by mail-dy1-f173.google.com with SMTP id
 5a478bee46e88-2dec803f9f0so485433eec.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2026 04:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777460853; x=1778065653; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9A0jd8GBTQaVTR1Ped2F9WLbT+W3243fKksVMlAlYzI=;
 b=k2isLlLiiVeIxubRODcV0KyxodvoGuhg5Qro3iM+aMkOgDVzgVhUygsMJbYBEo7dAV
 hdX3+qsRZyLT5ZGwmAbuuzpBKv7KJeTK27vbFiHVRg6tAtMtRFxLb5DAN+wtF1RrJkEj
 lP824cjCdLkv4drNOCdVCJgDGAu+nqv7rjXFtCMdNrwXGfhSIDFBkvlW1DT/Qxmh9mFP
 3zXtgzV+iWSQ8Y+YGpU8dkDgotIT9aOMPZtiquQk/Y4RxgqeFXHRtypWYsbbUltUlipw
 7i3OCb+wi0GUY2XNXrfBybr5EQNoWFw+O3hJzPsSQ0gZTTi44iiuVE6jRdkqpTn9fl9J
 2PYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777460853; x=1778065653;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9A0jd8GBTQaVTR1Ped2F9WLbT+W3243fKksVMlAlYzI=;
 b=oNA3GnOSPpptR9HRG+cXswPJfG1ThFquvpMCHp7Czqck1n6C7wrtuJ+5lw3+NuWr4e
 EikAwDLWv6RLfMVbgQn9K/dRd4yKiKapa6TY9BQ6UVfke5P/rd4faxETnmBIE6ZahnZD
 5Nr3+F7vYrU2wa+6uxWKC3tlb+JaK/s8gap9M/4GNJCM6aZi0qCo7+ppc5qB3jbF83uV
 U4v5C9Nub+jGYAsnFUANk08bg3ujuFi//qVMkmgph5RAxzskGZV0A9J0sBCIWKxQT1V5
 967rjowSz1VO83JEH3cvnZ6i2HW3J1KieRpGwMJynOCJJ01TwOdOmSBaBFIBAFDLyLaJ
 MNHw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+8Oo+NfVWW03JelI/+NtqgI1S5vQ0iHcx5rL6cdGIHqNMtcm0p0QRWHp3Uqoo15DV1gbm0kaxiZcA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyJFKR1FI4xFOLxadykTCwMi5WGvbHnHuV67deCGJXkcvtHduJT
 r8brIDO9fTVsP5bkTHwoz6pDW18pEVqFZFZp7U5tAVz1LDreSibnYtE7
X-Gm-Gg: AeBDieuWgiZ9tPhvIqMDA1NZwwEEllk6kwsgk0nku4l7xybInq5M7OXohgHTg2Q1fUP
 Rsy6qTcMQ4UyrDQ33JS021XMEg2B1aSQqgg0/baKPq69w/ITvUaaLCyvYbKx5vpfAilxuf9U4mV
 73JkGOxY5JOdbbBRkutayr5S0e/V3VWrnA6AhNMYmLrLJqVIjlo6aLlGXVdoScW5EsjE2dIHYum
 AX6BpvPNHwGm9M+jcj5gruez/DUVX3n8IoDHVrjo/9x/B+R5LrqDXg07F03tEe95VI6PTgjAYZa
 9VDP3G3kk91MvTQdrhD8QyFmxxi3YG4Li2q6IlTJd1Hm5t0+8maWb7oIrKdOLNaT9UjzC9eFOJ9
 pNd2Gldhfp80WQGEveTVGQ7SdjlzO/Sz2nEZYFK+a7E2ToKcTAZ1CYWk8zfoh/67J+4QhMacf8U
 cAwasqqHtvLtkPxCrs/IG9w9qp4BADbyX9/2t4AKzwPiCWCkedoZuOSXI/MZ0aVBjLLsMDgWDBF
 dAueg==
X-Received: by 2002:a05:7300:dc98:b0:2d8:fce3:a073 with SMTP id
 5a478bee46e88-2ed1b3e9790mr1152773eec.8.1777460853109; 
 Wed, 29 Apr 2026 04:07:33 -0700 (PDT)
Received: from [192.55.54.47] ([192.55.54.47])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2ed1c0ce05bsm1557429eec.26.2026.04.29.04.07.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2026 04:07:32 -0700 (PDT)
Message-ID: <4fcaf7b2-05de-48e5-8d0f-10d6a4e8d4ee@gmail.com>
Date: Wed, 29 Apr 2026 14:07:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] [RFC v3]: drm/i915/display: Use ceiling division for NV12
 UV surface offset calculation
To: Vidya Srinivas <vidya.srinivas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 jani.nikula@intel.com
References: <20260411171521.162189-1-vidya.srinivas@intel.com>
 <20260415165849.187693-1-vidya.srinivas@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
In-Reply-To: <20260415165849.187693-1-vidya.srinivas@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Queue-Id: 4DF86493570
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:vidya.srinivas@intel.com,m:intel-xe@lists.freedesktop.org,m:uma.shankar@intel.com,m:jani.nikula@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_FROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Look ok to me. I tested this make related failing test pass and I didn't 
spot planar formats or scaler related failures in results for this patch.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 15/04/2026 19.58, Vidya Srinivas wrote:
> For LNL+, odd source size and panning for YUV 422/420 surfaces is
> supported. However, it requires the UV (chroma) surface Start X/Y and
> width/height to be calculated as ceiling(half of Y plane value) rather
> than floor.
> 
> The current code uses (>> 17) which combines the U16.16 fixed-point to
> integer conversion (>> 16) with a divide-by-2 for chroma subsampling
> (>> 1) into a single floor division. For odd Y plane values this
> produces an off-by-one error in the UV plane offset.
> 
> On Android systems we see PLANE ATS fault when NV12 overlays are
> used with odd source dimensions:
> 
> [  126.854200] xe 0000:00:02.0: [drm:intel_atomic_setup_scaler [xe]] [CRTC:148:pipe A] attached scaler id 0.0 to PLANE:33
> [  126.854617] xe 0000:00:02.0: [drm:skl_update_scaler [xe]] [CRTC:148:pipe A] scaler_user index 0.0: staged scaling request for 1279x719->1340x753
> [  126.854837] xe 0000:00:02.0: [drm:intel_plane_atomic_check [xe]] UV plane [PLANE:33:plane 1A] using Y plane [PLANE:123:plane 4A]
> [  126.854926] xe 0000:00:02.0: [drm] *ERROR* [CRTC:148:pipe A] PLANE ATS fault
> 
> With Y plane width 1279:
>    floor(1279/2) = 639 (current)
>    ceil(1279/2)  = 640 (required)
> 
> Introduce fp_16_16_div2() and fp_16_16_to_int_ceil() helpers to cleanly
> separate the two operations: first halve the U16.16 fixed-point value
> for chroma subsampling (staying in fixed-point domain), then convert
> to integer with ceiling rounding.
> 
> v2: Use DIV_ROUND_UP(value, 1 << 17) to preserve sub-pixel precision
>      while making the ceiling division readable (Jani, Uma)
> 
> v3: Split into two helpers - fp_16_16_div2() for fixed-point division
>      by 2 and fp_16_16_to_int_ceil() for ceiling conversion to integer,
>      cleanly separating chroma subsampling from fixed-point to integer
>      conversion (Jani)
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>   .../drm/i915/display/skl_universal_plane.c    | 27 ++++++++++++++++---
>   1 file changed, 23 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 7a9d494334b5..e772b0d716c7 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2126,6 +2126,19 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
>   	return 0;
>   }
>   
> +
> +/* Divide a U16.16 fixed-point value by 2, staying in fixed-point domain */
> +static inline u32 fp_16_16_div2(u32 fp)
> +{
> +	return fp >> 1;
> +}
> +
> +/* Convert a U16.16 fixed-point value to integer, rounding up */
> +static inline int fp_16_16_to_int_ceil(u32 fp)
> +{
> +	return DIV_ROUND_UP(fp, 1 << 16);
> +}
> +
>   static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
>   {
>   	struct intel_display *display = to_intel_display(plane_state);
> @@ -2139,10 +2152,16 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
>   	int min_height = intel_plane_min_height(plane, fb, uv_plane, rotation);
>   	int max_width = intel_plane_max_width(plane, fb, uv_plane, rotation);
>   	int max_height = intel_plane_max_height(plane, fb, uv_plane, rotation);
> -	int x = plane_state->uapi.src.x1 >> 17;
> -	int y = plane_state->uapi.src.y1 >> 17;
> -	int w = drm_rect_width(&plane_state->uapi.src) >> 17;
> -	int h = drm_rect_height(&plane_state->uapi.src) >> 17;
> +
> +	/*
> +	 * LNL+ UV surface start/size =
> +	 * ceiling(half of Y plane start/size). Use ceiling division
> +	 * unconditionally; it is a no-op for even values.
> +	 */
> +	int x = fp_16_16_to_int_ceil(fp_16_16_div2(plane_state->uapi.src.x1));
> +	int y = fp_16_16_to_int_ceil(fp_16_16_div2(plane_state->uapi.src.y1));
> +	int w = fp_16_16_to_int_ceil(fp_16_16_div2(drm_rect_width(&plane_state->uapi.src)));
> +	int h = fp_16_16_to_int_ceil(fp_16_16_div2(drm_rect_height(&plane_state->uapi.src)));
>   	u32 offset;
>   
>   	/* FIXME not quite sure how/if these apply to the chroma plane */

