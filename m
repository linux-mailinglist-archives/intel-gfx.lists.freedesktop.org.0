Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8DF836FEC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 19:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B5710EF26;
	Mon, 22 Jan 2024 18:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24F0A10EF26;
 Mon, 22 Jan 2024 18:28:16 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-40eaf973eb4so10280485e9.0; 
 Mon, 22 Jan 2024 10:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705948034; x=1706552834; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=Vgs3k/e4LLqsd3/vTIbFR7yZ5wfWkydLzmUGXTzGQsE=;
 b=Ht1adFg2x9AUadWzUdp7V5nR5mHXXFiIdg50O4oOWra6Rb/9+S3BK94GvUNhm3QXBC
 5ZcF3l1TkscfQ+Drzc+x7cJK6g/kuTvYHiBJOj+5kodeNPSAPkTJXXcHrnkAzVZ7eWxt
 iK3bxkRqADJ+bNgcTHUS11WkjQVp/7OE8HiexBq5uoINLlo7BaHwEEY2iDbjnCDJaWp/
 7M3XbbR//+xnyxxB2KP4wVL6upnUaWU1dvsP+pBOBIprC5T8hbQvAomD0DXy0od862bU
 2IP6dOMUlEfhYYGtK42TgL85MlvC7lkYWPcYhi+EsAdbKJ7NoGRq1NieMyz2MEJ6D4kJ
 gfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705948034; x=1706552834;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Vgs3k/e4LLqsd3/vTIbFR7yZ5wfWkydLzmUGXTzGQsE=;
 b=nApTkQuPf4xcOqeSjQ2Re5tQLFTNj2yYi8yj8g7z8HEgStCHyIOlwjDt40luBsQGOs
 gCF85g9E7TQxIYED++iYpz1EruNIPTEtU+wliTmwKkm+boW7jBDBVF/E/rs00bcwYqWS
 s2o2qPaT9Ox4A1OHrgbQ0EjZsnJVUy1HSBSCuSg+OmA9GBmzdt81xrKzb66YWumfglGh
 HQQhgjOCPBXi/kTVScMiKRzKhiQxcQb2baxrqkRMPN9BpdBt5uIzr1gE7P4iKUyuEjYq
 gLo9+6scP5Qok5jqjMfeLrjvta5duBDesQ1Z7qoIqrAdmm4Utq0b2f3koCi9U8LQY0+i
 jZzA==
X-Gm-Message-State: AOJu0YzXfXhgBUQG+sdtqy1wTxa/anASmgvwwqImefcfe+wElBVy1KRQ
 AnQJ+kG/zKaTgr6Gw1sSw223Clgzl7TSxsUuEagExCK/rfORe9L+Msb9nhi8oGmWxQ==
X-Google-Smtp-Source: AGHT+IFjYY/b7f37vXUMW8nNuiPd6iQlXw2Hsq8+cPRl7QskK7otwTjqyh91ELerbxVKtlFaI2Kcbw==
X-Received: by 2002:a05:600c:4f88:b0:40e:9d77:9180 with SMTP id
 n8-20020a05600c4f8800b0040e9d779180mr2269307wmq.14.1705948034311; 
 Mon, 22 Jan 2024 10:27:14 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.86])
 by smtp.googlemail.com with ESMTPSA id
 7-20020a05600c248700b0040e526bd5fdsm3564564wms.1.2024.01.22.10.27.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Jan 2024 10:27:13 -0800 (PST)
Message-ID: <6d690a14-f9d3-4ae2-81f5-70bbc004b380@gmail.com>
Date: Mon, 22 Jan 2024 20:27:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-4-juhapekka.heikkila@gmail.com>
 <5dae781f-83a3-454f-ad6a-e32774b0b2b2@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <5dae781f-83a3-454f-ad6a-e32774b0b2b2@intel.com>
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

On 19.1.2024 17.22, Matthew Auld wrote:
> On 18/01/2024 15:27, Juha-Pekka Heikkila wrote:
>> Display engine support ccs only with tile4, prevent other modifiers
>> from using compressed memory.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/xe/display/xe_fb_pin.c | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c 
>> b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> index 722c84a56607..579badb8c69e 100644
>> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> @@ -13,6 +13,16 @@
>>   #include <drm/ttm/ttm_bo.h>
>> +static bool is_compressed(const struct drm_framebuffer *fb)
>> +{
>> +    struct xe_bo *bo = intel_fb_obj(fb);
>> +    struct xe_device *xe = 
>> to_xe_device(to_intel_framebuffer(fb)->base.dev);
>> +    struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
>> +    u16 pat_index_compressed = 
>> tile_to_xe(ggtt->tile)->pat.idx[XE_CACHE_WT];
> 
> Why just this index? There seems to be various indexes that turn on 
> compression. How about annotating the pat index table and then have a 
> helper like xe_pat_index_has_compression(xe, pat_index)?

I was wondering why compression was not explicitly stated anywhere so I 
did pick only compressed index now used with idea those other indexes 
can be added to display part it nobody else needed to know about 
compression.

I'll include your suggestion into my patches and see where do it get 
with that, thanks!

/Juha-Pekka

> 
> @@ -104,7 +104,8 @@ static const struct xe_pat_table_entry 
> xelpg_pat_table[] = {
>                          REG_FIELD_PREP(XE2_L3_POLICY, l3_policy) | \
>                          REG_FIELD_PREP(XE2_L4_POLICY, l4_policy) | \
>                          REG_FIELD_PREP(XE2_COH_MODE, __coh_mode), \
> -               .coh_mode = __coh_mode ? XE_COH_AT_LEAST_1WAY : 
> XE_COH_NONE \
> +               .coh_mode = __coh_mode ? XE_COH_AT_LEAST_1WAY : 
> XE_COH_NONE, \
> +               .compressed = comp_en \
>          }
> 
>   static const struct xe_pat_table_entry xe2_pat_table[] = {
> @@ -148,6 +149,12 @@ u16 xe_pat_index_get_coh_mode(struct xe_device *xe, 
> u16 pat_index)
>          return xe->pat.table[pat_index].coh_mode;
>   }
> 
> +bool xe_pat_index_has_compression(struct xe_device *xe, u16 pat_index)
> +{
> +       WARN_ON(pat_index >= xe->pat.n_entries);
> +       return xe->pat.table[pat_index].compressed;
> +}
> +
>   static void program_pat(struct xe_gt *gt, const struct 
> xe_pat_table_entry table[],
>                          int n_entries)
>   {
> diff --git a/drivers/gpu/drm/xe/xe_pat.h b/drivers/gpu/drm/xe/xe_pat.h
> index fa0dfbe525cd..37666ba1aec4 100644
> --- a/drivers/gpu/drm/xe/xe_pat.h
> +++ b/drivers/gpu/drm/xe/xe_pat.h
> @@ -29,6 +29,7 @@ struct xe_pat_table_entry {
>   #define XE_COH_NONE          1
>   #define XE_COH_AT_LEAST_1WAY 2
>          u16 coh_mode;
> +       bool compressed;
>   };
> 
>   /**
> @@ -58,4 +59,6 @@ void xe_pat_dump(struct xe_gt *gt, struct drm_printer 
> *p);
>    */
>   u16 xe_pat_index_get_coh_mode(struct xe_device *xe, u16 pat_index);
> 
> +bool xe_pat_index_has_compression(struct xe_device *xe, u16 pat_index);
> 
>> +
>> +    return (bo->pat_index == pat_index_compressed);
>> +}
>> +
>>   static void
>>   write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 
>> *dpt_ofs, u32 bo_ofs,
>>             u32 width, u32 height, u32 src_stride, u32 dst_stride)
>> @@ -349,12 +359,19 @@ void intel_unpin_fb_vma(struct i915_vma *vma, 
>> unsigned long flags)
>>   int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>>   {
>>       struct drm_framebuffer *fb = plane_state->hw.fb;
>> +    struct xe_device *xe = 
>> to_xe_device(to_intel_framebuffer(fb)->base.dev);
>>       struct xe_bo *bo = intel_fb_obj(fb);
>>       struct i915_vma *vma;
>>       /* We reject creating !SCANOUT fb's, so this is weird.. */
>>       drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_SCANOUT_BIT));
>> +    if (GRAPHICS_VER(xe) >= 20 && fb->modifier != 
>> I915_FORMAT_MOD_4_TILED &&
>> +        is_compressed(fb)) {
>> +        drm_warn(&xe->drm, "Cannot create ccs framebuffer with other 
>> than tile4 mofifier\n");
>> +        return -EINVAL;
>> +    }
>> +
>>       vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), 
>> &plane_state->view.gtt);
>>       if (IS_ERR(vma))
>>           return PTR_ERR(vma);

