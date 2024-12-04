Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5629E3DCA
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 16:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B58410E4C2;
	Wed,  4 Dec 2024 15:07:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WbdXPFrW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F1C10E34A;
 Wed,  4 Dec 2024 15:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733324873; x=1764860873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mo0Z/33dVNqkKJF41fJByWt0P9z8QarHVe/LsRfKJFM=;
 b=WbdXPFrWfwQ6nl6EzA3B0+PHty7yHZDk79t3OH/WlDGoy7aYdqP5gETt
 DF1zpufQ/iC2Xt1Wgvn9nD6hMXDYDecDNL1aAqoD7WXvJhbZ4/ohVPp2p
 TMO+oNMJGiOcu6k0zkioo+LBbiqfQEjak6iitgkG6korhSU/zZUclyLyn
 Hq40EK8oi9jq9kViWFeKpIGMR4AJXduKJ1G6pvQ/SKyhLs6iQqJK+RANW
 5d0Sryg7+7ICj9pJoF12gsYpPooe46OIHGMyyDLKcOeAWg7UpkgkNa+/8
 ZHBpYABOlB5Kx336XjuxeVzMgNZrhDNtxWW/M3vTuQljayOKkwkTFG+R1 w==;
X-CSE-ConnectionGUID: YJmBYEeLS/SoP7UN6/Iitg==
X-CSE-MsgGUID: lLdUS6APTN6Xx+is5zj9PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33745731"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33745731"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:53 -0800
X-CSE-ConnectionGUID: 4t5FVLYuSx6zg20sp/yeCw==
X-CSE-MsgGUID: mJUhj3v4QGiDhZMKUtAESg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="117038284"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 5/5] drm/i915/ddi: only call shutdown hooks for valid
 encoders
Date: Wed,  4 Dec 2024 17:07:21 +0200
Message-Id: <c2c5a2b276064842c1493a7efb9e6bd3159e2a98.1733324735.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733324735.git.jani.nikula@intel.com>
References: <cover.1733324735.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

DDI might be HDMI or DP only, leaving the other encoder
uninitialized. Calling the shutdown hook on an uninitialized encoder may
lead to a NULL pointer dereference. Check the encoder types (and thus
validity via the DP output_reg or HDMI hdmi_reg checks) before calling
the hooks.

Reported-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

TODO: We should probably audit all DDI encoder hooks for this, and add
the necessary checks.
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 67bbfba58b54..f3e27c67c419 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4920,8 +4920,10 @@ static void intel_ddi_tc_encoder_suspend_complete(struct intel_encoder *encoder)
 
 static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
 {
-	intel_dp_encoder_shutdown(encoder);
-	intel_hdmi_encoder_shutdown(encoder);
+	if (intel_encoder_is_dp(encoder))
+		intel_dp_encoder_shutdown(encoder);
+	if (intel_encoder_is_hdmi(encoder))
+		intel_hdmi_encoder_shutdown(encoder);
 }
 
 static void intel_ddi_tc_encoder_shutdown_complete(struct intel_encoder *encoder)
-- 
2.39.5

