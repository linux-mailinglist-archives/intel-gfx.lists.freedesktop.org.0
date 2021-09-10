Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AA64070AB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 19:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E762E6EA57;
	Fri, 10 Sep 2021 17:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38786EA57;
 Fri, 10 Sep 2021 17:52:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="220807145"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="220807145"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 10:52:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="514376664"
Received: from saitejra-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.128.112])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 10:52:57 -0700
Date: Fri, 10 Sep 2021 10:52:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Andi Shyti <andi.shyti@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20210910175257.oo3wbqnwx2inbcr3@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210909004941.379035-1-lucas.demarchi@intel.com>
 <20210909004941.379035-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210909004941.379035-3-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: rename debugfs_gt_pm files
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

On Wed, Sep 08, 2021 at 05:49:40PM -0700, Lucas De Marchi wrote:
>We shouldn't be using debugfs_ namespace for this functionality. Rename
>debugfs_gt_pm.[ch] to intel_gt_pm_debugfs.[ch] and then make
>functions, defines and structs follow suit.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                      |  2 +-
> drivers/gpu/drm/i915/gt/debugfs_gt_pm.h            | 14 --------------
> drivers/gpu/drm/i915/gt/intel_gt_debugfs.c         |  4 ++--
> .../gt/{debugfs_gt_pm.c => intel_gt_pm_debugfs.c}  |  4 ++--
> drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h      | 14 ++++++++++++++
> 5 files changed, 19 insertions(+), 19 deletions(-)
> delete mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
> rename drivers/gpu/drm/i915/gt/{debugfs_gt_pm.c => intel_gt_pm_debugfs.c} (99%)
> create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 232c9673a2e5..dd656f2d7721 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -79,7 +79,6 @@ i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
>
> # "Graphics Technology" (aka we talk to the gpu)
> gt-y += \
>-	gt/debugfs_gt_pm.o \
> 	gt/gen2_engine_cs.o \
> 	gt/gen6_engine_cs.o \
> 	gt/gen6_ppgtt.o \
>@@ -103,6 +102,7 @@ gt-y += \
> 	gt/intel_gt_engines_debugfs.o \
> 	gt/intel_gt_irq.o \
> 	gt/intel_gt_pm.o \
>+	gt/intel_gt_pm_debugfs.o \
> 	gt/intel_gt_pm_irq.o \
> 	gt/intel_gt_requests.o \
> 	gt/intel_gtt.o \
>diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
>deleted file mode 100644
>index 4cf5f5c9da7d..000000000000
>--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
>+++ /dev/null
>@@ -1,14 +0,0 @@
>-/* SPDX-License-Identifier: MIT */
>-/*
>- * Copyright � 2019 Intel Corporation
>- */
>-
>-#ifndef DEBUGFS_GT_PM_H
>-#define DEBUGFS_GT_PM_H
>-
>-struct intel_gt;
>-struct dentry;
>-
>-void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root);
>-
>-#endif /* DEBUGFS_GT_PM_H */
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
>index e5d173c235a3..4096ee893b69 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
>@@ -5,10 +5,10 @@
>
> #include <linux/debugfs.h>
>
>-#include "debugfs_gt_pm.h"
> #include "i915_drv.h"
> #include "intel_gt_debugfs.h"
> #include "intel_gt_engines_debugfs.h"
>+#include "intel_gt_pm_debugfs.h"
> #include "intel_sseu_debugfs.h"
> #include "uc/intel_uc_debugfs.h"
>
>@@ -24,7 +24,7 @@ void intel_gt_register_debugfs(struct intel_gt *gt)
> 		return;
>
> 	intel_gt_engines_register_debugfs(gt, root);
>-	debugfs_gt_pm_register(gt, root);
>+	intel_gt_pm_register_debugfs(gt, root);

This is one case I usually don't know what convention to follow since it
changes in different places.

I did it like xxxx_register_debugfs because of calls like
intel_gt_init_scratch(), xxx_init_hw, etc. However here I see that just
below we have intel_sseu_debugfs_register(), so maybe I should consider
debugfs as part of the namespace?

Lucas De Marchi
