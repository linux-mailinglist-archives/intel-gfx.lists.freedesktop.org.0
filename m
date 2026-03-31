Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BR0ENmyy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B13CE368EF3
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150C610E8D5;
	Tue, 31 Mar 2026 11:41:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TZK39DOb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB57D10E8CA;
 Tue, 31 Mar 2026 11:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957270; x=1806493270;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tsui28cog1QHqeFdTtOn9M0V00r4pBDeIpjXeuqJPmU=;
 b=TZK39DObbILCzN9aCb4TYgoqp0uEYbnXL00rzP5TsLsT4MwsE79NEsUr
 KsWnQxY0eDGOkvUdSuBjBRNx0oYaiqgGdlyocnTLQ1HINhUFS3deHfA/0
 rICtYjmHSgoq9GNtaph9ICEgfX3nEtL8Qq8KZJ3LauDlVUE5riMJvoV0n
 0rMe8uFaGcI7DYByCtEsxMMvdTCd9eA8PNwtHmlvmDTnNe1MqzSFFHQBy
 GTlbAH5QmRWSxnBBjmaDsFiyl/dAzeEu6K1Ub5vUqyK3ivk6ZNzS5LUlI
 Ko/4dUKFKzOiv6qySap554yHHZWvdIMX1SO2xVXAYrgsrMJ6qEiI9zQw6 Q==;
X-CSE-ConnectionGUID: 9OtCi2f/SsK3cigch40bDw==
X-CSE-MsgGUID: djHabMlJSy+hDsCnTOklRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75854121"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75854121"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:10 -0700
X-CSE-ConnectionGUID: 0wf6H2S2QcKL0u7ijuCkyw==
X-CSE-MsgGUID: qGjHRSslTnKek+mq859tpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="231167647"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/{i915,
 xe}: convert VLV sideband display wrappers into real functions
Date: Tue, 31 Mar 2026 14:40:54 +0300
Message-ID: <57740dc3a820cb5fc1cfcd28e4be58b2cb48020d.1774957233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774957233.git.jani.nikula@intel.com>
References: <cover.1774957233.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.842];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: B13CE368EF3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the VLV sideband static inline wrappers into real
functions. This will help the follow-up work of moving the VLV sideband
to the display parent interface.

The downside is that we'll have to build vlv_sideband.c as part of xe
build, to avoid a plethora of stubs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

'git show --color-moved' will help review
---
 drivers/gpu/drm/i915/display/vlv_sideband.c | 125 +++++++++++++++
 drivers/gpu/drm/i915/display/vlv_sideband.h | 165 ++++----------------
 drivers/gpu/drm/xe/Makefile                 |   3 +-
 3 files changed, 156 insertions(+), 137 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.c b/drivers/gpu/drm/i915/display/vlv_sideband.c
index e18045f2b89d..2472e0412728 100644
--- a/drivers/gpu/drm/i915/display/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.c
@@ -8,6 +8,71 @@
 #include "intel_dpio_phy.h"
 #include "vlv_sideband.h"
 
+void vlv_bunit_get(struct drm_device *drm)
+{
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_BUNIT));
+}
+
+u32 vlv_bunit_read(struct drm_device *drm, u32 reg)
+{
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_BUNIT, reg);
+}
+
+void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val)
+{
+	vlv_iosf_sb_write(drm, VLV_IOSF_SB_BUNIT, reg, val);
+}
+
+void vlv_bunit_put(struct drm_device *drm)
+{
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_BUNIT));
+}
+
+void vlv_cck_get(struct drm_device *drm)
+{
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCK));
+}
+
+u32 vlv_cck_read(struct drm_device *drm, u32 reg)
+{
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCK, reg);
+}
+
+void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val)
+{
+	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCK, reg, val);
+}
+
+void vlv_cck_put(struct drm_device *drm)
+{
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCK));
+}
+
+void vlv_ccu_get(struct drm_device *drm)
+{
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCU));
+}
+
+u32 vlv_ccu_read(struct drm_device *drm, u32 reg)
+{
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCU, reg);
+}
+
+void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val)
+{
+	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCU, reg, val);
+}
+
+void vlv_ccu_put(struct drm_device *drm)
+{
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCU));
+}
+
+void vlv_dpio_get(struct drm_device *drm)
+{
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
+}
+
 static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct intel_display *display,
 						  enum dpio_phy phy)
 {
@@ -48,3 +113,63 @@ void vlv_dpio_write(struct drm_device *drm,
 
 	vlv_iosf_sb_write(drm, unit, reg, val);
 }
+
+void vlv_dpio_put(struct drm_device *drm)
+{
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
+}
+
+void vlv_flisdsi_get(struct drm_device *drm)
+{
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_FLISDSI));
+}
+
+u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg)
+{
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_FLISDSI, reg);
+}
+
+void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val)
+{
+	vlv_iosf_sb_write(drm, VLV_IOSF_SB_FLISDSI, reg, val);
+}
+
+void vlv_flisdsi_put(struct drm_device *drm)
+{
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_FLISDSI));
+}
+
+void vlv_nc_get(struct drm_device *drm)
+{
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_NC));
+}
+
+u32 vlv_nc_read(struct drm_device *drm, u8 addr)
+{
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_NC, addr);
+}
+
+void vlv_nc_put(struct drm_device *drm)
+{
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_NC));
+}
+
+void vlv_punit_get(struct drm_device *drm)
+{
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_PUNIT));
+}
+
+u32 vlv_punit_read(struct drm_device *drm, u32 addr)
+{
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_PUNIT, addr);
+}
+
+int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val)
+{
+	return vlv_iosf_sb_write(drm, VLV_IOSF_SB_PUNIT, addr, val);
+}
+
+void vlv_punit_put(struct drm_device *drm)
+{
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_PUNIT));
+}
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.h b/drivers/gpu/drm/i915/display/vlv_sideband.h
index 2c240d81fead..065273726379 100644
--- a/drivers/gpu/drm/i915/display/vlv_sideband.h
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.h
@@ -4,7 +4,6 @@
 #ifndef _VLV_SIDEBAND_H_
 #define _VLV_SIDEBAND_H_
 
-#include <linux/bitops.h>
 #include <linux/types.h>
 
 #include "vlv_iosf_sb.h"
@@ -13,144 +12,38 @@
 enum dpio_phy;
 struct drm_device;
 
-static inline void vlv_bunit_get(struct drm_device *drm)
-{
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_BUNIT));
-}
+void vlv_bunit_get(struct drm_device *drm);
+u32 vlv_bunit_read(struct drm_device *drm, u32 reg);
+void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val);
+void vlv_bunit_put(struct drm_device *drm);
 
-static inline u32 vlv_bunit_read(struct drm_device *drm, u32 reg)
-{
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_BUNIT, reg);
-}
+void vlv_cck_get(struct drm_device *drm);
+u32 vlv_cck_read(struct drm_device *drm, u32 reg);
+void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val);
+void vlv_cck_put(struct drm_device *drm);
 
-static inline void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val)
-{
-	vlv_iosf_sb_write(drm, VLV_IOSF_SB_BUNIT, reg, val);
-}
+void vlv_ccu_get(struct drm_device *drm);
+u32 vlv_ccu_read(struct drm_device *drm, u32 reg);
+void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val);
+void vlv_ccu_put(struct drm_device *drm);
 
-static inline void vlv_bunit_put(struct drm_device *drm)
-{
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_BUNIT));
-}
-
-static inline void vlv_cck_get(struct drm_device *drm)
-{
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCK));
-}
-
-static inline u32 vlv_cck_read(struct drm_device *drm, u32 reg)
-{
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCK, reg);
-}
-
-static inline void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val)
-{
-	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCK, reg, val);
-}
-
-static inline void vlv_cck_put(struct drm_device *drm)
-{
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCK));
-}
-
-static inline void vlv_ccu_get(struct drm_device *drm)
-{
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCU));
-}
-
-static inline u32 vlv_ccu_read(struct drm_device *drm, u32 reg)
-{
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCU, reg);
-}
-
-static inline void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val)
-{
-	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCU, reg, val);
-}
-
-static inline void vlv_ccu_put(struct drm_device *drm)
-{
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCU));
-}
-
-static inline void vlv_dpio_get(struct drm_device *drm)
-{
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
-}
-
-#ifdef I915
+void vlv_dpio_get(struct drm_device *drm);
 u32 vlv_dpio_read(struct drm_device *drm, enum dpio_phy phy, int reg);
-void vlv_dpio_write(struct drm_device *drm,
-		    enum dpio_phy phy, int reg, u32 val);
-#else
-static inline u32 vlv_dpio_read(struct drm_device *drm, int phy, int reg)
-{
-	return 0;
-}
-static inline void vlv_dpio_write(struct drm_device *drm,
-				  int phy, int reg, u32 val)
-{
-}
-#endif
-
-static inline void vlv_dpio_put(struct drm_device *drm)
-{
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
-}
-
-static inline void vlv_flisdsi_get(struct drm_device *drm)
-{
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_FLISDSI));
-}
-
-static inline u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg)
-{
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_FLISDSI, reg);
-}
-
-static inline void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val)
-{
-	vlv_iosf_sb_write(drm, VLV_IOSF_SB_FLISDSI, reg, val);
-}
-
-static inline void vlv_flisdsi_put(struct drm_device *drm)
-{
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_FLISDSI));
-}
-
-static inline void vlv_nc_get(struct drm_device *drm)
-{
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_NC));
-}
-
-static inline u32 vlv_nc_read(struct drm_device *drm, u8 addr)
-{
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_NC, addr);
-}
-
-static inline void vlv_nc_put(struct drm_device *drm)
-{
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_NC));
-}
-
-static inline void vlv_punit_get(struct drm_device *drm)
-{
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_PUNIT));
-}
-
-static inline u32 vlv_punit_read(struct drm_device *drm, u32 addr)
-{
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_PUNIT, addr);
-}
-
-static inline int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val)
-{
-	return vlv_iosf_sb_write(drm, VLV_IOSF_SB_PUNIT, addr, val);
-}
-
-static inline void vlv_punit_put(struct drm_device *drm)
-{
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_PUNIT));
-}
+void vlv_dpio_write(struct drm_device *drm, enum dpio_phy phy, int reg, u32 val);
+void vlv_dpio_put(struct drm_device *drm);
+
+void vlv_flisdsi_get(struct drm_device *drm);
+u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg);
+void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val);
+void vlv_flisdsi_put(struct drm_device *drm);
+
+void vlv_nc_get(struct drm_device *drm);
+u32 vlv_nc_read(struct drm_device *drm, u8 addr);
+void vlv_nc_put(struct drm_device *drm);
+
+void vlv_punit_get(struct drm_device *drm);
+u32 vlv_punit_read(struct drm_device *drm, u32 addr);
+int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val);
+void vlv_punit_put(struct drm_device *drm);
 
 #endif /* _VLV_SIDEBAND_H_ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 9dacb0579a7d..7960c2db33bd 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -332,7 +332,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/skl_prefill.o \
 	i915-display/skl_scaler.o \
 	i915-display/skl_universal_plane.o \
-	i915-display/skl_watermark.o
+	i915-display/skl_watermark.o \
+	i915-display/vlv_sideband.o
 
 ifeq ($(CONFIG_ACPI),y)
 	xe-$(CONFIG_DRM_XE_DISPLAY) += \
-- 
2.47.3

