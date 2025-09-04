Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F5EB43A9D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 13:47:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27FFC10EA21;
	Thu,  4 Sep 2025 11:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="eXVISr9F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F5B10EA10
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Sep 2025 11:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1756986419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RHTlOa6UNeDwG2J7Ek8NZzySxxKAaE1NmJG0gyaITeQ=;
 b=eXVISr9FxU9fTXaVy4gcXqXCLcvlNpEjTVFDS3kt6W3sqGVTz5NM3y9U1k8Sa4K+G0EPsO
 7cSRB8r6kXD8+h2fv3J4MSKf1dSf7QuGe3EFnV9kP/o6Cnk/6BzbGI/dtKUmlD4md447yP
 ss39ZarRM0ltA0znPVCMC7WU4Dw5Tz0=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-693-gD0kSowJNW2Tf57Ee7oK2w-1; Thu, 04 Sep 2025 07:46:58 -0400
X-MC-Unique: gD0kSowJNW2Tf57Ee7oK2w-1
X-Mimecast-MFC-AGG-ID: gD0kSowJNW2Tf57Ee7oK2w_1756986417
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-45b990eb77cso5749955e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Sep 2025 04:46:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756986417; x=1757591217;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RHTlOa6UNeDwG2J7Ek8NZzySxxKAaE1NmJG0gyaITeQ=;
 b=AvczlByA1WDz07ZqTIPCg46L3RG8ycnWYJa+8MHEzZP9fmSQcyHlME3SD692Mi4iag
 az0fXhElEzQso4Tni2L/Yym5l4dEPPwKqiE+RtcyYpFcENb7Ota65yKpOqLRvzkchm7U
 5Xhmyj4l6QyHmue18Z93Jd1h6eDuxnIr2fhLHaMVtELfQzGHP8LrXDDxqfIZhxS8+Plz
 /gejppowURIOh8MUpDkKRpVRI9bgu6mDYzgZGsqckp1pgZjAhNqSllbjtgqpVWJol3rv
 wJV59odARafeBeBOMLKC0BtEEOj58NzuGxuMF8rY2gfPeoZnrUJautDOazk4aGWDRsAE
 MU1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdEaqPxQoCADaYz67ITp4LshCdWur/k5YcttWxLY+/DODuIc0yHxn69Vrtbnkd11Ux11IJG9+4Et0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz7QVBJTPz5D2P/ajw3BG6t0htgs7SPHWsC5KXupLu36hcytd65
 HYHrySPgFCzRPn1aYRnyKBqJzS88GW2Q3SN9jpxonwfhUFSKICpX02W2OKhgSDJ9Jyyo9Fxt2Nq
 pce7k3dKhCTF9itihfQ8j/hid2vQFJYknPEPp6attC9nbWrRU2TiEKdB2m1T9Z6GlTleJmQ==
X-Gm-Gg: ASbGncucDfjUZdHOe8IB5k39/HTqqd/l5w2SbQNHFp6rdqgeQnBhvZ2MZjW9nhnkQLs
 ymdzN7Edc90kA1bmsqblsGwfUNrMILr2peZw0gmtiR4lew/sPaVUx7uXWmr1ZojeGbZQNF7kfd0
 VQQvxOqWgd3aX1A3NAQGFTqV7OIM/e+WubOZhgLW+REW6ak0KsEQdc0xUAGKGHwcUIeazTpfrEm
 Tx0QbeYNizskozlCf/fuy5uptlP2Czg4nmZNP66VzOwwyQ684chi//rq3+Y3BZpexK3H8X+cs/s
 SFz6hYcwB0MLzeimTRoeLf1PPEWHDoxfZZ9HE/8vUAP3cVioC3+FvVnfT8sQoPPbpEPFJI6uIv3
 GrTI=
X-Received: by 2002:a05:600d:1c:b0:45b:8b95:7119 with SMTP id
 5b1f17b1804b1-45b8b957228mr126583925e9.8.1756986417274; 
 Thu, 04 Sep 2025 04:46:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcBESs0bnQlj7e2HoDXLZr6A8Ni5vaw0eir5JaOdkoa5mA4hedJQiZYq7hmJjzO/2MD8VZGg==
X-Received: by 2002:a05:600d:1c:b0:45b:8b95:7119 with SMTP id
 5b1f17b1804b1-45b8b957228mr126583715e9.8.1756986416822; 
 Thu, 04 Sep 2025 04:46:56 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62?
 ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3e177488999sm1842730f8f.36.2025.09.04.04.46.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Sep 2025 04:46:56 -0700 (PDT)
Message-ID: <d34b0f39-2cea-4153-b019-163520f4e486@redhat.com>
Date: Thu, 4 Sep 2025 13:46:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] drm/{i915, xe}/panic: refactor framebuffer allocation
 etc.
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
References: <cover.1756835342.git.jani.nikula@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <cover.1756835342.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uurauo9-BFq_nB1LudRlhx8SVfe94SRt2q-ojNfJvfw_1756986417
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
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

On 02/09/2025 19:51, Jani Nikula wrote:
> Split out intel_panic functionality separate from intel_bo abstraction,
> and lift the framebuffer allocation back to where it belongs in
> intel_fb.c.
> 
> There's more that should be improved, ideally making struct
> intel_framebuffer opaque towards i915 and xe, but this already goes
> along way in adjusting where the abstractions should happen.

Thanks for this series, this makes sense, and moving the panic part to 
intel_panic.c is a good idea.

I think this may conflict with 
https://patchwork.freedesktop.org/series/150887/ but that should be 
trivial to resolve.

For the whole series:
Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

Best regards,

-- 

Jocelyn

> 
> BR,
> Jani.
> 
> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> 
> 
> Jani Nikula (8):
>    drm/i915/fb: add intel_framebuffer_alloc()
>    drm/{i915,xe}/panic: split out intel_panic.[ch]
>    drm/{i915,xe}/panic: rename intel_bo_panic_*() to intel_panic_*()
>    drm/{i915,xe}/fb: add panic pointer member to struct intel_framebuffer
>    drm/{i915,xe}/panic: rename struct {i915,xe}_panic_data to struct
>      intel_panic
>    drm/{i915,xe}/panic: move framebuffer allocation where it belongs
>    drm/{i915,xe}/panic: convert intel_panic_finish() to struct
>      intel_panic
>    drm/{i915,xe}/panic: pass struct intel_panic to intel_panic_setup()
> 
>   drivers/gpu/drm/i915/Makefile                 |  1 +
>   drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
>   drivers/gpu/drm/i915/display/intel_bo.c       | 15 ---
>   drivers/gpu/drm/i915/display/intel_bo.h       |  3 -
>   .../drm/i915/display/intel_display_types.h    |  2 +
>   drivers/gpu/drm/i915/display/intel_fb.c       | 23 ++++-
>   drivers/gpu/drm/i915/display/intel_fb.h       |  3 +
>   drivers/gpu/drm/i915/display/intel_panic.c    | 27 ++++++
>   drivers/gpu/drm/i915/display/intel_panic.h    | 14 +++
>   drivers/gpu/drm/i915/display/intel_plane.c    |  6 +-
>   .../drm/i915/display/skl_universal_plane.c    |  3 +-
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    | 11 ++-
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 40 +++-----
>   drivers/gpu/drm/xe/Makefile                   |  1 +
>   drivers/gpu/drm/xe/display/intel_bo.c         | 91 -------------------
>   drivers/gpu/drm/xe/display/xe_panic.c         | 80 ++++++++++++++++
>   16 files changed, 176 insertions(+), 148 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_panic.c
>   create mode 100644 drivers/gpu/drm/i915/display/intel_panic.h
>   create mode 100644 drivers/gpu/drm/xe/display/xe_panic.c
> 

