Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80476994331
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 11:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2605710E4AF;
	Tue,  8 Oct 2024 09:01:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Exm7Qkmq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B427310E4A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 09:01:26 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-42cb2191107so47872325e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Oct 2024 02:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728378085; x=1728982885; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=jG+w3MK4bfIOX7lbpH+0lEvwh9thN6p9tiGW8cj2qLE=;
 b=Exm7QkmqcExoqj+I/IWNEOuImTEJWJLApv5bZSY+HMP6gr8pwHDu5EGObSo4MohwkK
 EizNEKNGO0GBr/0mdkyIWAXzoyFvCflo8e7yGZzVjWJ5gyL43UouKq2pI8U2L+CaAUuh
 oYS7FlqtlX8/EdqpwlOfKpFJ5PFdQT5Lg4xjO+k38/IuD/Fz6E/Nctj31Jth+QlpxAzI
 lNvE4hWMF/U8expjFRUbM21QkazOauaykRmK+RVU7LaR58PH2k3FsWYjstLrchGU24nt
 EYlTqDXpuPOsqk8VuXUAiyOdu+41PxEjFQjhSxh40feHWWNK3iPZHxe1F6Ehy1OeWJr/
 g30A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728378085; x=1728982885;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jG+w3MK4bfIOX7lbpH+0lEvwh9thN6p9tiGW8cj2qLE=;
 b=aPIdzO0Y4bZa8weXGdBBqN4EI33V26FtzAM52+ACQ0YW+8JCT420WFC+lsJCJYPc4r
 463daKVBd2Mxmj5PzqDhHVB5httSKwgUaS7c6/aIdmwdNT5SHqMfymkhHTjEhfNRzu8U
 8Jjn/J5XEAy9ACNSeuSB+csrkOxQiLgA/eTqz8VByJSrDkgXaN6dVRsx8FMnMVPboXkC
 Xb7TA+qFGLA85JzGaF9ArcxLb7Wa+iXe04QTnBJ/c5+UcEVel9SAsGzHtkpIHYvJQ6ka
 b9yWx3lfkw58ztz40DR/GYEPqKRfW6e4bxH5JDkDBZjvpUQP0a1dO/9g9s0uyx2OD3z4
 nGUA==
X-Gm-Message-State: AOJu0Yz0fBAZurpw6lwo6uZtpR4UYM0toj5qJfvgF7V6JLyZQQa9ed65
 HnYb2h+8TtEMaqfl9Q+TBrLOrtdTSW8Zvvq8wJRHgfvcqI1JWwu00PGoeNgzG4k=
X-Google-Smtp-Source: AGHT+IFvUcq2rZvmHZO+8xYPM49jt3EhWGeyiMhB/MtClUUmmkC7XouGzf5/fiIwBMKoeqURDrxQAQ==
X-Received: by 2002:adf:ab1d:0:b0:37c:d027:d92f with SMTP id
 ffacd0b85a97d-37d0e6efed3mr8157475f8f.15.1728378084700; 
 Tue, 08 Oct 2024 02:01:24 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.77])
 by smtp.googlemail.com with ESMTPSA id
 ffacd0b85a97d-37d16972b7dsm7571423f8f.106.2024.10.08.02.01.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2024 02:01:24 -0700 (PDT)
Message-ID: <60c4b7c8-6ae8-469f-937d-d1a877c9b16c@gmail.com>
Date: Tue, 8 Oct 2024 12:01:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] drm/i915: Enable 10bpc + CCS on TGL+
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-4-ville.syrjala@linux.intel.com>
 <e30b033c-c242-47ef-aa9e-ba2ee734ca09@gmail.com> <ZwAt5SfK8wzYoQb1@intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <ZwAt5SfK8wzYoQb1@intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 4.10.2024 21.03, Ville Syrjälä wrote:
> On Fri, Oct 04, 2024 at 04:35:17PM +0300, Juha-Pekka Heikkila wrote:
>> On 18.9.2024 17.44, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> TGL+ support 10bpc compressed scanout. Enable it.
>>>
>>> v2: Set .depth=30 for all variants to match drm_fourcc.c
>>>       Set clear color block size to 0x0
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_fb.c       | 36 +++++++++++++++++++
>>>    .../drm/i915/display/skl_universal_plane.c    |  8 ++---
>>>    2 files changed, 40 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>>> index bcf0d016f499..9b9da4f71f73 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>>> @@ -67,6 +67,18 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>>>    	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
>>>    	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>>>    	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>> +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
>>> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>>> +	  .hsub = 1, .vsub = 1, },
>>> +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
>>> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>>> +	  .hsub = 1, .vsub = 1, },
>>> +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
>>
>> Is that comment about depth=30 for all variants because of these alpha
>> formats? Why is that? Here on other formats alpha is taken as part of
>> depth, like in above "DRM_FORMAT_ABGR8888, .depth = 32"
> 
> That stuff is just legacy compatibility stuff, and back in
> the day peope decided that depth==32 simply means ARGB8888.
> I'm not sure we should even state depth=30 on ARGB2101010
> at all, or would it be better to leave it at 0.
> 
> Another option might be to just set .depth=0 on absolutely
> all compressed formats. Using these with some legacy uapi
> which only talks in terms of bpp and depth doesn't seem
> feasible anyway.
> 
> But for now I think we just want to match drm_fourcc.c since
> that's what we did for the other compressed formats.

ack. patch set is

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

> 
>>> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>>> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>> +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
>>> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>>> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>>    	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
>>>    	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>>>    	  .hsub = 2, .vsub = 1, .is_yuv = true },
>>> @@ -113,6 +125,18 @@ static const struct drm_format_info gen12_ccs_cc_formats[] = {
>>>    	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
>>>    	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>>>    	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>> +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 3,
>>> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>>> +	  .hsub = 1, .vsub = 1, },
>>> +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 3,
>>> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>>> +	  .hsub = 1, .vsub = 1, },
>>> +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 3,
>>> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>>> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>> +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 3,
>>> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>>> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>>    };
>>>    
>>>    static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
>>> @@ -128,6 +152,18 @@ static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
>>>    	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
>>>    	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>>>    	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>> +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
>>> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>>> +	  .hsub = 1, .vsub = 1, },
>>> +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
>>> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>>> +	  .hsub = 1, .vsub = 1, },
>>> +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
>>> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>>> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>> +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
>>> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>>> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>>>    };
>>>    
>>>    struct intel_modifier_desc {
>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> index 17d4c880ecc4..9f34df60b112 100644
>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> @@ -2315,6 +2315,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>>>    	case DRM_FORMAT_XBGR8888:
>>>    	case DRM_FORMAT_ARGB8888:
>>>    	case DRM_FORMAT_ABGR8888:
>>> +	case DRM_FORMAT_XRGB2101010:
>>> +	case DRM_FORMAT_XBGR2101010:
>>> +	case DRM_FORMAT_ARGB2101010:
>>> +	case DRM_FORMAT_ABGR2101010:
>>>    		if (intel_fb_is_ccs_modifier(modifier))
>>>    			return true;
>>>    		fallthrough;
>>> @@ -2331,10 +2335,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>>>    			return true;
>>>    		fallthrough;
>>>    	case DRM_FORMAT_RGB565:
>>> -	case DRM_FORMAT_XRGB2101010:
>>> -	case DRM_FORMAT_XBGR2101010:
>>> -	case DRM_FORMAT_ARGB2101010:
>>> -	case DRM_FORMAT_ABGR2101010:
>>>    	case DRM_FORMAT_XVYU2101010:
>>>    	case DRM_FORMAT_C8:
>>>    	case DRM_FORMAT_XBGR16161616F:
> 

