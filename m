Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EAF3377D2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 16:34:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91ECB6EDFA;
	Thu, 11 Mar 2021 15:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759956EDF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 15:34:30 +0000 (UTC)
IronPort-SDR: O4A7e09d5qzPlm4oPTQcwezws5wMMbQJSLiyIIk+KfGJV8HWVt3qchPzkyP5uKc80yKnVsWaP5
 zXPdYk/OsmbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175797239"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175797239"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:29 -0800
IronPort-SDR: s598jZZntg+RhIMUVTlK8GulFfbu6gGQDUmlTNiABes1F3jT/nZCDPPaN4Kxdxnu79IPaZzT9H
 9C4M7xoFIgJA==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="589251654"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:29 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 07:33:59 -0800
Message-Id: <20210311153415.3024607-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/23] drm/i915/xelpd: add XE_LPD display
 characteristics
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's start preparing for upcoming platforms that will use an XE_LPD
design.

v2:
 - Use the now-preferred "XE_LPD" term to refer to this design
 - Utilize DISPLAY_VER() rather than a feature flag
 - Drop unused mbus_size field (Lucas)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 5bfd94e2cc6f..3f06502e1d85 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -936,6 +936,16 @@ static const struct intel_device_info adl_s_info = {
 	.dma_mask_size = 46,
 };
 
+#define XE_LPD_FEATURES \
+	.display_ver = 13,						\
+	.display.has_psr_hw_tracking = 0,				\
+	.abox_mask = GENMASK(1, 0),					\
+	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
+	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |	\
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),			\
+	.ddb_size = 4096,						\
+	.num_supported_dbuf_slices = 4
+
 #undef GEN
 #undef PLATFORM
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
