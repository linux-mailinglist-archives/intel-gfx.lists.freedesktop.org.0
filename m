Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A9E4F19AA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 20:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8006B10E5A0;
	Mon,  4 Apr 2022 18:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFC910E12A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 18:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649096156; x=1680632156;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=sNj2/ETf8551Ar29HNqQNpauAs6Y3TvrxVYnYuQpQu4=;
 b=krl91AQzZFWVisD99FAGaOU+RMmzRnavB/Q5q/N8Mx83Ikaq8M8qde0o
 Sy1HwWkNJ/iPWQZbPV0nN0CIOQsVtPUd5g5nzVcmZWATOscq7r70HNiTp
 paeHFQ0XoMES77S7/17cVNLbmslnG6bRbJEaetxhmNh8vKfTtWLu2o3ek
 hxDCWQEcGGUHFIz6DZSQNh+TmEiAetxJAEdIhQxKSwTNNSbEfffSwEBTj
 ZG5sV6PkuwSOVjW+isHc/8GMnU6FQXU76KKngYBH4Qu5mqs2Aac/J6qdg
 YaZXzqc5lw2SyycmVkUL0FEHs/30xTqtCnAcGtN2K4AELINq2pEwrVP36 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="240516225"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="240516225"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 11:15:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="504994332"
Received: from rshrader-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.170.103])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 11:15:55 -0700
Date: Mon, 4 Apr 2022 11:15:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220404181555.qz55qlb5rqgbephw@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220404173453.2632031-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220404173453.2632031-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [CI] drm/i915/uncore: keep track of last mmio
 accesses
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

On Mon, Apr 04, 2022 at 10:34:53AM -0700, Lucas De Marchi wrote:
>Sine gen6 we use FPGA_DBG register to detect unclaimed MMIO registers.
>This register is in the display engine IP and can only ever detect
>unclaimed accesses to registers in this area. However sometimes there
>are reports of this triggering for registers in other areas, which
>should not be possible.
>
>This keeps track of the last 4 registers which should hopefully be
>sufficient to understand where these are coming from. And without
>increasing the debug struct too much:
>
>Before:
>	struct intel_uncore_mmio_debug {
>		spinlock_t                 lock;                 /*     0    64 */
>		/* --- cacheline 1 boundary (64 bytes) --- */
>		int                        unclaimed_mmio_check; /*    64     4 */
>		int                        saved_mmio_check;     /*    68     4 */
>		u32                        suspend_count;        /*    72     4 */
>
>		/* size: 80, cachelines: 2, members: 4 */
>		/* padding: 4 */
>		/* last cacheline: 16 bytes */
>	};
>
>After:
>	struct intel_uncore_mmio_debug {
>		spinlock_t                 lock;                 /*     0    64 */
>		/* --- cacheline 1 boundary (64 bytes) --- */
>		int                        unclaimed_mmio_check; /*    64     4 */
>		int                        saved_mmio_check;     /*    68     4 */
>		u32                        last_reg[4];          /*    72    16 */
>		u32                        last_reg_pos;         /*    88     4 */
>		u32                        suspend_count;        /*    92     4 */
>
>		/* size: 96, cachelines: 2, members: 6 */
>		/* last cacheline: 32 bytes */
>	};
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
>
>Sending this for CI only for now, to get it running and hopefully
>reproduce the issues we are seeing. I didn't reproduce the issue
>mentioned with this patch applied yet.

nvm, found a way to reproduce it locally and fix up the output
reporting. I canceled the CI execution and will submit it again.

Lucas De Marchi
