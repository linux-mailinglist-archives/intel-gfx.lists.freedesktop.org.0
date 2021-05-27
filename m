Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15DA39349B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 19:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E386F47E;
	Thu, 27 May 2021 17:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86286F47E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 17:16:14 +0000 (UTC)
IronPort-SDR: q2I+Nm7jqozVFPwNUsw10hDaG5hTD9S/xDFYDkwN9fiRluZT9j+qMfybqK1KbY9rpr3sN9Gmme
 j4VIK6fmSiow==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="266677589"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="266677589"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:15:46 -0700
IronPort-SDR: 0Jd1/qy2S4y3nQFf8c/R7HsJcWEwlmiriGbLUlfDDOZF3bAvWJxglT+B7hinyEmmgpinu+ha6X
 VhAuBpBJ9k0A==
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="472671908"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:15:46 -0700
Date: Thu, 27 May 2021 10:08:40 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20210527170840.GA12181@sdutt-i7>
References: <20210526064237.77853-1-matthew.brost@intel.com>
 <162201141970.13404.246478142973064666@emeril.freedesktop.org>
 <d3ef1f68-20b8-9083-4540-947cd4a49c82@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3ef1f68-20b8-9083-4540-947cd4a49c82@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Non-interface_changing_GuC_CTBs_updates_=28rev2=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 27, 2021 at 10:13:11AM -0700, John Harrison wrote:
> AFAICT, none of these warnings are related to this patch set.
> 

Yep, other series submitted around the same time as this had the same warnings.

> John.
> 
> 
> On 5/25/2021 23:43, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Non-interface changing GuC CTBs updates (rev2)
> > URL   : https://patchwork.freedesktop.org/series/90552/
> > State : warning
> > 
> > == Summary ==
> > 
> > $ dim sparse --fast origin/drm-tip
> > Sparse version: v0.6.2
> > Fast mode used, each commit won't be checked separately.
> > -
> > +drivers/gpu/drm/i915/display/intel_display.c:1887:21:    expected struct i915_vma *[assigned] vma
> > +drivers/gpu/drm/i915/display/intel_display.c:1887:21:    got void [noderef] __iomem *[assigned] iomem
> > +drivers/gpu/drm/i915/display/intel_display.c:1887:21: warning: incorrect type in assignment (different address spaces)
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:32:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:32:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:56:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_engine_stats.h:56:9: warning: trying to copy expression type 31
> > +drivers/gpu/drm/i915/gt/intel_reset.c:1328:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
> > +drivers/gpu/drm/i915/gt/intel_ring_submission.c:1207:24: warning: Using plain integer as NULL pointer
> > +drivers/gpu/drm/i915/i915_perf.c:1434:15: warning: memset with byte count of 16777216
> > +drivers/gpu/drm/i915/i915_perf.c:1488:15: warning: memset with byte count of 16777216
> > +drivers/gpu/drm/i915/intel_wakeref.c:137:19: warning: context imbalance in 'wakeref_auto_timeout' - unexpected unlock
> > +drivers/gpu/drm/i915/selftests/i915_syncmap.c:80:54: warning: dubious: x | !y
> > +./include/asm-generic/bitops/find.h:112:45: warning: shift count is negative (-262080)
> > +./include/asm-generic/bitops/find.h:32:31: warning: shift count is negative (-262080)
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read64' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read8' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write8' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read64' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read8' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write8' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read64' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read8' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write8' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read64' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read8' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write8' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write16' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write32' - different lock contexts for basic block
> > +./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write8' - different lock contexts for basic block
> > 
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
