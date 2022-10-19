Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64D6603A9E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 09:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F1010EA7F;
	Wed, 19 Oct 2022 07:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A9510F169
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 07:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666164437; x=1697700437;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8xBgPwqBf7v6hvYQTgHGuTpXW6N8/PWYXBDJNecqX3o=;
 b=IBjBO7KnAKRdGGf/xbr0gY0ME4l3DD37/wFiYnvmqTBIRM8AZQyARqwv
 Kwc/EQ4WRVzPCj9AcZyPGOug1eKQJM4k51bPD5IxuTFBQ6IH77WP4oERq
 dTvdI64qlk/jfDDw43MHMLm5Wo1Rp+pN+Lq8dlG2194KkSA/5kT2OPRTo
 m6XTObnONkVSmecJp/czR2Mu3t4gpOf7DzRv9SUjUwwny4HPZUlKm/7LN
 ktgZC7uajrX/UppJqca4ooe+slMeRezbVCp/jAlDfKe3XIjgBPZ5xnPJW
 CcKLCZxIXInuw3TTEdrp+WgFMPX0fyXPpqekt7UVAClsQw18I8O9/fYKA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="305065297"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="305065297"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 00:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="580204157"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="580204157"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 19 Oct 2022 00:27:16 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 00:29:30 -0700
Message-Id: <20221019072930.17755-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019072930.17755-1-alan.previn.teres.alexis@intel.com>
References: <20221019072930.17755-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/guc: Add compute reglist for
 guc err capture
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

We missed this at initial upstream because at that time
none of the GuC enabled platforms had a compute engine.
Add this now.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index abf6e5eb711e..c4bee3bc15a9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -169,6 +169,8 @@ static struct __guc_mmio_reg_descr_group default_lists[] = {
 	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
 	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
 	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
+	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_COMPUTE_CLASS),
+	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_COMPUTE_CLASS),
 	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
 	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
 	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
@@ -182,6 +184,8 @@ static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
 	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
 	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
 	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
+	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_COMPUTE_CLASS),
+	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_COMPUTE_CLASS),
 	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
 	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
 	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
-- 
2.34.1

