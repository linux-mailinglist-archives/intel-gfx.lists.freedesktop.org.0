Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD58040CB7B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 19:13:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B3E6E994;
	Wed, 15 Sep 2021 17:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D116E994
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 17:13:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="209612192"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="209612192"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 10:10:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="553383986"
Received: from mgirach-mobl.amr.corp.intel.com (HELO cyokoyam-desk2.intel.com)
 ([10.212.7.223])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 10:10:57 -0700
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Caz Yokoyama <caz.yokoyama@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jose Roberto de Souza <jose.souza@intel.com>
Date: Wed, 15 Sep 2021 10:10:39 -0700
Message-Id: <8b54dd068cbd8b7448a1a2b5b6c6c962f576a6f2.1631725784.git.caz.yokoyama@intel.com>
X-Mailer: git-send-email 2.31.1.362.g311531c9de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/adlp: Keep hardware default dbox B
 credits
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

From: Caz Yokoyama <caz.yokoyama@intel.com>

Do not overwrite registers that don't need to change from default
value to 0.

bspec 49213
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a7ca38613f89..9190a3bc28a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2955,18 +2955,23 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	u32 val;
+	u32 val = intel_de_read(dev_priv, PIPE_MBUS_DBOX_CTL(pipe));
 
+	val &= ~MBUS_DBOX_A_CREDIT_MASK;
 	/* Wa_22010947358:adl-p */
 	if (IS_ALDERLAKE_P(dev_priv))
-		val = joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
+		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
 	else
-		val = MBUS_DBOX_A_CREDIT(2);
+		val |= MBUS_DBOX_A_CREDIT(2);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		/* Take effect hardware default MBUS_DBOX_B_CREDIT(8) */
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
+		val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
 		val |= MBUS_DBOX_BW_CREDIT(2);
 		val |= MBUS_DBOX_B_CREDIT(12);
 	} else {
+		val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
 		val |= MBUS_DBOX_BW_CREDIT(1);
 		val |= MBUS_DBOX_B_CREDIT(8);
 	}
-- 
2.31.1.362.g311531c9de

