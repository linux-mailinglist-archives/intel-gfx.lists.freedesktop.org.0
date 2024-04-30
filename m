Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C388B6F48
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29EC810FB56;
	Tue, 30 Apr 2024 10:11:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQJBlgoM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6AB10FB56
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471888; x=1746007888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i2kBi2VXvQCrBhwsFI6RU+Of+pnNCQ9qOeivoXrBNeU=;
 b=FQJBlgoMFfjO1aR2R7/pb9l+QvxXG9wZCPabFcmcG8iVeVCh5RzbYM4/
 F2U97igrjmVy19shILaIGkINFAhpQYzWuvyPgRSkXxEf5H64wHALYOynJ
 q2eSunlTH8C5NWJYFicmXrtqiIvq8KmOhjBCbG41+aCEgU82WYZV4SWb5
 zY1fcAlikJGoQDP5wOoqcU6r1+KI1kACoWqM6mlUOyaWwHT5/hBIqODQ8
 gbgDViVyTarWUHin0cgCG78OvBvQj0BLhx57YMk5D9XVqWrP+DAm4qFln
 hUbaTaWkRPco6NAWg7NALmMLHVRkS/RxSwbx0LpeZvbvhg7qHlbFRXWkN A==;
X-CSE-ConnectionGUID: SWTxbkBjSrioDljKWhB5iA==
X-CSE-MsgGUID: +XMSWBReR4iKl0gKbE3Q3A==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10043859"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10043859"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:27 -0700
X-CSE-ConnectionGUID: PNd66xWDT3ageAKd3rngAQ==
X-CSE-MsgGUID: OFdIK1dCSiOs1Sl+qQjwFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26281465"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 15/19] drm/i915: pass dev_priv explicitly to
 PIPE_SRCSZ_ERLY_TPT
Date: Tue, 30 Apr 2024 13:10:09 +0300
Message-Id: <b37217f55702fc10190c2c5aded7d845a36766f6.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
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
explicitly to the PIPE_SRCSZ_ERLY_TPT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 23a122ee20c9..2118b87ccb10 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -523,7 +523,7 @@ static void wa_16021440873(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), ctl);
 
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
+	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, pipe),
 		       PIPESRC_HEIGHT(et_y_position));
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ded7795e4c3a..37b85b721ddf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2303,7 +2303,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 	if (!crtc_state->enable_psr2_su_region_et)
 		return;
 
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
+	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, crtc->pipe),
 		       crtc_state->pipe_srcsz_early_tpt);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 55e07e87dfbd..4ccbb651016f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -249,7 +249,7 @@
 /* PSR2 Early transport */
 #define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
 
-#define PIPE_SRCSZ_ERLY_TPT(trans)	_MMIO_TRANS2(dev_priv, trans, _PIPE_SRCSZ_ERLY_TPT_A)
+#define PIPE_SRCSZ_ERLY_TPT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPE_SRCSZ_ERLY_TPT_A)
 
 #define _SEL_FETCH_PLANE_BASE_1_A		0x70890
 #define _SEL_FETCH_PLANE_BASE_2_A		0x708B0
-- 
2.39.2

