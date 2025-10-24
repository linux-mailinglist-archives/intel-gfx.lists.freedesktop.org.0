Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 742B0C0684E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031AB10EA92;
	Fri, 24 Oct 2025 13:33:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="C6lnAeQ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D9C10EA9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 13:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1761312811;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F+x+TiexiDf9l6qnyPbPq6u8f0c2upmTFOS56HoG5Tg=;
 b=C6lnAeQ5U+gXII9NHc5ExrtCkZQUo3XijQ6YsfUtrkL9Pnv73+z9rrg5L7+eHRlFjiKWdE
 e5MlmFbmo+/F4N+jsA6UtyjFSdObG/zI5S+5FnK5TBkOCOAxDN8CQnlveJhVrFLnTHJnWx
 K9ql0hDxBczJvRII4maM1FpR1fRYCR8=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-286-TME1gCJRPOqAnnnPzHpCZg-1; Fri, 24 Oct 2025 09:33:27 -0400
X-MC-Unique: TME1gCJRPOqAnnnPzHpCZg-1
X-Mimecast-MFC-AGG-ID: TME1gCJRPOqAnnnPzHpCZg_1761312806
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-47106720618so13900925e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 06:33:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761312806; x=1761917606;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=F+x+TiexiDf9l6qnyPbPq6u8f0c2upmTFOS56HoG5Tg=;
 b=ClSb/1Uu/rpI/iKpFiZwzMdVjmkdP8GlAKxyCyAKdlr77DWldC+Tz0WGEOba//s97M
 Gtgfo8ihFjAOG7yHbuWYjS7uv/QEbZLbtpO1E50s5P2Y0CU7fddZBRdBGz7hIC+aQXTQ
 v/ZXlmUr1eETLm1q0K+4Mp/QtzISRbpjsbOswZGjKf0Mqp+Q67ee3zgeFGboVLmRim8m
 awQpusA2+XrVtnqqnG25bAQGiavuZXexiV0hwP8L6T3ypoZss+tumfcgYLqdH2iV0qUD
 0cuIdYsA7LCkYd4n/Z/QISU0RqY2Bguc1poPCqegf/TXkOifjuiSEt2rVwaEf2j10J+n
 UpRA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUydiFL6rNnYFY/mm3pmpmiI+CxI/FIjQt11iXY4yxD/5wbk26NAOXm+B/3XKxZuubLhOm5tpp0tCQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YypRnJk3kvd9OieYqpu/uSpVIFUX3QRB+fuWX+pLkyYhD+3R1vZ
 4sGfmm7XOPgXYBJ2IJ9llpIPmDgxXlT1xGU2vfTwG7MgDf/C0AFB+0mtCXd+f1lEcMJnUaHCBcM
 IQRb5YC29VurrPCm2UdRTHNiKfZKG++QsL75LWUYy4wSPgVVOhN4RNtQcctzqAYC0mJZExg==
X-Gm-Gg: ASbGnctlnvNDUWg3J8QFC16usKSHc73wEKwPBG7DU1Y+1cM/0ss4zSQYL1aqhQZDIZx
 QDKev6e1uI1OrhmM9XBbBHJ8KLTere6+ZVJPikoscl/q12ZadJvmvVXnOs3a9JELhTK8gHVlzr5
 71LzXoa7/B61tyfxf7sxcFbrFXR37+nEWZIpCbuTMHlWgKM4e4HZeRrw8KBZQwH/gvfbuwgckmy
 RuiVw0jLchXKiXR814zROb+Qhkt0QoWlUdVj8sQ3hLdHjY6SftPSfsa/iuzy/xHP80UvKOBHTV7
 hJ+WRB184mWXUnTFFO/xAhyFu72eyO19rQ1t7VNCH4CnWi2yqZHxUDmAW6XrbsFN12jjYQ8tTPb
 iXDOPJyAGfyKvlHt6Gk7ALl6jqHHSHXkaXkZ1qMs=
X-Received: by 2002:a05:600c:64c4:b0:46c:d476:52f3 with SMTP id
 5b1f17b1804b1-475d2ec55ddmr16703215e9.26.1761312805863; 
 Fri, 24 Oct 2025 06:33:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIHFs7MkEeT0YgXw/w0Na/simByvLcRCnLTCfXPRaN5IcHwntLSKvoz6r3yKSEjdLSbP7ZSA==
X-Received: by 2002:a05:600c:64c4:b0:46c:d476:52f3 with SMTP id
 5b1f17b1804b1-475d2ec55ddmr16702295e9.26.1761312804388; 
 Fri, 24 Oct 2025 06:33:24 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62?
 ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-475caf15416sm92045805e9.10.2025.10.24.06.33.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Oct 2025 06:33:23 -0700 (PDT)
Message-ID: <5ae02bda-0732-4dd4-827e-9e2dac7ae6bd@redhat.com>
Date: Fri, 24 Oct 2025 15:33:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dmabuf: Flush the cache in vmap
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Christian Brauner <brauner@kernel.org>,
 Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20251024110432.1313391-1-jfalempe@redhat.com>
 <a1d6cf1f-02b6-4c89-84e2-4b2af39829ef@ursulin.net>
 <d123d897-8e65-417b-ad3f-40fe5b49f2b1@suse.de>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <d123d897-8e65-417b-ad3f-40fe5b49f2b1@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6eqtnMiAHC4sr975oGuoKesicjIBb1l27HUmcmhgInM_1761312806
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

On 24/10/2025 14:40, Thomas Zimmermann wrote:
> Hi
> 
> Am 24.10.25 um 13:53 schrieb Tvrtko Ursulin:
>>
>> On 24/10/2025 12:04, Jocelyn Falempe wrote:
>>> On a lenovo se100 server, when using i915 GPU for rendering, and the
>>> ast driver for display, the graphic output is corrupted, and almost
>>> unusable.
>>>
>>> Adding a clflush call in the vmap function fixes this issue
>>> completely.
>>
>> AST is importing i915 allocated buffer in this use case, or how 
>> exactly is the relationship?
>>
>> Wondering if some path is not calling dma_buf_begin/end_cpu_access().
> 
> Yes, ast doesn't call begin/end_cpu_access in [1].
> 
> Jocelyn, if that fixes the issue, feel free to send me a patch for review.
> 
> [1] https://elixir.bootlin.com/linux/v6.17.4/source/drivers/gpu/drm/ast/ 
> ast_mode.c

I tried the following patch, but that doesn't fix the graphical issue:

diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_mode.c
index b4e8edc7c767..e50f95a4c8a9 100644
--- a/drivers/gpu/drm/ast/ast_mode.c
+++ b/drivers/gpu/drm/ast/ast_mode.c
@@ -564,6 +564,7 @@ static void 
ast_primary_plane_helper_atomic_update(struct drm_plane *plane,
         struct drm_crtc_state *crtc_state = 
drm_atomic_get_new_crtc_state(state, crtc);
         struct drm_rect damage;
         struct drm_atomic_helper_damage_iter iter;
+       int ret;

         if (!old_fb || (fb->format != old_fb->format) || 
crtc_state->mode_changed) {
                 struct ast_crtc_state *ast_crtc_state = 
to_ast_crtc_state(crtc_state);
@@ -572,11 +573,16 @@ static void 
ast_primary_plane_helper_atomic_update(struct drm_plane *plane,
                 ast_set_vbios_color_reg(ast, fb->format, 
ast_crtc_state->vmode);
         }

+       ret = drm_gem_fb_begin_cpu_access(fb, DMA_FROM_DEVICE);
+       pr_info("AST begin_cpu_access %d\n", ret);
+
         drm_atomic_helper_damage_iter_init(&iter, old_plane_state, 
plane_state);
         drm_atomic_for_each_plane_damage(&iter, &damage) {
                 ast_handle_damage(ast_plane, shadow_plane_state->data, 
fb, &damage);
         }

+       drm_gem_fb_end_cpu_access(fb, DMA_FROM_DEVICE);
+
         /*
          * Some BMCs stop scanning out the video signal after the driver
          * reprogrammed the offset. This stalls display output for several



Best regards,

-- 

Jocelyn

> 
> Best regards
> Thomas
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>>
>>> Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/ 
>>> gpu/drm/i915/gem/i915_gem_dmabuf.c
>>> index f4f1c979d1b9..f6a8c1cbe4d1 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>>> @@ -77,6 +77,7 @@ static int i915_gem_dmabuf_vmap(struct dma_buf 
>>> *dma_buf,
>>>           return PTR_ERR(vaddr);
>>>         iosys_map_set_vaddr(map, vaddr);
>>> +    drm_clflush_virt_range(vaddr, dma_buf->size);
>>>         return 0;
>>>   }
>>>
>>> base-commit: 0790925dadad0997580df6e32cdccd54316807f2
>>
> 

