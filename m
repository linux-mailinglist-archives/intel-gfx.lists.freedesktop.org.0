Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4555FA608
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 22:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0D510E70C;
	Mon, 10 Oct 2022 20:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B94C10E70C
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 20:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665433290; x=1696969290;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bSy5+7pI1eAr+PXIYpqa/ujoX1tXAuMLDx9DQfkAzkQ=;
 b=NKCN/5oUE8kJnArTrxJIZzpHzUgg+cWri9yE6JCgIsNBKwzTuFOxMEm7
 gIvo+9WdIX5WKjk84jdgFyTKu9Z02V8DjY5UkFwHRmLnet7SZRljHRZcz
 vmxTpP440xg6ZTUbfhuLTraPJxvzhCP5eJ2HCGJhHV/3/utGMeqZ6+5VZ
 QTxUGZJh6H2NdivvJwM3OwqNaRZsukW4MfGbuS+oaYeJxutw1TWx88sNv
 0hHqlIShlDdvtqU6GvfI2UlmIompOa1RnZ14bXP7Jk1XrwRn7BKP0hi7G
 cHMj2jERT1IafnFmCpHAFS8pLDtXbTSOxGOU9BmhWP6wN216pEWVZAtUA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="368492487"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="368492487"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 13:21:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="626103128"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="626103128"
Received: from ijubrilx-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.250.224])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 13:21:29 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Oct 2022 13:21:35 -0700
Message-Id: <20221010202135.28388-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add DC5 counter and DMC
 debugfs entries for MTL
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL and dgfx use the same DC5 counter.

While at it, this patch also adds the corresponding
debugfs entries. Some cleanup wrt dc3co register
which makes the code more readable.

Driver loads all firmware that it finds in the firmware
binary but platform doesn't *need* all of them. Cleaning the
previous debugs entries to reflect which firmware is needed
and if the needed firmware is loaded or not.

MTL needs both Pipe A and Pipe B DMC to be loaded
along with Main DMC.

BSpec: 49788
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index e52ecc0738a6..081a4d0083b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1065,12 +1065,13 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	seq_printf(m, "fw loaded: %s\n",
 		   str_yes_no(intel_dmc_has_payload(i915)));
 	seq_printf(m, "path: %s\n", dmc->fw_path);
-	seq_printf(m, "Pipe A fw support: %s\n",
+	seq_printf(m, "Pipe A fw needed: %s\n",
 		   str_yes_no(GRAPHICS_VER(i915) >= 12));
 	seq_printf(m, "Pipe A fw loaded: %s\n",
 		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
-	seq_printf(m, "Pipe B fw support: %s\n",
-		   str_yes_no(IS_ALDERLAKE_P(i915)));
+	seq_printf(m, "Pipe B fw needed: %s\n",
+		   str_yes_no(IS_ALDERLAKE_P(i915) ||
+			      DISPLAY_VER(i915) >= 14));
 	seq_printf(m, "Pipe B fw loaded: %s\n",
 		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
 
@@ -1081,22 +1082,19 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 		   DMC_VERSION_MINOR(dmc->version));
 
 	if (DISPLAY_VER(i915) >= 12) {
-		if (IS_DGFX(i915)) {
+		i915_reg_t dc3co_reg;
+
+		if (IS_DGFX(i915) || DISPLAY_VER(i915) >= 14) {
+			dc3co_reg = DG1_DMC_DEBUG3;
 			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
 		} else {
+			dc3co_reg = TGL_DMC_DEBUG3;
 			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
 			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
 		}
 
-		/*
-		 * NOTE: DMC_DEBUG3 is a general purpose reg.
-		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
-		 * reg for DC3CO debugging and validation,
-		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
-		 */
 		seq_printf(m, "DC3CO count: %d\n",
-			   intel_de_read(i915, IS_DGFX(i915) ?
-					 DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
+			   intel_de_read(i915, dc3co_reg));
 	} else {
 		dc5_reg = IS_BROXTON(i915) ? BXT_DMC_DC3_DC5_COUNT :
 			SKL_DMC_DC3_DC5_COUNT;
-- 
2.25.1

