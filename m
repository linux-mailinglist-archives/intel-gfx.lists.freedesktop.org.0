Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E97AAB3B73
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E1710E42C;
	Mon, 12 May 2025 14:57:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BFGNKSgL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7222910E42C;
 Mon, 12 May 2025 14:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747061835; x=1778597835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9TVc49g4HeTjMFRX+D8+357rwL/Ehwi7TWRPT8TAH0k=;
 b=BFGNKSgLD6im6fRK0QcsSxDiX+Y5clMAHtpBiMSVysZgw92e2EkFzzvj
 pB54ucC//ue8P8tMWSgKx2zvtiyMxg6OaY/UPE4RGcDyox4qw+4E/JApn
 ZTS2J/cLrt5CM9IUl6MbSZOl1G0oHp6eCOIKhQYOvlI7vMwP1E1Y2oS8O
 docdhS6QwL3VxcolWXekhlHb64VWG/ZgLMvvoS24wfV4yjYN5m1WufUa+
 B/q8KRZUP8gS7SZ+KqZU7x9/1xi+UHCmuIsYNjef/VufP21Zv+wqbVAnb
 EfZXvREdangEektgiWoRTrhk5L10y0eARReynQoVIqmE5BzPgo0HWaiK0 g==;
X-CSE-ConnectionGUID: ITEXy3I+SqmPA2RxX6vSow==
X-CSE-MsgGUID: oX0ckBtWRF+zpei9zSCo2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59865137"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59865137"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:15 -0700
X-CSE-ConnectionGUID: /50SodUnQMSiZeblH3Pjww==
X-CSE-MsgGUID: oVLuTZ4LST+E5uyfhfgLbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142502039"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 2/8] drm/i915: add generic read/write functions for VLV
 IOSF SB
Date: Mon, 12 May 2025 17:56:53 +0300
Message-Id: <babe42609c7a2056aff301320efbda534d20ad82.1747061743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747061743.git.jani.nikula@intel.com>
References: <cover.1747061743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

