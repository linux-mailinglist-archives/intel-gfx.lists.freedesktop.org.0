Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E50ACB9219
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41A610E8C4;
	Fri, 12 Dec 2025 15:29:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KwNOOTWU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188BD10E8C4;
 Fri, 12 Dec 2025 15:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553357; x=1797089357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=azANfVyhU4td3NcmB2+wFoKT3qwmQkJ9ihQKzTIlh9A=;
 b=KwNOOTWUUD8HziTG+6dgluWX2dl0XPzXCOD0KsxOTnHPqAKlg9Au/iJW
 q3RIy8slDGAH9fJ3j9NjKdlQUk/lOpqWaCvDF4cP2qBudoqFhbq+hPKGX
 wKGEU8RaZavueVG/5gY/f5jG1/b5mP44DxeTf+vsKe8Mqc+lGKxwvXMUr
 QNNKhNi0R60TpqrwWoXtkLLiZMNb06hs56R2XhGoxQQoX0gaFGAWCgL1N
 azs9d2R3SvRXU3JdbJfEEuyY0pnh2fX0YuLB0cABdpajUHNOdb8sUDxqa
 +6KeB3dw1/59+0gbLvAJgKkvQdMZhmSb8GXVMCMtlll/kqEdBgUAcdqgw Q==;
X-CSE-ConnectionGUID: Yi5qRAtaQECZBTOgWH/l8Q==
X-CSE-MsgGUID: iRKuSzlpSKmfILrP7dDp7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67716384"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67716384"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:17 -0800
X-CSE-ConnectionGUID: eU4SGVKXQli82WWZnoNGXQ==
X-CSE-MsgGUID: 8SS0dHKIQvukDVq7LnuCwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197935068"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:15 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/13] drm/i915: Extract intel_dsb_supported()
Date: Fri, 12 Dec 2025 17:28:41 +0200
Message-ID: <20251212152847.13679-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the "do we have a DSB and should be use it?" check
into a helper. This mirrors intel_flipq_supported() and should
help unify the logic around selecting the codepath which will
be used to perform the commit (mmio vs. DSB. vs. flip queue).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 13 +++++++++----
 drivers/gpu/drm/i915/display/intel_dsb.h |  1 +
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ec2a3fb171ab..ab176cb4e4bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -915,6 +915,14 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS);
 }
 
+bool intel_dsb_supported(struct intel_display *display)
+{
+	if (!display->params.enable_dsb)
+		return false;
+
+	return HAS_DSB(display);
+}
+
 /**
  * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
  * @state: the atomic state
@@ -939,10 +947,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	struct intel_dsb *dsb;
 	unsigned int size;
 
-	if (!HAS_DSB(display))
-		return NULL;
-
-	if (!display->params.enable_dsb)
+	if (!intel_dsb_supported(display))
 		return NULL;
 
 	dsb = kzalloc(sizeof(*dsb), GFP_KERNEL);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 2f31f2c1d0c5..e97a44c72f7a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -26,6 +26,7 @@ enum intel_dsb_id {
 	I915_MAX_DSBS,
 };
 
+bool intel_dsb_supported(struct intel_display *display);
 unsigned int intel_dsb_size(struct intel_dsb *dsb);
 unsigned int intel_dsb_head(struct intel_dsb *dsb);
 struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
-- 
2.51.2

