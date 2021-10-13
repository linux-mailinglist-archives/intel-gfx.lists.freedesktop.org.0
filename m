Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2352242CA3B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 21:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EECF36EACF;
	Wed, 13 Oct 2021 19:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22CF6EACF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 19:41:58 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id y12so15157390eda.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 12:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ns77zmJD+0HX2rttJJnaB4rTPKiY/x5O2pxhe+nYkmk=;
 b=FrOubU/h8BFTmmOKMytzvVR4etR199a2hfWjODj6UlazEw1qaXYrN7qkxSOnvamDr/
 sW4odzWP5NO6hr4McAxyfu5RajdoLiFu70QNR2XyFKDORs+KIDiSXIqv5WY+WyExx/z2
 yk0oAe8jl6JmIO3Tu7AWEoeJgyxZbKFS8q+JPPqb4xZeuEkqvvEAVD62GMHlETyu8KhR
 tIPIbkrKUCuey5JQedFavsUpZ7SOa3ycjtS5CYC8x9JrDy/XQMjKA7dg0J1AQwPedc9l
 bYVPquiBboAvUhJxQhY7DrwXspJdLc21irSwSgaieTOe1Xx/8HFeLaXIKkMUeLSerAlV
 AgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ns77zmJD+0HX2rttJJnaB4rTPKiY/x5O2pxhe+nYkmk=;
 b=NZfZ3F7dlEqMQoVLkcKuof2m1Cvllxke6AYAUHWgClB0gF8VZUc5dHJx67DDDSZ/pB
 0GxSfmky9veBFGx8k6vdo2NccngEWhlG6u76TC5TMLVTrWStp39Wk62duzIu0LyVazEi
 UQfcHwDyZigDHnRz5pMUJsu1aiUJCVKEMIQzQIxTNoHjwXRLkJ5E7sBhpNzzjYdLrUrX
 BJtn/0F/Txzhjqws89scRFza134ccJBwWLZwIJHvGNio+bJQ5zEhWQThWH6XTmNK1M6c
 mdqrW4aVkh2sJfnrvx6oovQ4k4F0THtmwYlhHs+WbFz1aqRVA9gwGt/TVCaR7jObEQ5o
 QkHA==
X-Gm-Message-State: AOAM5336Xhiv53G1+LHtSXqUbFg8ny/DOHmYrfFrNsWhLW8bQ2CFfZxh
 1XPltk2T3GRfRHNMpXPnqWBzL3v3OjwkrA==
X-Google-Smtp-Source: ABdhPJyJxf3bIHD+L+gYJjKjxQAPMQ6xkcwo5dBlNG5Y4WgA9eSRWJbyXfe9VmKB1ZYmgai3d75Fvg==
X-Received: by 2002:a05:6402:26c5:: with SMTP id
 x5mr1880203edd.297.1634154116983; 
 Wed, 13 Oct 2021 12:41:56 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.86])
 by smtp.googlemail.com with ESMTPSA id e7sm461979edk.3.2021.10.13.12.41.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Oct 2021 12:41:56 -0700 (PDT)
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211007203517.3364336-1-imre.deak@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <9367eab7-1947-53e8-67f1-a7015c9f491c@gmail.com>
Date: Wed, 13 Oct 2021 22:41:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211007203517.3364336-1-imre.deak@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 00/11] drm/i915: Simplify handling of
 modifiers
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

Set look all ok to me, including v2 patches.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 7.10.2021 23.35, Imre Deak wrote:
> This patchset adds a descriptor table for all modifiers used by i915,
> which deduplicates the listing of supported modifiers during plane
> initialization and during checking for a modifier support on a plane.
> This also simplifies getting some modifier attributes like checking
> if a plane is a CCS modifier. The motivation is to make it easier to
> add and maintain new CCS modifier sets, which will be needed for at
> least ADL-P and another upcoming platform.
> 
> Tested with igt/kms_plane,kms_ccs on CHV,HSW,TGL,ADLP.
> 
> The patches are also avaiable at:
> https://github.com/ideak/linux/commits/modifier-descriptors
> 
> Imre Deak (11):
>    drm/i915: Add a table with a descriptor for all i915 modifiers
>    drm/i915: Move intel_get_format_info() to intel_fb.c
>    drm/i915: Add tiling attribute to the modifier descriptor
>    drm/i915: Simplify the modifier check for interlaced scanout support
>    drm/i915: Unexport is_semiplanar_uv_plane()
>    drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
>    drm/i915: Add a platform independent way to get the RC CCS CC plane
>    drm/i915: Handle CCS CC planes separately from CCS control planes
>    drm/i915: Add a platform independent way to check for CCS control
>      planes
>    drm/i915: Move is_ccs_modifier() to intel_fb.c
>    drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers
> 
>   .../gpu/drm/i915/display/intel_atomic_plane.c |   1 +
>   drivers/gpu/drm/i915/display/intel_cursor.c   |  19 +-
>   drivers/gpu/drm/i915/display/intel_display.c  | 150 +----
>   drivers/gpu/drm/i915/display/intel_display.h  |   4 -
>   .../drm/i915/display/intel_display_types.h    |  17 -
>   drivers/gpu/drm/i915/display/intel_fb.c       | 536 ++++++++++++++++--
>   drivers/gpu/drm/i915/display/intel_fb.h       |  25 +-
>   drivers/gpu/drm/i915/display/intel_sprite.c   |  35 +-
>   drivers/gpu/drm/i915/display/skl_scaler.c     |   1 +
>   .../drm/i915/display/skl_universal_plane.c    | 165 +-----
>   drivers/gpu/drm/i915/i915_drv.h               |   3 +
>   drivers/gpu/drm/i915/intel_pm.c               |   1 +
>   12 files changed, 569 insertions(+), 388 deletions(-)
> 

