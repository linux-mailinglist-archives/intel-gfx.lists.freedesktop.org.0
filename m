Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6930E4E4898
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 22:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A73E10E5A9;
	Tue, 22 Mar 2022 21:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE9A10E5A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 21:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647985510; x=1679521510;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zvi6rsdHH+v8L7qvqSWfJFW+SFf9XcYslK612i10d1M=;
 b=OpoDyiqvnsBWejOxpG2rFe95wKzW6GcoGdeq0881oCgw2G4h5qrDDQRh
 eEKeIYXtJgL6UHPl6kKRUFDgUamPqZvgVcwA0WAyo0PTeBl78oUvkp099
 aA++Hkj4bmsD0rIWI4RVjc642NlFJQZYHsk5bWMk5AWXhzlBwJLMQ7FUm
 55O7xnobAaSskHiItybrznA6PRSWtNe7c40mJbxRjD83yKZ7z/zhqetME
 zBmKxHeZ/++Jt1sD7J/67z+NiJGqKWMoyIBd0xpauq6XAQyfzlb9O2V86
 AgYe+rIx05oT/1b/zbd66JjsN7wHBl3E4REQkkerFXnLW1WqEfHaFePXy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="282796505"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="282796505"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:45:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="583449596"
Received: from idwilson-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.48.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:45:07 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:46:13 -0700
Message-Id: <20220322214616.160640-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/display: Program
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
index dc6e21e4ef0b9..424cd7e9afe60 100644
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

