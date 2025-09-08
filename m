Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5198B490E1
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 16:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 623FC10E535;
	Mon,  8 Sep 2025 14:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SsM9N8/J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEEC310E532
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 14:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757340719; x=1788876719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yvULRyM9NcKgIxdM4qJoQLCRklNFQx9NTlbFoO2ww4o=;
 b=SsM9N8/JXzAgDvOvo+7WejxAxpNl5+BGcFelfetg045j4VWhJYY6V7tr
 hbF4aYFoWX26PJZ80uo1jycami+TpUwfQPDobHCA9C7gwYD+QlmJKP2Mo
 GuhL9hCs0BJ07N3nEa+1IiBUof+kjCyYio4CuwF1ChCeVoB84Vf9r1gTo
 v+aOHUSRAHhKjt02dDZ9wZbJd619OqOElMwXaLWcm+3Q59m9cp1jvmo51
 i4LJP/kCcxsiPIbTKYY7MgVTxrnS/ZkAYxkz2sN1EKdHBAx1orjrEF9Mq
 UfgGkjsNCuwzsYGUorNiKjgcXDusCQtnllYR/IVYeDpe/eQl7msAweaFJ g==;
X-CSE-ConnectionGUID: EUwNxKQsRPaXKbkDFHQJKw==
X-CSE-MsgGUID: W+bE0BfdRV6qxnpQq9dqOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="85044660"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="85044660"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:11:59 -0700
X-CSE-ConnectionGUID: kjXelvgsQ0i5RXiu3CvnXw==
X-CSE-MsgGUID: jYkRqvNvTemoMrUGmxM8JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="171973585"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:11:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915: redundant i915_utils.h includes
Date: Mon,  8 Sep 2025 17:11:45 +0300
Message-ID: <29b4e07f3a3ada70a989679fdb55b84b049a933e.1757340520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757340520.git.jani.nikula@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Neither intel_guc.h nor i915_gem.h need i915_utils.h anymore. Just drop
the includes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h | 1 -
 drivers/gpu/drm/i915/i915_gem.h        | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 053780f562c1..ce766f558ce5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -18,7 +18,6 @@
 #include "intel_guc_slpc_types.h"
 #include "intel_uc_fw.h"
 #include "intel_uncore.h"
-#include "i915_utils.h"
 #include "i915_vma.h"
 
 struct __guc_ads_blob;
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 20b3cb29cfff..cd7114002944 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -30,8 +30,6 @@
 
 #include <drm/drm_drv.h>
 
-#include "i915_utils.h"
-
 struct drm_file;
 struct drm_i915_gem_object;
 struct drm_i915_private;
-- 
2.47.3

