Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C73E6E1646
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 23:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC8B10E481;
	Thu, 13 Apr 2023 21:03:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B0310E0A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 21:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681419773; x=1712955773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fXTXdPJ6wGr42mt8oDwb2jrjrVAyDt/LCMvK7umBwfs=;
 b=YfPHTiSmmJsCAiCa9LgJ2gwmDzwngB3PAjdtcbH7rjQG51V7m57LvUHN
 ZpiYg89t/HB109ctmJpP9M16/XBbxnLenbSq4cywwEQWu+0d9PQ7iqTe2
 xma0Q4pQezHRhhO+wqTfGeIA+jCAZg69ocDlQrUSuJqkSphVcocuc3Z/4
 ca+jyNRZqyoLaOZ1EL4nLuOC49aoAv2ry0l6xDD/mggFaX8i3y2ej7LY5
 9wI8amjNosH12mGPg66UVKvAkJvDvvfo15b9e9RuWxUEiQXjCUQrlWlFp
 Lp1Rz+ecXoicx/IGsegMu3tLups80gpxkTym/oixNNfIWy4Eakl5yDgOA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409493089"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="409493089"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="935749081"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="935749081"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:02:34 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 14:01:20 -0700
Message-Id: <20230413210122.1496865-11-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230413210122.1496865-1-radhakrishna.sripada@intel.com>
References: <20230413210122.1496865-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/mtl: Add C10 phy programming for
 HDMI
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

Like DG2, we still don't have a proper algorithm that can be used
for calculating PHY settings, but we do have tables of register
values for a handful of the more common link rates. Some support is
better than none, so let's go ahead and add/use these tables when we
can, and also add some logic to hdmi_port_clock_valid() to filter the
modelist to just the modes we can actually support with these link
rates.

Hopefully we'll have a proper / non-encumbered algorithm to calculate
these registers by the time we upstream and we'll be able to replace
this patch with something more general purpose.

Bspec: 64568

v2: Rebasing with Clint's HDMI C10 PLL tables (Mika)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-6-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 648 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   2 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
 4 files changed, 652 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ca7626eadd7c..cacd51098290 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -647,6 +647,630 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
 	NULL,
 };
 
+/*
+ * HDMI link rates with 38.4 MHz reference clock.
+ */
+
+static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
+	.clock = 25200,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xB2,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xD,
+	.pll[16] = 0x6,
+	.pll[17] = 0x8F,
+	.pll[18] = 0x84,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
+	.clock = 27000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0xC0,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x80,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xD,
+	.pll[16] = 0x6,
+	.pll[17] = 0xCF,
+	.pll[18] = 0x84,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
+	.clock = 74250,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xB,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
+	.clock = 148500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xA,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
+	.clock = 594000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x8,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+/* Precomputed C10 HDMI PLL tables */
+static const struct intel_c10pll_state mtl_c10_hdmi_25175 = {
+	.clock = 25175,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34,
+	.pll[1] = 0x00,
+	.pll[2] = 0xB0,
+	.pll[3] = 0x00,
+	.pll[4] = 0x00,
+	.pll[5] = 0x00,
+	.pll[6] = 0x00,
+	.pll[7] = 0x00,
+	.pll[8] = 0x20,
+	.pll[9] = 0xFF,
+	.pll[10] = 0xFF,
+	.pll[11] = 0x55,
+	.pll[12] = 0xE5,
+	.pll[13] = 0x55,
+	.pll[14] = 0x55,
+	.pll[15] = 0x0D,
+	.pll[16] = 0x09,
+	.pll[17] = 0x8F,
+	.pll[18] = 0x84,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
+	.clock = 27027,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0xCC, .pll[12] = 0x9C, .pll[13] = 0xCB, .pll[14] = 0xCC,
+	.pll[15] = 0x0D, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
+	.clock = 28320,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xCC, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x00, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0D, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
+	.clock = 30240,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xDC, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x00, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0D, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
+	.clock = 31500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x62, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0xA0, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0C, .pll[16] = 0x09, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
+	.clock = 36000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xC4, .pll[1] = 0x00, .pll[2] = 0x76, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x00, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0C, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
+	.clock = 40000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0x55, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x0C, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
+	.clock = 49500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x20, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0C, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
+	.clock = 50000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xB0, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0xAA, .pll[12] = 0x2A, .pll[13] = 0xA9, .pll[14] = 0xAA,
+	.pll[15] = 0x0C, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
+	.clock = 57284,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xCE, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x77, .pll[12] = 0x57, .pll[13] = 0x77, .pll[14] = 0x77,
+	.pll[15] = 0x0C, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
+	.clock = 58000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0xD5, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x0C, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
+	.clock = 65000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x66, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0xB5, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x0B, .pll[16] = 0x09, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
+	.clock = 71000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x72, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0xF5, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
+	.clock = 74176,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x44, .pll[12] = 0x44, .pll[13] = 0x44, .pll[14] = 0x44,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
+	.clock = 75000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7C, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x20, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
+	.clock = 78750,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x84, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x08, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
+	.clock = 85500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x92, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x10, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
+	.clock = 88750,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0x98, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0xAA, .pll[12] = 0x72, .pll[13] = 0xA9, .pll[14] = 0xAA,
+	.pll[15] = 0x0B, .pll[16] = 0x09, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
+	.clock = 106500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBC, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0xF0, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
+	.clock = 108000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x80, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
+	.clock = 115500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x50, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
+	.clock = 119000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD6, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0xF5, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x0B, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
+	.clock = 135000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6C, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x50, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0A, .pll[16] = 0x09, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
+	.clock = 138500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x70, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0xAA, .pll[12] = 0x22, .pll[13] = 0xA9, .pll[14] = 0xAA,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
+	.clock = 147160,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x78, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0xA5, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
+	.clock = 148352,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x44, .pll[12] = 0x44, .pll[13] = 0x44, .pll[14] = 0x44,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
+	.clock = 154000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x80, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0x35, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
+	.clock = 162000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x88, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x60, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
+	.clock = 167000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x8C, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0xAA, .pll[12] = 0xFA, .pll[13] = 0xA9, .pll[14] = 0xAA,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
+	.clock = 197802,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x99, .pll[12] = 0x05, .pll[13] = 0x98, .pll[14] = 0x99,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
+	.clock = 198000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x20, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
+	.clock = 209800,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBA, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0x45, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
+	.clock = 241500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xDA, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0xC8, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x0A, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
+	.clock = 262750,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x68, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0xAA, .pll[12] = 0x6C, .pll[13] = 0xA9, .pll[14] = 0xAA,
+	.pll[15] = 0x09, .pll[16] = 0x09, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
+	.clock = 268500,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6A, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0xEC, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x09, .pll[16] = 0x09, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
+	.clock = 296703,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x33, .pll[12] = 0x44, .pll[13] = 0x33, .pll[14] = 0x33,
+	.pll[15] = 0x09, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
+	.clock = 297000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x00, .pll[12] = 0x58, .pll[13] = 0x00, .pll[14] = 0x00,
+	.pll[15] = 0x09, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
+	.clock = 319750,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0xAA, .pll[12] = 0x44, .pll[13] = 0xA9, .pll[14] = 0xAA,
+	.pll[15] = 0x09, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
+	.clock = 497750,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xE2, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0x9F, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x09, .pll[16] = 0x08, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
+	.clock = 592000,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0x15, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x08, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state mtl_c10_hdmi_593407 = {
+	.clock = 593407,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x3B, .pll[12] = 0x44, .pll[13] = 0xBA, .pll[14] = 0xBB,
+	.pll[15] = 0x08, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
+	&mtl_c10_hdmi_25175,
+	&mtl_c10_hdmi_25_2, /* Consolidated Table */
+	&mtl_c10_hdmi_27_0, /* Consolidated Table */
+	&mtl_c10_hdmi_27027,
+	&mtl_c10_hdmi_28320,
+	&mtl_c10_hdmi_30240,
+	&mtl_c10_hdmi_31500,
+	&mtl_c10_hdmi_36000,
+	&mtl_c10_hdmi_40000,
+	&mtl_c10_hdmi_49500,
+	&mtl_c10_hdmi_50000,
+	&mtl_c10_hdmi_57284,
+	&mtl_c10_hdmi_58000,
+	&mtl_c10_hdmi_65000,
+	&mtl_c10_hdmi_71000,
+	&mtl_c10_hdmi_74176,
+	&mtl_c10_hdmi_74_25, /* Consolidated Table */
+	&mtl_c10_hdmi_75000,
+	&mtl_c10_hdmi_78750,
+	&mtl_c10_hdmi_85500,
+	&mtl_c10_hdmi_88750,
+	&mtl_c10_hdmi_106500,
+	&mtl_c10_hdmi_108000,
+	&mtl_c10_hdmi_115500,
+	&mtl_c10_hdmi_119000,
+	&mtl_c10_hdmi_135000,
+	&mtl_c10_hdmi_138500,
+	&mtl_c10_hdmi_147160,
+	&mtl_c10_hdmi_148352,
+	&mtl_c10_hdmi_148_5, /* Consolidated Table */
+	&mtl_c10_hdmi_154000,
+	&mtl_c10_hdmi_162000,
+	&mtl_c10_hdmi_167000,
+	&mtl_c10_hdmi_197802,
+	&mtl_c10_hdmi_198000,
+	&mtl_c10_hdmi_209800,
+	&mtl_c10_hdmi_241500,
+	&mtl_c10_hdmi_262750,
+	&mtl_c10_hdmi_268500,
+	&mtl_c10_hdmi_296703,
+	&mtl_c10_hdmi_297000,
+	&mtl_c10_hdmi_319750,
+	&mtl_c10_hdmi_497750,
+	&mtl_c10_hdmi_592000,
+	&mtl_c10_hdmi_593407,
+	&mtl_c10_hdmi_594, /* Consolidated Table */
+	NULL,
+};
+
+int intel_c10_phy_check_hdmi_link_rate(int clock)
+{
+	const struct intel_c10pll_state * const *tables = mtl_c10_hdmi_tables;
+	int i;
+
+	for (i = 0; tables[i]; i++) {
+		if (clock == tables[i]->clock)
+			return MODE_OK;
+	}
+
+	return MODE_CLOCK_RANGE;
+}
+
 static const struct intel_c10pll_state * const *
 intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
 			struct intel_encoder *encoder)
@@ -656,9 +1280,10 @@ intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
 			return mtl_c10_edp_tables;
 		else
 			return mtl_c10_dp_tables;
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return mtl_c10_hdmi_tables;
 	}
 
-	/* TODO: Add HDMI Support */
 	MISSING_CASE(encoder->type);
 	return NULL;
 }
@@ -690,9 +1315,20 @@ static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
 static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 				   struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_c10pll_state * const *tables;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	int i;
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c10_phy_check_hdmi_link_rate(crtc_state->port_clock)
+		    != MODE_OK) {
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				    crtc_state->port_clock, phy_name(phy));
+			return -EINVAL;
+		}
+	}
+
 	tables = intel_c10pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
@@ -758,6 +1394,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
 		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
 		      MB_WRITE_COMMITTED);
+
 	/* Custom width needs to be programmed to 0 for both the phy lanes */
 	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CUSTOM_WIDTH,
 		      C10_VDR_CUSTOM_WIDTH_MASK, C10_VDR_CUSTOM_WIDTH_8_10,
@@ -820,7 +1457,8 @@ int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_c10pll_state *pll_state)
 {
 	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
-	unsigned int multiplier, tx_clk_div, refclk = 38400;
+	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
+	int tmpclk = 0;
 
 	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
 		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
@@ -832,10 +1470,14 @@ int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 		      pll_state->pll[2]) / 2 + 16;
 
 	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
+	hdmi_div = REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
 
-	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
+	tmpclk = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
 				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
 				     10 << (tx_clk_div + 16));
+	tmpclk *= (hdmi_div ? 2 : 1);
+
+	return tmpclk;
 }
 
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 6b736acb83e0..509d1d12776e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -32,5 +32,6 @@ void intel_c10pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc_state *new_crtc_state);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
+int intel_c10_phy_check_hdmi_link_rate(int clock);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index fe2e3edef69b..20024622d0eb 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -145,6 +145,8 @@
 #define   C10_PLL0_FRACEN		REG_BIT8(4)
 #define   C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
 #define   C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
+#define   C10_PLL15_HDMIDIV_MASK	REG_GENMASK8(5, 3)
+
 #define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
 #define   C10_CMN0_REF_RANGE		REG_FIELD_PREP(REG_GENMASK(4, 0), 1)
 #define   C10_CMN0_REF_CLK_MPLLB_DIV	REG_FIELD_PREP(REG_GENMASK(7, 5), 1)
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 4fd944520826..8141d5184856 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -45,6 +45,7 @@
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -1864,7 +1865,9 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	 * FIXME: We will hopefully get an algorithmic way of programming
 	 * the MPLLB for HDMI in the future.
 	 */
-	if (IS_DG2(dev_priv))
+	if (IS_METEORLAKE(dev_priv))
+		return intel_c10_phy_check_hdmi_link_rate(clock);
+	else if (IS_DG2(dev_priv))
 		return intel_snps_phy_check_hdmi_link_rate(clock);
 
 	return MODE_OK;
-- 
2.34.1

