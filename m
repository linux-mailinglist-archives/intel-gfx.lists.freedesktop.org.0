Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C1FA01E93
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2358C10E576;
	Mon,  6 Jan 2025 04:36:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U7WtGOcD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9E410E570;
 Mon,  6 Jan 2025 04:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736138181; x=1767674181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PQibymLp0tYEuezQA6XA1RJUplZkwMGCyqaLj/AyHRM=;
 b=U7WtGOcDx4wbMNykC0eXXrQeRWk3rA3lD7RsMGUQbTX6nvlFaajLt+I5
 7WBVgIcUWEKids4iGFiuevsPnfYLTJjW/gctfCXpuyXxEZppXY12JaM47
 Hog1bjNhzwLeovLFb5krWFWRuH45pBcD6d45qlQorLoRvWSWIufhaCxjr
 +wI+dWvZ4w4yh7/YA1iOJFzfCeoAfR078ZNOjiFbVv+chtlymfqZhA7vK
 3KT/h3Ymp5KdweTFJxSqZA0jjfecm0WCLPCrUkYmFTGRCjhSEefU2MdYj
 kqVrzqsWW2qaOa2G7VfkUv8f8wAaStfhwJcshFf699JhqNuRrjy1b4SjH w==;
X-CSE-ConnectionGUID: OekRlOx9SoSZ2bDqCT+rjw==
X-CSE-MsgGUID: sCNu4sH2SieLftUfi4Rc5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="23880598"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="23880598"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:36:21 -0800
X-CSE-ConnectionGUID: lyezWNiGSVCRhcfBCf3tYA==
X-CSE-MsgGUID: IE2XBVrdRM2hshYPEd507w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107306352"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa004.jf.intel.com with ESMTP; 05 Jan 2025 20:36:19 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 2/6] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Date: Mon,  6 Jan 2025 09:45:12 +0530
Message-Id: <20250106041516.924101-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250106041516.924101-1-animesh.manna@intel.com>
References: <20250106041516.924101-1-animesh.manna@intel.com>
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

LOBF can be enabled with vrr fixed rate mode, so add check
if vmin = vmax = flipline in compute_config().

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 75063342a100..f31f94a9c99a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -288,6 +288,10 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
+	if (!(crtc_state->vrr.vmin == crtc_state->vrr.vmax &&
+	      crtc_state->vrr.vmin == crtc_state->vrr.flipline))
+		return;
+
 	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
 	      intel_alpm_aux_less_wake_supported(intel_dp)))
 		return;
-- 
2.29.0

