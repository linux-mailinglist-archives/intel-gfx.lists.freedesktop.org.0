Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FED897389F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41BD910E115;
	Tue, 10 Sep 2024 13:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5zcVCNW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3423110E7CC;
 Tue, 10 Sep 2024 13:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974951; x=1757510951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ELTgMxHwtbne+vIGLfT/ARHCO4doA+dwKVCGF4wYe0M=;
 b=S5zcVCNWzPk7KaxkLzAVEmH0cilbggEVIpx7ic15nU9AnStplB7WEneq
 LoUEHpoKF2ZXURlaZu/IOPKq6Atckf9z5WkQcSu7XCU9zAa8wPI8PfQMR
 hvOpsEKZuZwSyUEfJG4SlMmzOy2ax8nFDhQFv+kUTiusMZ9ore6P2mFJ1
 0BhF48mFSPvJvId4cdf6i+GsTHJ3l3scPNYvhvDs8KHBZ6oNB7biWHuo8
 T0TVvYrOtYLY4suTh/ECILFdLY6pyunJdjXaqtDmCjZBSfmpWV6Mj3T7h
 D8TVuDGFp9lfzdpcyz2sHvjolgn+NO4BoFiJL7TqybVxnrMzTrkiqmLCz A==;
X-CSE-ConnectionGUID: BL7GF9mQTeuXveOICs39YA==
X-CSE-MsgGUID: AUJLmO7sQkenxIG0J9NEKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24585481"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24585481"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:11 -0700
X-CSE-ConnectionGUID: HRbOujptSxiorUg9tCUGOw==
X-CSE-MsgGUID: ACLZH8YVSyOMrwBcvy09lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="104492852"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 02/11] drm/i915/reg: fix g4x pipe data/link m/n register
 style
Date: Tue, 10 Sep 2024 16:28:46 +0300
Message-Id: <f55960ce8cdcf654e5de19274c7b67b3d3497550.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Adhere to the style described at the top of i915_reg.h.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7a6ca695bb6a..a1f86b32efac 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1554,16 +1554,16 @@
  */
 #define _PIPEA_DATA_M_G4X	0x70050
 #define _PIPEB_DATA_M_G4X	0x71050
-
+#define PIPE_DATA_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_M_G4X, _PIPEB_DATA_M_G4X)
 /* Transfer unit size for display port - 1, default is 0x3f (for TU size 64) */
 #define  TU_SIZE_MASK		REG_GENMASK(30, 25)
 #define  TU_SIZE(x)		REG_FIELD_PREP(TU_SIZE_MASK, (x) - 1) /* default size 64 */
-
 #define  DATA_LINK_M_N_MASK	REG_GENMASK(23, 0)
 #define  DATA_LINK_N_MAX	(0x800000)
 
 #define _PIPEA_DATA_N_G4X	0x70054
 #define _PIPEB_DATA_N_G4X	0x71054
+#define PIPE_DATA_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_N_G4X, _PIPEB_DATA_N_G4X)
 
 /*
  * Computing Link M and N values for the Display Port link
@@ -1575,15 +1575,12 @@
  * The Link value is transmitted in the Main Stream
  * Attributes and VB-ID.
  */
-
 #define _PIPEA_LINK_M_G4X	0x70060
 #define _PIPEB_LINK_M_G4X	0x71060
+#define PIPE_LINK_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_LINK_M_G4X, _PIPEB_LINK_M_G4X)
+
 #define _PIPEA_LINK_N_G4X	0x70064
 #define _PIPEB_LINK_N_G4X	0x71064
-
-#define PIPE_DATA_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_M_G4X, _PIPEB_DATA_M_G4X)
-#define PIPE_DATA_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_N_G4X, _PIPEB_DATA_N_G4X)
-#define PIPE_LINK_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_LINK_M_G4X, _PIPEB_LINK_M_G4X)
 #define PIPE_LINK_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_LINK_N_G4X, _PIPEB_LINK_N_G4X)
 
 /* Pipe A */
-- 
2.39.2

