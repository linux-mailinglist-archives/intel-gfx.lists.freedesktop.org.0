Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFABB45AFA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BB1C10EBBF;
	Fri,  5 Sep 2025 14:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UTsqBiiY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00C910EBD0;
 Fri,  5 Sep 2025 14:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757083944; x=1788619944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kQlSJPbitX+sQtQNvDDYnoIJoGcn6+Bo7O6FvuMyIgo=;
 b=UTsqBiiYdjdey7IyGmHwNFDL/j2RMX5YNSqV0+gbeZ/aqC9eyFolTiI6
 4LaljLd73afY4f6+cnfGScT7w0Cia3cEE4c39PCsRgIN72KwGfxMbnkBa
 /ujoDE3iW0FPVE8KtFfxqJzBigMGJp9dXXgkWZ+InC/zROZtviAXdrqNW
 YNsmnqWx+9nJUD7e//uiveYkOMFf1c8Ip/E8LtzvScFRg/aEXXmUrvQZA
 +5/54ZoQkTXT4eAJeRSEr9p1siC5t2+riskszl71dlgcIsyOor4EEoMYW
 jIwCSYl0diVgmCDDMDAI6hK/mf3BOgbAyVfVvZ9NlcqroOz1eBN8WDrqT Q==;
X-CSE-ConnectionGUID: TMEJMB2tSH2PLhl6C/FmPA==
X-CSE-MsgGUID: sJxXHKCeTYW9Gxzxie1emw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="82027601"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="82027601"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:24 -0700
X-CSE-ConnectionGUID: STUtDg4PQk+KbYnkmMQ3BQ==
X-CSE-MsgGUID: lTub9P+VR42b9xUk0ZM2Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="195837336"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:22 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/13] drm/i915: Apply the 16Gb DIMM w/a only for the
 platforms that need it
Date: Fri,  5 Sep 2025 17:52:01 +0300
Message-ID: <20250905145212.10845-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
References: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently the code assumes that every platform except dg2 need the
16Gb DIMM w/a, while in reality it's only needed by skl and icl (and
derivatives). Switch to a more specific platform check.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index b7482d428868..8c434bc96971 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3174,11 +3174,19 @@ void skl_watermark_ipc_init(struct intel_display *display)
 	skl_watermark_ipc_update(display);
 }
 
+static bool need_16gb_dimm_wa(struct intel_display *display)
+{
+	const struct dram_info *dram_info = intel_dram_info(display->drm);
+
+	return (display->platform.skylake || display->platform.kabylake ||
+		display->platform.coffeelake || display->platform.cometlake ||
+		DISPLAY_VER(display) == 11) && dram_info->has_16gb_dimms;
+}
+
 static void
 adjust_wm_latency(struct intel_display *display,
 		  u16 wm[], int num_levels, int read_latency)
 {
-	const struct dram_info *dram_info = intel_dram_info(display->drm);
 	int i, level;
 
 	/*
@@ -3214,7 +3222,7 @@ adjust_wm_latency(struct intel_display *display,
 	 * any underrun. If not able to get DIMM info assume 16Gb+ DIMM
 	 * to avoid any underrun.
 	 */
-	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
+	if (need_16gb_dimm_wa(display))
 		wm[0] += 1;
 }
 
-- 
2.49.1

