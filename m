Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBEDA827BC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8315810E8FC;
	Wed,  9 Apr 2025 14:26:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CsHH4mi6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA62E10E8F6;
 Wed,  9 Apr 2025 14:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208765; x=1775744765;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/HIb1TjGI7zaIROAiNS8u2Ik1z8K7ypV+LzmJkYncAo=;
 b=CsHH4mi6jyNtyh6SHgODSWEw/chaZ4raXztBQmo+SotDa9aQ8rN5P/5B
 J4SfVGZw6wL0C84ofb+70h0fWzXxWZBeBYMqCIPUjFolN4JrCScssLryx
 WVUCvAJgshUhu145ZqntjD1YB8vTT3Wd8SVv4SAhpzpmZ1EUZCiL1wuOY
 dPq6EAR8qGn2hC2kxuGJTuPHV8KRGdgEqXV3MMxOKcanSmrKEivBYGzUB
 56VPOCoeSU3eKk2FC4yMsXoclRzUUcdvJDzCqLgycYimqXoppRzlOjWf3
 gPoTeZ8OuScuqH54oLAMxzDT7lqlG6UkURVlapskfSOxd4z5F8EcwDzcW Q==;
X-CSE-ConnectionGUID: Za1tnVjSSQeF7+V0QxKg/Q==
X-CSE-MsgGUID: f079WQoVTM6uZs5crBZFLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49347785"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49347785"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:26:04 -0700
X-CSE-ConnectionGUID: HlvqE1X0QfWkfD3D5NTEyQ==
X-CSE-MsgGUID: h4WETBgSSaCbEtywz8ovig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="132732654"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 09 Apr 2025 07:26:03 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 5/9] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Date: Wed,  9 Apr 2025 19:32:54 +0530
Message-Id: <20250409140258.785834-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250409140258.785834-1-animesh.manna@intel.com>
References: <20250409140258.785834-1-animesh.manna@intel.com>
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

