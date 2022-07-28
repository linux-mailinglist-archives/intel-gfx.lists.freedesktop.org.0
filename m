Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82819583657
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B18D710E60F;
	Thu, 28 Jul 2022 01:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9713910E448
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972084; x=1690508084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=suhis+qSURJODlnMBFqg/P0bBMYjCFA2jXa0ewQVMjw=;
 b=H7k2X/eCn+UYs5UKDUDLjlu6UFcZUzK9Jz/rr7gerEw8bzOG/PhgNFBs
 ApzinUJLEl5jcgPbRZabZ4uB+CZYUwy/i7aKmKRhZqacH0F7FNrEdF8/E
 LEIcORez3Sn1AD6mHsY18dT19/o2aIS6lEPQLjPv262d4BcZfaqN/PK9x
 gnYWq3+28iIIkC0CWpWtuTMJb0QBL2+BRPJRa9EY7oeRE17ogTwrijgBu
 bzL1SkerwLg72p71q+wpdczopTPC9eiv4WJgYZEqIBIdeCzdiSrFPamir
 hqw6ak1JlOKjLPRMYP4pRm17EDdMpTfQaMGolqlnC4ihRtCPeFTkolaVw Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="285937890"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="285937890"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457063"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:42 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:18 -0700
Message-Id: <20220728013420.3750388-22-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/23] drm/i915/dmc: MTL DMC debugfs entries
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

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

MTL needs both Pipe A and Pipe B DMC to be loaded
along with Main DMC. Patch also adds
DMC debug register for MTL.

BSpec: 49788
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 9c4f442fa407..2fabb2760474 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1005,7 +1005,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	seq_printf(m, "Pipe A fw loaded: %s\n",
 		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
 	seq_printf(m, "Pipe B fw support: %s\n",
-		   str_yes_no(IS_ALDERLAKE_P(i915)));
+		   str_yes_no(DISPLAY_VER(i915) >= 13));
 	seq_printf(m, "Pipe B fw loaded: %s\n",
 		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
 
@@ -1029,9 +1029,9 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 		 * reg for DC3CO debugging and validation,
 		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
 		 */
-		seq_printf(m, "DC3CO count: %d\n",
-			   intel_de_read(i915, IS_DGFX(i915) ?
-					 DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
+		seq_printf(m, "DC3CO count: %d\n", intel_de_read(i915,
+			   (IS_DGFX(i915) || DISPLAY_VER(i915) >= 14) ?
+			    DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
 	} else {
 		dc5_reg = IS_BROXTON(i915) ? BXT_DMC_DC3_DC5_COUNT :
 			SKL_DMC_DC3_DC5_COUNT;
-- 
2.25.1

