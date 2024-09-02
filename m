Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79319968153
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B99110E23C;
	Mon,  2 Sep 2024 08:05:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGgBrGRa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE0C210E239
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264316; x=1756800316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9jvV9YJWZWYefhwfacPMGE7RhgIMbtPheuS1A/Y6Lbk=;
 b=GGgBrGRaMF4JidQ6Oxo9FT4Ss845vrcFWi6ILW/NaXM4YiO7KpSMd80a
 W5woXeDDd/BG3BPsphZrbPJt5tuw7NrwBX46IbmT3vMn9qeQdqXjLOzf2
 Ck1dT39PLScr80KbzCl9da49LG6ymoswk0GiDee7MHOew+OiVuAqnBOSb
 TxNppXLU8/VnZjKD/p8hUPTZ+2w4h6lsGvxkO0yZyYIt0XG0KM4oNAR2e
 V8IRWCSJlawUsjhLi3oQqNIVg/i5zmXlF4pZisdFoszLXa7RSSGSCQ9ni
 hg0BU6cbdy08D5aHNGdgswcTlaZSlVBxQKxLlnscI5SCFEzprAKBC/Wy/ w==;
X-CSE-ConnectionGUID: CxLY6275RKOZX0PUP6jSBg==
X-CSE-MsgGUID: 5KjHU+ZdSsugriev4Nl9oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967402"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967402"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:16 -0700
X-CSE-ConnectionGUID: j3SBc0oPSiimDKS8s+nZKg==
X-CSE-MsgGUID: YElGg+cgQL6mvbkSTm0G7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039906"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/13] drm/i915/psr: Allow PSR for fixed refrsh rate with VRR
 TG
Date: Mon,  2 Sep 2024 13:36:30 +0530
Message-ID: <20240902080635.2946858-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

At the moment PSR/PSR2 are not supported with variable refresh rate.
However it can be supported with fixed refresh rate while running with
VRR timing generator.
Enable PSR for fixed refresh rate when using the VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 257526362b39..d868454153ef 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1523,7 +1523,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	 * Current PSR panels don't work reliably with VRR enabled
 	 * So if VRR is enabled, do not enable PSR.
 	 */
-	if (crtc_state->vrr.enable)
+	if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
 		return false;
 
 	if (!CAN_PSR(intel_dp))
-- 
2.45.2

