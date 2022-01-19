Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF116493EFC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 18:24:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F30510E75A;
	Wed, 19 Jan 2022 17:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB3A10E75A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 17:24:26 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 e9-20020a05600c4e4900b0034d23cae3f0so6972938wmq.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 09:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=eOH9iqU5IVX14/tYvkJqEjk8Qx7vTHtd1JM4aN1Uy+o=;
 b=DmDrtO1qA5+xS6RSFjC8YRAgWKLJSBrsCK3C1mYCeL3ScNiBJNJt+zzuegOEmgLjoP
 +/1qV59z4FrPlFKaNmWWmOAzeWqYXZefKd0ekBDSMLyaEC7lt9t07rqtIL/3zUc121jm
 +dcjCTcj0zrh3pRs67AwP1TQsb2jKMgygW7C8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=eOH9iqU5IVX14/tYvkJqEjk8Qx7vTHtd1JM4aN1Uy+o=;
 b=Rwc/S3AxU0088MlfoOilt8kBOv4az/AyaYrNft9NCU2GEb0rledBW4to/z6HF+rYJC
 DbKoVqIb4UZ+IrPUT718qtMSF+wAGsz203NBP9GN8hf9Az9RpiUvI335cRm1710s7yYp
 wkZcRPP3VKlg7Rci4AGrUccn1vQkuZqqhyplpIdrmnBsjbnzfVSFio3TDN+sSJ2Qdmne
 F7gYDWlIIC9DHVf5yiZJp1LGNNvmgUoxn8WWMlboxMq6PeacS007DE7c+6tF2/5Y6OZs
 iLoklK0J6XjQJNG4FPrSui+ErBJ/OT+90gp+ip8tge6C848EX4Mop2xIPDb/x1Ijoffy
 7Onw==
X-Gm-Message-State: AOAM531Xj6KTKFOrH2vhmbwuk+zRXYPeffyz9m81a0bQaBnj1//637Tl
 MK+E7cUSYPbDpU6j+nOojBoEdKbveyrqhg==
X-Google-Smtp-Source: ABdhPJwmz4gHSPo9o9SV/Nix2goUKu/7MKdI00pmWvKG61VzYeY9XiHQLJbDl27v8A+WKNfPotxwNQ==
X-Received: by 2002:adf:e291:: with SMTP id v17mr29163539wri.479.1642613064738; 
 Wed, 19 Jan 2022 09:24:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f6sm428161wrj.26.2022.01.19.09.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Jan 2022 09:24:24 -0800 (PST)
Date: Wed, 19 Jan 2022 18:24:22 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ira Weiny <ira.weiny@intel.com>
Message-ID: <YehJRt+JngIsj+Gd@phenom.ffwll.local>
Mail-Followup-To: Ira Weiny <ira.weiny@intel.com>,
 David Airlie <airlied@linux.ie>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org
References: <20211210232404.4098157-1-ira.weiny@intel.com>
 <20220119165356.GD209936@iweiny-DESK2.sc.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220119165356.GD209936@iweiny-DESK2.sc.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/7] DRM kmap() fixes and kmap_local_page()
 conversions
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
Cc: David Airlie <airlied@linux.ie>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 19, 2022 at 08:53:56AM -0800, Ira Weiny wrote:
> On Fri, Dec 10, 2021 at 03:23:57PM -0800, 'Ira Weiny' wrote:
> > From: Ira Weiny <ira.weiny@intel.com>
> > 
> > This series starts by converting the last easy kmap() uses to
> > kmap_local_page().
> > 
> > There is one more call to kmap() wrapped in ttm_bo_kmap_ttm().  Unfortunately,
> > ttm_bo_kmap_ttm() is called in a number of different ways including some which
> > are not thread local.  I have a patch to convert that call.  However, it is not
> > straight forward so it is not included in this series.
> > 
> > The final 2 patches fix bugs found while working on the ttm_bo_kmap_ttm()
> > conversion.
> 
> Gentile ping on this series?  Will it make this merge window?

I think this fell through the cracks and so no. Note that generally we
feature-freeze drm tree around -rc6 anyway for the upcoming merge window,
so you were cutting this all a bit close anyway. Also looks like the ttm
kmap caching question didn't get resolved?

Anyway if patches are stuck resend with RESEND and if people still don't
pick them up poke me and I'll apply as fallback.

Cheers, Daniel

> 
> Thanks,
> Ira
> 
> > 
> > 
> > Ira Weiny (7):
> > drm/i915: Replace kmap() with kmap_local_page()
> > drm/amd: Replace kmap() with kmap_local_page()
> > drm/gma: Remove calls to kmap()
> > drm/radeon: Replace kmap() with kmap_local_page()
> > drm/msm: Alter comment to use kmap_local_page()
> > drm/amdgpu: Ensure kunmap is called on error
> > drm/radeon: Ensure kunmap is called on error
> > 
> > drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 8 ++++----
> > drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c | 1 +
> > drivers/gpu/drm/gma500/gma_display.c | 6 ++----
> > drivers/gpu/drm/gma500/mmu.c | 8 ++++----
> > drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
> > drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 8 ++++----
> > drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 4 ++--
> > drivers/gpu/drm/i915/gt/shmem_utils.c | 4 ++--
> > drivers/gpu/drm/i915/i915_gem.c | 8 ++++----
> > drivers/gpu/drm/i915/i915_gpu_error.c | 4 ++--
> > drivers/gpu/drm/msm/msm_gem_submit.c | 4 ++--
> > drivers/gpu/drm/radeon/radeon_ttm.c | 4 ++--
> > drivers/gpu/drm/radeon/radeon_uvd.c | 1 +
> > 13 files changed, 32 insertions(+), 32 deletions(-)
> > 
> > --
> > 2.31.1
> > 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
