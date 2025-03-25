Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D711A6FCA2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 13:37:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE1810E536;
	Tue, 25 Mar 2025 12:37:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cR81zF38";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83E510E566;
 Tue, 25 Mar 2025 12:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742906233; x=1774442233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jPzHuDRbo+cUilFRIRIlafivhyKUpPKlNWI/XXMRV1Q=;
 b=cR81zF384SVgnv+oyb71Cw7+WlghFkGNKmNcnXrdJr8hjavNQ3mzv1p3
 4efQtlRzjWVRraf2UlfaroSfyJkLIQSbnR8DU+kIFq82E+7yK8iVSD/sn
 GNLgqgrTSgMKCl8KV771fYN0Qs2Ud8wlABg9THfhvamkBlhV5OISqQ+oL
 xnR2H1NKLVH6VblZIpdRIX0wkcgMd9CfiK02xFYUqlPnnKu8pGXvVoSIU
 zba1FvBE0EsFA4gKRYMA4SesOcAh6sks4Q5pS56j5+QRJ2k1L7Fhod57X
 6eWuDydg93+00DKLNweOvVROCm4an/DAwJw6tgClYLPjQ8gEm9JUuw44t Q==;
X-CSE-ConnectionGUID: 0qx1gpebQuqjfTWHpJqtjQ==
X-CSE-MsgGUID: GECmDW/SRE2ZzGdej3F5jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="47933266"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47933266"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:37:13 -0700
X-CSE-ConnectionGUID: h612nrK4QWCzqnmzd69OPg==
X-CSE-MsgGUID: rXLsHkQ1StC5hgs3QJ0KCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="155274902"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:37:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/6] drm/i915/display: drop some unnecessary intel_de_*
 compatibility wrappers
Date: Tue, 25 Mar 2025 14:36:38 +0200
Message-Id: <35589d84ee7996f8972ddb3ebc1aae1b53077b19.1742906146.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742906146.git.jani.nikula@intel.com>
References: <cover.1742906146.git.jani.nikula@intel.com>
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

intel_de_wait_for_set(), intel_de_wait_for_clear(), intel_de_read_fw(),
and intel_de_write_fw() are only passed struct intel_display. Remove the
unnecessary compatibility wrappers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index b7399e9d11cc..655467a6ba87 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -181,20 +181,18 @@ intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
 }
 
 static inline int
-__intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
-			u32 mask, unsigned int timeout)
+intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
+		      u32 mask, unsigned int timeout)
 {
 	return intel_de_wait(display, reg, mask, mask, timeout);
 }
-#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-__intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
-			  u32 mask, unsigned int timeout)
+intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
+			u32 mask, unsigned int timeout)
 {
 	return intel_de_wait(display, reg, mask, 0, timeout);
 }
-#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)
 
 /*
  * Unlocked mmio-accessors, think carefully before using these.
@@ -205,7 +203,7 @@ __intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
  * a more localised lock guarding all access to that bank of registers.
  */
 static inline u32
-__intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
+intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
 {
 	u32 val;
 
@@ -214,15 +212,13 @@ __intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
 
 	return val;
 }
-#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)
 
 static inline void
-__intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
+intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
 {
 	trace_i915_reg_rw(true, reg, val, sizeof(val), true);
 	intel_uncore_write_fw(__to_uncore(display), reg, val);
 }
-#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
 
 static inline u32
 intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
-- 
2.39.5

