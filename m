Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B63A1C0AE0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C566EA45;
	Thu, 30 Apr 2020 23:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F33C6EA45
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:15:55 +0000 (UTC)
IronPort-SDR: bKJp7CEb/SaUIW+h2qI/R8TkjRfpics+BVjNqCpBIK7rxtBKI19C6fTBGIzbRqUSdTZeSUz+es
 sRzZQ/P5NRaQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:15:54 -0700
IronPort-SDR: zRQDL3kq4pwdtfhr4STP3U3VT83CdOMXWCSXo4UK5okzrfETvmdHuae6/mkGrNx2pw5azEulh9
 URzQITrb7jhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="293731886"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2020 16:15:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:15:26 -0700
Message-Id: <20200430231529.295556-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200430231529.295556-1-matthew.d.roper@intel.com>
References: <20200430231529.295556-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Setup multicast register steering
 for all gen >= 10
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Steering of multicast registers for workarounds is needed on all
platforms gen10 and above.  Move the wa_init_mcr() call to the
higher-level gt_init_workarounds() rather than re-calling it for each
individual platform.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index adddc5c93b48..4a255de13394 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -870,8 +870,6 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 static void
 cnl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	wa_init_mcr(i915, wal);
-
 	/* WaDisableI2mCycleOnWRPort:cnl (pre-prod) */
 	if (IS_CNL_REVID(i915, CNL_REVID_B0, CNL_REVID_B0))
 		wa_write_or(wal,
@@ -887,8 +885,6 @@ cnl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 static void
 icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	wa_init_mcr(i915, wal);
-
 	/* WaInPlaceDecompressionHang:icl */
 	wa_write_or(wal,
 		    GEN9_GAMT_ECO_REG_RW_IA,
@@ -943,8 +939,6 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 static void
 tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	wa_init_mcr(i915, wal);
-
 	/* Wa_1409420604:tgl */
 	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
 		wa_write_or(wal,
@@ -961,6 +955,9 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 static void
 gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
+	if (INTEL_GEN(i915) >= 10)
+		wa_init_mcr(i915, wal);
+
 	if (IS_GEN(i915, 12))
 		tgl_gt_workarounds_init(i915, wal);
 	else if (IS_GEN(i915, 11))
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
