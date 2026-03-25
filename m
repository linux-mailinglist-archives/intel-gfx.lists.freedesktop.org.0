Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLXPI0wvxGkAxQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CA632AD46
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F1C10E833;
	Wed, 25 Mar 2026 18:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HjbwfkGi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486D210E833;
 Wed, 25 Mar 2026 18:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774464841; x=1806000841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pCy71AX4ZSnFwHoIJlGWNj5axEW7b723BUZUhkO50Zw=;
 b=HjbwfkGiVGNLvkKjbqTB1RDlB8gkzYfK0hMSjlHlOHdXzGqHW7zd3V6H
 G9ZvbsqX6rHZF9QrCWIw+/2KcTgkvAu/IKVqERX6ixUlH/4D6YQ68Ncba
 jCrAXjB70FDObCdWqQ0e6RGIsUllKv2FFkTbQcyT3Yx0US4atprywSGaF
 lNjXGGCB3FNcf1X9E1FwW/w/u90AMy+gMXPxNVHvYC89/A8Vm+ks/1v/Q
 KhDyHz9mHze0EbEmV3Awwvv9SBboBJEB/Ym0hw9+DnG/yHFT7FA51ORFg
 6iR+AN2lxMogD8kQb/MAilugPE1bHyokkEfzEHg/8g6GDnXensSMMKPR0 A==;
X-CSE-ConnectionGUID: XaqVLEJpR7CnRs/ns/5aWA==
X-CSE-MsgGUID: 3YCSRA7xQGOePNdHpn7T0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75399946"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75399946"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:01 -0700
X-CSE-ConnectionGUID: m7He6q8zQPS6aY94RKreMQ==
X-CSE-MsgGUID: jlk18ErGSqemhXmA/U8xQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="221872418"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:53:59 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/12] drm/i915/mchbar: WARN when accessing non-MCHBAR
 registers via intel_mchbar_read*()
Date: Wed, 25 Mar 2026 20:53:33 +0200
Message-ID: <20260325185342.11482-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 44CA632AD46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The intel_mchbar_read*() functions should only be used for
accessing MCHBAR registers. Warn if someone tries to use
them for other registers.

I suppose we could even have a dedicated type for MCHBAR
registers. But that is true for many other special register
types as well, and so far we haven't bothered adding any
special types.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_mchbar.c | 49 +++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/drm/i915/display/intel_mchbar.c
index 950a36d586c3..82b47c00101a 100644
--- a/drivers/gpu/drm/i915/display/intel_mchbar.c
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
@@ -3,15 +3,60 @@
  * Copyright © 2026 Intel Corporation
  */
 
+#include <linux/minmax.h>
+
+#include <drm/drm_print.h>
+
 #include "intel_display_core.h"
 #include "intel_mchbar.h"
+#include "intel_mchbar_regs.h"
 #include "intel_uncore.h"
 
+static bool has_mchbar_mirror(struct intel_display *display)
+{
+	return DISPLAY_VER(display) < 14;
+}
+
+static u32 mchbar_mirror_base(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 6)
+		return MCHBAR_MIRROR_BASE_SNB;
+	else
+		return MCHBAR_MIRROR_BASE;
+}
+
+static u32 mchbar_mirror_end(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 12 && !display->platform.rocketlake)
+		return MCHBAR_MIRROR_END_TGL;
+	else if (DISPLAY_VER(display) >= 11)
+		return MCHBAR_MIRROR_END_ICL_RKL;
+	else if (DISPLAY_VER(display) >= 6)
+		return MCHBAR_MIRROR_END_SNB;
+	else
+		return MCHBAR_MIRROR_END;
+}
+
+static u32 mchbar_mirror_len(struct intel_display *display)
+{
+	return mchbar_mirror_end(display) - mchbar_mirror_base(display) + 1;
+}
+
+static bool is_mchbar_reg(struct intel_display *display, i915_reg_t reg)
+{
+	return has_mchbar_mirror(display) &&
+		in_range32(i915_mmio_reg_offset(reg),
+			   mchbar_mirror_base(display),
+			   mchbar_mirror_len(display));
+}
+
 u16 intel_mchbar_read16(struct intel_display *display,
 			i915_reg_t reg)
 {
 	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 
+	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
+
 	return intel_uncore_read16(uncore, reg);
 }
 
@@ -20,6 +65,8 @@ u32 intel_mchbar_read(struct intel_display *display,
 {
 	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 
+	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
+
 	return intel_uncore_read(uncore, reg);
 }
 
@@ -28,5 +75,7 @@ u64 intel_mchbar_read64(struct intel_display *display,
 {
 	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 
+	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
+
 	return intel_uncore_read64(uncore, reg);
 }
-- 
2.52.0

