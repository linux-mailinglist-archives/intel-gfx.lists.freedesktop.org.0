Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF60FAE3BCE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 12:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D449710E1C3;
	Mon, 23 Jun 2025 10:10:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="i5PPsRZX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF7310E05B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jun 2025 10:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1750673428;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k0QTXQBLxcMhOeb0i/VFxTw420XqKRgS33hIZfnQXmI=;
 b=i5PPsRZXprZB1m9Qne9+d/35L2R7+JC/wpcBQa8IoMCCb71V7XHgGGIUuigpYbxvLy20aR
 gR5jZ44POC3yorqRRy3eiQBcPCtONGoJx3sOJA4kW2/53haamnJQ4VJqsQoXk+NKyQ+Diw
 CwN4k7G7RvBia3lRYX7o0AAsQ04i2FU=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-323-RABO3rJuPrSGrrV5QT5-XA-1; Mon, 23 Jun 2025 06:10:27 -0400
X-MC-Unique: RABO3rJuPrSGrrV5QT5-XA-1
X-Mimecast-MFC-AGG-ID: RABO3rJuPrSGrrV5QT5-XA_1750673426
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-450df53d461so30681075e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jun 2025 03:10:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750673426; x=1751278226;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=k0QTXQBLxcMhOeb0i/VFxTw420XqKRgS33hIZfnQXmI=;
 b=rv1/qFe64Zg+bVeVd4l7k70RV3llU4xjaabuX5ygFdeiWpiV+HsfqCXxJwIK0syqDn
 eSMSb14ocNP5nmskM0oPreAxNSjRjtUwTgp5QeF1OC9Zfg4DlgmX1aal+Fv4vqyUTDU4
 CZrXh/sZDGLLtXxIJL5+RHFYdCwCyUR9lKtxxpfbs/GiBmpBL5jKJF2w/tl7b3UNXcKE
 PnQnMEnzJOdViIdrXNtzdZb8inq6x0tfbW/Te1M+Cz6vlaNLAo++7ey1MIywL5Hi9fY7
 PVVIh6iFsCWicGWKsHTaqW1dw3znhZBn7Ze2oXbbQEK6/ORpB+j0eHnXxKCE7Z6lcSkp
 yi6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWI5pw6h2VRlPamYTOhL8o4aEsRPDLjPWM29VNsW+nMJSy47foXa0ZKR+PoOV5Fup1JneYidugVMds=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx13idDYYWhPqwPdy0yo0UFYRyflQBqeyzGIy1weEeL/wjlMvgu
 RAi6NK+ODi2ag2Tymcvl8hYOFITQJa0oGtrYmA6gK3gQpy3/PuN4PIUuejNQqY2wsiojedP1CzV
 GVGFfNH3l1Tyxc6eq+HqrEUEmciFeE9YKUWj9ozO17van10KBgVOarEyrGDfBNotH2gDQ7g==
X-Gm-Gg: ASbGncs/rQwEE9Eef65ZjuvHpjVZ+5Mp4EeSRzxGNks8P5TUdspb5OXqj+QpyPo/mtz
 dInNIY3ztEbSVpR+WVgFHVtDugNNoCV/V4dfEWvXp04EmKBCXbiVGhRLnwhxnZUWJpDkpl+04xX
 XKKHy9W59gEEJq6n2p6xuZetwvJglNXR2G2vMSTIqWv7EWhoRQBOMYBg5vDyMv+84Xz4P/eVl7O
 La6NqCg6f8O7ZMNef+CqwHpE6Jjfk5ovpcdEHXkYtTs+4T5oRnDjmoVKReQOogqNhTJ6JE5Xb5I
 +UzUj+FhV1wjAwuoBJswjKWHv0CW+OzmCYNENre/JxJpc+bapZQiRJ2PHfJVWg==
X-Received: by 2002:a05:600c:8594:b0:453:9b3:5b67 with SMTP id
 5b1f17b1804b1-453659f8324mr45133015e9.24.1750673426001; 
 Mon, 23 Jun 2025 03:10:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHD/EDMvqV0TmgUGzrlFNaHgM4CsvQsUMw4O18DWIgIsMuiop7OwY4JI2S/azLj8QrlBp/XkA==
X-Received: by 2002:a05:600c:8594:b0:453:9b3:5b67 with SMTP id
 5b1f17b1804b1-453659f8324mr45132755e9.24.1750673425513; 
 Mon, 23 Jun 2025 03:10:25 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62?
 ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4535eada7adsm140785055e9.35.2025.06.23.03.10.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Jun 2025 03:10:24 -0700 (PDT)
Message-ID: <4d81cf64-7bf1-4a7d-8682-fc817d74c373@redhat.com>
Date: Mon, 23 Jun 2025 12:10:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 00/10] drm/i915: Add drm_panic support
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20250618094011.238154-1-jfalempe@redhat.com>
 <c28aad52-7977-4763-9690-9aed1910c834@linux.intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <c28aad52-7977-4763-9690-9aed1910c834@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Cp9wQ2aKb6jOQzvNMAiHbuKSXgD069mC4tLTLTf-DTQ_1750673426
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

On 23/06/2025 09:40, Maarten Lankhorst wrote:
> Hey,
> 
> Thanks for the series. I didn't see you on irc so I wanted to ask if you are planning to send a v11 with
> the changes from void * to struct intel_panic_data and adding the VRAM support?

Yes, I'm preparing a v11, and I'm considering to do something like this, 
to allocate the panic data with the struct intel_framebuffer:

struct xe_framebuffer {
	struct intel_framebuffer base;
	struct xe_panic_data panic;
};

struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
{
	struct xe_framebuffer *xe_fb;

	xe_fb = kmalloc(sizeof(struct xe_framebuffer), GFP_KERNEL);
	return &xe_fb->base;
}

(And the same for i915).
That should allow you to add battlemage support.

> 
> 
> Other than that, I think the series looks good and I'll be able to test it on my battlemage.
> 

Thanks

Best regards,

-- 

Jocelyn

> Best regards,
> ~Maarten
> 
> On 2025-06-18 11:31, Jocelyn Falempe wrote:
>> This adds drm_panic support for i915 and xe driver.
>>
>> I've tested it on the 4 intel laptops I have at my disposal.
>>   * Haswell with 128MB of eDRAM.
>>   * Comet Lake  i7-10850H
>>   * Raptor Lake i7-1370P (with DPT, and Y-tiling).
>>   * Lunar Lake Ultra 5 228V (with DPT, and 4-tiling, and using the Xe driver.
>>
>> I tested panic in both fbdev console and gnome desktop.
>> I think it won't work yet on discrete GPU, but that can be added later.
>>
>> Best regards,
>>
>> v2:
>>   * Add the proper abstractions to build also for Xe.
>>   * Fix dim checkpatch issues.
>>
>> v3:
>>   * Add support for Y-tiled framebuffer when DPT is enabled.
>>
>> v4:
>>   * Add support for Xe driver, which shares most of the code.
>>   * Add support for 4-tiled framebuffer found in newest GPU.
>>
>> v5:
>>   * Rebase on top of git@gitlab.freedesktop.org:drm/i915/kernel.git drm-intel-next
>>   * Use struct intel_display instead of drm_i915_private.
>>   * Use iosys_map for intel_bo_panic_map().
>>
>> v6:
>>   * Rebase on top of git@gitlab.freedesktop.org:drm/i915/kernel.git drm-intel-next
>>   * Use struct intel_display instead of drm_i915_private for intel_atomic_plane.c
>>
>> v7:
>>   * Fix mismatch {} in intel_panic_flush() (Jani Nikula)
>>   * Return int for i915_gem_object_panic_map() (Ville Syrjälä)
>>   * Reword commit message about alignment/size when disabling tiling (Ville Syrjälä)
>>
>> v8:
>>   * Use kmap_try_from_panic() instead of vmap, to access the framebuffer.
>>   * Add ttm_bo_kmap_try_from_panic() for the xe driver, that uses ttm.
>>   * Replace intel_bo_panic_map() with a setup() and finish() function,
>>     to allow mapping only one page of teh framebuffer at a time.
>>   * Configure psr to send the full framebuffer update.
>>
>> v9:
>>   * Fix comment in ttm_bo_kmap_try_from_panic(), this can *only* be called
>>     from the panic handler (Christian König)
>>   * Fix missing kfree() for i915_panic_pages in i915_gem_object_panic_finish()
>>     Also change i915_panic_pages allocation to kmalloc, as kvmalloc is not
>>     safe to call from the panic handler.
>>   * Fix dim checkpatch warnings.
>>
>> v10:
>>   * Add a private field to struct drm_scanout_buffer
>>   * Replace static variables with new fields in struct intel_framebuffer
>>     (Maarten Lankhorst)
>>   * Add error handling if i915_gem_object_panic_pages() returns NULL
>>   * Declare struct drm_scanout_buffer instead of including <drm/drm_panic.h>
>>     in intel_bo.h
>>
>> Jocelyn Falempe (10):
>>    drm/panic: Add a private field to struct drm_scanout_buffer
>>    drm/i915/fbdev: Add intel_fbdev_get_map()
>>    drm/i915/display/i9xx: Add a disable_tiling() for i9xx planes
>>    drm/i915/display: Add a disable_tiling() for skl planes
>>    drm/ttm: Add ttm_bo_kmap_try_from_panic()
>>    drm/i915: Add intel_bo_panic_setup and intel_bo_panic_finish
>>    drm/i915/display: Add drm_panic support
>>    drm/i915/display: Add drm_panic support for Y-tiling with DPT
>>    drm/i915/display: Add drm_panic support for 4-tiling with DPT
>>    drm/i915/psr: Add intel_psr2_panic_force_full_update
>>
>>   drivers/gpu/drm/i915/display/i9xx_plane.c     |  23 +++
>>   .../gpu/drm/i915/display/intel_atomic_plane.c | 170 +++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_bo.c       |  12 ++
>>   drivers/gpu/drm/i915/display/intel_bo.h       |   4 +
>>   .../drm/i915/display/intel_display_types.h    |  11 ++
>>   drivers/gpu/drm/i915/display/intel_fb_pin.c   |   5 +
>>   drivers/gpu/drm/i915/display/intel_fb_pin.h   |   2 +
>>   drivers/gpu/drm/i915/display/intel_fbdev.c    |   5 +
>>   drivers/gpu/drm/i915/display/intel_fbdev.h    |   6 +-
>>   drivers/gpu/drm/i915/display/intel_psr.c      |  20 +++
>>   drivers/gpu/drm/i915/display/intel_psr.h      |   2 +
>>   .../drm/i915/display/skl_universal_plane.c    |  27 +++
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |   5 +
>>   drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 112 ++++++++++++
>>   drivers/gpu/drm/i915/i915_vma.h               |   5 +
>>   drivers/gpu/drm/ttm/ttm_bo_util.c             |  27 +++
>>   drivers/gpu/drm/xe/display/intel_bo.c         |  61 +++++++
>>   drivers/gpu/drm/xe/display/xe_fb_pin.c        |   5 +
>>   include/drm/drm_panic.h                       |   6 +
>>   include/drm/ttm/ttm_bo.h                      |   1 +
>>   20 files changed, 507 insertions(+), 2 deletions(-)
>>
>>
>> base-commit: b2f7e30d2e4a34fcee8111d713bef4f29dc23c77
> 

