Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1993368D0C8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 08:45:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD91410E45E;
	Tue,  7 Feb 2023 07:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A379C10E446
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 07:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675755933; x=1707291933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aXUz/m4zbl4WKC7y3ud/bU4Ydeh6EE8T+vUficha83k=;
 b=PHFeDKT4lR5VqsmiUBcZdqgTVmgj4oKLSf6SRLHV3m8B5HTQNBWc7waj
 TG8YlGBnU5/WOlj97CwlYa++HfSvg+bnxMoShbqsLrXz1Ncb8UrfKUaoO
 kSWgxae9ALzoGljRfJ9mMiIZy2NLpBHPUyCwNfKWTe3GNGqlJw1UomYo8
 qWPy2ILIb93Jc/TFgBboVoRe/G/JQ2TS2dTqppXcGPNA8tYGG2HLdSliT
 5QhzLzeHbTa5Od/NeuuF3YyrSOUxllkQUoSj0BNkj2CT5oHdyPl81mB6f
 7ngw3shgfQaC/c0ydxme8gAgvHINAx2hfP1B5i7896Jt6TzgBn3guVE4n w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="317449136"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="317449136"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 23:45:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="840674629"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840674629"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 06 Feb 2023 23:45:23 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 13:14:12 +0530
Message-Id: <20230207074416.3209722-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230207074416.3209722-1-suraj.kandpal@intel.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 3/7] drm/i915: Adding the new registers for
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
Reviewed-by: Vandita Kulkarni <Vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 596efc940ee7..9e25e21d37e4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7715,6 +7715,8 @@ enum skl_power_gate {
 #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
+#define  DSC_NATIVE_422_ENABLE		BIT(23)
+#define  DSC_NATIVE_420_ENABLE		BIT(22)
 #define  DSC_ALT_ICH_SEL		(1 << 20)
 #define  DSC_VBR_ENABLE			(1 << 19)
 #define  DSC_422_ENABLE			(1 << 18)
@@ -7959,6 +7961,32 @@ enum skl_power_gate {
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

