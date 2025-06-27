Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFC8AEB696
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B669910E9E1;
	Fri, 27 Jun 2025 11:36:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aSo+UXJw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2650D10E9DE;
 Fri, 27 Jun 2025 11:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024218; x=1782560218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OHTqvVWmTYDaOTSS9FzIurWy5tbVsfJFWJomNVJlGBM=;
 b=aSo+UXJwkkzgGkA73/9r3ELbowHQKlT0fYBOyHWRPw5WV7Et/5/+YfqW
 lVxi6zEod9VK+4j9eTlwX4QBCXr4vHdUojvDDsLN/pon7FdhVOQtUwiBh
 1gKRCkgm2x5JVpuEVohzcCJE4jl1JVWll7Jj4IA7RXjO6prHrGSrH+1Xd
 aO/6xcl4+CDe+9sOWs6UCTl2Nyel09loEohYbfHDfNsIGGATfCWYDdJlh
 g3T89MwS1IDPa5AR8MST9LsLXwRS6DlTk6Y4SOuVKgUyA6AnhC6slo0CZ
 7ULLlHSyKk+zz18OyascPffHL8rODJF9aLrLYrWgDbIhG8VqCZnyKZmgb A==;
X-CSE-ConnectionGUID: TLzoGMJMT0Kjx0PpFgdmew==
X-CSE-MsgGUID: p4U/tt3LQd+CWR8Eqg0J3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416318"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416318"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:36:58 -0700
X-CSE-ConnectionGUID: fEkbppIRRsKdI4tChBillQ==
X-CSE-MsgGUID: JPAgicS9RFWwElDFqZxrlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311026"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:36:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/18] drm/i915/dsi-pll: use generic read_poll_timeout()
 instead of wait_for()
Date: Fri, 27 Jun 2025 14:36:18 +0300
Message-Id: <63a2ecbfc7bb1901c263681ac8517edc3d68d8a0.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 500 us sleep instead. The timeout remains at
20 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index d42b61e6f076..059a1cd9a4e6 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -25,6 +25,7 @@
  *	Yogesh Mohan Marimuthu <yogesh.mohan.marimuthu@intel.com>
  */
 
+#include <linux/iopoll.h>
 #include <linux/kernel.h>
 #include <linux/string_helpers.h>
 
@@ -216,6 +217,8 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *config)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	u32 val;
+	int ret;
 
 	drm_dbg_kms(display->drm, "\n");
 
@@ -233,8 +236,11 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 
 	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL, config->dsi_pll.ctrl);
 
-	if (wait_for(vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL) &
-						DSI_PLL_LOCK, 20)) {
+	ret = read_poll_timeout(vlv_cck_read, val,
+				val & DSI_PLL_LOCK,
+				500, 20 * 1000, false,
+				display->drm, CCK_REG_DSI_PLL_CONTROL);
+	if (ret) {
 
 		vlv_cck_put(display->drm);
 		drm_err(display->drm, "DSI PLL lock failed\n");
-- 
2.39.5

