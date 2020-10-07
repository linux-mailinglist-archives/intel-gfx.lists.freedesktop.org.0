Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501AC286344
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 18:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F5589257;
	Wed,  7 Oct 2020 16:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D43589243
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 16:10:10 +0000 (UTC)
IronPort-SDR: HXlujHTVzxJjjk3Hf1rNnLiJN8WY5FBcRtKPhAM0vKG3uXCtpqoZcts2lkm0Du/GzjH/9RAE8b
 bu9eE/6iQjxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="152767908"
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="152767908"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 09:09:56 -0700
IronPort-SDR: RpHZQ8w6EJRv9oSdEnt7cQnuGVpJ9VDD8HRVTOJ+OSXyatsXvgNSFjZ4Gt6YEDAiI1+tRhcuId
 nAUPCKzqEOKw==
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="354958071"
Received: from dgetzing-mobl.gar.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.33.15])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 09:09:54 -0700
Date: Wed, 7 Oct 2020 09:09:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201007160953.5vexf4pa3mtmxwtv@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201007002210.3678024-1-lucas.demarchi@intel.com>
 <160203206894.15198.9092371725169740954@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160203206894.15198.9092371725169740954@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5BCI=2C1/8=5D_drm/i915/dg1=3A_add_more_PC?=
 =?utf-8?q?I_ids?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 07, 2020 at 12:54:28AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: series starting with [CI,1/8] drm/i915/dg1: add more PCI ids
>URL   : https://patchwork.freedesktop.org/series/82422/
>State : warning
>
>== Summary ==
>
>$ dim sparse --fast origin/drm-tip
>Sparse version: v0.6.2
>Fast mode used, each commit won't be checked separately.
>-
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read16' - different lock contexts for basic block

something wrong with sparse in CI?


$ ../maintainer-tools/dim sparse drm-tip/drm-tip
Sparse version: v0.6.2
Commit: drm/i915/dg1: add more PCI ids
Okay!

Commit: drm/i915/dg1: Initialize RAWCLK properly
Okay!

Commit: drm/i915/dg1: Define MOCS table for DG1
Okay!

Commit: drm/i915/dg1: Increase mmio size to 4MB
Okay!

Commit: drm/i915/dg1: gmbus pin mapping
Okay!

Commit: drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
Okay!

Commit: drm/i915/dg1: Update comp master/slave relationships for PHYs
Okay!

Commit: drm/i915/dg1: provide port/phy mapping for vbt
Okay!



And also with tip of tree with sparse:

$ ../maintainer-tools/dim sparse drm-tip/drm-tip
Sparse version: v0.6.2-218-gc0e96d6d
Commit: drm/i915/dg1: add more PCI ids
Okay!

Commit: drm/i915/dg1: Initialize RAWCLK properly
Okay!

Commit: drm/i915/dg1: Define MOCS table for DG1
Okay!

Commit: drm/i915/dg1: Increase mmio size to 4MB
Okay!

Commit: drm/i915/dg1: gmbus pin mapping
Okay!

Commit: drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
Okay!

Commit: drm/i915/dg1: Update comp master/slave relationships for PHYs
Okay!

Commit: drm/i915/dg1: provide port/phy mapping for vbt
Okay!


Lucas De Marchi

>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read64' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read8' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write16' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write8' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read16' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read64' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read8' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write16' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write8' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read16' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read64' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read8' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write16' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write8' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read16' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read64' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read8' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write16' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write8' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write16' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write32' - different lock contexts for basic block
>+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write8' - different lock contexts for basic block
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
