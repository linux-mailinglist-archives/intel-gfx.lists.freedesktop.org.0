Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 821B448EA89
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 14:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCBC10E2E8;
	Fri, 14 Jan 2022 13:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B6D10E2D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 13:23:05 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id t20so8133160wrb.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 05:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yGm+HoMnmHYq1hZff4imUtmCDuhFjGImOK6d/VwMT8U=;
 b=JC7r1JvhMle4ohgH2rJv/L6PPPETDeM903H6xJX4DXBu0n6vg8jjoMrKnFnKpOmXgD
 f5C/0sHKGxlG3LvoKtBo1VuLRldJTHGz1obhec8P9Zj87y4X3VUYhI0jeVteqNAr6G12
 Ga3OnRiK5anvR2rbDpQzYOqsF4DwEu7VSva/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yGm+HoMnmHYq1hZff4imUtmCDuhFjGImOK6d/VwMT8U=;
 b=UcwdQ4I496MJjlRI7XcYuqu6y5ADXfLegQnJPWJlBTUVQLQgD//2zHOvCU2eG8kH2J
 p3jvYpnMTrXneFG8QdXKx8EEopjn+WN9si1HmECMwIOS9GAn1xC1hUt4l8maZN6rzuv1
 mnCyuudYlh43oQFcyqLh4DXuMYtD3aV3ZcS/ipxenA4wNmKPDf5yV53ycdWpU5A+4aYW
 5Lr5rT7Nb5bybw3tFrZ0F0lMWmzrS4uZhT7XPD25Nm7UbbYndtsoK1rsp0k3HMcuDu6/
 rLKUqMAyQSWUEjCcxlBScyK9YTHRQdpT2qbjenciuOilMcBeTUnDDPhgFPjixPWQN2wk
 DJTg==
X-Gm-Message-State: AOAM533RXHrb36BijOXKpur0ar7s0bopbzXJOuBj3B6PGj4f1uplG5gK
 zh4Ctq/uc14d80p08LJ239vxaA==
X-Google-Smtp-Source: ABdhPJwxg9XgDQbTXk32UaqyyrqXwrYkliEKezS83CKc9ThCMa4OYZ+9K9MgcPWbw6tFIE1wv0xe/w==
X-Received: by 2002:a05:6000:1786:: with SMTP id
 e6mr8056858wrg.432.1642166583781; 
 Fri, 14 Jan 2022 05:23:03 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t5sm5253375wrw.12.2022.01.14.05.23.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Jan 2022 05:23:03 -0800 (PST)
Date: Fri, 14 Jan 2022 14:23:01 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YeF5NQUzc4UKO465@phenom.ffwll.local>
References: <Yd/xzyCM87rfrwQT@tursulin-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yd/xzyCM87rfrwQT@tursulin-mobl2>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-next-fixes
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
 Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 09:33:03AM +0000, Tvrtko Ursulin wrote:
> 
> Hi Dave and Daniel,
> 
> A few fixes for the merge window.
> 
> One dealing with runtime PM handling on the PXP unbind path and a few
> regarding the newly added TTM backend support.
> 
> Regards,
> 
> Tvrtko
> 
> ---
> 
> drm-intel-next-fixes-2022-01-13:
> - Hold runtime PM wakelock during PXP unbind (Juston Li)
> - Three fixes for the TTM backend fault handling (Matthew Auld)
> - Make sure to unmap when purging in the TTM backend (Matthew Auld)
> The following changes since commit c65fe9cbbfd61dbc12868f9ed4940c80fcb249e8:
> 
>   drm/i915/fbc: Remember to update FBC state even when not reallocating CFB (2021-12-27 11:46:48 +0200)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-fixes-2022-01-13

Pulled, thanks.
-Daniel

> 
> for you to fetch changes up to 6ef295e34297433c78ea02dfcf1c649a769050bb:
> 
>   drm/i915/ttm: ensure we unmap when purging (2022-01-10 14:00:47 +0000)
> 
> ----------------------------------------------------------------
> - Hold runtime PM wakelock during PXP unbind (Juston Li)
> - Three fixes for the TTM backend fault handling (Matthew Auld)
> - Make sure to unmap when purging in the TTM backend (Matthew Auld)
> 
> ----------------------------------------------------------------
> Juston Li (1):
>       drm/i915/pxp: Hold RPM wakelock during PXP unbind
> 
> Matthew Auld (4):
>       drm/i915: don't call free_mmap_offset when purging
>       drm/i915/ttm: only fault WILLNEED objects
>       drm/i915/ttm: add unmap_virtual callback
>       drm/i915/ttm: ensure we unmap when purging
> 
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c           |  3 +++
>  drivers/gpu/drm/i915/gem/i915_gem_object_types.h   |  1 +
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c          |  1 -
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c            | 27 +++++++++++++++++++++-
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 18 ++++-----------
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c           |  5 +++-
>  6 files changed, 38 insertions(+), 17 deletions(-)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
