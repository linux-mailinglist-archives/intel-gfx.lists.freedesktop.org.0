Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5346012A8C2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Dec 2019 19:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F6289D1D;
	Wed, 25 Dec 2019 18:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A2789D1D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Dec 2019 18:07:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Dec 2019 10:07:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,356,1571727600"; d="scan'208";a="419278219"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga006.fm.intel.com with ESMTP; 25 Dec 2019 10:07:41 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Dec 2019 23:25:14 +0530
Message-Id: <20191225175514.21271-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: Increase log level if DSB engine
 gets busy
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Increase the log level if DSB engine gets busy. If dsb engine
is busy, it should be an error condition to indicate there might be
some difficulty with the hardware.

If DSB engine gets busy, load luts will fail and as per current
driver design if one instance of DSB engine gets busy, we are not
allocating the other instance. So, increase the log level to indicate there
could be an issue with driver/hardware.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ada006a690df..6f67b5dfa128 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -52,7 +52,7 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
 
 	dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
 	if (DSB_STATUS & dsb_ctrl) {
-		DRM_DEBUG_KMS("DSB engine is busy.\n");
+		DRM_ERROR("DSB engine is busy.\n");
 		return false;
 	}
 
@@ -72,7 +72,7 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
 
 	dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
 	if (DSB_STATUS & dsb_ctrl) {
-		DRM_DEBUG_KMS("DSB engine is busy.\n");
+		DRM_ERROR("DSB engine is busy.\n");
 		return false;
 	}
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
