Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6970A507847
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 20:26:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28BF610E021;
	Tue, 19 Apr 2022 18:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9042A10E021
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 18:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650392776; x=1681928776;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Nfhzd/EKBzEVV7SYJ57mKpntKCjXn2TV3mz56CLBGT8=;
 b=X959Vlo/zQ+3dvdjyEJLF8TuKpMyPORQFBBHG4l0tLgWP9Ti/U2vVRPO
 AkyAUC7P9Pr9cKWTyR75PxpZAM+hZf/VkUyq7vnl06rnm5luEHutQBQa0
 xLoSHo4fO+HHFPopImASRPHuY40NBaoYgjwhwZHryJ3z/HEzmqOiQ7mt+
 yLijD295VYa/v15s8z29RO1phdwoiyHENz6mLfQBNWASGxbAss6K3owkm
 Jhoy6DEW2UMyO0ptbobmzblccC8VPmuFIS4JWyy8/Up0Vzpvv1CY3wzvu
 K5knDx0bKYM4cmhAL6pM9UMbS6wIHNcv5mvERdxGwDeoaZys7FuOvQelO A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263599396"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="263599396"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 11:26:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="554845094"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 11:26:14 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 11:27:52 -0700
Message-Id: <20220419182753.364237-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: Add workaround
 22014263786
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

This workaround fixes screen flickers with FBC.

BSpec: 33450
BSpec: 52890
BSpec: 54369
BSpec: 66624
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h          | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 670835318a1f1..b7bdb0739744a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -811,6 +811,14 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
 	fbc->funcs->program_cfb(fbc);
 }
 
+static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
+{
+	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,dg2,adlp */
+	if (DISPLAY_VER(fbc->i915) >= 11)
+		intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
+			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
+}
+
 static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
@@ -1462,6 +1470,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 
 	intel_fbc_update_state(state, crtc, plane);
 
+	intel_fbc_program_workarounds(fbc);
 	intel_fbc_program_cfb(fbc);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fef71b242706a..0ec7123197fcb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1400,6 +1400,7 @@
 #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
 #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
 #define   DPFC_CHICKEN_COMP_DUMMY_PIXEL		REG_BIT(14) /* glk+ */
+#define   DPFC_CHICKEN_FORCE_SLB_INVALIDATION	REG_BIT(13) /* icl+ */
 #define   DPFC_DISABLE_DUMMY0			REG_BIT(8) /* ivb+ */
 
 #define GLK_FBC_STRIDE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43228, 0x43268)
-- 
2.35.3

