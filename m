Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F6BA87CDA
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A07510E53F;
	Mon, 14 Apr 2025 10:05:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WCDk6nL8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30E6E10E546;
 Mon, 14 Apr 2025 10:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625130; x=1776161130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eBzDpfPPAa9rQgSNYsbbDZcZZPNrbesGXN0ddQ2Hq/M=;
 b=WCDk6nL8di6x6EQ8N7g70E2IRS/ZLj0/tvinVo/1wCuyBoj+54snkkJR
 g55/Lmif6ezDDRbRsD8wZJxwjriVvCHbtNeVCbmy3TZLb/oDm9gjuiIB9
 MGcGh0Unkm74kPPyJb4sPIDG3rGHlOXQu/kU6MRXKWKoISq7O4d7KxZ7f
 YGWLdd43CwORf+n+sLfPwSfoJx45PTJ5yMsN30/F61xYqQHRVP473Dl/j
 59ZjZBkgg7VLrO0+Ab/QwfiJQzQ/VKzQMHmw7xi+lTpruc1+3P1GdXdS/
 WltVuS8qjzRnB3Ex8Kd/HLba3ANlXX6XfUICNizZT9DUPy8vYY+jmouxx w==;
X-CSE-ConnectionGUID: MgE3Q8zdSKeHTXje0PaD2g==
X-CSE-MsgGUID: ODPVIjOIQGiq2r2ZdhJbNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789116"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789116"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:30 -0700
X-CSE-ConnectionGUID: abPytnJsQju24VfWoXyVwg==
X-CSE-MsgGUID: nQLyogT7RsinbxOg4ZMCSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743195"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 05/13] drm/i915/dmc: Add interface to block PKG C-state
Date: Mon, 14 Apr 2025 13:05:00 +0300
Message-ID: <20250414100508.1208774-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
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

Add interface to block PKG C-state. This is needed to implement workaround
for underrun on idle PSR HW issue (Wa_16025596647).

Bspec: 74151
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 98f80a6c63e8..c65544e48c42 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -517,6 +517,23 @@ void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe)
 		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
 }
 
+/**
+ * intel_dmc_block_pkgc() - block PKG C-state
+ * @display: display instance
+ * @pipe: pipe which register use to block
+ * @block: block/unblock
+ *
+ * This interface is target for Wa_16025596647 usage. I.e. to set/clear
+ * PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS bit in PIPEDMC_BLOCK_PKGC_SW register.
+ */
+void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
+			  bool block)
+{
+	intel_de_rmw(display, PIPEDMC_BLOCK_PKGC_SW(pipe),
+		     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS, block ?
+		     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS : 0);
+}
+
 static bool is_dmc_evt_ctl_reg(struct intel_display *display,
 			       enum intel_dmc_id dmc_id, i915_reg_t reg)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index c78426eb4cd5..236312fb791c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -18,6 +18,8 @@ void intel_dmc_load_program(struct intel_display *display);
 void intel_dmc_disable_program(struct intel_display *display);
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
 void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
+void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
+			  bool block);
 void intel_dmc_fini(struct intel_display *display);
 void intel_dmc_suspend(struct intel_display *display);
 void intel_dmc_resume(struct intel_display *display);
-- 
2.43.0

