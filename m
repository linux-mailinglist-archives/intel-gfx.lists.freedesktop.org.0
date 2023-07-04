Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51744746E32
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 12:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C5210E08E;
	Tue,  4 Jul 2023 10:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7511610E08E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 10:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688464930; x=1720000930;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1o6P39bfsYeZhDUk3yicdeNuZ+z4prAqgkAEXwvFEbo=;
 b=j4GNRPgaWVjEgf0iRZbKeX2gxoantMIllPqNnGdhJVZaZcigoqkhZVPs
 MCUIIOgZ03ubE+jsVkYpDvu+udGm65egRbU88MUSwLpIsLYIPiUuoDKu0
 3w5FiiMIB3OPVVV08KCPnyCLNY2oUWenvpQeo70wJez3s1NOoKuY9qU0Y
 J9tRHaavcDxE7oDZEeOTdlG6A9M9X+IMHUVF3b3jdylNci3/gLJJQq3dE
 3vV3GNYFE/1Ma7PGPuU7+TR7HVA65kstdEZ7iZlDrwMuvvc519d8Ehc83
 R1rmtqiSW3A+6yjVjWrhgS1TbzGKL4JUIy/9b+qjwFjnCyvon9iBKqX/f g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429124736"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="429124736"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 03:02:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="808877623"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="808877623"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 03:02:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1688463863.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1688463863.git.jani.nikula@intel.com>
Date: Tue, 04 Jul 2023 13:02:05 +0300
Message-ID: <87edlo0zc2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915/uncore: unclaimed reg debug
 race fix and optimization
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

On Tue, 04 Jul 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> Fix a race in unclaimed reg debug. This does increase the code size for
> CONFIG_DRM_I915_DEBUG_MMIO=y.
>
> However, also add an optimization to reduce code size for
> CONFIG_DRM_I915_DEBUG_MMIO=n.
>
> Do we care about the bloat for the debug config?
>
> Before/after for both CONFIG_DRM_I915_DEBUG_MMIO=y and =n.
>
>
> $ scripts/bloat-o-meter intel_uncore.before.with-debug.o intel_uncore.after.with-debug.o
> add/remove: 0/2 grow/shrink: 10/0 up/down: 927/-149 (778)
> Function                                     old     new   delta
> fwtable_read16                               721     821    +100
> fwtable_read32                               719     817     +98
> fwtable_read8                                722     818     +96
> fwtable_read64                               722     817     +95
> gen6_write16                                 679     772     +93
> gen6_write8                                  678     769     +91
> gen6_write32                                 677     768     +91
> fwtable_write16                              742     831     +89
> fwtable_write8                               741     828     +87
> fwtable_write32                              740     827     +87
> __pfx___unclaimed_reg_debug                   16       -     -16
> __unclaimed_reg_debug                        133       -    -133

Looking at the size decrease for __unclaimed_reg_debug(), it occurs to
me the compiler wasn't previously inlining unclaimed_reg_debug()
regardless of the inline keyword. It just bundled unclaimed_reg_debug()
together with __unclaimed_reg_debug(), and called it.

The juggling here actually makes them both inline, which presumably was
the original intention.

The optimization for CONFIG_DRM_I915_DEBUG_MMIO=n below is the good
stuff.

BR,
Jani.

> Total: Before=33797, After=34575, chg +2.30%
>
> $ scripts/bloat-o-meter intel_uncore.before.without-debug.o intel_uncore.after.without-debug.o
> add/remove: 0/2 grow/shrink: 0/10 up/down: 0/-2557 (-2557)
> Function                                     old     new   delta
> __pfx___unclaimed_reg_debug                   16       -     -16
> __unclaimed_reg_debug                        133       -    -133
> gen6_write8                                  678     446    -232
> gen6_write32                                 677     445    -232
> gen6_write16                                 679     447    -232
> fwtable_read64                               722     482    -240
> fwtable_read32                               719     479    -240
> fwtable_read16                               721     481    -240
> fwtable_read8                                722     480    -242
> fwtable_write8                               741     491    -250
> fwtable_write32                              740     490    -250
> fwtable_write16                              742     492    -250
> Total: Before=33797, After=31240, chg -7.57%
>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
>
> Jani Nikula (3):
>   drm/i915/uncore: split unclaimed_reg_debug() to header and footer
>   drm/i915/uncore: fix race around i915->params.mmio_debug
>   drm/i915/uncore: optimize CONFIG_DRM_I915_DEBUG_MMIO=n more
>
>  drivers/gpu/drm/i915/intel_uncore.c | 47 ++++++++++++++++++-----------
>  1 file changed, 29 insertions(+), 18 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
