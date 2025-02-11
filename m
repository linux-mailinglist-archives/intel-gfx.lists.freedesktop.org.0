Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A08DAA31966
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F13410E760;
	Tue, 11 Feb 2025 23:19:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cVU8HXx0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D516210E760
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739315999; x=1770851999;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3h0WZHYLmjMK0lthgOUmssipmLBWbFI0CBTQvhQiYh8=;
 b=cVU8HXx043SlGGjTTJyyVWKd2Nx5EaDFmWjo4gVDRBjrSDkWkuc+DVKl
 H4Xh1QqHkDpwQTaiZFm8s9YIzb5jH+ybdrKZfV3WC9OJdwJs83YJWJMIe
 NxFg3TsM06ZpDpQ7Zgchn/HlPrCL18tYyxs67uFXvM0Sqbb4e6zhqJH53
 1I3786WfJKVzaDaNnmZRI2tZ1LGCNs4NWQ3mWk73Zhbrzd5lUMQFptSsf
 lazeFjywBaVwG/oQ9A2fhFZp3Cm5oN6FOVjJP5KgLFlfjRqqmiDXedES9
 1shaJdwGObvOTZkfBvwjPWJLupMRLB7uSigP7Ny3QLZ25DVaDfppdd1/K g==;
X-CSE-ConnectionGUID: wrazH/34S8GWUqfb/DpMWQ==
X-CSE-MsgGUID: nwfWx8b8Soe8JhSuQ7TiIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820131"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820131"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:19:58 -0800
X-CSE-ConnectionGUID: 6RZ27iZEQOaQ+H9axBw65A==
X-CSE-MsgGUID: 0pY3GoNGS32L60L/2Yez/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870886"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:19:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:19:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/12] drm/i915: Introduce RING_FAULT_VADDR_MASK
Date: Wed, 12 Feb 2025 01:19:33 +0200
Message-ID: <20250211231941.22769-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a proper bitmask definition for the pre-bdw fault
virtual address bits insted of abusing PAGE_MASK.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c      | 8 +++++---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 1 +
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 04b43852a397..b8189754edb7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -302,17 +302,19 @@ static void gen6_check_faults(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	unsigned long fault;
 
 	for_each_engine(engine, gt, id) {
+		u32 fault;
+
 		fault = GEN6_RING_FAULT_REG_READ(engine);
+
 		if (fault & RING_FAULT_VALID) {
 			gt_dbg(gt, "Unexpected fault\n"
-			       "\tAddr: 0x%08lx\n"
+			       "\tAddr: 0x%08x\n"
 			       "\tAddress space: %s\n"
 			       "\tSource ID: %d\n"
 			       "\tType: %d\n",
-			       fault & PAGE_MASK,
+			       fault & RING_FAULT_VADDR_MASK,
 			       fault & RING_FAULT_GTTSEL_MASK ?
 			       "GGTT" : "PPGTT",
 			       REG_FIELD_GET(RING_FAULT_SRCID_MASK, fault),
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 1d318993a652..c58192e6f078 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -326,6 +326,7 @@
 							    _RING_FAULT_REG_VCS, \
 							    _RING_FAULT_REG_VECS, \
 							    _RING_FAULT_REG_BCS))
+#define   RING_FAULT_VADDR_MASK			REG_GENMASK(31, 12) /* pre-bdw */
 #define   RING_FAULT_ENGINE_ID_MASK		REG_GENMASK(16, 12) /* bdw+ */
 #define   RING_FAULT_GTTSEL_MASK		REG_BIT(11) /* pre-bdw */
 #define   RING_FAULT_SRCID_MASK			REG_GENMASK(10, 3)
-- 
2.45.3

