Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA606A19D7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7434910E889;
	Fri, 24 Feb 2023 10:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624D710E881
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233954; x=1708769954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OBsVPFWjVBCPA1/myKEYdtQURi8FyokztREqHK/RqM8=;
 b=e4UjIoq1mynlFnX8fouEXweUnzEC767E28pIsZ02KYYYQwuf6EgC7JgM
 VWRkIhOZRq/zXiX8hWATunKQOhh3ofXO2dl8uUW3dqPfHyFDi1jH6alHC
 sSnX+lOdmU+i7OH61QQE05uaiE1FLTaTC0YnOuiyWpeI8TDZkz4K2W/vl
 r8YX41qTW2kzaEoCjayCUGj/aQKc/ulVMks5wBgOSU8uQdPoxWkEveKtR
 uSC0cIJBQ3J8GjdyGaXLQcPefKptCmNV3WXhhXQfD14yIOTNJgB8jU3xm
 xWArEnYcjRP7NXe1/kQLm01OFbymbym14hrnQtBw/I8GCCkwpyLkVnrqE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129850"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129850"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846540"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846540"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:11 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:39 +0200
Message-Id: <20230224101356.2390838-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 05/22] drm/i915/mtl: Add C10 phy programming
 for HDMI
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

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

v3: Add missing use_hdmi checks from Clint's HDMI implementation changes (Ankit)
    Remove unused table

Cc: Imre Deak <imre.deak@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 576 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   2 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
 4 files changed, 573 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index dce55f0ed5e1..c73d2bc3e1a8 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -485,6 +485,538 @@ static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
 	NULL,
 };
 
+/*
+ * HDMI link rates with 38.4 MHz reference clock.
+ */
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_25_2 = {
+	.clock = 25200,
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
+static const struct intel_c10mpllb_state mtl_c10_hdmi_27_0 = {
+	.clock = 27000,
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
+static const struct intel_c10mpllb_state mtl_c10_hdmi_74_25 = {
+	.clock = 74250,
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
+static const struct intel_c10mpllb_state mtl_c10_hdmi_148_5 = {
+	.clock = 148500,
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
+static const struct intel_c10mpllb_state mtl_c10_hdmi_594 = {
+	.clock = 594000,
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
+static const struct intel_c10mpllb_state mtl_c10_hdmi_25175 = {
+	.clock = 25175,
+	.pll[0]=0x34,
+	.pll[1]=0x00,
+	.pll[2]=0xB0,
+	.pll[3]=0x00,
+	.pll[4]=0x00,
+	.pll[5]=0x00,
+	.pll[6]=0x00,
+	.pll[7]=0x00,
+	.pll[8]=0x20,
+	.pll[9]=0xFF,
+	.pll[10]=0xFF,
+	.pll[11]=0x55,
+	.pll[12]=0xE5,
+	.pll[13]=0x55,
+	.pll[14]=0x55,
+	.pll[15]=0x0D,
+	.pll[16]=0x09,
+	.pll[17]=0x8F,
+	.pll[18]=0x84,
+	.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_27027 = {
+	.clock = 27027,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_28320 = {
+	.clock = 28320,
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_30240 = {
+	.clock = 30240,
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_31500 = {
+	.clock = 31500,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_36000 = {
+	.clock = 36000,
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_40000 = {
+	.clock = 40000,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_49500 = {
+	.clock = 49500,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_50000 = {
+	.clock = 50000,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_57284 = {
+	.clock = 57284,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_58000 = {
+	.clock = 58000,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_65000 = {
+	.clock = 65000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_71000 = {
+	.clock = 71000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x72, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_74176 = {
+	.clock = 74176,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x44,.pll[12]=0x44,.pll[13]=0x44,.pll[14]=0x44,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_75000 = {
+	.clock = 75000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7C, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_78750 = {
+	.clock = 78750,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x84, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x08,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_85500 = {
+	.clock = 85500,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x92, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x10,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_88750 = {
+	.clock = 88750,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0x98, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x72,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_106500 = {
+	.clock = 106500,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xBC, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xF0,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_108000 = {
+	.clock = 108000,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x80,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_115500 = {
+	.clock = 115500,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x50,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_119000 = {
+	.clock = 119000,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD6, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_135000 = {
+	.clock = 135000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x6C, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x50,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0A,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_138500 = {
+	.clock = 138500,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x70, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x22,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_147160 = {
+	.clock = 147160,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x78, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xA5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_148352 = {
+	.clock = 148352,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x44,.pll[12]=0x44,.pll[13]=0x44,.pll[14]=0x44,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_154000 = {
+	.clock = 154000,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x80, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x35,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_162000 = {
+	.clock = 162000,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x88, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x60,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_167000 = {
+	.clock = 167000,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x8C, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0xFA,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_197802 = {
+	.clock = 197802,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x99,.pll[12]=0x05,.pll[13]=0x98,.pll[14]=0x99,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_198000 = {
+	.clock = 198000,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_209800 = {
+	.clock = 209800,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xBA, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x45,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_241500 = {
+	.clock = 241500,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xDA, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xC8,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_262750 = {
+	.clock = 262750,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x68, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x6C,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x09,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_268500 = {
+	.clock = 268500,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x6A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xEC,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x09,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_296703 = {
+	.clock = 296703,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x33,.pll[12]=0x44,.pll[13]=0x33,.pll[14]=0x33,
+	.pll[15]=0x09,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_297000 = {
+	.clock = 297000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x58,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x09,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_319750 = {
+	.clock = 319750,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x44,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x09,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_497750 = {
+	.clock = 497750,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xE2, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x9F,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x09,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_592000 = {
+	.clock = 592000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x15,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x08,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_593407 = {
+	.clock = 593407,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x3B,.pll[12]=0x44,.pll[13]=0xBA,.pll[14]=0xBB,
+	.pll[15]=0x08,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state * const mtl_c10_hdmi_tables[] = {
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
+	const struct intel_c10mpllb_state * const *tables = mtl_c10_hdmi_tables;
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
 static const struct intel_c10mpllb_state * const *
 intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder)
@@ -494,9 +1026,10 @@ intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
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
@@ -504,9 +1037,20 @@ intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 				     struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_c10mpllb_state * const *tables;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	int i;
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c10_phy_check_hdmi_link_rate(crtc_state->port_clock)
+		    != MODE_OK) {
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				      crtc_state->port_clock, phy_name(phy));
+			return -EINVAL;
+		}
+	}
+
 	tables = intel_c10_mpllb_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
@@ -558,9 +1102,10 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 	cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
 	tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
 
-	if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
-		drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
-			 tx0, cmn, phy_name(phy));
+	if (tx0 != C10_TX0_VAL || (cmn != C10_CMN0_DP_VAL &&
+				   cmn != C10_CMN0_HDMI_VAL))
+		drm_dbg_kms(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
+			    tx0, cmn, phy_name(phy));
 }
 
 static void intel_c10_pll_program(struct drm_i915_private *i915,
@@ -574,11 +1119,11 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 					 INTEL_CX0_LANE0;
 	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
 					   INTEL_CX0_LANE1;
-
 	int i;
 	struct intel_dp *intel_dp;
 	bool use_ssc = false;
-	u8 cmn0 = 0;
+	bool use_hdmi = false;
+	u8 cmn0;
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_dp = enc_to_intel_dp(encoder);
@@ -589,6 +1134,9 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 			use_ssc = false;
 
 		cmn0 = C10_CMN0_DP_VAL;
+	} else {
+		use_hdmi = true;
+		cmn0 = C10_CMN0_HDMI_VAL;
 	}
 
 	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
@@ -604,7 +1152,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
 		/* If not using ssc pll[4] through pll[8] must be 0*/
 		intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_PLL(i),
-				(!use_ssc && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
+				(!(use_ssc || use_hdmi) && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
 				(i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
 
 	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);
@@ -652,7 +1200,8 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state)
 {
 	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
-	unsigned int multiplier, tx_clk_div, refclk = 38400;
+	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
+	int tmpclk = 0;
 
 	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
 		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
@@ -664,10 +1213,14 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
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
@@ -1080,6 +1633,7 @@ void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 	enum phy phy;
 	int i;
 	bool use_ssc = false;
+	bool use_hdmi = false;
 
 	if (DISPLAY_VER(i915) < 14)
 		return;
@@ -1097,6 +1651,8 @@ void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 
 		if (!intel_panel_use_ssc(i915))
 			use_ssc = false;
+	} else {
+		use_hdmi = true;
 	}
 
 	if (!intel_is_c10phy(i915, phy))
@@ -1107,7 +1663,7 @@ void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
 		u8 expected;
 
-		if (!use_ssc && i > 3 && i < 9)
+		if (!(use_ssc || use_hdmi) && i > 3 && i < 9)
 			expected = 0;
 		else
 			expected = mpllb_sw_state->pll[i];
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 8cf340509097..f8023f240727 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -39,5 +39,6 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
+int intel_c10_phy_check_hdmi_link_rate(int clock);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index ef629f8b14cf..f6002b70ddbe 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -138,9 +138,11 @@
 #define  C10_PLL0_FRACEN		REG_BIT8(4)
 #define  C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
 #define  C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
+#define  C10_PLL15_HDMIDIV_MASK		REG_GENMASK8(5, 3)
 
 #define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
 #define  C10_CMN0_DP_VAL		0x21
+#define  C10_CMN0_HDMI_VAL		0x1
 #define  C10_CMN3_TXVBOOST_MASK		REG_GENMASK8(7, 5)
 #define  C10_CMN3_TXVBOOST(val)		REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index c7e9e1fbed37..baa9ef7568af 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -46,6 +46,7 @@
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -1865,7 +1866,9 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
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

