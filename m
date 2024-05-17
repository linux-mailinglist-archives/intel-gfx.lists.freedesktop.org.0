Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112FF8C86B9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 14:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C309710EEA1;
	Fri, 17 May 2024 12:57:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDrRiHHW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C05FF10EE9D;
 Fri, 17 May 2024 12:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715950670; x=1747486670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jDUD9kl/7SuXVXJedv7yDSmOwab2maF4Uk++Ri3LouA=;
 b=SDrRiHHWBVWnIRazH8eq3qsexRtZGBKVrDEhawCSxvVSRRkR2EXHhVEo
 ABPdCJJjRl2zZU0FO9kOqW3TNBvhiggUJ4ux513Ym1ivVkHR3h8mORZQd
 qySV573F+xbHmwKROuGR7za0wpqMOpYqWzwrPVZWQodCgwRSvFceKdzj0
 i1gdeZH//mHXqQYZ2KxHvK21xj6o+ctpb77al1JMCersdV2x5/9C+7Kde
 O0xWKtEhXRKSWKvvuhvithVI756Ij+HteTK80ADNijDrS4ESyxWrzs/Bi
 Kj3q3v5u7+v3yBMOsVSDUOlZnydqwVwjPSTvuya+SqRNnRW+55vmSDMxN Q==;
X-CSE-ConnectionGUID: v/8OVSahTK6vDUzfJ6D0AA==
X-CSE-MsgGUID: YnCl34l4S9C94yLUOZgGqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="12314185"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="12314185"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 05:57:50 -0700
X-CSE-ConnectionGUID: r6Ofe2x/STmNj2hI0TOXeA==
X-CSE-MsgGUID: 6bBWGblNQUWhoQW2FJ8gEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31604899"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.252.59])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 05:57:50 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [PATCH 3/3] drm/i915: Don't use __func__ as prefix for drm_dbg_printer
Date: Fri, 17 May 2024 14:57:30 +0200
Message-Id: <20240517125730.2304-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240517125730.2304-1-michal.wajdeczko@intel.com>
References: <20240517125730.2304-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
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

Updated code of drm_dbg_printer() is already printing symbolic
name of the caller like drm_dbg() does.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c      | 2 +-
 drivers/gpu/drm/i915/gt/selftest_context.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 6161f7a3ff70..735cd23a43c6 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1025,7 +1025,7 @@ void intel_gt_set_wedged(struct intel_gt *gt)
 
 	if (GEM_SHOW_DEBUG()) {
 		struct drm_printer p = drm_dbg_printer(&gt->i915->drm,
-						       DRM_UT_DRIVER, __func__);
+						       DRM_UT_DRIVER, NULL);
 		struct intel_engine_cs *engine;
 		enum intel_engine_id id;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index 12eca750f7d0..5eb46700dc4e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -286,7 +286,7 @@ static int __live_active_context(struct intel_engine_cs *engine)
 
 	if (intel_engine_pm_is_awake(engine)) {
 		struct drm_printer p = drm_dbg_printer(&engine->i915->drm,
-						       DRM_UT_DRIVER, __func__);
+						       DRM_UT_DRIVER, NULL);
 
 		intel_engine_dump(engine, &p,
 				  "%s is still awake:%d after idle-barriers\n",
-- 
2.43.0

