Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B287CADFE8
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF6C10E4CE;
	Mon,  8 Dec 2025 18:27:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGDdBeoo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2BE910E4CD;
 Mon,  8 Dec 2025 18:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218462; x=1796754462;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dW/QRRFmrn5ormvvLSllur/HSYGc/Lc6QyvhCVK0PRA=;
 b=EGDdBeoogw5wFjY4p5pPYYoy8KH5w7q0U7LAOPQmAxBE82VDEncnTQh3
 PbGmiGyHvpVW1sm6P6LLB5PLVcjUcb7KShtxsZBnVv6NTUKotI4s6TNIQ
 f/f0hBXYl/3YAY0m0PBuNPL1NRoo93sCjd8lBdTRH5mt9JlWhitiacXpP
 k/CBa7gpmozIde+zOzaTrTcHyZXlw/BUxo0bcs/YM4i99/38rQUfQn/0p
 /I3zg9WctLPlUT/xLkIi5hDEHLIstkrwOOqYveB7cxJdBFuTELbL1EGI3
 G1YpjmOWxukenRegQiJK0I1+B0iej2tjnKQNbNLxCb89LYqPQ2UmdcuR/ g==;
X-CSE-ConnectionGUID: 1k2PKXRrTgKU73L7ZbC42w==
X-CSE-MsgGUID: IJ7kAgP9SzuunyAqivjn7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67129569"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67129569"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:42 -0800
X-CSE-ConnectionGUID: p5enkJQHRuWWF46AdhKOww==
X-CSE-MsgGUID: xuiW0vjJR7iS4gQEnVHwUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196014515"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:41 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 15/19] drm/i915/crt: Use IS0_R instead of VGA_MIS_W
Date: Mon,  8 Dec 2025 20:26:33 +0200
Message-ID: <20251208182637.334-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
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

Use the proper IS0_R name for the VGA input status register 0, instead
of using the VGA_MIS_W alias which is meant for write accesses to the
same address. Yes, VGA registers are weird.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index dedc26f6a2b2..6f216ba887bc 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -738,7 +738,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		 * border color for Color info.
 		 */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
-		st00 = intel_vga_read(display, VGA_MIS_W, true);
+		st00 = intel_vga_read(display, VGA_IS0_R, true);
 		status = ((st00 & (1 << 4)) != 0) ?
 			connector_status_connected :
 			connector_status_disconnected;
@@ -786,7 +786,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		do {
 			count++;
 			/* Read the ST00 VGA status register */
-			st00 = intel_vga_read(display, VGA_MIS_W, true);
+			st00 = intel_vga_read(display, VGA_IS0_R, true);
 			if (st00 & (1 << 4))
 				detect++;
 		} while ((intel_de_read(display, PIPEDSL(display, pipe)) == dsl));
-- 
2.51.2

