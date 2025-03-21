Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7C3A6BA00
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 12:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2AE10E7B1;
	Fri, 21 Mar 2025 11:38:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GOioCtoF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017A510E7B1;
 Fri, 21 Mar 2025 11:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742557124; x=1774093124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I5q478wa3OvyU7RMmiNhEeYg4gnk3EXQFENI6jGTgfU=;
 b=GOioCtoFSDvnD9PjsDrPWJ4S2OXft1Cx7NDJ4NIZTvmjlwSnLpyCwAAw
 Hn0q94ykSwp06+/xmvwrKNG5x2WgSsTDieekO3yI0ZP7wye/GQGNOd8kE
 FtyyZSwlG5xszGYn1Y0PsJa8VYGwVT9ylqkKoN/sg2B8PdDWKuP8bxn8l
 AqxSV7ZqmEmZOHn5eS96T41RofB9BRp7WkwqmixuVZFGw4uKExcptLvRe
 vsb8kvi1x5M+vncL7b7OmzARNanFeBQZk9eAIfkyRyzSitSsRo4KPQvtE
 q/cIyXy66G4IaghdrDDhm8Hvy3Ab/sdIQLhOQMuimeHHIMqNjmGM2zn6s g==;
X-CSE-ConnectionGUID: UwXKgDkDSz+DQ4qyMAs0Yw==
X-CSE-MsgGUID: shPEZk8xTg+3oGNkDXAuUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="61216881"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="61216881"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:44 -0700
X-CSE-ConnectionGUID: C29PEXnkS1mHbZhmz1Aa6Q==
X-CSE-MsgGUID: By9oHiMNSTOpWcrhG1d9Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128206569"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:42 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >= 14
Date: Fri, 21 Mar 2025 16:56:47 +0530
Message-ID: <20250321112650.3594298-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
References: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
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

LINK_N register has bits 31:24 for extended link N value used for
HDMI2.1 and for an alternate mode of operation of DP TG DDA
(Bspec:50488).

Add support for these extra bits.

For displays with version 14 or higher, the `PIPE_LINK_N1_EXTENDED_MASK`
(bits 31:24) is used to handle the extended link N bits.
For older platforms, the `DATA_LINK_M_N_MASK` (bits 23:0) is used to
handle the standard link N bits. This distinction ensures clarity and
maintains the semantics for platforms that support the extended bits.
In subsequent changes the logic is updated to conditionally apply the
extended link N bits.

v2: Drop extra link_n_ext member. (Jani)
v3: Avoid link_n_ext in set_m_n helper. (Jani)
v4: Rebase, and update commit message.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h              |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3afb85fe8536..8fb0df388571 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2583,14 +2583,22 @@ void intel_set_m_n(struct intel_display *display,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
+	u32 link_n = m_n->link_n;
+
 	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
 	intel_de_write(display, data_n_reg, m_n->data_n);
 	intel_de_write(display, link_m_reg, m_n->link_m);
+
+	if (DISPLAY_VER(display) >= 14)
+		link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
+	else
+		link_n &= DATA_LINK_M_N_MASK;
+
 	/*
 	 * On BDW+ writing LINK_N arms the double buffered update
 	 * of all the M/N registers, so it must be written last.
 	 */
-	intel_de_write(display, link_n_reg, m_n->link_n);
+	intel_de_write(display, link_n_reg, link_n);
 }
 
 bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
@@ -3279,7 +3287,13 @@ void intel_get_m_n(struct intel_display *display,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
 	m_n->link_m = intel_de_read(display, link_m_reg) & DATA_LINK_M_N_MASK;
-	m_n->link_n = intel_de_read(display, link_n_reg) & DATA_LINK_M_N_MASK;
+	m_n->link_n = intel_de_read(display, link_n_reg);
+
+	if (DISPLAY_VER(display) >= 14)
+		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
+	else
+		m_n->link_n &= DATA_LINK_M_N_MASK;
+
 	m_n->data_m = intel_de_read(display, data_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->data_n = intel_de_read(display, data_n_reg) & DATA_LINK_M_N_MASK;
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(display, data_m_reg)) + 1;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c5064eebe063..a2054aced4f8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1869,6 +1869,8 @@
 
 #define _PIPEA_LINK_N1		0x60044
 #define _PIPEB_LINK_N1		0x61044
+#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
+#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
 #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
 
 #define _PIPEA_LINK_M2		0x60048
-- 
2.45.2

