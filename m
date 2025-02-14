Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45439A3601E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34D210ECAB;
	Fri, 14 Feb 2025 14:19:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aFN/cW5L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0825810ECA6;
 Fri, 14 Feb 2025 14:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542744; x=1771078744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=msQYmafI/c0c6tU2qwhGKbFDzHpUJGVMCjEFwmmEiI8=;
 b=aFN/cW5L91AUjv4ZuDL1DxrRY3EIDM4sVDnDLC9/jB4yd0PTgZdgFArU
 ZWrAPMPzjzKwaL3pM04Ju9PTLcGxCyfu9zmKLE+idccGshiU5hyF1lU7u
 3CUomNv63zGFSxnYhh4FYtKuzAY0mQwuKJgG8C8WXClKkq0SEkSjnPClE
 IRyAm55DG3fVYXyzsd9mfzWlQuNDFw4/UuRrpu2ZrHIQIKhX3BJ+4TTbQ
 vA390q2x9wWiBiTsk2zB4DajMceCQQjiAJWVuDRti3rIG9XTHlL4mL3dR
 A1MNcrNU81C39ilz3K5KqfNeCR5tdSGYhnubppNlWMQokdo0HaYirFZwg Q==;
X-CSE-ConnectionGUID: G1Mr9xf4QT2e10zdC/LaxQ==
X-CSE-MsgGUID: /WL2WczHS+uX3F21TBa5/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892492"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892492"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:04 -0800
X-CSE-ConnectionGUID: kd6ijtDeQ2KhA1x0gJz80w==
X-CSE-MsgGUID: RffigLOiSlCGZ+/NzdxFpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694225"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:02 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: stable@vger.kernel.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/11] drm/i915/dsi: Use TRANS_DDI_FUNC_CTL's own port
 width macro
Date: Fri, 14 Feb 2025 16:19:51 +0200
Message-ID: <20250214142001.552916-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
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

The format of the port width field in the DDI_BUF_CTL and the
TRANS_DDI_FUNC_CTL registers are different starting with MTL, where the
x3 lane mode for HDMI FRL has a different encoding in the two registers.
To account for this use the TRANS_DDI_FUNC_CTL's own port width macro.

Cc: <stable@vger.kernel.org> # v6.5+
Fixes: b66a8abaa48a ("drm/i915/display/mtl: Fill port width in DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI")
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 9600c2a346d4c..5d3d54922d629 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -805,8 +805,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		/* select data lane width */
 		tmp = intel_de_read(display,
 				    TRANS_DDI_FUNC_CTL(display, dsi_trans));
-		tmp &= ~DDI_PORT_WIDTH_MASK;
-		tmp |= DDI_PORT_WIDTH(intel_dsi->lane_count);
+		tmp &= ~TRANS_DDI_PORT_WIDTH_MASK;
+		tmp |= TRANS_DDI_PORT_WIDTH(intel_dsi->lane_count);
 
 		/* select input pipe */
 		tmp &= ~TRANS_DDI_EDP_INPUT_MASK;
-- 
2.44.2

