Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 065F1A953C3
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7858610E494;
	Mon, 21 Apr 2025 15:51:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J0GVaGos";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248C010E487;
 Mon, 21 Apr 2025 15:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250690; x=1776786690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UYzDPU7X++BJke5uReaasE2mxzdSmVpyXmjc17ILejQ=;
 b=J0GVaGosUr+DOxvgVV3tV75o6UhUo/siyWMdGUtiUNX/CgSLPpsTjhHK
 MXSI0dfD6HelgHT1Ysl5W85O2WMfLPv7uHrjqcwdlMRTGvqqK4ZhAuhu8
 QO+W34yeJLHGN66wWYefjqR0ilbyqUiX05dfoghZfMdhTXBU0mUbS0rFU
 7ypfbzdD938/ofmoml0tFnymvAoPUDmaAhu5EXIVBgyCcpgdakAMH7Nh9
 QrWEtyXfxDySp73AAvE24EuQCZwYlC1g/G8iL95NoocQaQRqhzaP2husa
 lxamnqLKQEC9kcfBJ09zEnqDmfRWDP05YOn0W1qInfzek1/nB2ApWLAV+ g==;
X-CSE-ConnectionGUID: whF52G23S8uYW3ddeeyyfQ==
X-CSE-MsgGUID: 0hD7nUt3QA+h7wSl8IXaoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434085"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434085"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:30 -0700
X-CSE-ConnectionGUID: o/SekL8aQeKRcyT4SSlKqQ==
X-CSE-MsgGUID: j/W84+r9SMyrylHF/VxkVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725678"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:29 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 13/13] drm/i915/vrr: enable dc balance bit
Date: Mon, 21 Apr 2025 21:19:00 +0530
Message-ID: <20250421154900.2095202-14-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
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

enable dc balance from vrr compute config when vrr is
enabled in adaptive vtotal mode

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7c09f384a684..a21dbbce9ac7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -255,7 +255,12 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	crtc_state->vrr.enable = true;
+
+	if (HAS_DC_BALANCE(display))
+		crtc_state->vrr.dc_balance.enable = true;
+
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
-- 
2.48.1

