Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A096F0620
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 14:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B7B10EB4B;
	Thu, 27 Apr 2023 12:45:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C1210E286;
 Thu, 27 Apr 2023 12:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682599551; x=1714135551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wAwkMWOAklX9rwrKXUYEWVDBJrnANCtCP+WhvjmGsMg=;
 b=mysPd4Hp1aWa91pZb8fxyvB/FPjoP+1vShweeAwLNMVN5b7bx0bsVBjU
 8b1zug3WtHKtFulIputnc0mt8nXHCjOI4p4Zje/tGwdt9JWGrW8KVqsyl
 yKhc548aZh72c7Go+j92syvH44l4FhxSYNGa9Q83JC5Mr+W4bTBY0m/Vk
 mXSWtDfE4gqDPRg27xTd7by4bZ/Rt1JOBaD3KP6GH9MgaQgcFV2bTiP+t
 G1fa6nJAatQPPlM2AnHqBmOnXwWuhhYw5F7inFYp9PKo9gpi+6xeft/NS
 MAtOFMB+wyYSFjjDqj91YWTJay6408X8mVMDvP+quxKgU950GawsmHhUC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="331680635"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="331680635"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 05:45:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="688414518"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="688414518"
Received: from ebaldwin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.239.242])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 05:45:49 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 Apr 2023 13:45:35 +0100
Message-Id: <20230427124537.820273-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230427124537.820273-1-tvrtko.ursulin@linux.intel.com>
References: <20230427124537.820273-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/4] drm/i915: Record default rps threshold values
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Record the default values as preparation for exposing the sysfs controls.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 3 +++
 drivers/gpu/drm/i915/gt/intel_rps.c      | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index f08c2556aa25..1b22d7a50665 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -83,6 +83,9 @@ enum intel_submission_method {
 struct gt_defaults {
 	u32 min_freq;
 	u32 max_freq;
+
+	u8 rps_up_threshold;
+	u8 rps_down_threshold;
 };
 
 enum intel_gt_type {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 05ce71ec5add..343a50188c5e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2015,7 +2015,9 @@ void intel_rps_init(struct intel_rps *rps)
 
 	/* Set default thresholds in % */
 	rps->power.up_threshold = 95;
+	rps_to_gt(rps)->defaults.rps_up_threshold = rps->power.up_threshold;
 	rps->power.down_threshold = 85;
+	rps_to_gt(rps)->defaults.rps_down_threshold = rps->power.down_threshold;
 
 	/* Finally allow us to boost to max by default */
 	rps->boost_freq = rps->max_freq;
-- 
2.37.2

