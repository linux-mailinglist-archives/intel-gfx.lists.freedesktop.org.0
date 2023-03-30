Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 859306D0AFB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 18:26:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5DD910E198;
	Thu, 30 Mar 2023 16:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C0F10E198
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 16:26:33 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 j36-20020a05600c1c2400b003f04057c152so34319wms.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 09:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680193592; x=1682785592;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=hjAYH5ePdHFGEMQ3cBdnRK1KRi6OqsYV4Spqi1QOgNc=;
 b=RbNyF1YptUUTUoWmYZFNkBV2ZdrL5RKAnKpII8N1sQ4Kd6UcjHjPx6LE1DL/vhVqYR
 /GIc9onBcvGMCATwS9ZXhCfnvRwETq33g8lf6IONhV/IeMiXOYgpCihgG/6+k3V7t45I
 Fiu63ND4JG8+oUtebNTQfJ0E7QfeCHbRHm88U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680193592; x=1682785592;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hjAYH5ePdHFGEMQ3cBdnRK1KRi6OqsYV4Spqi1QOgNc=;
 b=G29pHnGg34F/IcYx+5EI4Zyskl7WpXxodxJcoxcNqVFvvDcvccXXsBSyOMQtIAA4AK
 1dE1yUfvgal1iccupROFDfdp0cCfZidOaQECTjvCwI47zJRylD2RIu/DZgXHISpcWQnF
 +GY2xtRCuCbr/fBKBObHcXLbHEpvXQjGRoU1Q5tjNWRm1e7KjyDHbk42uVVWMunHTo2h
 8ZHqjRt6bow8bru8m5WEgXjqHtYnZruBuDipI5Gx/URAtsxWu569aVBMZqALyNkyJXew
 PmNRzlqxQlf1ZrKLm5iy9bxtV3L25Ru52h1TfTJY79sCywH5AEbHCdC81s7z5TAp/6rK
 3/iw==
X-Gm-Message-State: AAQBX9eYWiv7Oa7Cb+q/xIOnGKPZbUGq3L6S8iMN3ormP1yObUpHsKdX
 xr0V9MT3A6tWKK/aJIzEvIBMRA==
X-Google-Smtp-Source: AKy350bWHX4L9HAJSnS9E9AT5hCdr4gxq8XgXdLsSD+Hn0W2a53AZvuijOcJv2eG9YzpW96xssi8zg==
X-Received: by 2002:a05:600c:3541:b0:3f0:330b:d3d4 with SMTP id
 i1-20020a05600c354100b003f0330bd3d4mr2408078wmq.4.1680193592219; 
 Thu, 30 Mar 2023 09:26:32 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 bh23-20020a05600c3d1700b003ee9c8cc631sm6396203wmb.23.2023.03.30.09.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 09:26:31 -0700 (PDT)
Date: Thu, 30 Mar 2023 18:26:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZCW4NYIaqhv1zsYl@phenom.ffwll.local>
References: <87355m4gtm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87355m4gtm.fsf@intel.com>
X-Operating-System: Linux phenom 6.1.0-6-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 30, 2023 at 02:30:29PM +0300, Jani Nikula wrote:
> 
> Hi Dave & Daniel -
> 
> drm-intel-fixes-2023-03-30:
> drm/i915 fixes for v6.3-rc5:
> - Fix PMU support by reusing functions with sysfs
> - Fix a number of issues related to color, PSR and arm/noarm
> - Fix state check related to ICL PHY ownership check in TC-cold state
> - Flush lmem contents after construction
> - Fix hibernate oops related to DPT BO
> - Fix perf stream error path wakeref balance
> 
> BR,
> Jani.
> 
> The following changes since commit 197b6b60ae7bc51dd0814953c562833143b292aa:
> 
>   Linux 6.3-rc4 (2023-03-26 14:40:20 -0700)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2023-03-30

Pulled, thanks.

> 
> for you to fetch changes up to 5c95b2d5d44fa250ce8aeee27bdb39b381d03857:
> 
>   drm/i915/perf: Drop wakeref on GuC RC error (2023-03-27 13:22:24 +0300)
> 
> ----------------------------------------------------------------
> drm/i915 fixes for v6.3-rc5:
> - Fix PMU support by reusing functions with sysfs
> - Fix a number of issues related to color, PSR and arm/noarm
> - Fix state check related to ICL PHY ownership check in TC-cold state
> - Flush lmem contents after construction
> - Fix hibernate oops related to DPT BO
> - Fix perf stream error path wakeref balance
> 
> ----------------------------------------------------------------
> Ashutosh Dixit (1):
>       drm/i915/pmu: Use functions common with sysfs to read actual freq
> 
> Chris Wilson (2):
>       drm/i915/gem: Flush lmem contents after construction
>       drm/i915/perf: Drop wakeref on GuC RC error
> 
> Imre Deak (1):
>       drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state
> 
> Ville Syrjälä (6):
>       drm/i915: Split icl_color_commit_noarm() from skl_color_commit_noarm()
>       drm/i915: Move CSC load back into .color_commit_arm() when PSR is enabled on skl/glk
>       drm/i915: Add a .color_post_update() hook
>       drm/i915: Workaround ICL CSC_MODE sticky arming
>       drm/i915: Disable DC states for all commits
>       drm/i915/dpt: Treat the DPT BO as a framebuffer
> 
>  drivers/gpu/drm/i915/display/intel_color.c       | 101 ++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_color.h       |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c     |  31 ++++++-
>  drivers/gpu/drm/i915/display/intel_dpt.c         |   2 +
>  drivers/gpu/drm/i915/display/intel_tc.c          |   4 +-
>  drivers/gpu/drm/i915/gem/i915_gem_lmem.c         |   3 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h       |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object_types.h |   3 +
>  drivers/gpu/drm/i915/gt/intel_rps.c              |  38 +++++----
>  drivers/gpu/drm/i915/gt/intel_rps.h              |   4 +-
>  drivers/gpu/drm/i915/i915_perf.c                 |  14 ++--
>  drivers/gpu/drm/i915/i915_perf_types.h           |   6 ++
>  drivers/gpu/drm/i915/i915_pmu.c                  |  10 +--
>  13 files changed, 177 insertions(+), 42 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
