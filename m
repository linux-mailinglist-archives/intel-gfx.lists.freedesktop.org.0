Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C88A8CAA30
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B343410E2F5;
	Tue, 21 May 2024 08:41:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jmiMm3CW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EE810E2F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280916; x=1747816916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hgPh6qkB7OQzwKuydeBfH6K/gntgJs/jtbrMe1myiGc=;
 b=jmiMm3CWyvVEMYSSdZUAAgAjVgstfKlLTtj+pX5rjFgmmNhLdKstbpkp
 nJruKabT1I5XoM00eRIRc8XNQzhL+/fRPODtBLwkNke1MuvhOeHSTig/p
 c55/3unIIcxCGpqnWNF4+GfWv0/lqFZm4EMLtKwizPSx/GMMCSod+UgIR
 qDuZXRoZ1OZUKktg/vIP/Kxtu2FI+n/u0tTxcO6As96lmcKS37L6hTdt4
 fTpmCdN3Ar4v+qDHer7ioWjXfHmzYIvGOmCn2gNhpxnJ4Kx37cWsF5qUT
 K05QJbl0H3ck66525RWgFHVT0DcTtLotaeX3o0v8+jezULhSVHkCwsWh0 g==;
X-CSE-ConnectionGUID: G36maAbOT2ucYczqaUd0rA==
X-CSE-MsgGUID: 98dKp4ivQSCfOJxqitU1qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860368"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860368"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:56 -0700
X-CSE-ConnectionGUID: EVtRvEsoR0CglHORCgqqmg==
X-CSE-MsgGUID: 1bjFmYyGSeyXXNV0c5agFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426281"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 7/9] drm/i915/display: Skip Panel Replay on pipe comparison
 if no active planes
Date: Tue, 21 May 2024 11:41:21 +0300
Message-Id: <20240521084123.1984075-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
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
index cce1420fb541..fdbc2bced5b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5320,7 +5320,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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

