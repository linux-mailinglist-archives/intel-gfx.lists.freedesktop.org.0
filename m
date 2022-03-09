Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 660914D2831
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 06:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7C1B10E934;
	Wed,  9 Mar 2022 05:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8BE210E93D;
 Wed,  9 Mar 2022 05:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646803023; x=1678339023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yiYF9M1va2kBWtqNSNq9qroxCRjj9UohA++Zm3WdZN0=;
 b=Kq3WeohorvZV2R2jAwTqzyEETFEbmNYgiyq4BwGVj/aFkL6odby9zkmG
 vweoI6WSYHbLbHjRIqU53Y4kDeFWKAPxmd+V7WJDeqHTgzrUDXNAOPD+W
 narLhwlOeoW/gCkypa/IFRRop3KlpNO3hPxq82raCjd43f70A3vOPgodZ
 k9aj6m3iv7pNrAafvngKackrbC3ihrvBdbLRvKaQ0QTQF9BIPPRZ6scg4
 mYPj0PkYYH7WG5Fq6HlnhOeWKGssMp8hmt9Gv3Znozp/X/yqdKxuujb/m
 M1J3NGH/J3C4PFAI3p/xrdP2mioyzVLWVj+EnaGssdsDtL+JEu1LXmhu8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="255081149"
X-IronPort-AV: E=Sophos;i="5.90,166,1643702400"; d="scan'208";a="255081149"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 21:17:03 -0800
X-IronPort-AV: E=Sophos;i="5.90,166,1643702400"; d="scan'208";a="711807566"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 21:17:00 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Wed,  9 Mar 2022 10:47:08 +0530
Message-Id: <20220309051708.22644-9-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220309051708.22644-1-ramalingam.c@intel.com>
References: <20220309051708.22644-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/xehpsdv/dg1/tgl: Fix issue with
 LRI relative addressing
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
Cc: Kumar@freedesktop.org, lucas.demarchi@intel.com,
	Valsan@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

When bit 19 of MI_LOAD_REGISTER_IMM instruction opcode is set on devices
of tgl+, HW does not care about certain register address offsets, but
instead check the following for valid address ranges on specific engines:
	RCS && CCS: BITS(0 - 10)
	BCS: BITS(0 - 11)
	VECS && VCS: BITS(0 - 13)
Also, tgl+ now support relative addressing for BCS engine - So, this
patch fixes issue with live_gt_lrc selftest that is failing where there is
mismatch between LRC register layout generated during init and HW
default register offsets.

Bspec: 45728

Cc: Kumar Valsan, Prathap <prathap.kumar.valsan@intel.com>
Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 36 +++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 63fd508fea49..5b2a205ab372 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -131,6 +131,27 @@ static int context_flush(struct intel_context *ce, long timeout)
 	return err;
 }
 
+static int get_lri_mask(struct intel_engine_cs *engine, u32 lri)
+{
+	if ((lri & MI_LRI_LRM_CS_MMIO) == 0)
+		return ~0u;
+
+	if (GRAPHICS_VER(engine->i915) < 12)
+		return 0xfff;
+
+	switch (engine->class) {
+	default:
+	case RENDER_CLASS:
+	case COMPUTE_CLASS:
+		return 0x07ff;
+	case COPY_ENGINE_CLASS:
+		return 0x0fff;
+	case VIDEO_DECODE_CLASS:
+	case VIDEO_ENHANCEMENT_CLASS:
+		return 0x3fff;
+	}
+}
+
 static int live_lrc_layout(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -170,6 +191,7 @@ static int live_lrc_layout(void *arg)
 		dw = 0;
 		do {
 			u32 lri = READ_ONCE(hw[dw]);
+			u32 lri_mask;
 
 			if (lri == 0) {
 				dw++;
@@ -197,6 +219,18 @@ static int live_lrc_layout(void *arg)
 				break;
 			}
 
+			/*
+			 * When bit 19 of MI_LOAD_REGISTER_IMM instruction
+			 * opcode is set on Gen12+ devices, HW does not
+			 * care about certain register address offsets, and
+			 * instead check the following for valid address
+			 * ranges on specific engines:
+			 * RCS && CCS: BITS(0 - 10)
+			 * BCS: BITS(0 - 11)
+			 * VECS && VCS: BITS(0 - 13)
+			 */
+			lri_mask = get_lri_mask(engine, lri);
+
 			lri &= 0x7f;
 			lri++;
 			dw++;
@@ -204,7 +238,7 @@ static int live_lrc_layout(void *arg)
 			while (lri) {
 				u32 offset = READ_ONCE(hw[dw]);
 
-				if (offset != lrc[dw]) {
+				if ((offset ^ lrc[dw]) & lri_mask) {
 					pr_err("%s: Different registers found at dword %d, expected %x, found %x\n",
 					       engine->name, dw, offset, lrc[dw]);
 					err = -EINVAL;
-- 
2.20.1

