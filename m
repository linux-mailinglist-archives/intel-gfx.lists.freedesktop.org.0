Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6624C72EE49
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 23:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D0810E3E0;
	Tue, 13 Jun 2023 21:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25BFF10E3E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 21:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686693246; x=1718229246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bCJeBiPUPCDAGj2f0mRVqvNnuSv6/FvdvNBTu/ucMXI=;
 b=HhzcALwKDko6h2g2smoj5G+Y+kAaWTr92DaCuqTjF7EJ4mIuyvMVO9xG
 zSrZCNMOfodbkkDAT3mxpTfjz1HLe2/vUC33P85tN6YBpSMej5bXmjp1j
 wSBLSjQ0DDY1KbB+k16tiHWADLl6NS7g39hxys+UhCtaLY8EEMIe8m4GH
 QMMIgcKFvQehptkxEveG0TuJCGZSepej9uGMKiHEnV+JD9E9lMsgLroxQ
 zI32xiFeeXCzhEU/3Yh0wNMeHtyBXDbD+wHxmQzTXPprFUPQdlOGlvb/z
 zrZLNGQ95Ri5OeNCsYzYqKdr9pkAyJ7Q/FP0axL5G2NiDIIml3EmDPBbz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338813914"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="338813914"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="741604229"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="741604229"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:04 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jun 2023 14:52:42 -0700
Message-Id: <20230613215245.1551145-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
References: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Add a notrace version of
 intel_de_read_fw
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

Around the tracing infrastructure, certain registers are being
read resulting in nested traces. Introduce the no trace version
of intel_de_read_fw to be used in such scenarios.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 42552d8c151e..786211121ce2 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -93,6 +93,16 @@ intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
  * therefore generally be serialised, by either the dev_priv->uncore.lock or
  * a more localised lock guarding all access to that bank of registers.
  */
+static inline u32
+intel_de_read_fw_notrace(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	u32 val;
+
+	val = intel_uncore_read_fw(&i915->uncore, reg);
+
+	return val;
+}
+
 static inline u32
 intel_de_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
 {
-- 
2.34.1

