Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D678AAF759
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 12:03:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBC7310E8D5;
	Thu,  8 May 2025 10:03:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GQFcLnX+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792F310E8D4;
 Thu,  8 May 2025 10:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746698635; x=1778234635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6wlw+tWksCfQtQAqbJYBVsaP0OQSM3xKaZI5jzrCRv0=;
 b=GQFcLnX+aETYHlx+6GVlDiaoD4bN9KXGFIMt8QBoCCgofIUDxVwZrOHR
 nh8sanlHS3RtfkaoLT5iXlXPxkLS8SsDfqhpz6R9Fvwg92eWFeABfxURZ
 zfnti1elURNM6moYnb40BViGpReI+EuFzTNIgteTsoyG0lmJDeyHjMFoz
 AFSH1+vP+m6zlau83R5mrIz24pqC7g05CjVaW4YKmr13bwXe6lmxarcC0
 R9NaPzRMcqP65i93a21UwICfyjyJhmNGVLXb6mh5sJXa5CWG2tc8OapaE
 gMLS/e+z7pSr+Zoq+CTkgkE8nUc9jIXKqvFFxyjsX4V+bCBKfGM8z7a4A Q==;
X-CSE-ConnectionGUID: AGnknD1EQlC04FADor3ODA==
X-CSE-MsgGUID: X0N9AuEcTDeqkPzFDJYZCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="66003196"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="66003196"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:03:54 -0700
X-CSE-ConnectionGUID: qhZZMKaKR5eAmposF3/fug==
X-CSE-MsgGUID: ubCcjv+9STGBHr+jr5LKtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="136634268"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.176])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:03:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/8] drm/i915: add generic read/write functions for VLV
 IOSF SB
Date: Thu,  8 May 2025 13:03:36 +0300
Message-Id: <82ef3013efb2dd4c357d60847a6ff9850a002256.1746698410.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746698410.git.jani.nikula@intel.com>
References: <cover.1746698410.git.jani.nikula@intel.com>
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

The read/write functions will be helpful for rewriting the unit specific
functions.

v2: Fix checkpatch complaint on indent

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/vlv_iosf_sb.c            | 73 +++++++++++++++++++
 drivers/gpu/drm/i915/vlv_iosf_sb.h            |  6 +-
 .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  |  9 ++-
 3 files changed, 83 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index 91703c6c478c..aaed876a1f2e 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -123,6 +123,79 @@ static int vlv_sideband_rw(struct drm_i915_private *i915,
 	return err;
 }
 
+static u32 unit_to_devfn(enum vlv_iosf_sb_unit unit)
+{
+	if (unit == VLV_IOSF_SB_DPIO || unit == VLV_IOSF_SB_DPIO_2 ||
+	    unit == VLV_IOSF_SB_FLISDSI)
+		return DPIO_DEVFN;
+	else
+		return PCI_DEVFN(0, 0);
+}
+
+static u32 unit_to_port(enum vlv_iosf_sb_unit unit)
+{
+	switch (unit) {
+	case VLV_IOSF_SB_BUNIT:
+		return IOSF_PORT_BUNIT;
+	case VLV_IOSF_SB_CCK:
+		return IOSF_PORT_CCK;
+	case VLV_IOSF_SB_CCU:
+		return IOSF_PORT_CCU;
+	case VLV_IOSF_SB_DPIO:
+		return IOSF_PORT_DPIO;
+	case VLV_IOSF_SB_DPIO_2:
+		return IOSF_PORT_DPIO_2;
+	case VLV_IOSF_SB_FLISDSI:
+		return IOSF_PORT_FLISDSI;
+	case VLV_IOSF_SB_GPIO:
+		return 0; /* FIXME: unused */
+	case VLV_IOSF_SB_NC:
+		return IOSF_PORT_NC;
+	case VLV_IOSF_SB_PUNIT:
+		return IOSF_PORT_PUNIT;
+	default:
+		return 0;
+	}
+}
+
+static u32 unit_to_opcode(enum vlv_iosf_sb_unit unit, bool write)
+{
+	if (unit == VLV_IOSF_SB_DPIO || unit == VLV_IOSF_SB_DPIO_2)
+		return write ? SB_MWR_NP : SB_MRD_NP;
+	else
+		return write ? SB_CRWRDA_NP : SB_CRRDDA_NP;
+}
+
+u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr)
+{
+	u32 devfn, port, opcode, val = 0;
+
+	devfn = unit_to_devfn(unit);
+	port = unit_to_port(unit);
+	opcode = unit_to_opcode(unit, false);
+
+	if (drm_WARN_ONCE(&i915->drm, !port, "invalid unit %d\n", unit))
+		return 0;
+
+	vlv_sideband_rw(i915, devfn, port, opcode, addr, &val);
+
+	return val;
+}
+
+int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)
+{
+	u32 devfn, port, opcode;
+
+	devfn = unit_to_devfn(unit);
+	port = unit_to_port(unit);
+	opcode = unit_to_opcode(unit, true);
+
+	if (drm_WARN_ONCE(&i915->drm, !port, "invalid unit %d\n", unit))
+		return -EINVAL;
+
+	return vlv_sideband_rw(i915, devfn, port, opcode, addr, &val);
+}
+
 u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
 {
 	u32 val = 0;
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.h b/drivers/gpu/drm/i915/vlv_iosf_sb.h
index 380b96089cda..26af3aa973f8 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.h
@@ -14,11 +14,12 @@
 enum dpio_phy;
 struct drm_i915_private;
 
-enum {
+enum vlv_iosf_sb_unit {
 	VLV_IOSF_SB_BUNIT,
 	VLV_IOSF_SB_CCK,
 	VLV_IOSF_SB_CCU,
 	VLV_IOSF_SB_DPIO,
+	VLV_IOSF_SB_DPIO_2,
 	VLV_IOSF_SB_FLISDSI,
 	VLV_IOSF_SB_GPIO,
 	VLV_IOSF_SB_NC,
@@ -31,6 +32,9 @@ void vlv_iosf_sb_fini(struct drm_i915_private *i915);
 void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports);
 void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports);
 
+u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr);
+int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
+
 static inline void vlv_bunit_get(struct drm_i915_private *i915)
 {
 	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_BUNIT));
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
index b42a518a79e0..57f7dde90ced 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
@@ -13,11 +13,12 @@
 enum pipe;
 struct drm_i915_private;
 
-enum {
+enum vlv_iosf_sb_unit {
 	VLV_IOSF_SB_BUNIT,
 	VLV_IOSF_SB_CCK,
 	VLV_IOSF_SB_CCU,
 	VLV_IOSF_SB_DPIO,
+	VLV_IOSF_SB_DPIO_2,
 	VLV_IOSF_SB_FLISDSI,
 	VLV_IOSF_SB_GPIO,
 	VLV_IOSF_SB_NC,
@@ -27,13 +28,13 @@ enum {
 static inline void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports)
 {
 }
-static inline u32 vlv_iosf_sb_read(struct drm_i915_private *i915, u8 port, u32 reg)
+static inline u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr)
 {
 	return 0;
 }
-static inline void vlv_iosf_sb_write(struct drm_i915_private *i915,
-				     u8 port, u32 reg, u32 val)
+static inline int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)
 {
+	return 0;
 }
 static inline void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports)
 {
-- 
2.39.5

