Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0104C1D75E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 22:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC8C10E140;
	Wed, 29 Oct 2025 21:40:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IH0gXKU1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A8510E140
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 21:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761774014; x=1793310014;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+4KNy7uNXJE0QgIQfw6+IUaw3Hz8wngBLcETQUyHdiY=;
 b=IH0gXKU1s1zElU9uhtwIScwGYFK/tFcya4li0rLKWEVmUcqelgYNV1B1
 03IUJtLBGABpjJAzu3d4QAeZCSomftfnRzco7TUNEx0JJCJUjRAImC5hX
 8MN8/Z9Ef/0NayWy5AeVp6omta129jyd8H/Y1K57bkd9YTikWl7hEMrtk
 6jRMsqjdQFAWvCHYpjbThR8FGjC76AYYR3ef/eob13bepxik9iwnAd7d2
 Sa06PREuoZG5NaQVq+bTK+Xz3TZQC6qD/M0Px0dFyTHy+bgjb23E0OKoy
 DuJGZvVelAGh1sdC+0H3CxGr8QbcZEE05KcpK0OayLgx3/uy4uYMbpbF8 A==;
X-CSE-ConnectionGUID: ZXryLGYqRZqMw2zc/FUyMg==
X-CSE-MsgGUID: bbdB0AnzSLGVPWRO7vhg3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63942934"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63942934"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 14:40:13 -0700
X-CSE-ConnectionGUID: eVSPGOTEReW0ZUaoZuXxmg==
X-CSE-MsgGUID: 0bB/+aq8T/WntvHMjAOqqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="190946238"
Received: from bfilipch-desk.jf.intel.com ([10.88.27.152])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 14:40:13 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/guc: Test new GuC v70.53.0 for DG2, MTL
Date: Wed, 29 Oct 2025 14:39:15 -0700
Message-ID: <20251029213953.851154-2-julia.filipchuk@intel.com>
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

