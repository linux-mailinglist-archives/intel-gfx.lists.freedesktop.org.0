Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 813EC35F2D8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028486E91D;
	Wed, 14 Apr 2021 11:51:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98586E934
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:51:09 +0000 (UTC)
IronPort-SDR: 4W8mScyWRmxVZJTqvHxAM8aF7FHK3n81N6KbNuwOY/OYLKwwfOHLKei5zeKiwUDviKvnKIWSk+
 c7XPNOg24cxw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174119590"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174119590"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:09 -0700
IronPort-SDR: /7Kc/emXPGuyCa17J50vpt87KTqyugaaBGkL+eVvLaiCnYyZEpr5h/ADaoURmSCDjKm7XtzGP2
 u/VYKfTqo9/w==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965286"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:08 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:27 +0100
Message-Id: <20210414115028.168504-28-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 27/28] drm/i915: Use IS_GEN in intel_lrc.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/intel_lrc.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_lrc.c b/drivers/gpu/drm/i915/intel_lrc.c
index 55df19ec879e..63872514213c 100644
--- a/drivers/gpu/drm/i915/intel_lrc.c
+++ b/drivers/gpu/drm/i915/intel_lrc.c
@@ -1413,20 +1413,16 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 	if (GEM_WARN_ON(engine->id != RCS))
 		return -EINVAL;
 
-	switch (INTEL_GEN(engine->i915)) {
-	case 10:
+	if (IS_GEN10(engine->i915)) {
 		wa_bb_fn[0] = gen10_init_indirectctx_bb;
 		wa_bb_fn[1] = NULL;
-		break;
-	case 9:
+	} else if (IS_GEN9(engine->i915)) {
 		wa_bb_fn[0] = gen9_init_indirectctx_bb;
 		wa_bb_fn[1] = NULL;
-		break;
-	case 8:
+	} else if (IS_GEN8(engine->i915)) {
 		wa_bb_fn[0] = gen8_init_indirectctx_bb;
 		wa_bb_fn[1] = NULL;
-		break;
-	default:
+	} else {
 		MISSING_CASE(INTEL_GEN(engine->i915));
 		return 0;
 	}
@@ -2149,22 +2145,19 @@ static u32 intel_lr_indirect_ctx_offset(struct intel_engine_cs *engine)
 {
 	u32 indirect_ctx_offset;
 
-	switch (INTEL_GEN(engine->i915)) {
-	default:
-		MISSING_CASE(INTEL_GEN(engine->i915));
-		/* fall through */
-	case 10:
+	if (IS_GEN10(engine->i915)) {
 		indirect_ctx_offset =
 			GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 9:
+	} else if (IS_GEN9(engine->i915)) {
 		indirect_ctx_offset =
 			GEN9_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 8:
+	} else if (IS_GEN8(engine->i915)) {
 		indirect_ctx_offset =
 			GEN8_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
+	} else {
+		MISSING_CASE(INTEL_GEN(engine->i915));
+		indirect_ctx_offset =
+			GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
 	}
 
 	return indirect_ctx_offset;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
