Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BCCA69982
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 20:37:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ADB110E57A;
	Wed, 19 Mar 2025 19:37:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kIiiCGmz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF1AD10E579;
 Wed, 19 Mar 2025 19:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742413066; x=1773949066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YobcpnOZjKmQBynzHE/G6YGd8oTazlql22M2/x/Svr0=;
 b=kIiiCGmzSai8+p1dOvIZEGFfBnGcaPeduJV5yh1TV16MhvDKGWfKkO7D
 KgrR9wiHwjhzjke2j551QBikBJqMYPCGgr7USqvcRW8pYy/B6PMh66tJ4
 CoWIBtrS95xTrGk/pTOruqJSjldc1VUTrUOJcLTRiMBixAtCBDqEK7Lkw
 XJHZ4QyPQSplDYzoL+K3drmR4wVVTNeqP55K7sqZpuyVhkYk+uVKjr1zl
 UAEpIAx5Km5Bhoe0uIjsCHC/X7crrSGjOGIztsj5typhk3+tcvtKPwRfR
 DEDDWZIVINcRIGbzJd4rEfUn2BZkUIkxC+3dM2WdPBBUZ8H5rkEwhkFEu g==;
X-CSE-ConnectionGUID: OBaIk38jTw6c2N2hGnAMPw==
X-CSE-MsgGUID: QildxuioThmXEUnaGWSO2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="31203403"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="31203403"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 12:37:45 -0700
X-CSE-ConnectionGUID: 6rpyZeC4SVekUwv0Di+g3g==
X-CSE-MsgGUID: ym0+lkNxSi26yRXqyHAQeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123241762"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 19 Mar 2025 12:37:43 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6 4/8] drm/i915/lobf: Update lobf if any change in dependent
 parameters
Date: Thu, 20 Mar 2025 00:45:04 +0530
Message-Id: <20250319191508.2751216-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250319191508.2751216-1-animesh.manna@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
MIME-Version: 1.0
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

For every commit the dependent condition for LOBF is checked
and accordingly update has_lobf flag which will be used
to update the ALPM_CTL register during commit.

v1: Initial version.
v2: Avoid reading h/w register without has_lobf check. [Jani]
v3: Update LOBF in post plane update instead of separate function. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index c2862888466f..5df1253a6b6c 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -378,9 +378,12 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (!crtc_state->has_lobf && !crtc_state->has_psr)
+	if (!crtc_state->has_lobf && !crtc_state->has_psr &&
+	    !old_crtc_state->has_lobf)
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
-- 
2.29.0

