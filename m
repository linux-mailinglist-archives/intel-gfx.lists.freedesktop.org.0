Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE3D6F477B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8F810E5A5;
	Tue,  2 May 2023 15:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BA810E5A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041957; x=1714577957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Jv2o655jwME21US3hoc9fKP+8uRDLFSwScz4F9uuz8=;
 b=mkKHTj10uW2S8A7tk+8P4jkhEE6VMQEUPEszYG6m3fSg3iv5EeXUcREj
 vFhZS6qlwmeV7ns89csOroquUBnbP0CdOUr0Bxr5i6IKaqSI0R2W9yitR
 S4ymCardk9YUOjCqAG31Jp9EZ+bzMbXmHwiFzxzxHawdNnjENqqi2tH/J
 cspeSxa7wq5zWAcOdYA4Wg7Xkgz0nCtXRoptkMZV7636bijdLW+PADIdM
 CsxIWyJikDPJ8s0naAbIsfTfpDxY85A/e9FO6MQ+zDCwTyNC4paVU5HIZ
 W1cwaY+nVRSINzz+n8YH/+d/hJEIBDEpsEIxcsov9XHIar7izBnvXktyY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="332790998"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="332790998"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="699016126"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="699016126"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:37 +0300
Message-Id: <7656b8f58b088c108a2a32f7089329740efabba1.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/24] drm/i915/pmu: drop kernel-doc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The comments are closer to not being kernel-doc.

drivers/gpu/drm/i915/i915_pmu.h:21: warning: cannot understand function prototype: 'enum i915_pmu_tracked_events '
drivers/gpu/drm/i915/i915_pmu.h:32: warning: cannot understand function prototype: 'enum '
drivers/gpu/drm/i915/i915_pmu.h:41: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 * How many different events we track in the global PMU mask.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 449057648f39..c30f43319a78 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -14,7 +14,7 @@
 
 struct drm_i915_private;
 
-/**
+/*
  * Non-engine events that we need to track enabled-disabled transition and
  * current state.
  */
@@ -25,7 +25,7 @@ enum i915_pmu_tracked_events {
 	__I915_PMU_TRACKED_EVENT_COUNT, /* count marker */
 };
 
-/**
+/*
  * Slots used from the sampling timer (non-engine events) with some extras for
  * convenience.
  */
@@ -37,7 +37,7 @@ enum {
 	__I915_NUM_PMU_SAMPLERS
 };
 
-/**
+/*
  * How many different events we track in the global PMU mask.
  *
  * It is also used to know to needed number of event reference counters.
-- 
2.39.2

