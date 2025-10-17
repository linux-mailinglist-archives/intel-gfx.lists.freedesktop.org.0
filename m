Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515A3BE8A62
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 14:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B610810EBD8;
	Fri, 17 Oct 2025 12:48:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E9Kv0sRq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518F610EBDE;
 Fri, 17 Oct 2025 12:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760705309; x=1792241309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y0QGjHWWEd+Q3xSUvTDb4CAxaZLlAyJTCzsWufqwVcA=;
 b=E9Kv0sRqBpm/LIuIDak/bI4qvqECYCYeQQ2yEQC85na2zmhgz05X9u7A
 L+8UORfcWTx/178epazyxcXZqSpQiwsG3Ap6Q8wor7VK5OHC783QLK23A
 ZVUVlEM8LGjmoJghxe9ng5DMuR6ukP+iM3XIiaiExgh8rp1mO2cMvJ3X9
 2oOGD/8elDAwuRZt+n2NYHgIy4TVBfTTaJl7Kq5lnb3PXcIEEyRk9Ai17
 nOpNNDAVO2DDpc0g3xVCd1N90r0KyxMMcaTnlKeAVmieFuDYEsiNDU3HC
 pOLzZIWMl4VVk8sFNOUrw+aatYMe2172TG0dRurrauUuPbR+DpOCf0VdH g==;
X-CSE-ConnectionGUID: Ap2qCGeKTk+35lwmyNPOWA==
X-CSE-MsgGUID: KCw5fQAPQQqLJ6/kenmR+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="61944200"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61944200"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:29 -0700
X-CSE-ConnectionGUID: es88w9sBRQWSOfemBRGZwQ==
X-CSE-MsgGUID: KgV6Q1t4RZeBXIxHn5NGUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182281089"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/5] drm/i915/vrr: Use optimized guardband whenever VRR TG is
 active
Date: Fri, 17 Oct 2025 18:05:04 +0530
Message-ID: <20251017123504.2247954-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
References: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
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

Currently the guardband is optimized only for platforms where the
VRR timing generator is always ON.

Extend the usage of optimized guardband to all VRR supporting platforms.

v2: Drop check for `crtc_state->vrr.enable` and just return true
    unconditionally from intel_vrr_use_optimized_guardband(). (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3da84a247193..92fb72b56f16 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -468,8 +468,6 @@ int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state)
 
 static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-
 	/*
 	 * #TODO: Enable optimized guardband for HDMI
 	 * For HDMI lot of infoframes are transmitted a line or two after vsync.
@@ -479,7 +477,7 @@ static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crt
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return false;
 
-	return intel_vrr_always_use_vrr_tg(display);
+	return true;
 }
 
 void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
-- 
2.45.2

