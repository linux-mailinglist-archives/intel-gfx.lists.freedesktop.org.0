Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CB68C015F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FEFC1126C1;
	Wed,  8 May 2024 15:48:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dOlawy7p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DDF21126C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183303; x=1746719303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wVixzfNOjts3z0f79wuGi2GiX4s86phbIofHw/c1C/w=;
 b=dOlawy7pCkUOaM4beVpHwimQ5VL+n6kGFbxf62PORGHsKZOolC9YObU3
 IK4tIVuNf0i4qKukJE8IU1YNseg2uh6vEuL1Z/SKA0Bk9IJa7rmTLDfKX
 9Vd+UCUkG/Uq+FRVFomg4Ur5sBh/OOU9eKeTd+XtdjXJrRUGTPyD2ekzo
 uxgAhPsqOoCyDPDGLbduCtlK9K8tfLWt51vxo0FPQyQrTtVLwIOMqcquH
 x5OLpJYl8B+i+qNB2yWFb6NYGW3VYowCSCcTksCViWoMeX2E7e9R1XhXD
 h9vTt/Ym/gZg8Wo7ZcZ8qoHo+m4N7F6nu8ERI+/M3Gvrs/XhgRFX2qChe A==;
X-CSE-ConnectionGUID: lWOKij6ZQPaze5Y0spdk2A==
X-CSE-MsgGUID: a8GA9b8xTDSTFnOuwrtEcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="10925011"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="10925011"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:23 -0700
X-CSE-ConnectionGUID: M2Ywced+RzaK+14tj3pzmg==
X-CSE-MsgGUID: A9+Mb4+kSm2KKMTSGtnVPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="52137316"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_STATUS
Date: Wed,  8 May 2024 18:47:51 +0300
Message-Id: <57285c891b10d4827423c20563f2b4a2632e65c1.1715183162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715183162.git.jani.nikula@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TRANS_VRR_STATUS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index fd0f0794f6dc..05cbd6e4fc60 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -282,7 +282,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 
 	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
 		       trans_vrr_ctl(old_crtc_state));
-	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
+	intel_de_wait_for_clear(dev_priv,
+				TRANS_VRR_STATUS(dev_priv, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9739ef525e13..df43b9eb5374 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1271,7 +1271,7 @@
 #define _TRANS_VRR_STATUS_B		0x6142C
 #define _TRANS_VRR_STATUS_C		0x6242C
 #define _TRANS_VRR_STATUS_D		0x6342C
-#define TRANS_VRR_STATUS(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
+#define TRANS_VRR_STATUS(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
 #define   VRR_STATUS_VMAX_REACHED	REG_BIT(31)
 #define   VRR_STATUS_NOFLIP_TILL_BNDR	REG_BIT(30)
 #define   VRR_STATUS_FLIP_BEF_BNDR	REG_BIT(29)
-- 
2.39.2

