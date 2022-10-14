Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EE95FF151
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 17:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D33D10EB1E;
	Fri, 14 Oct 2022 15:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7419C10EB1D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 15:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665761258; x=1697297258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VMTRJ0SbHHYA0w4viQWMoOk+FRizihCjV8FDwhHUYwM=;
 b=lCi11PcEOAjqjjNttYyqloWQfpsYi84FUmL56PIkDeiVj1OPwyzL6LOb
 i5xiaTcC4eCSsecrpYBdQyKgoOCE7U/MG0W0CVe28I0kX/AnVNOarokb6
 pJnfluBf8Sqb14IRdF7i4IfCRB18Di5CGwZoWAtVTPUgfVJwWQE5KUwng
 orfGDrk9SBYePJdmp4oJzAUUhPBuzLh6EkgOUHWs4+VRppjasdxyN6RL2
 fJ+940gYvF4fakpuS2aSc2DBH5eJXmyRMxWnOdV+ldABfqYEctlROqQ5Y
 +yfbB2CfACyGOYtGkxp4f6cOuiPIwwqzGElHJbb8ofQqfxec07cQZm6wS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="285791248"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="285791248"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 08:27:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696340306"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="696340306"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 14 Oct 2022 08:27:36 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 20:56:20 +0530
Message-Id: <20221014152622.233398-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221014152622.233398-1-suraj.kandpal@intel.com>
References: <20221014152622.233398-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915: Adding the new registers for
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

From: "Suraj Kandpal" <suraj.kandpal@intel.com>

Adding new DSC register which are introducted MTL onwards

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3edfbe92c6dd..7670e635f260 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8011,6 +8011,8 @@ enum skl_power_gate {
 #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
+#define  DSC_NATIVE_422_ENABLE		(1 << 23)
+#define  DSC_NATIVE_420_ENABLE		(1 << 22)
 #define  DSC_ALT_ICH_SEL		(1 << 20)
 #define  DSC_VBR_ENABLE			(1 << 19)
 #define  DSC_422_ENABLE			(1 << 18)
@@ -8255,6 +8257,32 @@ enum skl_power_gate {
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

