Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 218EC723FE8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 12:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8692F10E22F;
	Tue,  6 Jun 2023 10:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB9FA10E22F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 10:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686048237; x=1717584237;
 h=from:to:cc:subject:date:message-id;
 bh=wQR/CpB40Dc1Nv7NtZ761Q6a401PCu+aVd2+cZPShNo=;
 b=bCM9doBggc6n0Iw15L2ewenuul+OASgDzUjQc+8inRaH5NY2sKYOt0nQ
 1U6oSzeStmP/AZYsCRuhulxhyliuUzCp6OwjaSJbcByvn/hHwlDdGkemO
 yPNonNRSUT05d/oBrH4GEPfaj+6mrkg7vBGJE19RZZ7+yQ2jgcIcNLO/1
 D23erV5FkTqXHX0XTAzp59ZLA6GqqqywZx/x1qCpTBHPpBTtV43OU9RN4
 GsJL1EE4KAvyZ+ErycNHTE/hNKFhoKkoHMmUyliy0HNtboGfBpbVfKgCs
 fIBRuu+7gUsZwUjvNKj6QleYszyg2iRZt6J3TK13ppsfk2PUi/7yjKGLr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336987074"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="336987074"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 03:43:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778942854"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="778942854"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jun 2023 03:43:55 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 18:42:38 +0800
Message-Id: <20230606104238.31953-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: update DP 2.0 vswing table for
 C20 phy
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

Update preset 15 setting to align the latest bspec value.

Bspec: 74104
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 6a1507515119..2af91a06f5fe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1086,7 +1086,7 @@ static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] = {
 	{ .snps = { 37, 4, 7 } },       /* preset 12 */
 	{ .snps = { 33, 4, 11 } },      /* preset 13 */
 	{ .snps = { 40, 8, 0 } },	/* preset 14 */
-	{ .snps = { 28, 2, 2 } },	/* preset 15 */
+	{ .snps = { 30, 2, 2 } },	/* preset 15 */
 };
 
 /* HDMI2.0 */
-- 
2.31.1

