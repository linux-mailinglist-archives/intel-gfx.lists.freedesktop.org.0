Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EDE9068C8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18DC110E9BB;
	Thu, 13 Jun 2024 09:32:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jyddnGd9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2EF10E9BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271173; x=1749807173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sgTmYey90v3qeY3JAurSFyKWNDZQD+6YnOAFSfZqvIs=;
 b=jyddnGd97Cxyt6I9lv7YOnNRHROw6jrXkr1iSoAvPmAA1JUe7aJcQ0q3
 l0JyfqMO+2RDJVcTnsMrhaqrq897875krnZGJCO4CFmSwiKXVx/iwTaT/
 DGz7UgMNgFcLjGEtazp535Uxz9SBQr7TTjCS81fX8mTAYaffLHxdie9kt
 y91vSzS64JZCyVMkxVDFFlqcy2zpGAISi2BLe4sB82exX2b2ioGxQZlEY
 zFB1eMORwqiVdLilrCiWvksfjxGhoIbDYQJjFR4EDK/3RAGOgwcdvw1Yf
 AcHwDCW0h1109oS6tawiJdVbqcrUkwawx/nPhQzalUUVX2O/Qnn3jncAA g==;
X-CSE-ConnectionGUID: c59dm/t9RgeJcmbP7TBmXw==
X-CSE-MsgGUID: 44tuOI0ISqGlPR9Iegyurw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802473"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802473"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:53 -0700
X-CSE-ConnectionGUID: VuHgCvsdRqqGBWBdC6EBqg==
X-CSE-MsgGUID: ao+tzRh1TZCVUXqkMdNxzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523323"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 01/20] drm/i915/psr: Set SU area width as pipe src width
Date: Thu, 13 Jun 2024 12:32:20 +0300
Message-Id: <20240613093239.1293629-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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

Currently SU area width is set as MAX_INT. This is causing
problems. Instead set it as pipe src width.

Fixes: 86b26b6aeac7 ("drm/i915/psr: Carry su area in crtc_state")

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1cce9713a960..66ab8abd0a04 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2316,7 +2316,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 	crtc_state->psr2_su_area.x1 = 0;
 	crtc_state->psr2_su_area.y1 = -1;
-	crtc_state->psr2_su_area.x2 = INT_MAX;
+	crtc_state->psr2_su_area.x2 = drm_rect_width(&crtc_state->pipe_src);
 	crtc_state->psr2_su_area.y2 = -1;
 
 	/*
-- 
2.34.1

