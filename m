Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C85105AA7AD
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 08:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9837A10E75C;
	Fri,  2 Sep 2022 06:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A0910E74B;
 Fri,  2 Sep 2022 06:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662098666; x=1693634666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xybjXadNq0OnhdaUK8XspDxtgxJlRqAkoPr5G/joUuM=;
 b=IWgEmuZ1bnOEbLuRkMm7NHSeHrfv3XMGFFeBFDL5/AV23O5xXRqQNYwG
 fsN4YVvYrfqLISIHziI/IMEnJPkdeRO/U0EfT9/sQPdZ1/Y0SZNUTjnSw
 t9C79So2JDZOnCWhdRbQzQ98PvQnYwkn7XrqpfUBZ3Wf/tHXpCT057Z3K
 e3yWGnDWDY5fDEawfN+36hN6L4uUlc7I/vxs2LtyiN20RUjlyt7qo591c
 T5DOK97fRJWeUqusw45rdUostaN+cgIckgCGcwhCOcFwq8x3OSJO/rSrw
 FfmKvHjlIrNarPBXzb7KhJcjcxLHwGQSZD0bp6lzFZTimd2QdcD3KdZZq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="282889145"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="282889145"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 23:04:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="755144616"
Received: from invictus.jf.intel.com ([10.165.21.188])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 23:04:25 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 23:03:42 -0700
Message-Id: <20220902060342.151824-12-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
References: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/11] drm/i915/mtl: Do not update GV point,
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display 14 and future platforms do not directly communicate to Pcode
via mailbox the SAGV bandwidth information. PM Demand registers are
used to communicate display power requirements to the PUnit which would
include GV point and mask value.

Skip programming GV point and mask values through legacy pcode mailbox
interface.

Bspec: 64636
Cc: Matt Roper <matthew.d.roper@intel.com>
Original Author: Caz Yokoyama
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index b19a1ecb010e..69efd613bbde 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3923,6 +3923,14 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
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
@@ -3943,6 +3951,16 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
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
2.34.1

