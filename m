Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D706461EC3F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D477910E1F8;
	Mon,  7 Nov 2022 07:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A34710E1F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 07:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667806829; x=1699342829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WE4WSF05w55UMvM8/m1ZZMgUd8i5yiN4k0Dy8FS09Yc=;
 b=CKNa4pSqUPdCJhnFRqGX9rB1moIbPMP0xU57FII5UV+Y+DDlungXBda7
 EQBd89LV49jMsaKf6nLUluuNNxj0y8lHke3sa3Ru4iwKc7C/+Z7kp6B6B
 RrSKbbqr3xuX2rQNmXeLe9UVV+6McgHrfwQkI2+tZXB+67y9KZt5+GQGg
 oTy8N/7Y1ZIsi3qdwXCPLWZ0OFU9yIvQGvae/d/sbPRYngAtAv+B3OVDF
 ZW4qR7GczDVpY0yEZrpUuc8ersil+rpRd3JG8buexBwyviPVA5rAsj5ja
 9ECIV0gpdOIb9cL6q05ybUkkZ2e1qtHJ71m/UtCraKe15VkbW9UDY1j/h g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311482323"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311482323"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:40:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="965051635"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="965051635"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga005.fm.intel.com with ESMTP; 06 Nov 2022 23:40:27 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 13:09:18 +0530
Message-Id: <20221107073923.1353049-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107073923.1353049-1-suraj.kandpal@intel.com>
References: <20221107073923.1353049-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/8] drm/i915: Adding the new registers for
 DSC
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

Adding new DSC register which are introducted MTL onwards

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 765a10e0de88..89cb029d15ab 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7842,6 +7842,8 @@ enum skl_power_gate {
 #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
+#define  DSC_NATIVE_422_ENABLE		(1 << 23)
+#define  DSC_NATIVE_420_ENABLE		(1 << 22)
 #define  DSC_ALT_ICH_SEL		(1 << 20)
 #define  DSC_VBR_ENABLE			(1 << 19)
 #define  DSC_422_ENABLE			(1 << 18)
@@ -8086,6 +8088,32 @@ enum skl_power_gate {
 #define  DSC_SLICE_PER_LINE(slice_per_line)		((slice_per_line) << 16)
 #define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		((slice_chunk_size) << 0)
 
+/* MTL Display Stream Compression registers */
+#define _MTL_DSC0_PICTURE_PARAMETER_SET_17_PB	0x782B4
+#define _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB	0x783B4
+#define _MTL_DSC0_PICTURE_PARAMETER_SET_17_PC	0x784B4
+#define _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC	0x785B4
+#define MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
+							   _MTL_DSC0_PICTURE_PARAMETER_SET_17_PB, \
+							   _MTL_DSC0_PICTURE_PARAMETER_SET_17_PC)
+#define MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
+							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB, \
+							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC)
+#define DSC_SL_BPG_OFFSET(offset)		((offset) << 27)
+
+#define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB	0x782B8
+#define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB	0x783B8
+#define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PC	0x784B8
+#define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC	0x785B8
+#define MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
+							   _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB, \
+							   _MTL_DSC0_PICTURE_PARAMETER_SET_18_PC)
+#define MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
+							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB, \
+							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC)
+#define DSC_NSL_BPG_OFFSET(offset)		((offset) << 16)
+#define DSC_SL_OFFSET_ADJ(offset)		((offset) << 0)
+
 /* Icelake Rate Control Buffer Threshold Registers */
 #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
 #define DSCA_RC_BUF_THRESH_0_UDW		_MMIO(0x6B230 + 4)
-- 
2.25.1

