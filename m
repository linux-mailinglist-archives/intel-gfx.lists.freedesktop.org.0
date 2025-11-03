Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BB8C2DCA0
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 20:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5403410E219;
	Mon,  3 Nov 2025 19:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emwnMLXK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139A910E219
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 19:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762196640; x=1793732640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JGwHJgqjYpIhs+av+s3sbHRM/UP7QYEwg+na3/FEXpc=;
 b=emwnMLXKyJ0InlpFQpztkArR0VUvg8Kj2q/cwXjZD9LRTuwLp8qGs/OG
 h24z0Z7sj69l8wPRmLRxcA/GTC3t9+HYN4GvGjqtrpzB61jVR9f0jOlM3
 EnseLRn/HfVr9uAGMlC3PshSf5buKrMTKuFhnlFAnKJpmC1fclYKVoNkC
 V/MQR73KlF4xm1PYWtXF7ps/l3kXVOQ5Rw6ZjXoB4NiA6oTXdBwUDs4HQ
 4fAxfXOqL9eE9H84grhqyZfGB5AIjw9dz+pzNnsKRsFV7PElM13HVLv7T
 Y0aa5XTSP3q33RqGiJKLbBecWAKv9UXXPnYf2O5feCwHfhjnjk6ueUWZh g==;
X-CSE-ConnectionGUID: Ojw1Yg/DSAufYskjlnNexw==
X-CSE-MsgGUID: bHyZilqJSZqM5+kLzyB8mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="74884226"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="74884226"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 11:04:00 -0800
X-CSE-ConnectionGUID: QRfT5mmLSG2av3jPb7EeMg==
X-CSE-MsgGUID: Y02jLojASoywy3yQBdQvUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="186633105"
Received: from bfilipch-desk.jf.intel.com ([10.88.27.152])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 11:04:00 -0800
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/guc: Test new GuC v70.53.0 for DG2, MTL
Date: Mon,  3 Nov 2025 11:03:29 -0800
Message-ID: <20251103190352.1028213-1-julia.filipchuk@intel.com>
X-Mailer: git-send-email 2.51.0
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

UAPI compatibility version 1.26.0

This patch is for testing only. If testing is successful the binary
blobs will replace the major version *_guc_70.bin files for given
platforms.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index e848a04a80dc..87f58c36b31b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,8 +88,8 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
+	fw_def(METEORLAKE,   0, guc_mmp(mtl,  70, 53, 0)) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 53, 0)) \
 	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-- 
2.51.0

