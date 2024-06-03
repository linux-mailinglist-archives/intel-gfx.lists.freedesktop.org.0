Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 612058D832A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE4510E39C;
	Mon,  3 Jun 2024 13:01:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lmKTDsmX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D80410E396
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419671; x=1748955671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ycKo+uhWdC/oOkm5ysJvhE83D0VSqgq/dw6i3KRMhU=;
 b=lmKTDsmX3ryLqdllp0VvQBiTCrMBxf32FQuCyEqig2LrvwDWNoCEDrjj
 pKXh5oCGFGNcMaXVB7EvT8AlZKoMgQ/91wqWVtwuER51P1F3ujTdHFHv7
 3tv4C73dMwDpbj4sHoq3lzlGG8+o94l9Vqq0Fg41eTN5vTIMApBTKjqDA
 SSfSBLqhIj4QXKPE0zzMvvqvd5UcfJzKmWXytKqGgpJO1ApJwmrzHVNf2
 6jbjUHIkdDTQJMbSl39UhGJy+5RUgePNa3GUe+T4WaIMdFfW7PNMHEd/s
 dWm4+qu+pCcBodbQxjrhYYi5SPPyrHCrHXOqPe5vqtQ8ZNM22cMxRkPB0 Q==;
X-CSE-ConnectionGUID: kGFOWjkgSFuAbm/366RAfw==
X-CSE-MsgGUID: H/uQ+yFDRA2lqqxdEJ7T7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774463"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774463"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:04 -0700
X-CSE-ConnectionGUID: lf0eU2QKSjW9ZH/H7gApIQ==
X-CSE-MsgGUID: 1mcr/5kCRaypm1lyHHKZAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291734"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 04/19] drm/i915/display: Skip Panel Replay on pipe
 comparison if no active planes
Date: Mon,  3 Jun 2024 16:00:28 +0300
Message-Id: <20240603130043.2615716-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
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

Panel Replay is not enabled if there are no active planes. Do not compare
it on pipe comparison. Otherwise we get pipe mismatch.

Fixes: ac9ef327327b ("drm/i915/psr: Panel replay has to be enabled before link training")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7370acdd6b8b..2747dd01bb0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5331,7 +5331,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	 * Panel replay has to be enabled before link training. PSR doesn't have
 	 * this requirement -> check these only if using panel replay
 	 */
-	if (current_config->has_panel_replay || pipe_config->has_panel_replay) {
+	if (current_config->active_planes &&
+	    (current_config->has_panel_replay ||
+	     pipe_config->has_panel_replay)) {
 		PIPE_CONF_CHECK_BOOL(has_psr);
 		PIPE_CONF_CHECK_BOOL(has_sel_update);
 		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
-- 
2.34.1

