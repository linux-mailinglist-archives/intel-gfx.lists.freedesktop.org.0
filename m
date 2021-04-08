Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D13357B6B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 06:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83E36E150;
	Thu,  8 Apr 2021 04:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3B26E150
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 04:41:02 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id h19so1680010lfu.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Apr 2021 21:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t6Ou5eRQTILTmdlVe7ce3uM+Gwip4eC6MIcy3sUm/Qk=;
 b=a/IKfUcQAwZWOtkgnbB73w24i7oDAdSRmX9j0R+SQmBbrzJ91PDNeuiuptklL41U1P
 1JCn4y9awzC8+fXlNzJpfGvEOoXl85O6XPBp5N4/pFMqUr+6eJOXWgG+sbOHSzEpulxi
 ajeZ2UiW3HzIZoCdMXD2r+5ep0KDtiqcjqoga2XZ4YLy0MxXC7ivHgzSmTIMfwroSvK4
 xhKS6t+BO2RFS1NsXzpT3uCJeHM2CXuRkS1612Gvjv6Pdi3GCyyLThVN8O3QVcUkfNXr
 04sqx6dmEyR0UEt41yuq6BCLXoyRLpAv9k9vTSWB5Nr9Bfov67vdCXKNuHFnZ5p8k+T2
 F7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t6Ou5eRQTILTmdlVe7ce3uM+Gwip4eC6MIcy3sUm/Qk=;
 b=lOi4sn/WC6otux7mOn8ckKKy8pGDOHbTxNgiIfqnKPqr++VQMG+e8bcTvZZRo930Op
 zVBVtWzYSTg5hbF23RNRT/plgR1WZzPnlEwX4u7ipc9/Si1RUwnsjntiMiqmtv8bcSXl
 SyydoBgJPswWrUo/Xk4nHbWFv+y5zhpJ5WbLYNbdRpsJ0bIDgD+KUy6scFo9Kdcq65YC
 g8LPVOq9c8W9D8/A/9HdAqmEiNNnnbMpZvgyZs/EswtuslXl3lwnS5xO7EAHuIQNU8Z1
 m678zrD2I3khu5ObopkCbdbk+gxWbqgyz5uWrRV2OcUonbTi1wGbgt1AjxiBTqEdm34g
 /9og==
X-Gm-Message-State: AOAM530rKNfTmWoVli4p8+fKVsstioxs6EUb+lyqoZHAyZYwuyaCgPmg
 Qi7fzHhRbWIa9chg3oAGEL4AgAAyiVQmMgPBBrL9w2SZ
X-Google-Smtp-Source: ABdhPJxrK2kwQ0sSDK+ZKYn6s0W3oZHLb9gK/CE/sqJ7aVpJohy+H8D5x3d8KGTKlSOffOPWL8sBciefk5uE8b6tPO8=
X-Received: by 2002:a05:6512:709:: with SMTP id
 b9mr4659137lfs.351.1617856860596; 
 Wed, 07 Apr 2021 21:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210408004200.984176-1-lucas.demarchi@intel.com>
In-Reply-To: <20210408004200.984176-1-lucas.demarchi@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 7 Apr 2021 21:41:04 -0700
Message-ID: <CAKi4VAJy24XSPOvG3493+AG2ANVscHWoqAwE84jtUMfc7mOvaA@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/12] drm/i915: Extend GEN renames to the
 rest of the driver
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 7, 2021 at 5:42 PM Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>
> Like was done for the display part that parted ways with INTEL_GEN(),
> replacing with DISPLAY_VER(), do a similar conversion for the rest of
> the driver.
>
> Lucas De Marchi (12):
>   drm/i915: rename display.version to display.ver
>   drm/i915: add macros for graphics and media versions
>   drm/i915/gt: replace gen use in intel_engine_cs
>   drm/i915/selftests: replace unused mask with simple version
>   drm/i915/selftests: eliminate use of gen_mask
>   drm/i915: finish removal of gen_mask
>   drm/i915: eliminate remaining uses of intel_device_info->gen
>   drm/i915: finish removal of gen from intel_device_info
>   drm/i915: add media and display versions to device_info print
>   drm/i915/display: use DISPLAY_VER() on remaining users
>   drm/i915: replace IS_GEN and friends with IS_GRAPHICS_VER
>   drm/i915: split dgfx features from gen 12
>
>  drivers/gpu/drm/i915/display/intel_audio.c    |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   |   6 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  33 +++---
>  .../gpu/drm/i915/gem/i915_gem_object_blt.c    |   8 +-
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  16 +--
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  12 +--
>  .../i915/gem/selftests/i915_gem_client_blt.c  |  10 +-
>  .../i915/gem/selftests/i915_gem_coherency.c   |   4 +-
>  .../drm/i915/gem/selftests/i915_gem_context.c |  16 +--
>  .../drm/i915/gem/selftests/i915_gem_mman.c    |  14 +--
>  .../drm/i915/gem/selftests/igt_gem_utils.c    |  10 +-
>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c       |  38 +++----
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |   2 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |   2 +-
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |   2 +-
>  drivers/gpu/drm/i915/gt/intel_context_sseu.c  |   2 +-
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  94 +++++++++---------
>  .../drm/i915/gt/intel_execlists_submission.c  |  18 ++--
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  18 ++--
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  34 +++----
>  drivers/gpu/drm/i915/gt/intel_gt.c            |  27 ++---
>  .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |  12 +--
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   6 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     |  10 +-
>  drivers/gpu/drm/i915/gt/intel_gtt.c           |  14 +--
>  drivers/gpu/drm/i915/gt/intel_llc.c           |   6 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  46 ++++-----
>  drivers/gpu/drm/i915/gt/intel_mocs.c          |   8 +-
>  drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   6 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  16 +--
>  drivers/gpu/drm/i915/gt/intel_renderstate.c   |   2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  12 +--
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  64 ++++++------
>  drivers/gpu/drm/i915/gt/intel_rps.c           |  60 +++++------
>  drivers/gpu/drm/i915/gt/intel_sseu.c          |  14 +--
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  66 ++++++------
>  drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  24 ++---
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   2 +-
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  |   4 +-
>  drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   8 +-
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   8 +-
>  drivers/gpu/drm/i915/gt/selftest_llc.c        |   4 +-
>  drivers/gpu/drm/i915/gt/selftest_lrc.c        |   8 +-
>  drivers/gpu/drm/i915/gt/selftest_mocs.c       |   2 +-
>  drivers/gpu/drm/i915/gt/selftest_rc6.c        |   4 +-
>  .../drm/i915/gt/selftest_ring_submission.c    |   6 +-
>  drivers/gpu/drm/i915/gt/selftest_rps.c        |  16 +--
>  drivers/gpu/drm/i915/gt/selftest_timeline.c   |   6 +-
>  .../gpu/drm/i915/gt/selftest_workarounds.c    |  18 ++--
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   4 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   2 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c        |   2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   4 +-
>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |   8 +-
>  drivers/gpu/drm/i915/gvt/dmabuf.c             |   2 +-
>  drivers/gpu/drm/i915/gvt/fb_decoder.c         |  10 +-
>  drivers/gpu/drm/i915/gvt/gtt.c                |   4 +-
>  drivers/gpu/drm/i915/gvt/handlers.c           |   6 +-
>  drivers/gpu/drm/i915/gvt/interrupt.c          |   2 +-
>  drivers/gpu/drm/i915/gvt/mmio_context.c       |  10 +-
>  drivers/gpu/drm/i915/gvt/scheduler.c          |   4 +-
>  drivers/gpu/drm/i915/gvt/vgpu.c               |   4 +-
>  drivers/gpu/drm/i915/i915.ko.new              | Bin 0 -> 43517120 bytes
>  drivers/gpu/drm/i915/i915.ko.old              | Bin 0 -> 43517912 bytes

ugh... ignore this series. Yes, patch 11 is big, but nowhere near this
Glad the mailing list filtered it out :)

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
