Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1DDCA2983
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 08:07:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BF010E880;
	Thu,  4 Dec 2025 07:07:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dr0QW7LH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B3F810E87E;
 Thu,  4 Dec 2025 07:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764832064; x=1796368064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QCcpRtwoizGwn4gMRTkRsWZTlaGTN4hae6O7Slb/FCg=;
 b=Dr0QW7LHhHVBW0IVDPBEGwm/cgn+ooNPBLeIbInuWAzigKU6yJZYJZul
 zEW2WnQ5h6WaKpkdOk3YdVs0YNNVSu72+1fn2a47M9LscCN7beukQLVGg
 qMvtvbwA6dJD0FcPhG1++Gc1bVPKLWV9HEw6QWEM+j7Jhb09O4rOFrf0w
 mfvIRL4GARGOpBue6dIJWy8878xYrY64T88Q9gkY8tUez/mzjHeW7wWWZ
 4PtkNoaeC+Eb63OjlGKxLIasQz5JVR+PO7rav08lj99lYkOmNIb2g4nro
 rF2XnYAuHB6bcMhmKnBS8uLsiT0qockTuH4eahQaVXXJqxSaykAd1aSja g==;
X-CSE-ConnectionGUID: t3iKLlPZRsaIRKv7X4riiw==
X-CSE-MsgGUID: AwJTix7fSpCIwK+jeIbp/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="70457107"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="70457107"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 23:07:44 -0800
X-CSE-ConnectionGUID: iVYlNI8vTV+pZyCQJh/cXA==
X-CSE-MsgGUID: DhPLvyjfTX+KI+TiroPzzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199323790"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.248])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 23:07:42 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 2/3] drm/i915/psr: Perform full frame update on async flip
Date: Thu,  4 Dec 2025 09:07:17 +0200
Message-ID: <20251204070718.1090778-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251204070718.1090778-1-jouni.hogander@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
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

According to bspec selective fetch is not supported with async flips and
instructing full frame update on async flip.

v4:
  - check crtc_state->async_flip_planes in
    psr2_sel_fetch_pipe_state_supported
v3:
  - rebase
  - fix old_crtc_state->pipe_srcsz_early_tpt
  - fix using intel_atomic_get_new_crtc_state
v2:
  - check also crtc_state->async_flip_planes in
    psr2_sel_fetch_plane_state_supported

Bspec: 55229
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 15ef3b6caad6..4ef422d1f35e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2749,7 +2749,8 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
  */
 static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->scaler_state.scaler_id >= 0)
+	if (crtc_state->scaler_state.scaler_id >= 0 ||
+	    crtc_state->async_flip_planes)
 		return false;
 
 	return true;
-- 
2.43.0

