Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E932D522FC5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 11:46:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E565C10F5C5;
	Wed, 11 May 2022 09:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCFED10F56B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 09:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652262389; x=1683798389;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BaQJPkGNgwqFGqcJnupOLi2wlF5BX4A2b0y+wwglDLE=;
 b=f+hDLU+L8kxCNZ4lLgCWzUbsSYZPRaBI4l2YYHYY+8oiSfjJRNC/omGu
 o//dBkLuY7iC4iF1kswwxx8UpOD1Wamt4YW8QWo9l2H6by2sHNcMuynyT
 aGn4bFOv55AAAQz1Duk+AdGPi+LO8KQB14E9J4nzxBphVqqwiNPKESjzM
 8i2Ck1XspTZmBcs42Pyz0IILdmaHzEdmn+I1beW1ryQknCS62Uktt++rd
 LG/Kj6HU1HSV+I9IXhOR0j3vDdLCCIPLrM4dOnl8TyqnR2myNy3Mnwz9X
 L6yKhYeTkvU6ahhUhB7miEg62qld2JoVRJUZ/Cz9g7yUUc5TrH4tdD8io A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="269782064"
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="269782064"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 02:46:29 -0700
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="594037416"
Received: from kniesyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.131.79])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 02:46:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 12:46:19 +0300
Message-Id: <20220511094619.27889-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/uc: remove accidental static from a
 local variable
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The arrays are static const, but the pointer shouldn't be static.

Fixes: 3d832f370d16 ("drm/i915/uc: Allow platforms to have GuC but not HuC")
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 9361532726d6..d2c5c9367cc4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -156,7 +156,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 		[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
 		[INTEL_UC_FW_TYPE_HUC] = { blobs_huc, ARRAY_SIZE(blobs_huc) },
 	};
-	static const struct uc_fw_platform_requirement *fw_blobs;
+	const struct uc_fw_platform_requirement *fw_blobs;
 	enum intel_platform p = INTEL_INFO(i915)->platform;
 	u32 fw_count;
 	u8 rev = INTEL_REVID(i915);
-- 
2.30.2

