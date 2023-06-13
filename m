Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C0272EE4A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 23:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE8010E3E3;
	Tue, 13 Jun 2023 21:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D4310E3E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 21:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686693246; x=1718229246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nBk6tNvz63OMZEngyvZbYxupmYDJxghKa4vAFOIHBmE=;
 b=fJvubkPcXNDkunQriLvHQpgQPYZoLLbeqz3Sy8na78RxaSR+NFtqA6Dd
 DCAAjTdEqPKisr9U/PtTqaIOAFR7M8POT/VupotmCiKl6vmsfXDqgNcPp
 d21+DediHFlbh3vprqi/4G5PMRmeV+GgjQUvgWd7BMJGFe7oHGvqJc5f0
 AkaflR5fNfFGo4kTw2nnyAZTQrYQ8xupXVFOkOWj0ctT1oX+AyE4habQR
 yToCCCbwirSuG+6ETITrt8qMTTxy/efYRRRgIAwe3HZOIHhHqEbGkT8di
 t5HUMxyx2IBnoa8tQBdSfxMFMa6080MRxURDlgdmjFyY44/f59irA4LHK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338813916"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="338813916"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="741604232"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="741604232"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:04 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jun 2023 14:52:43 -0700
Message-Id: <20230613215245.1551145-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
References: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Add a dummy notrace version of
 intel_de_read64_2x32
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

intel_de_read64_2x32 and hence intel_uncore_read64_2x32 do not use any
of the tracing api's. It is however important to distinguish between the
tracing and non tracing versions to avoid nesting of tracing events.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 7 +++++++
 drivers/gpu/drm/i915/intel_uncore.h     | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 786211121ce2..25d6f3317eca 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -22,6 +22,13 @@ intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
 	return intel_uncore_read8(&i915->uncore, reg);
 }
 
+static inline u64
+intel_de_read64_2x32_notrace(struct drm_i915_private *i915,
+			     i915_reg_t lower_reg, i915_reg_t upper_reg)
+{
+	return intel_uncore_read64_2x32_notrace(&i915->uncore, lower_reg, upper_reg);
+}
+
 static inline u64
 intel_de_read64_2x32(struct drm_i915_private *i915,
 		     i915_reg_t lower_reg, i915_reg_t upper_reg)
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 9ea1f4864a3a..a189953957ef 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -484,6 +484,8 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
 	return (u64)upper << 32 | lower;
 }
 
+#define intel_uncore_read64_2x32_notrace(...)	intel_uncore_read64_2x32(__VA_ARGS__)
+
 static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
 						i915_reg_t reg, u32 val,
 						u32 mask, u32 expected_val)
-- 
2.34.1

