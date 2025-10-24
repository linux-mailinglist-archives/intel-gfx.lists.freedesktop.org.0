Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9B2C074EA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 18:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 716BE10EB0E;
	Fri, 24 Oct 2025 16:28:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Yg5ZQ4ET";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A783410EAEA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 16:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1761323324;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UAk+WGqdIODYXy1ZbpCIZWIEhQQxmOfVMkKjRL6yjOo=;
 b=Yg5ZQ4ET9ZYRCsxaJJ8JKCXPEtze98s4yxsGByoOsnkozY1r5xlUn5OshbKIqx1rDvZIv9
 XQ4eMDMbVO8ZaMEmBppwU4+hjkOW1hYGSnIkPZoC/xvHUPPn1X5fGxVAPCrbUvO05asl6e
 U6jbHyLImS0meb7/+/i+qQMdym2O2CA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-144-OzYe1Ra1Px6v_WCN064Ufg-1; Fri, 24 Oct 2025 12:28:43 -0400
X-MC-Unique: OzYe1Ra1Px6v_WCN064Ufg-1
X-Mimecast-MFC-AGG-ID: OzYe1Ra1Px6v_WCN064Ufg_1761323322
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-47114018621so16051615e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 09:28:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761323322; x=1761928122;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UAk+WGqdIODYXy1ZbpCIZWIEhQQxmOfVMkKjRL6yjOo=;
 b=I0CeIk8XgHO7roHh0BvRcCxJZhL9qJrgmOB5QM7cTJysFuQQ8PjhnOUvWkZ6NIbz6Q
 fnevJUQkc32jgDAMedHbpEIfW+ceSsM02NXe1+1WtLclxrjB5mdiAOIUOxi+38LjMH0a
 GaiZpvdgmN7dq89Rm/HhvBGdpTqO4gx5eUyVxZhkECMs0xadTt7hYtawqtSJAZuO1wc/
 tzEjSFUu5VhF7nZ5XU0T9JMQ69CvUTgAFpyB1AXSGDrbmTRignCfwmOcNH8P3huSRjOS
 mEJp/z/quprBQctBX3GeMCtnXcMpyaabqiWnGMeij4vTYHGLVd/AT/E8o5SIlMtK1FBV
 YlZw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWaFqpKpGTtSaTrCfXhgXXZButPpj0LRuWB+ZgMY6tCszlirRUZY4C1HLwmtOLvOV9RSExyMM59wRo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwG9HBImdcbuR/nMhpvdgshUpXSAz8ooBsYTiO7IE2gJKyTQ8kS
 9cdAIwSLAzWmtbbRNgmF5I1b3hMw/CGSv0jZqkM5d6xqvThvjHlbfo1ZGL6cGoohGorJICcCgLK
 T66NeeION2tTYTa8FtMIrjsBn5G+QqFwSJjsDSLKIcgE916RdrGg1mL4nnf2e0beyCqAYTg==
X-Gm-Gg: ASbGncs97OE/SYyxHiuQ9gNgcDJ5ITfhZIxVeZorlOo/CqX6nblQLulE70aqaDCbSC4
 /t1oHq/Kq581xvHu2r5jXy+EngxyNXwEMUzNAKSPVUxAm5/k5PDaBxM6DCfFWPvSIT2BQ5kZoYa
 MFONdPzcoj1C+fsC/T0/auOVQrQ6T6k/FMj4SnC8I4x/kxI/BKYabQ51i1FlltZaEKncJw/AqKc
 +4Bbj32Bd2rsBt8T9u0Sn99+bzKBC06PgHgE19sS97Gg85VcYMJA2wKeCivjZbcSegBmbMEKw3P
 8QIhRNI8lDQEsaKNXwrBDm3YPkR6KoQAOuZAlbMCwBiedfTGNaIptAv86ZQ5rtiK+Lb1JLBDDnG
 73txQwAjGMzeJ045K8LCXe5HD3bVJdEmNFn/D+3E=
X-Received: by 2002:a05:600c:828a:b0:46e:5a5b:db60 with SMTP id
 5b1f17b1804b1-4711791c4eamr206735915e9.31.1761323321942; 
 Fri, 24 Oct 2025 09:28:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8LUuollBXYT6ZYk2JYdYrKal9cU5Ms9jKXCk6L0Sge7zbmnv6cHb3WjeDuF1vjMNokY29cw==
X-Received: by 2002:a05:600c:828a:b0:46e:5a5b:db60 with SMTP id
 5b1f17b1804b1-4711791c4eamr206735655e9.31.1761323321507; 
 Fri, 24 Oct 2025 09:28:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62?
 ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-475caf15498sm115857195e9.12.2025.10.24.09.28.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Oct 2025 09:28:41 -0700 (PDT)
Message-ID: <b4fd282f-b034-4709-aec9-1d740682c28d@redhat.com>
Date: Fri, 24 Oct 2025 18:28:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dmabuf: Flush the cache in vmap
To: Tvrtko Ursulin <tursulin@ursulin.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
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
 <fb6f4e12-6bef-4f72-abbe-b82de6c85282@ursulin.net>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <fb6f4e12-6bef-4f72-abbe-b82de6c85282@ursulin.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: sTl8I0f1HHJeIyfXIgQQK207FtW0MLbQv4SozD03iaI_1761323322
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
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

On 24/10/2025 17:55, Tvrtko Ursulin wrote:
> 
> On 24/10/2025 16:18, Thomas Zimmermann wrote:
>> Hi
>>
>> Am 24.10.25 um 15:33 schrieb Jocelyn Falempe:
>>> On 24/10/2025 14:40, Thomas Zimmermann wrote:
>>>> Hi
>>>>
>>>> Am 24.10.25 um 13:53 schrieb Tvrtko Ursulin:
>>>>>
>>>>> On 24/10/2025 12:04, Jocelyn Falempe wrote:
>>>>>> On a lenovo se100 server, when using i915 GPU for rendering, and the
>>>>>> ast driver for display, the graphic output is corrupted, and almost
>>>>>> unusable.
>>>>>>
>>>>>> Adding a clflush call in the vmap function fixes this issue
>>>>>> completely.
>>>>>
>>>>> AST is importing i915 allocated buffer in this use case, or how 
>>>>> exactly is the relationship?
>>>>>
>>>>> Wondering if some path is not calling dma_buf_begin/end_cpu_access().
>>>>
>>>> Yes, ast doesn't call begin/end_cpu_access in [1].
>>>>
>>>> Jocelyn, if that fixes the issue, feel free to send me a patch for 
>>>> review.
>>>>
>>>> [1] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
>>>> ast/ ast_mode.c
>>>
>>> I tried the following patch, but that doesn't fix the graphical issue:
>>>
>>> diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ 
>>> ast_mode.c
>>> index b4e8edc7c767..e50f95a4c8a9 100644
>>> --- a/drivers/gpu/drm/ast/ast_mode.c
>>> +++ b/drivers/gpu/drm/ast/ast_mode.c
>>> @@ -564,6 +564,7 @@ static void 
>>> ast_primary_plane_helper_atomic_update(struct drm_plane *plane,
>>>         struct drm_crtc_state *crtc_state = 
>>> drm_atomic_get_new_crtc_state(state, crtc);
>>>         struct drm_rect damage;
>>>         struct drm_atomic_helper_damage_iter iter;
>>> +       int ret;
>>>
>>>         if (!old_fb || (fb->format != old_fb->format) || crtc_state- 
>>> >mode_changed) {
>>>                 struct ast_crtc_state *ast_crtc_state = 
>>> to_ast_crtc_state(crtc_state);
>>> @@ -572,11 +573,16 @@ static void 
>>> ast_primary_plane_helper_atomic_update(struct drm_plane *plane,
>>>                 ast_set_vbios_color_reg(ast, fb->format, 
>>> ast_crtc_state->vmode);
>>>         }
>>>
>>> +       ret = drm_gem_fb_begin_cpu_access(fb, DMA_FROM_DEVICE);
>>> +       pr_info("AST begin_cpu_access %d\n", ret);
>>
>> Presumably, you end up in [1]. I cannot find the cflush there or in 
>> [2]. Maybe you need to add this call somewhere in there, similar to 
>> [3]. Just guessing.
> 
> Near [2] clflush can happen at [4] *if* the driver thinks it is needed. 
> Most GPUs are cache coherent so mostly it isn't. But if this is a 
> Meteorlake machine (when I google Lenovo se100 it makes me think so?) 
> then the userspace has some responsibility to manage things since there 
> it is only 1-way coherency. Or userspace could have even told the driver 
> to stay off in which case it then needs to manage everything. From the 
> top of my head I am not sure how exactly this used to work, or how it is 
> supposed to interact with exported buffers.
> 
> If this is indeed on Meteorlake, maybe Joonas or Rodrigo remember better 
> how the special 1-way coherency is supposed to be managed there?

CPU is Intel(R) Core(TM) Ultra 5 225H

lspci says Arrow Lake for the GPU:
00:02.0 VGA compatible controller: Intel Corporation Arrow Lake-P [Intel 
Graphics] (rev 03)

But some other PCI devices says Meteor Lake:
00:0a.0 Signal processing controller: Intel Corporation Meteor Lake-P 
Platform Monitoring Technology (rev 01)
00:0b.0 Processing accelerators: Intel Corporation Meteor Lake NPU (rev 05)

Thanks a lot for helping on this.

Best regards,

-- 

Jocelyn

> 
> Regards,
> 
> Tvrtko
> 
> [4] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
> i915/gem/i915_gem_domain.c#L510
> 
>> [1] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
>> i915/gem/i915_gem_dmabuf.c#L117
>> [2] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
>> i915/gem/i915_gem_domain.c#L493
>> [3] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ 
>> i915/gem/i915_gem_object.c#L509
>>
>>> +
>>>         drm_atomic_helper_damage_iter_init(&iter, old_plane_state, 
>>> plane_state);
>>>         drm_atomic_for_each_plane_damage(&iter, &damage) {
>>>                 ast_handle_damage(ast_plane, shadow_plane_state- 
>>> >data, fb, &damage);
>>>         }
>>>
>>> +       drm_gem_fb_end_cpu_access(fb, DMA_FROM_DEVICE);
>>> +
>>>         /*
>>>          * Some BMCs stop scanning out the video signal after the driver
>>>          * reprogrammed the offset. This stalls display output for 
>>> several
>>>
>>>
>>>
>>> Best regards,
>>>
>>
> 


