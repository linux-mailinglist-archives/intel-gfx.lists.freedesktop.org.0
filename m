Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B657C0CBD9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 10:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E340F10E15B;
	Mon, 27 Oct 2025 09:46:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="TgC4NdZf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DE210E046
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Oct 2025 09:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1761558401;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l4wurI99gUOh2Mn6wVPFu9NX3eU/CuHlWaPPmjMZRTk=;
 b=TgC4NdZfIowQ8UFIGzIVjKDcOIZOhhFfoXhSXrXghOeXg2h8JFznFwaqMVU/mATijq+iRG
 hkr2xJCstk8p/uufFyjZVBiuli753I6zV3CDzbmz8icxBxY2XtnxVPTy4+QLaCGCaPSjeq
 tcS6khmD0IDDv9atJden1ObZUXzN3RE=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-556-G6RpOHeBM9qblsWzNCDZPQ-1; Mon, 27 Oct 2025 05:46:40 -0400
X-MC-Unique: G6RpOHeBM9qblsWzNCDZPQ-1
X-Mimecast-MFC-AGG-ID: G6RpOHeBM9qblsWzNCDZPQ_1761558399
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-426feed0016so1306005f8f.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Oct 2025 02:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761558399; x=1762163199;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l4wurI99gUOh2Mn6wVPFu9NX3eU/CuHlWaPPmjMZRTk=;
 b=X/160iRUuhX5q5VFtohJpwwT/4FInsDhECBtkEQG3QJRbbfYei9Q0DASe7gX2j/VW5
 /za3TFNP0SAR2aydL1ZupasWcRX/ZhS7kjWb5b5Q3kjSXYHMRzDPt69QWvR08NeU3gsu
 +ZUoeFvNnYMQiUo3OE9C/P18U5nrDeiQqJ4LP2pZBtViTQbLNdl3memWACiJyuJpBJYQ
 J5QAb9oZFLvzWfBrbZk809iFIpIiFgN7Jn+X1to5m+SCr+hNhzmAXcoURkGSCtSl1mmL
 c57WMhBybiCJ5SSr/zFXRa+mKoSHrS9J/yN5tgFmzYfJeTJtyUEeAJ/reokqrZL4y/fn
 2EJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+KiK9+BWLz4anjLMWZ8RNvQ0QQYTo76IYbNk21jogujpWV0LgL0J+XXdjuKMp38QoJeBAOEgH0XQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz/9p5x3oXVfNaCqih0q5/eTTmE9K1iL42iowrfIaKGE8SA1zwK
 cUATUD82rJQ9gzgTmHFZygQXET7uPO5MHBNjDO4JOcc6KOyzIyiZ4h1f4TEt/y4OKg6JFAV9D69
 zUf/Gu/W2VT6Qm7ciEV0/jpYNFaZByO+bNBlhQTSlaPbK961V7JiaE7vLKB4m5HYA/oId3g==
X-Gm-Gg: ASbGnct361QJtzRdp7jHPeUuXwS567QEpbYU9Kt3dFIfhixCMYsmIrfdXYopaVruuQ1
 6p18BIixXftQIBtl6klmuQLaRSjo79E4lIxhW0dnlthl0M5vZkz6eWiP66WWszQ0eSxKT90UxVU
 kWImOyw0yZpgSfx2RniSD8OuhOaj0zXNIiVHqfGcdJ6qb/G+qSbwxcBWk91vkeHw5zg7hx9xFfo
 6JG58qrKzpFmcnJGcJ/J6pDHlEFHmVi6yrBl1AzmWrs4hh5AfJg1VmSembuCgOww5G/QpAFTckd
 m+ZnyryVy3SUWeCXNJUJVxxMWYoXPk3Mmy/37qSpetgEzRbcM+SKePyM9ywPoArSZRJbF+DzKB1
 wJXpXZUkivKbfDsdJXpQ4emsV9YwFmt7I5rFn8xE=
X-Received: by 2002:a05:600c:1da7:b0:46e:4be1:a423 with SMTP id
 5b1f17b1804b1-4711786d630mr250739575e9.1.1761558398865; 
 Mon, 27 Oct 2025 02:46:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmG2A09IsQekmebDPjm1gYlh+OQD9B1tjk4etWgRoV57J4R1anljTnHFkbyV6hZPKaVaJEDA==
X-Received: by 2002:a05:600c:1da7:b0:46e:4be1:a423 with SMTP id
 5b1f17b1804b1-4711786d630mr250739395e9.1.1761558398455; 
 Mon, 27 Oct 2025 02:46:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:d5:a000:d252:5640:545:41db?
 ([2a01:e0a:d5:a000:d252:5640:545:41db])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-475dd4a36easm127217165e9.10.2025.10.27.02.46.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Oct 2025 02:46:37 -0700 (PDT)
Message-ID: <70fe6101-4404-42d8-a1b5-0d22a11d8f67@redhat.com>
Date: Mon, 27 Oct 2025 10:46:36 +0100
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
X-Mimecast-MFC-PROC-ID: k0MbZUhoeGkR4cLxwLfk4FM8tJ5Za6dN0KDz9guEsp4_1761558399
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

I've made an experiment, and if I add:

* a calls to drm_gem_fb_begin_cpu_access() in the ast driver.
* and in i915_gem_domain.c flush_write_domain():
         case I915_GEM_DOMAIN_RENDER:
+               i915_gem_clflush_object(obj, I915_CLFLUSH_SYNC | 
I915_CLFLUSH_FORCE);

Then that fixes the issue too.

So I think there are two things to fix:
  * The missing call to drm_gem_fb_begin_cpu_access() in ast.
  * The missing cache flush in i915 for the Arrowlake iGPU (but probably 
not the way I've done it).

Regards,

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

