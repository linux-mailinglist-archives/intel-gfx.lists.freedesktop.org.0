Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 530779349B0
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE14110E5D7;
	Thu, 18 Jul 2024 08:17:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+pEwdtE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F0D10E5D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290640; x=1752826640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lV+kPXIJm/bxUS1g4h3E/bTokEH19Xv5tHI2g9btIhU=;
 b=A+pEwdtEpnnaxrsmLVZ0+sMi27qVDuh9fxKu2wRDZ5Qe6/+FYmEOOuir
 VknyUDD3IdLbgj3emanobqbOeJix/MuSsensAObJ/wyNh9FQy6jLTgdlh
 +mOmr6JUgnTRmfsazV0tVff0ycWOhzRH/4HjCQnHYbFvmFWUsvz8sHV75
 lKzvzxyTIwiZqFRyHz6AEyZs/TzwZtDU7lxx31KL3wBm+cLiDH3rAZ+bO
 M3K/iFHBmM4DsK2hMlKqv3DiwDxm+r/49F7w5cOv9HZvaZgG8JNZbb3HP
 e3Oi4vpoayo1nUZDsI5uCy3u82SOsnav1Wg/MLAY/fNiSYtSuVQe9lCCb Q==;
X-CSE-ConnectionGUID: b4giwX8XSE2DBMCFdwWy1Q==
X-CSE-MsgGUID: Gh9+478mQEKMIgsrBEbZVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706071"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706071"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:19 -0700
X-CSE-ConnectionGUID: fmA2hVJ7Rn+FwOP6QRCpIA==
X-CSE-MsgGUID: vmYiQEx2SeCTkRN0su1q3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400662"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 09/12] drm/i915/display/vdsc: Add ultrajoiner support with DSC
Date: Thu, 18 Jul 2024 13:48:00 +0530
Message-ID: <20240718081803.3338564-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Add changes to DSC which are required for Ultrajoiner.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 26 +++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 11058bb37d5a..815fbffc2d97 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -378,8 +378,11 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 {
 	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
+	int joined_pipes = intel_joiner_num_pipes(crtc_state);
 
-	if (crtc_state->joiner_pipes)
+	if (joined_pipes == 4)
+		num_vdsc_instances *= 4;
+	else if (joined_pipes == 2)
 		num_vdsc_instances *= 2;
 
 	return num_vdsc_instances;
@@ -770,6 +773,13 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return intel_joiner_num_pipes(crtc_state) == 4 && crtc->pipe != PIPE_D;
+}
+
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -789,8 +799,20 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
 	if (crtc_state->joiner_pipes) {
+		/*
+		 * This bit doesn't seem to follow master/slave logic or
+		 * any other logic, so lets just add helper function to
+		 * at least hide this hassle..
+		 */
+		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
+			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
+
+		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
+			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;
+
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (intel_crtc_is_bigjoiner_primary(crtc_state))
+
+		if (!intel_crtc_is_joiner_secondary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
 	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
-- 
2.45.2

