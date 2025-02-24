Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6E8A41555
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 07:30:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F4910E140;
	Mon, 24 Feb 2025 06:29:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YgZZD2NL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E360510E140;
 Mon, 24 Feb 2025 06:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378597; x=1771914597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6S/WckKVg5oqSQQhXeeWRGVeZhT3tT/GS38di3TGwYs=;
 b=YgZZD2NLHjWOT5uT2iw/jx+r8WsET/GwKluX0R0Sk3fpoufX8evlmp4s
 vrzb7E5SXTuwfmOMTfATVHeGyn7cahSol/FDnlPXxQDE6hgTAOyItgRDG
 lAr1YRjc68XFXYvudXl3HCIllNLz+s+h4CNf1fbMv8WFYEawxzqBKOwBp
 gk9LgDP2upSB6ja4uxnq+TcjcLIPtjv17/riHJ/C3KNLAJbFH60x+cZjw
 Q11pZRyr4RTufDIZq4qGbDFeVeQblKUv4VVcR9ogMaLJ9WhogQ6a/Mfhx
 0t08DVOdk6CK3WXLVM5jL2geLwRWQLzoNYiL38YXvL7Ymh9FejOvfJnkv A==;
X-CSE-ConnectionGUID: TvCol9AMQ+uzkKZ5a6mA2w==
X-CSE-MsgGUID: grSbGU8TSZyz4J/xnk6W9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719680"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719680"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:56 -0800
X-CSE-ConnectionGUID: zjobBrTzQNG4xCjB+Gpetg==
X-CSE-MsgGUID: Oxj5OStYTEO6tFDsI5UVmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076564"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:56 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 12/20] drm/i915/display: Extend WA 14015406119 for PSR2
Date: Mon, 24 Feb 2025 11:47:09 +0530
Message-ID: <20250224061717.1095226-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

Wa_14015406119 is required for PSR1/2 while working with fixed refresh
rate with VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0db84af1063a..752ed44d8892 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2508,8 +2508,9 @@ static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
-		IS_DISPLAY_VER(display, 13, 14);
+	return intel_vrr_possible(crtc_state) &&
+	       (crtc_state->has_psr || crtc_state->has_sel_update) &&
+	       IS_DISPLAY_VER(display, 13, 14);
 }
 
 static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

