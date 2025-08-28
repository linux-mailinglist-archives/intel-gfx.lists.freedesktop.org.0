Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4240B39CFD
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5A310E98B;
	Thu, 28 Aug 2025 12:21:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RMHnLOrO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C0B10E98B;
 Thu, 28 Aug 2025 12:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383689; x=1787919689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pnHiyFkocDP+kMJx6/s4QCUieY8FGuV6AE3gGVyPigw=;
 b=RMHnLOrOPBhWSMTxPtFwFJNKYIlYMqUWub2+e1aTUOx+tML5U4/LbiHR
 P97QuQWmBFDtrvV8YTmhJrzXlWizlft3eWUY/Jf4u10gh41BtyQ+ROgoM
 nAphXFLRkRhFVlZSB1rIjGbZZl/wh8QEQSYU8PuYzdXS1igER6cZ4Rwfz
 ay+CJHF+ePxKxisH9bMMz9lM0+vtR//0wJIpSiXymmOicAMFznmkZjMOP
 qWvESV/Je8RuIARk+fFGW7xS45PytGaEsN5f/cSWqxUfkEWiUkawItqOE
 pX2Rj72wjvGvVyp03yysjPS502VQHUm5xo+zb8eooh2FrN3cj3ZknmggF Q==;
X-CSE-ConnectionGUID: 5QH3dSPIRlKJFpBsRU5s/Q==
X-CSE-MsgGUID: stvgUzEPTVqgI+sNB1VFHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57848632"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57848632"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:28 -0700
X-CSE-ConnectionGUID: esAB1M+RREmULehraI9bWg==
X-CSE-MsgGUID: TIv4yIaVQYmeeox6Ohs6Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174270631"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 04/20] drm/i915/dsi: use generic poll_timeout_us() instead of
 wait_for_us()
Date: Thu, 28 Aug 2025 15:20:46 +0300
Message-ID: <02ebcd2864819b7eaf9cf455aa2b968980a2f671.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
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

The sleep and timeout remain the same as for wait_for_us().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 44310984bb57..37faa8f19f6e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -25,6 +25,8 @@
  *   Jani Nikula <jani.nikula@intel.com>
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fixed.h>
@@ -72,8 +74,12 @@ static int payload_credits_available(struct intel_display *display,
 static bool wait_for_header_credits(struct intel_display *display,
 				    enum transcoder dsi_trans, int hdr_credit)
 {
-	if (wait_for_us(header_credits_available(display, dsi_trans) >=
-			hdr_credit, 100)) {
+	int ret, available;
+
+	ret = poll_timeout_us(available = header_credits_available(display, dsi_trans),
+			      available >= hdr_credit,
+			      10, 100, false);
+	if (ret) {
 		drm_err(display->drm, "DSI header credits not released\n");
 		return false;
 	}
@@ -84,8 +90,12 @@ static bool wait_for_header_credits(struct intel_display *display,
 static bool wait_for_payload_credits(struct intel_display *display,
 				     enum transcoder dsi_trans, int payld_credit)
 {
-	if (wait_for_us(payload_credits_available(display, dsi_trans) >=
-			payld_credit, 100)) {
+	int ret, available;
+
+	ret = poll_timeout_us(available = payload_credits_available(display, dsi_trans),
+			      available >= payld_credit,
+			      10, 100, false);
+	if (ret) {
 		drm_err(display->drm, "DSI payload credits not released\n");
 		return false;
 	}
-- 
2.47.2

