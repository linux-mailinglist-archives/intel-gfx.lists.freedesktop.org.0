Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6001A4C712C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 17:01:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88BB810E6B3;
	Mon, 28 Feb 2022 16:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C4910E55D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 16:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646064084; x=1677600084;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jpu8h8ijcs6yuQzWwoa31nnmBQJjBxa3a1h2plZ5MEU=;
 b=R0fkqQWj5ihPt5On1rHNGAp/lOddNrC+ZT+ZZgbKssJnqq5kNelBPwW6
 /4eCI9LIXQ8KWMB18VGwJg62XGwfs9KjbuSZJBBPMpXlBrcurJka6y/wM
 bqKcBSVf3zaHaAXJGFPeQgLS3PXmVn2lOjHqYjK34TpVAOrgcC472uVNZ
 9D/CvDC+EyqdmE4rMX7xTibWSZjq3R2/+6L2t/WDzD5q3O0bhxGR6qMZ1
 gYORQH7neHEnFRdpmQ2fFAf2SmFod3eMn/2OoCLh5opLEwa3GcKnPP2Qf
 K3R0QhkghHJLBgKvE+vCeD59+Cd12IVT9DmyK2UPxNyavk3BghP4CSwiu A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="233535462"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="233535462"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 08:01:00 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="492760085"
Received: from mmlejnek-mobl2.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.89])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 08:00:59 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Feb 2022 17:00:45 +0100
Message-Id: <20220228160045.361314-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] HAX: drm/i915: Disable GuC submission on DG1
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

This is just to try to repro the execlist selftest failure I'm seeing on
my local DG1 with GuC submission disabled.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index da199aa6989f..563913fad35b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -41,6 +41,11 @@ static void uc_expand_default_options(struct intel_uc *uc)
 		return;
 	}
 
+	if (IS_DG1(i915)) {
+		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
+		return;
+	}
+
 	/* Default: enable HuC authentication and GuC submission */
 	i915->params.enable_guc = ENABLE_GUC_LOAD_HUC | ENABLE_GUC_SUBMISSION;
 }
-- 
2.34.1

