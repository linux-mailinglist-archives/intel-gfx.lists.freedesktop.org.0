Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0484BA918BC
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 12:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8232C10EA8A;
	Thu, 17 Apr 2025 10:04:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GiK6EV/r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B6410EA89;
 Thu, 17 Apr 2025 10:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744884298; x=1776420298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/HIb1TjGI7zaIROAiNS8u2Ik1z8K7ypV+LzmJkYncAo=;
 b=GiK6EV/rGa1Ql7Du2iQ9hOBO9XM8aj6vG8EnS6FHoHE8DpwRtxY7PrFR
 Ry9cYE1zpxTeUhx7S5Oe3M5A55Ry/ThS7yCWQLX9sh8gRJ84rwCjpTzTT
 OyHeKYWwJfsnF/dA3yDEvV5dacZ7gfDNBWdUxoH3N+XEPVkkIKCJxIHU0
 1PuCpKWUQ0uB/oFxJWsaJDyzzO6rIPFfyPiU23tuA38B+yBzYVI8JSIs4
 9FfrmJacKj1paFmMcxwWiiwg4qhESlDLiZg2RZmQPeOHpwaKcb8stOBno
 N49V5MXzydDDYlRe3LbNhahh8Ai2Wp0vKXGiJpBGPm9zXm4nzPlCfXnNb w==;
X-CSE-ConnectionGUID: AfSrFvweRpO2sTqqkR1Zgg==
X-CSE-MsgGUID: CtT8w6FSTi+MY8tOdBf1EA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57106701"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57106701"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 03:04:58 -0700
X-CSE-ConnectionGUID: tPYdUWcvS/CH8H06ve8tgQ==
X-CSE-MsgGUID: CSKCEEKaS4ui05J/t/DADQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="130745341"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 17 Apr 2025 03:04:56 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 05/10] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Date: Thu, 17 Apr 2025 15:11:18 +0530
Message-Id: <20250417094123.1662424-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250417094123.1662424-1-animesh.manna@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

LOBF can be enabled with vrr fixed rate mode, so add check
if vmin = vmax = flipline in compute_config().

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index e66ffdbfdb0d..01949b90c0c3 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -290,6 +290,10 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
+	if (crtc_state->vrr.vmin != crtc_state->vrr.vmax ||
+	    crtc_state->vrr.vmin != crtc_state->vrr.flipline)
+		return;
+
 	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
 	      intel_alpm_aux_less_wake_supported(intel_dp)))
 		return;
-- 
2.29.0

