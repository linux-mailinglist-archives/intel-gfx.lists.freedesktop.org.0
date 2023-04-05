Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D6F6D788D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 11:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFFAD10E8AE;
	Wed,  5 Apr 2023 09:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2407F10E8AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 09:39:14 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-5029d4d90fbso19847a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 02:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680687552; x=1683279552;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FOrXB4jQhMXQdSjEL5FabYEQRABLxegvAFbpASDrIwM=;
 b=gHS6DW2LyFfW+tjeQrVFbAEWVqwiv1xLEtjuG+olqalkkaLDenTDKqCKuhR5+pZjag
 gpyhF3HBKMMvNqWAKP9gh6VygwCUsUasNNTYABu9J4QpbKwilnBiFsg23SSptS1IsRPl
 9BmTgZNG9dkxVJMyJ0KugDql3Mzk+XCXZB0wk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680687552; x=1683279552;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FOrXB4jQhMXQdSjEL5FabYEQRABLxegvAFbpASDrIwM=;
 b=zwDvLFZeegdxSJ5v5Q+qEb+z7Rmch/iW8EIG3hvmWV9UY5EAWWbTug1LCfc5Bdp0aJ
 BCR7Bt12p16otWP5Tnmfu2QI4urK5J5kgJXHWZkfgVHHKYXO/2aYeYWsiIBmUzc0aGzh
 LxlyFonkBCAtu4xehVpQNCQpHaiMEG5FSdv5dJcWzVbVx2/mQ7BIjbq/LbrEYq1lZxky
 YgmMS/dosqspOh68awn1FdYjK2k0b6xsH69TcqrEUSyAAUyk5yZeTM7DdkRUdVWacK7q
 0nNZ4VtBsOgBd683Z+V9/+RyyvmI030sYivKaD1GyYINejF4inSVF4KcuEJ3pxuNB7RC
 5BCw==
X-Gm-Message-State: AAQBX9dUWpQ7KTKkqFFbpSerhIY6ULr26IFLIGwyT5vJVMDrq5IyyLNJ
 QC1y+S6KR0cJXkj45rUFQUm24A==
X-Google-Smtp-Source: AKy350aQevqJTey6sqtOt21Khn9Ud2q/8TAFmpBZ4oOI6VHp67X88lklA8gDn7nETqZ+O/CWmuov3A==
X-Received: by 2002:a05:6402:1e8e:b0:501:ea97:5192 with SMTP id
 f14-20020a0564021e8e00b00501ea975192mr1362242edf.4.1680687552494; 
 Wed, 05 Apr 2023 02:39:12 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 k17-20020a50c091000000b004fa99a22c3bsm6966156edf.61.2023.04.05.02.39.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 02:39:12 -0700 (PDT)
Date: Wed, 5 Apr 2023 11:39:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZC1BvoPqTRk+DkDs@phenom.ffwll.local>
References: <87zg7mzomz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zg7mzomz.fsf@intel.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
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

On Wed, Apr 05, 2023 at 12:04:04PM +0300, Jani Nikula wrote:
> 
> Hi Dave & Daniel -
> 
> drm-intel-fixes-2023-04-05:
> drm/i915 fixes for v6.3-rc6:
> - Fix DP MST DSC M/N calculation to use compressed bpp
> - Fix racy use-after-free in perf ioctl
> - Fix context runtime accounting
> - Fix handling of GT reset during HuC loading
> - Fix use of unsigned vm_fault_t for error values
> 
> BR,
> Jani.
> 
> The following changes since commit 7e364e56293bb98cae1b55fd835f5991c4e96e7d:
> 
>   Linux 6.3-rc5 (2023-04-02 14:29:29 -0700)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2023-04-05
> 
> for you to fetch changes up to dc3421560a67361442f33ec962fc6dd48895a0df:
> 
>   drm/i915: Fix context runtime accounting (2023-04-03 11:37:00 +0300)

Pulled, thanks

> 
> ----------------------------------------------------------------
> drm/i915 fixes for v6.3-rc6:
> - Fix DP MST DSC M/N calculation to use compressed bpp
> - Fix racy use-after-free in perf ioctl
> - Fix context runtime accounting
> - Fix handling of GT reset during HuC loading
> - Fix use of unsigned vm_fault_t for error values
> 
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (1):
>       drm/i915/huc: Cancel HuC delayed load timer on reset.
> 
> Matthew Auld (1):
>       drm/i915/ttm: fix sparse warning
> 
> Min Li (1):
>       drm/i915: fix race condition UAF in i915_perf_add_config_ioctl
> 
> Stanislav Lisovskiy (1):
>       drm/i915: Use compressed bpp when calculating m/n value for DP MST DSC
> 
> Tvrtko Ursulin (1):
>       drm/i915: Fix context runtime accounting
> 
>  drivers/gpu/drm/i915/display/intel_dp_mst.c          |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c              |  5 +++--
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 12 ++++++++++--
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c               |  7 +++++++
>  drivers/gpu/drm/i915/gt/uc/intel_huc.h               |  7 +------
>  drivers/gpu/drm/i915/i915_perf.c                     |  6 +++---
>  6 files changed, 25 insertions(+), 14 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
