Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BF265A9A4
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Jan 2023 12:01:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51DD10E072;
	Sun,  1 Jan 2023 11:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCE510E092
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Jan 2023 11:01:08 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id ja17so18352323wmb.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Jan 2023 03:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fbN4sgockCVO/B+yBctAM+MEuOBH+6vJWelCNlHH77g=;
 b=QVmcBv8W8kVU5ZEJXj3c/wGX88kQTr7TbdErLuN6PnTdUO0apb/X4SRfpx71YRVJ8D
 Fis9EZUjwNcE8xWOSiGO0OI62cRPlRXZoVNBv2XWkfWCrFKxjcq69Vq1ijVrcUOYdCqN
 LDA2fJsi75fq7ZnG+7WuO40VexQjL8R2L7FDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fbN4sgockCVO/B+yBctAM+MEuOBH+6vJWelCNlHH77g=;
 b=5jrlPRuW2vbYW8Kn7MNnHI2Rk42UphlxTRD56gdv6HimW6FXdzJysA6lEgC7JKR9RC
 PhhJclyHDk57AhnluhtSJPWMMGgC1+QqrQAEaXwu+4TlhLh8CDhEtp05VplRFyJxFl91
 eKRi3ObwetobMGS+TRYusb0B3GTxEZkWVuhhJ3AjKY8FWnZHXYm/1XKRD/Eu5d8Oz8XB
 321+sF8fUp6V1dMNiVXjDVbBtKBGl22OSfmHyZ2wfh7O/PIzF4xaKWIJDk880LneiCUg
 7cxh22BHabMaFl9WIKHB1yi/xy//sce1bYwLJb5bXC1uW42EpkIcaG+kAIZfnDqJlJ3x
 Se2w==
X-Gm-Message-State: AFqh2krGFuruemk64JQDSXO/54ANuBk/e/ujzEZHjBmJaUUm6QHN5XwB
 9WpJeg94laBCZYYJYxqAvd67og==
X-Google-Smtp-Source: AMrXdXune319SggnWIBXR1AabzXHhNu+EsgO2NQYTsfiVAs8HyAFsHZ5qwM33WVqP6tAWwJOK/Huwg==
X-Received: by 2002:a05:600c:601e:b0:3d4:a1ba:a971 with SMTP id
 az30-20020a05600c601e00b003d4a1baa971mr26670294wmb.24.1672570866625; 
 Sun, 01 Jan 2023 03:01:06 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 z13-20020adff74d000000b002366f9bd717sm29782141wrp.45.2023.01.01.03.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Jan 2023 03:01:05 -0800 (PST)
Date: Sun, 1 Jan 2023 12:01:02 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y7Fn7jyvyhsa48Bi@phenom.ffwll.local>
References: <Y662ijDHrZCjTFla@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y662ijDHrZCjTFla@intel.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
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
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@gmail.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 30, 2022 at 04:59:38AM -0500, Rodrigo Vivi wrote:
> Hi Dave and Daniel,
> 
> Here goes the initial fixes for 6.2.
> 
> The most critical ones seems to be the evict fix from Matt and
> the MIPI DSI from Jani. Both targeting stable trees.
> 
> I'm sorry for sending this on a Friday and not on a Thursday as
> usual. Where did this week go? Worst case this wait one week
> and I get it rebased and resent earlier next week.
> 
> Where did 2022 go? Happy New Year!

Cheers to you too!

> Cheers,
> Rodrigo.
> 
> 
> drm-intel-fixes-2022-12-30:
> - fix TLB invalidation for DG2 and newer platforms. (Andrzej)
> - Remove __maybe_unused from mtl_info (Lucas)
> - improve the catch-all evict to handle lock contention (Matt Auld)
> - Fix two issues with over-size (GuC/HuC) firmware files (John)
> - Fix DSI resume issues on ICL+ (Jani)
> 
> Thanks,
> Rodrigo.
> 
> The following changes since commit 1b929c02afd37871d5afb9d498426f83432e71c2:
> 
>   Linux 6.2-rc1 (2022-12-25 13:41:39 -0800)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2022-12-30

Pulled, I'll try to get it out for Linus to include it in -rc2 still.

> for you to fetch changes up to 6217e9f05a74df48c77ee68993d587cdfdb1feb7:
> 
>   drm/i915/dsi: fix MIPI_BKLT_EN_1 native GPIO index (2022-12-30 04:28:46 -0500)
> 
> ----------------------------------------------------------------
> - fix TLB invalidation for DG2 and newer platforms. (Andrzej)
> - Remove __maybe_unused from mtl_info (Lucas)
> - improve the catch-all evict to handle lock contention (Matt Auld)

Just a quick comment, this one has

Fixes: 7e00897be8bf ("drm/i915: Add object locking to i915_gem_evict_for_node and i915_gem_evict_something, v2.")

but I don't think that's entirely accurate. I might mix up some details
(and today is not the day to dig these out) and it's been two years
already when I discussed this Maarten, but this issue is older. It got
introduced with the conversion to per-object locking, and then somewhat
artfully papered over with the async object pinning infrastructure (which
had the design issue of being flat out in violation of upstream locking
hierarchy).

In practice it makes no difference, because there's no way you can
backport any of this to a point before the locking rework from Maarten (or
alternatively, revert until the glorious struct_mutex days). A bit more
review on a core locking change like this would have been good though imo.

Cheers, Daniel

> - Fix two issues with over-size (GuC/HuC) firmware files (John)
> - Fix DSI resume issues on ICL+ (Jani)
> 
> ----------------------------------------------------------------
> Andrzej Hajda (1):
>       drm/i915: fix TLB invalidation for Gen12.50 video and compute engines
> 
> Jani Nikula (2):
>       drm/i915/dsi: add support for ICL+ native MIPI GPIO sequence
>       drm/i915/dsi: fix MIPI_BKLT_EN_1 native GPIO index
> 
> John Harrison (1):
>       drm/i915/uc: Fix two issues with over-size firmware files
> 
> Lucas De Marchi (1):
>       drm/i915: Remove __maybe_unused from mtl_info
> 
> Matthew Auld (1):
>       drm/i915: improve the catch-all evict to handle lock contention
> 
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c    | 94 ++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c  | 59 +++++++++++++---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c              |  8 ++-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c        | 42 +++++++----
>  drivers/gpu/drm/i915/i915_gem_evict.c           | 37 +++++++---
>  drivers/gpu/drm/i915/i915_gem_evict.h           |  4 +-
>  drivers/gpu/drm/i915/i915_irq.c                 |  3 +
>  drivers/gpu/drm/i915/i915_pci.c                 |  1 -
>  drivers/gpu/drm/i915/i915_reg.h                 |  1 +
>  drivers/gpu/drm/i915/i915_vma.c                 |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_evict.c |  4 +-
>  12 files changed, 212 insertions(+), 45 deletions(-)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
