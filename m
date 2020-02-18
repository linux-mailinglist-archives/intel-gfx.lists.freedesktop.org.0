Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C1C16362F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C006EA97;
	Tue, 18 Feb 2020 22:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6D76EAC6
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:33:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 14:33:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="434264084"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 18 Feb 2020 14:33:45 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 14:33:22 -0800
Message-Id: <20200218223327.11058-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
References: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 05/10] drm/i915/uc: autogenerate uC checker
 functions
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

We want to map uC-level checks to GuC/HuC-level ones. The mapping from
the uC state to the GuC/HuC one follows the same pattern for all the
functions:

 uc_xxx_guc() -> guc_is_yyy()

So we can easily use a macro to autogenerate the functions via macros by
passing in the 2 mapped states.

v2: Split this change to its own patch (Michal)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.h | 30 ++++++++++++---------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 49c913524686..2ce993ceb60a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -40,15 +40,21 @@ void intel_uc_runtime_suspend(struct intel_uc *uc);
 int intel_uc_resume(struct intel_uc *uc);
 int intel_uc_runtime_resume(struct intel_uc *uc);
 
-static inline bool intel_uc_supports_guc(struct intel_uc *uc)
-{
-	return intel_guc_is_supported(&uc->guc);
+#define __uc_state_checker(x, state, required) \
+static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
+{ \
+	return intel_##x##_is_##required(&uc->x); \
 }
 
-static inline bool intel_uc_uses_guc(struct intel_uc *uc)
-{
-	return intel_guc_is_enabled(&uc->guc);
-}
+#define uc_state_checkers(x) \
+__uc_state_checker(x, supports, supported) \
+__uc_state_checker(x, uses, enabled)
+
+uc_state_checkers(guc);
+uc_state_checkers(huc);
+
+#undef uc_state_checkers
+#undef __uc_state_checker
 
 static inline bool intel_uc_supports_guc_submission(struct intel_uc *uc)
 {
@@ -60,16 +66,6 @@ static inline bool intel_uc_uses_guc_submission(struct intel_uc *uc)
 	return intel_guc_is_submission_supported(&uc->guc);
 }
 
-static inline bool intel_uc_supports_huc(struct intel_uc *uc)
-{
-	return intel_uc_supports_guc(uc);
-}
-
-static inline bool intel_uc_uses_huc(struct intel_uc *uc)
-{
-	return intel_huc_is_enabled(&uc->huc);
-}
-
 #define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
 static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
 { \
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
