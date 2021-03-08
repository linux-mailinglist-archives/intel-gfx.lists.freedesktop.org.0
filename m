Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF28E33102C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD7289E1B;
	Mon,  8 Mar 2021 13:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C802289E1B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 13:57:36 +0000 (UTC)
IronPort-SDR: n/gMUeUoJeyXE4bVgPj9mGZtkch7UDT2FafGbltrWSlanjQjVHHiLrd+d/hD5clygsGbTzxOAs
 Khci367faHUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="273058384"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="273058384"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:36 -0800
IronPort-SDR: ZcJhZoEK5CtC3CHbtSAdFCfJKlCDrRnNQbRN1kj9uu6yldkOPDNBhUUF9iqgPu2Cfch8K7xRg7
 lAf75ZtT5WpQ==
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="519943881"
Received: from dhoffend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.213])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Mar 2021 15:56:45 +0200
Message-Id: <b3d4119c030c2cf9f127b02a42c32aeb24787296.1615211711.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615211711.git.jani.nikula@intel.com>
References: <cover.1615211711.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 8/8] drm/i915: rename
 i915_rev_steppings->intel_step_info
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Matter of taste. Match the prefix for everything else related to
steppings. No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.h |  2 +-
 drivers/gpu/drm/i915/intel_step.c        | 12 ++++++------
 drivers/gpu/drm/i915/intel_step.h        |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index f84569e8e711..1bcae2a8c79b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -228,7 +228,7 @@ struct intel_runtime_info {
 
 	u32 rawclk_freq;
 
-	struct i915_rev_steppings step;
+	struct intel_step_info step;
 };
 
 struct intel_driver_caps {
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 9df2dd264841..914a5de4346e 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -15,7 +15,7 @@
 
 
 /* FIXME: what about REVID_E0 */
-static const struct i915_rev_steppings kbl_revids[] = {
+static const struct intel_step_info kbl_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
 	[2] = { .gt_step = STEP_C0, .display_step = STEP_B0 },
@@ -26,7 +26,7 @@ static const struct i915_rev_steppings kbl_revids[] = {
 	[7] = { .gt_step = STEP_G0, .display_step = STEP_C0 },
 };
 
-static const struct i915_rev_steppings tgl_uy_revid_step_tbl[] = {
+static const struct intel_step_info tgl_uy_revid_step_tbl[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
 	[2] = { .gt_step = STEP_B1, .display_step = STEP_C0 },
@@ -34,12 +34,12 @@ static const struct i915_rev_steppings tgl_uy_revid_step_tbl[] = {
 };
 
 /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
-static const struct i915_rev_steppings tgl_revid_step_tbl[] = {
+static const struct intel_step_info tgl_revid_step_tbl[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_B0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },
 };
 
-static const struct i915_rev_steppings adls_revid_step_tbl[] = {
+static const struct intel_step_info adls_revid_step_tbl[] = {
 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
 	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
@@ -49,10 +49,10 @@ static const struct i915_rev_steppings adls_revid_step_tbl[] = {
 
 void intel_step_init(struct drm_i915_private *i915)
 {
-	const struct i915_rev_steppings *revids = NULL;
+	const struct intel_step_info *revids = NULL;
 	int size = 0;
 	int revid = INTEL_REVID(i915);
-	struct i915_rev_steppings step = {};
+	struct intel_step_info step = {};
 
 	if (IS_ALDERLAKE_S(i915)) {
 		revids = adls_revid_step_tbl;
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 102fd6a26893..958a8bb5d677 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -10,7 +10,7 @@
 
 struct drm_i915_private;
 
-struct i915_rev_steppings {
+struct intel_step_info {
 	u8 gt_step;
 	u8 display_step;
 };
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
