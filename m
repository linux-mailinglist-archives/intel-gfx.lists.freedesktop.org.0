Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0465FC35FAF
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CD010E76D;
	Wed,  5 Nov 2025 14:08:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THA9yqQ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58E510E767;
 Wed,  5 Nov 2025 14:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351730; x=1793887730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e1pL9Kbzc5PqTFgauTPyAtabQu1G8/e+oRiKyV6X0TE=;
 b=THA9yqQ42+m+ONCZe1Kfy+g1eJW9ELkiGgeK0+RqiD/aEwJ50FtyKilN
 nAoszt4zBvYdwBWE/Xh7VRtszjmNXHaUX2w+DaHmJuFIxzCISRMhlxPOA
 Lx7zFJYAJU5cdPnyiQ3dMGmGpsE0vk19oxAes4sPFmYriCFDo2urGTBtE
 dXI+DuZ1NfZ8xgpnTeO1I5sts8luTpQH+PV4FDa083JCjUSNW5YBIbZgN
 JMwPzW0Mbt6mF2J3ZCr+kIF2wzwTYCSCzmbxkMGVWQ803T90I/XoYFjwC
 gLuFAwFgLvJyTq9FYfF3V1WH/CdgYgax/5ChYIYtACp0HnPaNdzpDp9jH w==;
X-CSE-ConnectionGUID: FO/fWvFQRwuE11QAEvuttA==
X-CSE-MsgGUID: 5/3Z58BmS3+Dri0eIR2Qpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348428"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348428"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:31 -0800
X-CSE-ConnectionGUID: C+f+GsdZRZ2F+hSnuGT5Cg==
X-CSE-MsgGUID: C2Dyzz6ERqmeJJiaEH7/Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191563006"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:29 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 14/17] drm/i915/wm: don't use method1 in Xe3p_LPD onwards
Date: Wed,  5 Nov 2025 11:07:03 -0300
Message-ID: <20251105140651.71713-33-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

From: Luca Coelho <luciano.coelho@intel.com>

Starting from display version 35, we don't need to use method1 to
calculate the watermark values anymore, so skip it.

Bspec: 68985
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-14-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6d050408618c..c888b0896d89 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1812,6 +1812,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 	if (wp->y_tiled) {
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
+	} else if (DISPLAY_VER(display) >= 35) {
+		selected_result = method2;
 	} else {
 		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
 		     wp->dbuf_block_size < 1) &&
-- 
2.51.0

