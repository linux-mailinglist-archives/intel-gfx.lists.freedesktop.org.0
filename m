Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F6F58365C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C67710E7D5;
	Thu, 28 Jul 2022 01:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CBF10E0B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972086; x=1690508086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YuQtu+R9GWOwvLoey6MJzPZtsIizeGJR+bdLMgI16vI=;
 b=NJcBCds/lOyvaH4M3136VgubA8rLMPcRLGq3OwcOqIqiu4rOiAA/0ZP4
 94ZkhZqttDBNbY49r3bvSthGJXDsUgdALSVk1/02RFkgUOoE++u0cFV0k
 5n93xsujbfTLaRwqQ9HldXeqeGHoRXPCqgftSyO7Pv58c5J3bkFsCi4qJ
 AMwP4HtWNUUSNEFk7sMYELrVFrToRS4jAOjRUHRasmRgn4co3kEgjRfp6
 COVv040l4D3ydXHoJCMqQP65hs7JewuESoZVXZZlDGS/Agymw7OvKn2r8
 64JbqS1QCQwqhajESj0KLGhO/XtqvOcOPTsRGJwsi7lUo5F6XN84ApePQ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271431768"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271431768"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457077"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:43 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:20 -0700
Message-Id: <20220728013420.3750388-24-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 23/23] drm/i915/mtl: Do not update GV point,
 mask value
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

No need to update mask value/restrict because
"Pcode only wants to use GV bandwidth value, not the mask value."
for Display version greater than 14.

Bspec: 646365
Cc: Matt Roper <matthew.d.roper@intel.com>
Original Author: Caz Yokoyama
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index d73be4bbaaa3..c9250d849e35 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3924,6 +3924,14 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
+	/*
+	 * No need to update mask value/restrict because
+	 * "Pcode only wants to use GV bandwidth value, not the mask value."
+	 * for DISPLAY_VER() >= 14.
+	 */
+	if (DISPLAY_VER(i915) >= 14)
+		return;
+
 	/*
 	 * Just return if we can't control SAGV or don't have it.
 	 * This is different from situation when we have SAGV but just can't
@@ -3944,6 +3952,16 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
+	/*
+	 * No need to update mask value/restrict because
+	 * "Pcode only wants to use GV bandwidth value, not the mask value."
+	 * for DISPLAY_VER() >= 14.
+	 *
+	 * GV bandwidth will be set by intel_pmdemand_post_plane_update()
+	 */
+	if (DISPLAY_VER(i915) >= 14)
+		return;
+
 	/*
 	 * Just return if we can't control SAGV or don't have it.
 	 * This is different from situation when we have SAGV but just can't
-- 
2.25.1

