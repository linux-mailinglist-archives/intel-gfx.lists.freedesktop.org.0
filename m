Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3485B959020
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C5610E506;
	Tue, 20 Aug 2024 22:00:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KMN6cBDB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D561F10E506
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2024 22:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724191207; x=1755727207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lv98rpsGnXQqTGKkPYLI+Y8f3c+dnJyCTh3+Y5PsqNo=;
 b=KMN6cBDBeb8CB1AJvXxIw7L87RNFoWQdX56JNBqAytQ1Smjc1lZSKK1M
 gNz0ibeQEdsC4GXcTCXems+6+bvVWiUynYH3cUXFs6fGnkrzgMmSwedeQ
 L+2nmTpsALY0iFtxdcixG2wsGt70osQkKjpVgj/h5dUjnugIU8NVBDnX8
 HFzldbwIUn77xanE+fQlixaQ+i2WLS/+0+p3Ieg7V3gHi29jw/KUFOSHE
 aqi3nwCco31+YgYtQlpg+YOu4eT8LgVr2Cl9Q/vBkNUBphEo+ZfyYDux+
 GvOqu7DHL66f+ZL7rjz439vbOiFRwSh9b9ts6hwEiww+ePObbing7daxC w==;
X-CSE-ConnectionGUID: nJUjHR5MTAKL13KaOFdl5w==
X-CSE-MsgGUID: mL0J2h2PQFah1Vc3MJf9wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="13119504"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="13119504"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:00:07 -0700
X-CSE-ConnectionGUID: +BX7Vew1R1yYcrwgBD0qgQ==
X-CSE-MsgGUID: mg4ryjVwR+eujIzZURZbCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="61027184"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:00:06 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/i915: Do not attempt to load the GSC multiple times
Date: Tue, 20 Aug 2024 14:59:52 -0700
Message-ID: <20240820215952.2290807-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

If the GSC FW fails to load the GSC HW hangs permanently; the only ways
to recover it are FLR or D3cold entry, with the former only being
supported on driver unload and the latter only on DGFX, for which we
don't need to load the GSC. Therefore, if GSC fails to load there is no
need to try again because the HW is stuck in the error state and the
submission to load the FW would just hang the GSCCS.

Note that, due to wa_14015076503, on MTL the GuC escalates all GSCCS
hangs to full GT resets, which would trigger a new attempt to load the
GSC FW in the post-reset HW re-init; this issue is also fixed by not
attempting to load the GSC FW after an error.

Fixes: 15bd4a67e914 ("drm/i915/gsc: GSC firmware loading")
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index 453d855dd1de..3d3191deb0ab 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -302,7 +302,7 @@ void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc)
 {
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
 
-	if (!intel_uc_fw_is_loadable(&gsc->fw))
+	if (!intel_uc_fw_is_loadable(&gsc->fw) || intel_uc_fw_is_in_error(&gsc->fw))
 		return;
 
 	if (intel_gsc_uc_fw_init_done(gsc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 9a431726c8d5..ac7b3aad2222 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -258,6 +258,11 @@ static inline bool intel_uc_fw_is_running(struct intel_uc_fw *uc_fw)
 	return __intel_uc_fw_status(uc_fw) == INTEL_UC_FIRMWARE_RUNNING;
 }
 
+static inline bool intel_uc_fw_is_in_error(struct intel_uc_fw *uc_fw)
+{
+	return intel_uc_fw_status_to_error(__intel_uc_fw_status(uc_fw)) != 0;
+}
+
 static inline bool intel_uc_fw_is_overridden(const struct intel_uc_fw *uc_fw)
 {
 	return uc_fw->user_overridden;
-- 
2.43.0

