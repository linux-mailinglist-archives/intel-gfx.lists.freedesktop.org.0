Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1783B400ED
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 14:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30DFD10E6B4;
	Tue,  2 Sep 2025 12:42:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUFnblTl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BCA10E6B4;
 Tue,  2 Sep 2025 12:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756816948; x=1788352948;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zm1pEAquvAAUPHA6kbgx9kr8shcQMAuBRlItuZHnC/c=;
 b=iUFnblTlyfqF1TffzNf7ehWR6pKcoIMPAUQNacCH5QxUU3DlGqO3tfhB
 C9XYaFjtqwzSswqbq8kTQ31Aq8CQY77VM5eouhGEgluZssK/fI92B7KKc
 Lmmxb5A861dkFUZHdY7ZPrQg1/ReAgl0XsPNHYKq/jMfiHMqKljU2KylX
 D0/JPoj33G5TXC9QTmaYSC0rv3de/qy4sOF0/JOxNEpOdr8l/vVkoQKoc
 A/3MRcgC6cXholgVPWunLr2x/QJ3gx03jZ5I1VPuhADfOF9FqcNJ3iE3O
 qmfbsFsTz9y2qc4HG0gVKb6nqaPftQlAx2dRG32h1KqoV0o41zMl8a2Pa Q==;
X-CSE-ConnectionGUID: 7sQPOvrmRTGRkJW9SRklFg==
X-CSE-MsgGUID: YTiIwgdRQoyNBlUhO/rQdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="59157435"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="59157435"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 05:42:28 -0700
X-CSE-ConnectionGUID: 2wb2SDDsQGWY5xj499RkcA==
X-CSE-MsgGUID: LLAno+9rQ/m7DKJWKh/XJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176577842"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 05:42:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/vrr: Refactor VRR live status wait into common helper
Date: Tue,  2 Sep 2025 17:58:50 +0530
Message-ID: <20250902122850.3649828-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Add a helper to consolidate timeout handling and error logging when waiting
for VRR live status to clear. Log an error message if the VRR live status
bit fails to clear within the timeout.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3eed37f271b0..0797b5b375b8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -627,6 +627,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static void intel_vrr_wait_for_live_status_clear(struct intel_display *display,
+						 enum transcoder cpu_transcoder)
+{
+	if (intel_de_wait_for_clear(display,
+				    TRANS_VRR_STATUS(display, cpu_transcoder),
+				    VRR_STATUS_VRR_EN_LIVE, 1000))
+		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
+}
+
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
@@ -638,9 +647,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!intel_vrr_always_use_vrr_tg(display)) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       trans_vrr_ctl(old_crtc_state));
-		intel_de_wait_for_clear(display,
-					TRANS_VRR_STATUS(display, cpu_transcoder),
-					VRR_STATUS_VRR_EN_LIVE, 1000);
+		intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
 		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
 	}
 
@@ -686,8 +693,8 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
 
-	intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display, cpu_transcoder),
-				VRR_STATUS_VRR_EN_LIVE, 1000);
+	intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
+
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
 }
 
-- 
2.45.2

