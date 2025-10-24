Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CCAC071C4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 17:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FEA110E211;
	Fri, 24 Oct 2025 15:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="qWzwjfRg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532BB10E212
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 15:55:32 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 5b1f17b1804b1-471066cfc2aso20199525e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 08:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761321331; x=1761926131;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Bv7CrIX0J3ORvJ0y0l9bZBZQa6vmqTKACkbu/6ZXyTI=;
 b=qWzwjfRgI8NqA8qGoXpIlkeYWtD94v5cdW5Bgz5PphNIrywGZsfC4JKzZaMU1sqfD/
 zufhi2eohBPpg5uuSXpIuHDdESP79EDUXFkmM+5ysIGChgqVzABTxl1xacgv72Q8De+I
 M3Yh9iypPfeR04h3erUL0WfH0kB08R0Tu+vsf+2sJCgfvmcmCNE4PRrmp7gZzINcHhh+
 6DpcZNbj6bI7Ev5SVaX0Mr0VHh+HoSWsYYz7JSRi4aOARP0Q5idK/urbJjc6cE24FBQh
 wb2Pt5yE2TlD8RZSdCNyHLTgUEh6xAGlYpFdaB6QgMLKGCjpfpPIzMEoDcFnDFW8FlbD
 fLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761321331; x=1761926131;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Bv7CrIX0J3ORvJ0y0l9bZBZQa6vmqTKACkbu/6ZXyTI=;
 b=iAiIDCAD+Elzsc+4RjFhljD6NCS6TLrcfRO3WOy3AKe55IsnMRMEiqROj2hjk6zs2n
 dXV6Xj09pdF9c4v+J3KYASpSZQKRdK1WUKvGIul/lp62a/k8J3I62U3RUIuzAEIwsEMX
 XHj2rhxcrGi7uRhoKq0PFRCckwusjprSYFr61f3V+zt9+ujo7YKBA0bgjrTSO3Dn7oxI
 SYRzYzVxInty8j03XwDohbPAyWQHK882dMKsT25IVKRojaVO/ju6aaWy1cQUB7ODtfPo
 63u4gwCxbGbgZa7b64xaAL1LchOAv3BBDjRfUwJe35w0KCPvQqOzp5Gr9aKAsBTJXWFD
 wRlA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVvBIg6z6LXE4nlqZKlMf8foglV2beKFlQbBHJcTeTfD9OeSn7/xAdKcvjjpKdHoyMcAhkb6a5Yo4w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyBwdYvWETJtAFMSprNAEL/9iy6suf/YMFKvVbaJ4EOj0ry7PGl
 f9nIhjk2Rjb7AE9KRuQbHSrWXp87ZykwVVsIcn2PnEmvFoTraNsUKKWXMOTVJsmWVu8=
X-Gm-Gg: ASbGncvbEVQX5jGgEHLublNatb0OH3fsDAw5apDloaOpp2/1HfyptenigOs/lRZvEui
 qYttTgNZD+K2HJRFDamrC1GDW4Vds+niyTJUCG1/Ay6nJayXSxebbylKHtIrFBLrqCv63xV/1RZ
 fX+bP2LrpnYA3LSz9f8/faRd57XsKbr4rSx+cwnqiTjA1kFV61S7633dN9sRD7yrqf5F8QwTPSo
 Fn6Fbduj3tYA53i9O7K0s6STfJvnJnftbunO3g/d7t6hm6i57AZpzSQtK7dq8MxKay0Oj2zzWTj
 eNaB0kfcNFh5tW9yTk0nqmY5KjTH/pOef8xKv/9CgrGQK7AjpfWGI/C4wX1ZPS2+ruy2lhMMLR+
 zttPSnjrWU9AwBVXTzX1crGDQIHs3Lh+T1WDY/EKt1MErfcYhADWtEo4QvbOHQ5mFKUZfxgFM1w
 wVI+lkjqD6lHcEAC9HAWgtT2pkXw==
X-Google-Smtp-Source: AGHT+IGbPHvof2wEvJsHr7JShGUgytOsOPt3sc4p8XK2AbaR8H9uczr1U+606r/dbfMyPKW+oUkqIw==
X-Received: by 2002:a05:600c:8b0c:b0:46e:731b:db0f with SMTP id
 5b1f17b1804b1-47117912b5fmr245766765e9.28.1761321330855; 
 Fri, 24 Oct 2025 08:55:30 -0700 (PDT)
Received: from [192.168.0.101] ([90.242.12.242])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-475c4378cbesm152502145e9.16.2025.10.24.08.55.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Oct 2025 08:55:30 -0700 (PDT)
Message-ID: <fb6f4e12-6bef-4f72-abbe-b82de6c85282@ursulin.net>
Date: Fri, 24 Oct 2025 16:55:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dmabuf: Flush the cache in vmap
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Jocelyn Falempe <jfalempe@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Christian Brauner <brauner@kernel.org>,
 Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20251024110432.1313391-1-jfalempe@redhat.com>
 <a1d6cf1f-02b6-4c89-84e2-4b2af39829ef@ursulin.net>
 <d123d897-8e65-417b-ad3f-40fe5b49f2b1@suse.de>
 <5ae02bda-0732-4dd4-827e-9e2dac7ae6bd@redhat.com>
 <8384a735-9d90-4817-86a6-7b7bae81b6e2@suse.de>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <8384a735-9d90-4817-86a6-7b7bae81b6e2@suse.de>
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


On 24/10/2025 16:18, Thomas Zimmermann wrote:
> Hi
> 
> Am 24.10.25 um 15:33 schrieb Jocelyn Falempe:
>> On 24/10/2025 14:40, Thomas Zimmermann wrote:
>>> Hi
>>>
>>> Am 24.10.25 um 13:53 schrieb Tvrtko Ursulin:
>>>>
>>>> On 24/10/2025 12:04, Jocelyn Falempe wrote:
>>>>> On a lenovo se100 server, when using i915 GPU for rendering, and the
>>>>> ast driver for display, the graphic output is corrupted, and almost
>>>>> unusable.
>>>>>
>>>>> Adding a clflush call in the vmap function fixes this issue
>>>>> completely.
>>>>
>>>> AST is importing i915 allocated buffer in this use case, or how 
>>>> exactly is the relationship?
>>>>
>>>> Wondering if some path is not calling dma_buf_begin/end_cpu_access().
>>>
>>> Yes, ast doesn't call begin/end_cpu_access in [1].
>>>
>>> Jocelyn, if that fixes the issue, feel free to send me a patch for 
>>> review.
>>>
>>> [1] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
>>> ast/ ast_mode.c
>>
>> I tried the following patch, but that doesn't fix the graphical issue:
>>
>> diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ 
>> ast_mode.c
>> index b4e8edc7c767..e50f95a4c8a9 100644
>> --- a/drivers/gpu/drm/ast/ast_mode.c
>> +++ b/drivers/gpu/drm/ast/ast_mode.c
>> @@ -564,6 +564,7 @@ static void 
>> ast_primary_plane_helper_atomic_update(struct drm_plane *plane,
>>         struct drm_crtc_state *crtc_state = 
>> drm_atomic_get_new_crtc_state(state, crtc);
>>         struct drm_rect damage;
>>         struct drm_atomic_helper_damage_iter iter;
>> +       int ret;
>>
>>         if (!old_fb || (fb->format != old_fb->format) || crtc_state- 
>> >mode_changed) {
>>                 struct ast_crtc_state *ast_crtc_state = 
>> to_ast_crtc_state(crtc_state);
>> @@ -572,11 +573,16 @@ static void 
>> ast_primary_plane_helper_atomic_update(struct drm_plane *plane,
>>                 ast_set_vbios_color_reg(ast, fb->format, 
>> ast_crtc_state->vmode);
>>         }
>>
>> +       ret = drm_gem_fb_begin_cpu_access(fb, DMA_FROM_DEVICE);
>> +       pr_info("AST begin_cpu_access %d\n", ret);
> 
> Presumably, you end up in [1]. I cannot find the cflush there or in [2]. 
> Maybe you need to add this call somewhere in there, similar to [3]. Just 
> guessing.

Near [2] clflush can happen at [4] *if* the driver thinks it is needed. 
Most GPUs are cache coherent so mostly it isn't. But if this is a 
Meteorlake machine (when I google Lenovo se100 it makes me think so?) 
then the userspace has some responsibility to manage things since there 
it is only 1-way coherency. Or userspace could have even told the driver 
to stay off in which case it then needs to manage everything. From the 
top of my head I am not sure how exactly this used to work, or how it is 
supposed to interact with exported buffers.

If this is indeed on Meteorlake, maybe Joonas or Rodrigo remember better 
how the special 1-way coherency is supposed to be managed there?

Regards,

Tvrtko

[4] 
https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/i915/gem/i915_gem_domain.c#L510

> [1] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
> i915/gem/i915_gem_dmabuf.c#L117
> [2] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
> i915/gem/i915_gem_domain.c#L493
> [3] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
> i915/gem/i915_gem_object.c#L509
> 
>> +
>>         drm_atomic_helper_damage_iter_init(&iter, old_plane_state, 
>> plane_state);
>>         drm_atomic_for_each_plane_damage(&iter, &damage) {
>>                 ast_handle_damage(ast_plane, shadow_plane_state->data, 
>> fb, &damage);
>>         }
>>
>> +       drm_gem_fb_end_cpu_access(fb, DMA_FROM_DEVICE);
>> +
>>         /*
>>          * Some BMCs stop scanning out the video signal after the driver
>>          * reprogrammed the offset. This stalls display output for 
>> several
>>
>>
>>
>> Best regards,
>>
> 

