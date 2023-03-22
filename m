Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C7D6C4F28
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 16:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2067C10E38E;
	Wed, 22 Mar 2023 15:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9882910E38E
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 15:16:04 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id w11so10718766wmo.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 08:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679498163;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=bcdnyb+C3CGVnF5X7OrfFB4abMz0XoRRB6AsyQ8lTag=;
 b=Mjg+xotUhwx4uAJAHtAhqM2qI+kXtAW1ZKUDUNdAOGT7gfhoVXTxhYIEbu9M7arT7v
 h2Pf4HRYI9knJlqDk/3b+Akw7eR35dc0UpKtUcX0pil/UWuADv9Ogs81UdBgfbbZFQR5
 CPX3tMT4jfFd4lNoaVI5hk+Y9S7P/VJhcQ60nVN6jJkgR4QG8GIyzXO9jq1MNNbtcM4P
 kX2A07E/Lfvx+36+51p3oh88iasY0M63R2/ZbRKt8mVg/XB3eGLcMXmtFvc8/18nhtLF
 gEF9sSxFw2gcULSy6v8S+yEa2Z8joZzJUoD+SUlRhCADlfENCM/3d1fkLVNd5N/JjpS2
 hSfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679498163;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bcdnyb+C3CGVnF5X7OrfFB4abMz0XoRRB6AsyQ8lTag=;
 b=WmrmKsByBHAsOH039XqcO52dh6Z0FCgL7sj1dmoGd4R/QuKDm5kIPCrGzpCIrGRoOj
 hYJ5+dc3ROBi1Cq/CSLhQL4kTuBfqSo2az1Yaa4noA6SuPgZl6FSsHL0IMOqHo+CJlhy
 gBpZcChArU3QCDT/PEyGgvy5THW8DFD8BrJyzKvgy/3/Qj1hzpNNHGK8hBBY/N+i1/Qm
 SVvwM1eGFIrOzQtiD7Sjj+mEpJ/+uOUmXRXLRkJ0KVxrVYry9qByE2+CzH8rovSI1pcT
 C3tLJFbqMedljaAkelE7nkMBOmsonwT8TwolQmLe48T/+OHlld0g0e+RelaX6f+6hkcs
 w1ag==
X-Gm-Message-State: AO0yUKUGoOdho0UJDfYJEmizTUm3xkPK4JDvPAjPrdUaBC/udyZ3eoxB
 xV8lvqO0RfdXB3usxwR2/9O0NlqmwcPwD2C+
X-Google-Smtp-Source: AK7set8MHBWqFWMR5mndK2OKjDNt56gz3Digh+4MqcgkzpVkXHq4ns7+ByB3CXLgHSVpSZNGTlp8Pg==
X-Received: by 2002:a05:600c:3782:b0:3eb:3104:efef with SMTP id
 o2-20020a05600c378200b003eb3104efefmr5726576wmr.31.1679498162626; 
 Wed, 22 Mar 2023 08:16:02 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.80])
 by smtp.googlemail.com with ESMTPSA id
 p2-20020a05600c204200b003e91b9a92c9sm16970903wmg.24.2023.03.22.08.16.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Mar 2023 08:16:02 -0700 (PDT)
Message-ID: <9b0a61ad-2f02-b35d-9cd4-68367aa4a85c@gmail.com>
Date: Wed, 22 Mar 2023 17:15:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915/dpt: Fix DPT+shmem combo and
 add i915.enable_dpt modparam
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

Set look all ok,

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

I guess should start to think about how to write igt tests which would 
target directly at dpt so this kind of issues wouldn't get missed.

/Juha-Pekka

On 20.3.2023 11.05, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Avoid the shrinker evicting the DPT during hibernate and
> causing an oops. This might also fix DPT induced display faults
> during high memory pressure (though still don't have a real
> theory how that could actually happen).
> 
> Also add a i915.enable_dpt modparam to disable DPT usage via
> the chicken bit. This can be useful when trying to debug suspected
> DPT issues.
> 
> Ville Syrjälä (6):
>    drm/i915/dpt: Treat the DPT BO as a framebuffer
>    drm/i915/dpt: Only do the POT stride remap when using DPT
>    drm/i915/dpt: Introduce HAS_DPT()
>    drm/i915: Add PLANE_CHICKEN registers
>    drm/i915/dpt: Add a modparam to disable DPT via the chicken bit
>    drm/i915: Move PLANE_BUG_CFG bit definitons to the correct place
> 
>   drivers/gpu/drm/i915/display/intel_display.c  |  6 +++++
>   drivers/gpu/drm/i915/display/intel_dpt.c      | 23 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_dpt.h      |  2 ++
>   drivers/gpu/drm/i915/display/intel_fb.c       | 11 +++++----
>   drivers/gpu/drm/i915/display/intel_fb.h       |  1 +
>   .../drm/i915/display/skl_universal_plane.c    |  6 +++++
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +++
>   drivers/gpu/drm/i915/i915_drv.h               |  2 ++
>   drivers/gpu/drm/i915/i915_params.c            |  3 +++
>   drivers/gpu/drm/i915/i915_params.h            |  1 +
>   drivers/gpu/drm/i915/i915_reg.h               | 21 +++++++++++++----
>   12 files changed, 70 insertions(+), 11 deletions(-)
> 

