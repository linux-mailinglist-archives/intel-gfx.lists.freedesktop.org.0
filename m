Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A88CF3DC1CF
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Jul 2021 02:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B636E500;
	Sat, 31 Jul 2021 00:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38DE56E4E8
 for <intel-gfx@lists.freedesktop.org>; Sat, 31 Jul 2021 00:05:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="200358991"
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; d="scan'208";a="200358991"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 17:05:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; d="scan'208";a="477224121"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 17:05:49 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 30 Jul 2021 17:10:19 -0700
Message-Id: <20210731001019.150373-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210731001019.150373-1-jose.souza@intel.com>
References: <20210731001019.150373-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] DO_NOT_MERGE: drm/i915/display: Enable PSR2
 selective fetch by default
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

Only to execute tests with PSR2 selective fetch enabled and check what
is broken.

IGT tests know to fail with this:
- kms_cursor_legacy: all tests that checks if evasion happend, I have
fix for it making cursor_slowpath() returns true for display 12+.

- kms_psr2_su: The pageflip test, it needs to have the damage clip set
otherwise it will update the whole screen and the selective blocks
will not match with expected.

- kms_psr: psr2_*_(mmap_gtt, mmap_cpu, blt and render), all those
tests should be dropped or skipped for display 12+.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ---------
 drivers/gpu/drm/i915/i915_params.h       | 2 +-
 2 files changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 894a2d35668a2..e128f0c2aeecc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -877,15 +877,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	/*
-	 * We are missing the implementation of some workarounds to enabled PSR2
-	 * in Alderlake_P, until ready PSR2 should be kept disabled.
-	 */
-	if (IS_ALDERLAKE_P(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 is missing the implementation of workarounds\n");
-		return false;
-	}
-
 	if (!transcoder_has_psr2(dev_priv, crtc_state->cpu_transcoder)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not supported in transcoder %s\n",
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index f27eceb82c0f5..8d725b64592d8 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -55,7 +55,7 @@ struct drm_printer;
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
-	param(bool, enable_psr2_sel_fetch, false, 0400) \
+	param(bool, enable_psr2_sel_fetch, true, 0400) \
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
-- 
2.32.0

