Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7097DA10635
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 13:07:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE3E10E121;
	Tue, 14 Jan 2025 12:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N1ekpU/U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D3B10E252;
 Tue, 14 Jan 2025 12:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736856471; x=1768392471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1c9HrX8aOXODoJ9Sq/7HfLp1SJ9vAEgTTO+HaY1VEeU=;
 b=N1ekpU/U+ZmJX792gAo8Ew09pUf15hybuTh8LePf6Vg0E3iDZe+OeaR/
 e7V60jU06WQVT3XglgGfmL8JdvkpqcgekSeELRgXTYwj0BSfsfZnLMFdl
 YWPTbklhidxEj34bZZmORwO/EW6nku+erjQG1lExfAGQ4E1D9fjm/qYOn
 9X1Z3hfFRzRg4yvngZlfcm97Uiqr7JRpudUxWzE7X+rI6/NVkhnh7NSUH
 4VKq3nDsgT/ztyqRvd+UYqhyomWZTrLAwBi/ZRCqTHVeMNj0CefDsXyMF
 1LyoolKTxhN7vlYdxmy8b8jiyWT29oBaEScs9oaM9+FAw31CqVa3e0xym Q==;
X-CSE-ConnectionGUID: mlKr5091ToC1KNU0TiGetA==
X-CSE-MsgGUID: QltZMYKeROSjKCq8RfyXrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39956273"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="39956273"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:07:50 -0800
X-CSE-ConnectionGUID: 8jekzlJoReeNNXh25Af8gA==
X-CSE-MsgGUID: jswqFfXmRGal9pASRnElAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108849167"
Received: from carterle-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.225])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:07:47 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH v3 4/4] drm/i915/xe3: disable FBC if PSR2 selective fetch is
 enabled
Date: Tue, 14 Jan 2025 14:07:19 +0200
Message-ID: <20250114120719.191372-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250114120719.191372-1-vinod.govindapillai@intel.com>
References: <20250114120719.191372-1-vinod.govindapillai@intel.com>
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

It is not recommended to have both FBC and PSR2 selective fetch
be enabled at the same time in a plane. If PSR2 selective fetch
or panel replay is on, mark FBC as not possible in that plane.

v2: fix the condition to disable FBC if PSR2 enabled (Jani)

Bspec: 68881
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f15cddba9bb0..5f4809f1359d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1432,9 +1432,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Display 12+ is not supporting FBC with PSR2.
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
+	 *
+	 * In Xe3, PSR2 selective fetch and FBC dirty rect feature cannot
+	 * coexist. So if PSR2 selective fetch is supported then mark that
+	 * FBC is not supported.
+	 * TODO: Need a logic to decide between PSR2 and FBC Dirty rect
 	 */
-	if (IS_DISPLAY_VER(display, 12, 14) && crtc_state->has_sel_update &&
-	    !crtc_state->has_panel_replay) {
+	if ((IS_DISPLAY_VER(display, 12, 14) || DISPLAY_VER(display) >= 30) &&
+	    crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
-- 
2.43.0

