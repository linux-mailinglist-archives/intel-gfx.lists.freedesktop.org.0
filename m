Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CF3C26F8B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 22:03:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE19510E327;
	Fri, 31 Oct 2025 21:03:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="JGoGVdg8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906B210E325
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 21:02:59 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-63b9da57cecso4707396a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 14:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1761944578; x=1762549378; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=AO3ENC7j2b+BokCs5YGw65bshj0m1WCtAPtnu1UX4Pk=;
 b=JGoGVdg8CdV10amJY86+bVuyErNyBZgBpqLBzqeQ05Bs3764wt1vYFOmuHuZwpOaLX
 d/vdHRICYJSD0UXo6wf6GnwWipXho9WWiuufXi/cnI+QrrVh75haOQawlwzwdan4TCBs
 cSpmO3iG4804NFA32D5yO0Ml5cNkSJehACxUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761944578; x=1762549378;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AO3ENC7j2b+BokCs5YGw65bshj0m1WCtAPtnu1UX4Pk=;
 b=GOW+zaBM+/u3F6wa/8/6gyjMI/NC6yATPJuv9Yw49374QwBUjYUPq0XNc9QUMJVs6p
 IsJayKpCPM/9SaeCgz1bTZVIk4M5bsD1tKmWcqjqcZAh/o4d9wYMPey7w8TNbt8q5JRj
 Q51QZRwOm1tFcLyOoy9211GhCsCMRTn+q2rErFTGiIMkh1y71hR4Z4KBx77GVH7unY0a
 5B0lVKSyvK0DbFqBYatEVQxQq9zjcnwS5UhneAsklH0JXVM1DwmH6ayGQcngbDB8Od/X
 8CrH0lzDv26HdZlIzM2JJdAFIfgN8tvvar6DOXTYzJjp72GJd0MEnItlRir5uFU3aZDB
 V/yA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVvs2WNGAdNePVyYIVCtivKVlEIP4Hl8dgkGRhLvo+Kn7Pf5InjVJJTZU+IL2aizIkV7jntaEDh8sE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw1gc1POTQqFVVYar5Ixz59byeVcvmIqycm2sZSGE/FphB9FDJq
 k7CkAlLv4h2GfRfFA4KGvNkPxmmP0FwfZmFyYx2IjJCOvWE8qz60H2mh6HrBzo+TgpY=
X-Gm-Gg: ASbGncuxcGLb3m2p0Gayo+RdWEyL+17/uJgNWzoiCVosuxxdPpWpP1Ir/hGeDycrUiH
 LnmI3lsbgm2xXnjHh1Fd2Z7FIRiPYHa+V62wK7Uc6TO4zKvIYAlKVGPodbXzZ3Z9S+btQPX8hCa
 Ww9M/4nt8hanX12ssC+XNvtsbhD8fK8mNsABdgAGNG7IpiA7hTkARjfAIUi7jGNCf0T9a2UgMTU
 uaCFoHyLfZu2rKAaTsWoHK35XBIKPrEL4uy7dUuJwze8ybOQHg/83M3azWKjB6IV+gc4OAP0oiT
 sO2q/+jdln7Fd1BITM4hy6YGLDYvE5aUaeuGTyp8cXz3PSoKncdMCuz1oE+6/o1cuViiUNX7y5A
 atcGxNQyGmlH2q3/d/TOpNG8k8ReFLhymZigHwc/3sHXVM3EiDVKl5gVevrBZXlzkzhcc/LFUgW
 Ci4SJiVEyr4jk=
X-Google-Smtp-Source: AGHT+IEC3BbVnfuvUUmPud9sTKog7QOe276qAgX+Q6xsOfDjmUCUZbZNjWMxAcu0afDBLQ+f+ZrfMA==
X-Received: by 2002:a17:907:7ba3:b0:b6d:6ef8:35b with SMTP id
 a640c23a62f3a-b7070133762mr536297766b.16.1761944577862; 
 Fri, 31 Oct 2025 14:02:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b70779cff1bsm281151666b.27.2025.10.31.14.02.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Oct 2025 14:02:57 -0700 (PDT)
Date: Fri, 31 Oct 2025 22:02:55 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Tvrtko Ursulin <tursulin@igalia.com>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-intel-gt-next
Message-ID: <aQUj_16ev3ZUFklb@phenom.ffwll.local>
References: <aQH994lQI_iVPzTI@linux>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQH994lQI_iVPzTI@linux>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 
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

On Wed, Oct 29, 2025 at 11:43:51AM +0000, Tvrtko Ursulin wrote:
> 
> Hi Dave, Sima,
> 
> First drm-intel-gt-next pull request for 6.19 with only small fixups
> relating to pwrite error code handling, GuC engine busyness reporting and
> GuC reset handling. Plus a typo and a selftest fix.
> 
> One cross merge to synchronise the branches.
> 
> Regards,
> 
> Tvrtko
> 
> drm-intel-gt-next-2025-10-29:
> Driver Changes:
> 
> Fixes/improvements/new stuff:
> 
> - Set O_LARGEFILE in __create_shmem() (Taotao Chen)
> - Fix incorrect error handling in shmem_pwrite() (Taotao Chen)
> - Skip GuC communication warning on reset in progress [guc] (Zhanjun Dong)
> - Fix conversion between clock ticks and nanoseconds [guc] (Umesh Nerlige Ramappa)
> 
> Miscellaneous:
> 
> - Avoid accessing uninitialized context in emit_rpcs_query() [selftests] (Krzysztof Karas)
> - Fix typo in comment (I915_EXEC_NO_RELOC) [gem] (Marlon Henrique Sanches)
> 
> Backmerges:
> 
> - Merge drm/drm-next into drm-intel-gt-next (Joonas Lahtinen)
> The following changes since commit 5770495279d79514989b00fe9ef0ff487bf2e54e:
> 
>   Merge tag 'exynos-drm-next-for-v6.18' of git://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos into drm-next (2025-09-16 10:35:52 +1000)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-gt-next-2025-10-29
> 
> for you to fetch changes up to 2ada9cb1df3f5405a01d013b708b1b0914efccfe:
> 
>   drm/i915: Fix conversion between clock ticks and nanoseconds (2025-10-16 14:40:22 -0700)

Pulled into drm-next, thanks!
-Sima

> 
> ----------------------------------------------------------------
> Driver Changes:
> 
> Fixes/improvements/new stuff:
> 
> - Set O_LARGEFILE in __create_shmem() (Taotao Chen)
> - Fix incorrect error handling in shmem_pwrite() (Taotao Chen)
> - Skip GuC communication warning on reset in progress [guc] (Zhanjun Dong)
> - Fix conversion between clock ticks and nanoseconds [guc] (Umesh Nerlige Ramappa)
> 
> Miscellaneous:
> 
> - Avoid accessing uninitialized context in emit_rpcs_query() [selftests] (Krzysztof Karas)
> - Fix typo in comment (I915_EXEC_NO_RELOC) [gem] (Marlon Henrique Sanches)
> 
> Backmerges:
> 
> - Merge drm/drm-next into drm-intel-gt-next (Joonas Lahtinen)
> 
> ----------------------------------------------------------------
> Joonas Lahtinen (1):
>       Merge drm/drm-next into drm-intel-gt-next
> 
> Krzysztof Karas (1):
>       drm/i915/gem: Avoid accessing uninitialized context in emit_rpcs_query()
> 
> Marlon Henrique Sanches (1):
>       drm/i915/gem: fix typo in comment (I915_EXEC_NO_RELOC)
> 
> Taotao Chen (2):
>       drm/i915: set O_LARGEFILE in __create_shmem()
>       drm/i915: Fix incorrect error handling in shmem_pwrite()
> 
> Umesh Nerlige Ramappa (1):
>       drm/i915: Fix conversion between clock ticks and nanoseconds
> 
> Zhanjun Dong (1):
>       drm/i915/guc: Skip communication warning on reset in progress
> 
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c          | 22 +++++++++++++++++++---
>  .../gpu/drm/i915/gem/selftests/i915_gem_context.c  |  3 ++-
>  drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c     |  4 ++--
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c          |  9 ++++++++-
>  5 files changed, 32 insertions(+), 8 deletions(-)

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch
