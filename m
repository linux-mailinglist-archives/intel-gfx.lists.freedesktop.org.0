Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8689EB747
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 18:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EEFF10E934;
	Tue, 10 Dec 2024 17:00:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cu9Xveib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C04B10E930;
 Tue, 10 Dec 2024 17:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733850020; x=1765386020;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wJkPH/Mr33Ft36bGlFBwFzs5EcdaRiDdSd0HrPz8m0E=;
 b=Cu9XveibRqYv4++svliR4/a5Tc96qRhQmauIry0aoDAFQxy/9hJnYxGs
 x3CbDeqRf1pd+AI85t/rLbQtEB2ezqnkWsbul14hJgl5HvTqzcUCzA1qi
 TKf+3PkxyPUdfaRHToPCeywX9ST5GGaRYHR4nbrl/XYwVAVyo7q8kNNbu
 vY+Uow+THXCKvAgizixDR3rAASFRio1YkCT7/zsHrbdXAYvigheEWjccN
 uG6M85OxlyIvF/mNMtXsNokdjtuDWca+A5kUb7Yk7w8ftR5agI68w2C9H
 GaTeTm2W5Fvi/BWBHD+DAabO7qAUhfpfIFncWiy+QlLQOlgC/2CptevTy Q==;
X-CSE-ConnectionGUID: /HbC0nCoRmmNkGDrMSWMdA==
X-CSE-MsgGUID: RX9oOV8bQdeOwHW7myxvBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34339392"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="34339392"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 09:00:20 -0800
X-CSE-ConnectionGUID: km9jHzzmSKWVNMfeMJttqQ==
X-CSE-MsgGUID: VGvHxDxXSwi3h+mZdMvLFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95533701"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.109.171])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 09:00:19 -0800
Date: Tue, 10 Dec 2024 09:00:13 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jani.saarinen@intel.com, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [RFT] Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with
 PROVE_LOCKING."
Message-ID: <djny2tqz7mck5omsadowtn7flnegizoxgmpymyyfr3gvw4x7vf@67pbgkqftwxf>
References: <20241209135602.2716023-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20241209135602.2716023-1-luciano.coelho@intel.com>
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

On Mon, Dec 09, 2024 at 03:53:51PM +0200, Luca Coelho wrote:
>This reverts commit 560af5dc839eef08a273908f390cfefefb82aa04.
>
>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>---
>
>It seems that we have a few issues with this configuration in xe and
>in i915.  Let's try to revert it to see if the problems we're seeing
>go away.
>
>Note, these are _real_ issues, but only if CONFIG_RT is enabled, so the actual issues need to be solved properly, but we can revert this change until then, to avoid regressions.

+Jani Nikula, +Rodrigo

I'm thinking about landing this in topic/core-for-CI.  It seems we have
quite a few locks to revisit - we are taking spinlocks while holding
raw_spinlocks and until now there's no warning about this bug.

It's a real problem only for PREEMPT_RT since otherwise there's
no difference between the 2 lock types. However fixing this may involve
quite a few changes: if we convert the lock to raw we may need to
cascade the conversions to additional locks.  The ones I identified are:
pmu->lock, which would also need to have uncore->lock converted, which
would then probably cascade to quite a few others :-/. I'm not sure
converting uncore->lock will actually be a good thing.

I will keep digging.


Lucas De Marchi


>
>
> lib/Kconfig.debug | 12 ++++++++++--
> 1 file changed, 10 insertions(+), 2 deletions(-)
>
>diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>index f3d723705879..de4ffe09323b 100644
>--- a/lib/Kconfig.debug
>+++ b/lib/Kconfig.debug
>@@ -1397,14 +1397,22 @@ config PROVE_LOCKING
> 	 For more details, see Documentation/locking/lockdep-design.rst.
>
> config PROVE_RAW_LOCK_NESTING
>-	bool
>+	bool "Enable raw_spinlock - spinlock nesting checks"
> 	depends on PROVE_LOCKING
>-	default y
>+	default n
> 	help
> 	 Enable the raw_spinlock vs. spinlock nesting checks which ensure
> 	 that the lock nesting rules for PREEMPT_RT enabled kernels are
> 	 not violated.
>
>+	 NOTE: There are known nesting problems. So if you enable this
>+	 option expect lockdep splats until these problems have been fully
>+	 addressed which is work in progress. This config switch allows to
>+	 identify and analyze these problems. It will be removed and the
>+	 check permanently enabled once the main issues have been fixed.
>+
>+	 If unsure, select N.
>+
> config LOCK_STAT
> 	bool "Lock usage statistics"
> 	depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
>-- 
>2.45.2
>
