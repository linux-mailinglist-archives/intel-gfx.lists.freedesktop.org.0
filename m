Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45905832960
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 13:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2F410E16B;
	Fri, 19 Jan 2024 12:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8188F10E16B;
 Fri, 19 Jan 2024 12:09:49 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-40ea01d55c2so2548855e9.2; 
 Fri, 19 Jan 2024 04:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705666128; x=1706270928; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=cthhQ64IUPGMrzsqCOZBWKiNSRwuDFGPRxmakXOUndw=;
 b=YQ9r4gGNjVoGVamWuKo2JnhkecTaDvuaYmx47MPl7p4fuCCfBywCT5woJVGkKo9fPz
 YpPD44y61jC1dDg27qzXMPYL08i4JSSU2yBe/0hhBSEzZCQ/YXDuCeX20eDCq73xCfGt
 z5gqe/w3dHaI3LQII0h813WqVNSDUQxick2cdduYGm2U9ydHB0O5wW7Nd3Mhxis36M9v
 K3ZdTdKkn6Cztb3CTYdlVza01418JLd+5OkYM6KiZtrr+bC/s0tSlzcwfn6V5MOpW3iZ
 L/7p5PDijMVgmpuvcMwIULWh7HvsFwAeQ546OmcJV6LVHy0JTA/BCjqeRTlflr3hd06f
 n1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705666128; x=1706270928;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cthhQ64IUPGMrzsqCOZBWKiNSRwuDFGPRxmakXOUndw=;
 b=D/34PkASVvjadtm5FR8jiIwJCRfWDaBlvXFnIyXuJ/m0HGN0pTnw8aTfD1/VsgpzpD
 YKtf3E7qmmvpTRrSl8ZHyrEOPmAAbGCQOZVN2dT7ZqUXN9XHzAIXnF75M/63bc7SmLsL
 CJe6M35/N8GpxiK46SUyJVzNzc/4NhPBbpZUANgRnNLq33Dd/CrOQs5qZutARLz/FeJB
 DU/cY4ZS4Msv+BNuDhtDRnaELku8TGSuiEQjqaNq2hnUoRj8lVaoZDGMy5LxBQqSJ8P6
 WkThGL5NLYL5oeF8A2nVTk2VCyS9WDzgWUyX5iGnwjgKfIWQZEcxMynkID61GQeXEkkG
 iIfg==
X-Gm-Message-State: AOJu0YxMkkA3GUN/JlC1T83fwQbbOFg5mmgSku65tYBBpQZsfW8CT4dn
 z6nXkA4aHmhgNuc5eNfEC7ByRbdRSKkqxNbeI0nOxR6sUg2PfCOoAPQKYpWHBVzhEw==
X-Google-Smtp-Source: AGHT+IHlWi1LZBTUekKW4T2xNTEHm77CJcA5LSFfykCPZSK5mt8yCmleFJqJ6QILaXWW89zrkbHdBA==
X-Received: by 2002:a05:600c:1503:b0:40e:7677:c25b with SMTP id
 b3-20020a05600c150300b0040e7677c25bmr1497469wmg.126.1705666127626; 
 Fri, 19 Jan 2024 04:08:47 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.84])
 by smtp.googlemail.com with ESMTPSA id
 o8-20020a05600c510800b0040e624995f1sm27630574wms.8.2024.01.19.04.08.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Jan 2024 04:08:47 -0800 (PST)
Message-ID: <68afc8ee-56be-46fd-9e24-a816c6259fd2@gmail.com>
Date: Fri, 19 Jan 2024 14:08:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-4-juhapekka.heikkila@gmail.com>
 <875xzppmqz.fsf@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <875xzppmqz.fsf@intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19.1.2024 13.48, Jani Nikula wrote:
> On Thu, 18 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
>> Display engine support ccs only with tile4, prevent other modifiers
>> from using compressed memory.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/xe/display/xe_fb_pin.c | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> index 722c84a56607..579badb8c69e 100644
>> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> @@ -13,6 +13,16 @@
>>   
>>   #include <drm/ttm/ttm_bo.h>
>>   
>> +static bool is_compressed(const struct drm_framebuffer *fb)
>> +{
>> +	struct xe_bo *bo = intel_fb_obj(fb);
>> +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
>> +	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
>> +	u16 pat_index_compressed = tile_to_xe(ggtt->tile)->pat.idx[XE_CACHE_WT];
>> +
>> +	return (bo->pat_index == pat_index_compressed);
>> +}
>> +
>>   static void
>>   write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
>>   		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
>> @@ -349,12 +359,19 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
>>   int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>>   {
>>   	struct drm_framebuffer *fb = plane_state->hw.fb;
>> +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
>>   	struct xe_bo *bo = intel_fb_obj(fb);
>>   	struct i915_vma *vma;
>>   
>>   	/* We reject creating !SCANOUT fb's, so this is weird.. */
>>   	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_SCANOUT_BIT));
>>   
>> +	if (GRAPHICS_VER(xe) >= 20 && fb->modifier != I915_FORMAT_MOD_4_TILED &&
> 
> Is GRAPHICS_VER correct or should that be a DISPLAY_VER instead?

I think GRAPHICS_VER is correct here because this depend if base ccs 
functionality is there which doesn't relate to display version.

> 
>> +	    is_compressed(fb)) {
>> +		drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
>> +		return -EINVAL;
>> +	}
>> +
>>   	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
>>   	if (IS_ERR(vma))
>>   		return PTR_ERR(vma);
> 

