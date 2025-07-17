Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC67B0962C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 22:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D5210E8A7;
	Thu, 17 Jul 2025 20:59:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKfqv35c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 788A210E8A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 20:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752785989; x=1784321989;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=qxz4RFKrU0/qOS0DaBUZM2PHYMcCZpkTIRdE4lEad6k=;
 b=QKfqv35cDoSDFALrmJYeri6/TR+Sb9qdjOnUpAFN+1POhy85piurCxcW
 ZhVDCqoGO9eE/l0uIbFJxEjuS5vPMTE38LnU7tulp2bs6CDYCmL/a556M
 bWH3vHNovrD84/unafU0xfzwHbStn2X5jAVpEZ+UE63XTjzNc80A4T+UC
 jR+qvno7Bc9AA0Ko7hhFvLngmSDMKcfZAB0DlnJZ4zuXCdhTcKrji4Bck
 1c5FNJttMbFgxIvVr0TsamQZQIwJLANm0UMFvmv6ObnLkFSlBd8VErXuj
 bjnXW7YRSq3OJ/6ZKxBZdx4l6SiHL7ieQan1XqM1H4H3FNSXhTV85ZirC A==;
X-CSE-ConnectionGUID: kjYZoTIfRo2ikBaGE+zrMg==
X-CSE-MsgGUID: onqznbt3SfKxXLlY3gfhDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="72645703"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="72645703"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 13:59:49 -0700
X-CSE-ConnectionGUID: 1kOrQjeXRkqGwLBAJu8wvA==
X-CSE-MsgGUID: T/Q1iHr0QoyRADuLbE6eNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="157287364"
Received: from vverma7-desk1.amr.corp.intel.com (HELO
 gjsousa-mobl2.amr.corp.intel.com) ([10.125.111.223])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 13:59:46 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 17 Jul 2025 17:59:15 -0300
Subject: [PATCH] drm/i915/display: Remove unused declarations of intel_io_*
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250717-drop-unused-intel_io-declarations-v1-1-bdea2c749571@intel.com>
X-B4-Tracking: v=1; b=H4sIACJkeWgC/x2N0QqDMAwAf0XyvEArk8J+ZYwRmnQLSCuJDkH89
 xUf7+HuDnAxFYfHcIDJT11b7RBvA+Qv1Y+gcmcYwziFFBOytQW3urkwal1lfmtDljyT0dplRy6
 USsyhULxD7ywmRffr8Xyd5x+0uuk7cwAAAA==
X-Change-ID: 20250717-drop-unused-intel_io-declarations-dfa7f1c0fa14
To: intel-gfx@lists.freedesktop.org
Cc: =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Declarations for both intel_io_mmio_fw_write and intel_io_reg_write
where added with commit 01389846f7d6 ("drm/i915: Plumb 'dsb' all way to
the plane hooks"), but they never got used. Let's remove them.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ce45261c4a8f4299293dd9dc485e63139d29063a..76cff5548b98fc9617effffe8a6067255eca5c7b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -941,10 +941,6 @@ struct intel_csc_matrix {
 	u16 postoff[3];
 };
 
-void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
-
-typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
-
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.

---
base-commit: 6cb329ec28293e8b9e670b09611149c05223dca0
change-id: 20250717-drop-unused-intel_io-declarations-dfa7f1c0fa14

Best regards,
-- 
Gustavo Sousa <gustavo.sousa@intel.com>

