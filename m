Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 347F8B0D70B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 12:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F9510E653;
	Tue, 22 Jul 2025 10:13:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4X1Dnwf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85F410E651;
 Tue, 22 Jul 2025 10:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753179220; x=1784715220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XJQN8oGl2CC3MYsVDIv690PN6jaGTeW8mDU19OyfgiU=;
 b=Q4X1DnwfVuQ9lkb4cUK4/tUN/ojOuzDePk12ZXHkbSfrzKz14LJH7Xfl
 mJctTGK+b+TecdeIqSonsdLSluE/r9kOHQMbBQfNzmDf8sxNgGH1jsyTs
 g8P1HO8fTx1YPTwJqdbUIf1ZlsHJ0iMqKonIIIPpAML9YTfQXw7NWJJGS
 DOIXHVThbgnXLFtFkKiAh21VTNlcwF38GkK06GRQIlA/i7Xq/V3brSkp+
 jTXtddgENElJZhhXbXgw+JbkB9xVfr6gFcVWeiJWQ/xYN0o1yf89jkFxX
 n4bndVQmiv72bxGCRbjI8XDUuXlhCLWvmS0nPkYfFsizef9IJHCLroBYd w==;
X-CSE-ConnectionGUID: 9+HY3D5KR/epMg4DbuXWyQ==
X-CSE-MsgGUID: mc/sR6oNTauazshNBzCakg==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55266642"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55266642"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:40 -0700
X-CSE-ConnectionGUID: A1TJZ300T16rMZWkaKGq5A==
X-CSE-MsgGUID: g+BZ8N2VSw6bGe9NaCWfqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159418584"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.223])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/4] drm/i915/display: Ensure phy is accessible on lfps
 configuration
Date: Tue, 22 Jul 2025 13:13:16 +0300
Message-ID: <20250722101317.1728499-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722101317.1728499-1-jouni.hogander@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
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

Ensure phy is accessible on lfps configuration by adding
intel_cx0_phy_transaction_begin/end around it.

Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sending")
Suggested-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2993dabdbee6..a203937d66db 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3239,6 +3239,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	intel_wakeref_t wakeref;
 	int i;
 	u8 owned_lane_mask;
 
@@ -3247,6 +3248,9 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 		return;
 
 	owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
 	for (i = 0; i < 4; i++) {
 		int tx = i % 2 + 1;
 		u8 lane_mask = i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
@@ -3258,6 +3262,8 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 			      CONTROL0_MAC_TRANSMIT_LFPS,
 			      CONTROL0_MAC_TRANSMIT_LFPS, MB_WRITE_COMMITTED);
 	}
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
 static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
-- 
2.43.0

