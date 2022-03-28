Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 203184E9F98
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 21:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A0210ED88;
	Mon, 28 Mar 2022 19:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D9F10ED88
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 19:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648494912; x=1680030912;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DJNoJcmhu8UCEIFTvQa4hkrL77iTzAWSeoErHtCSjwo=;
 b=Hms1/dSh5sjhaYQGlpErNlwnzFNDtfkgHGSvXYumo1Mf+i+510znsRlS
 1wfZdig/V3nwf1FXF7AbLiwjS3VM3Cy8BK0NVZhVVgum4x2IGYhHlW4Ep
 U41TYkNSuRH41ED9zZotSctZFeqrZ0hTgglWq99hBHhn5KUaAzX1ItptE
 2d535GdE5MMlcjyUMNejmqZdEhp2huStS8hz17NVAfbz5D28goR99VoxZ
 6YOENeaDDSoJwg9OXxM2sH7bgtqwPkfIiQWcRhZUdpSLVxUCwVC4P4PR6
 tDVukmPLjaL8lUyNIwEHUphbaWcOthVMOxozJXkCA/rW3npGjAcqjqB9i A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="259272282"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="259272282"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 12:15:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="719235710"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 12:15:09 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 12:16:15 -0700
Message-Id: <20220328191617.122838-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Program
 PIPE_MBUS_DBOX_CTL with adl-p values
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Caz Yokoyama <caz.yokoyama@intel.com>

B credits set by IFWI do not match with specification default, so here
programming the right value.

Also while at it, taking the oportunity to do a read-modify-write to
not overwrite all other bits in this register that specification don't
ask us to change.

BSpec: 49213
BSpec: 50343
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3d2ff258f0a94..078ada041e1cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1830,13 +1830,19 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
 	enum pipe pipe = crtc->pipe;
 	u32 val;
 
+	val = intel_de_read(dev_priv, PIPE_MBUS_DBOX_CTL(pipe));
+	val &= ~MBUS_DBOX_A_CREDIT_MASK;
 	/* Wa_22010947358:adl-p */
 	if (IS_ALDERLAKE_P(dev_priv))
-		val = joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
+		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
 	else
-		val = MBUS_DBOX_A_CREDIT(2);
+		val |= MBUS_DBOX_A_CREDIT(2);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		val |= MBUS_DBOX_BW_CREDIT(2);
+		val |= MBUS_DBOX_B_CREDIT(8);
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= MBUS_DBOX_BW_CREDIT(2);
 		val |= MBUS_DBOX_B_CREDIT(12);
 	} else {
-- 
2.35.1

