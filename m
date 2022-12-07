Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C542646052
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:36:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAAB510E40B;
	Wed,  7 Dec 2022 17:36:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFC2C10E40B
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670434603; x=1701970603;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9juyqjwU9/2XgrqImdGkHkLtOg2oPOI5sDfGqagyh/Y=;
 b=PZaPY3SDqEWWcJ6hPvmLeJJHDjay6xQ4xWBJInFsBVo7h3wzzYs+6nMa
 JsWYdzvqTu0ZYjSOPhBv/q7edCl9IU2jckeA++z4OmaJNDuwxOIbE1vld
 vS2QxKTX2InzWjogPtRuwVkx0N+XZ8XnMOekW6So4aNf+XOpNlm+oClaC
 /qBCMKJGLNeP9g4gb6Jf3TWRlzt69PDAPG+RJcHtHMNI8/EkqEKe8mO6K
 qgtQwEoiDUkdCB1aZ+HE1cJS82uJlWkxy5Fye8wCPXE5r99iGjSFRmxUH
 C3VGg06d7U4aD2ilYYRszXY7tWIrdop9dJaf/R4ixNcMzUCvzKXBznOAN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="343995894"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="343995894"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:36:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="624384651"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="624384651"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:36:39 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 18:36:29 +0100
Message-Id: <20221207173630.973662-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: fix TLB invalidation for Gen12.50
 video and compute engines
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
Cc: Chris Wilson <chris.p.wilson@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of Gen12.50 video and compute engines, TLB_INV registers are
masked - to modify one bit, corresponding bit in upper half of the register
must be enabled, otherwise nothing happens.

Fixes: 77fa9efc16a9 ("drm/i915/xehp: Create separate reg definitions for new MCR registers")
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
This patch is simple enhancement of
04aa64375f48 ("drm/i915: fix TLB invalidation for Gen12 video and compute engines")
for Gen12.5 which is added in dev branches.
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index d114347c004ee5..f0224b607aa4a7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1120,9 +1120,15 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 			continue;
 
 		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+			u32 val = BIT(engine->instance);
+
+			if (engine->class == VIDEO_DECODE_CLASS ||
+			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
+			    engine->class == COMPUTE_CLASS)
+				val = _MASKED_BIT_ENABLE(val);
 			intel_gt_mcr_multicast_write_fw(gt,
 							xehp_regs[engine->class],
-							BIT(engine->instance));
+							val);
 		} else {
 			rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
 			if (!i915_mmio_reg_offset(rb.reg))
-- 
2.34.1

