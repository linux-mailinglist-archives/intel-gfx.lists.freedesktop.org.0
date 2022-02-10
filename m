Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 951504B1360
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 17:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D41F10E165;
	Thu, 10 Feb 2022 16:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E89010E165
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 16:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644511621; x=1676047621;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qKfbvQIvFD63hsTcsylOO5cJnucWaMKScjjcime/yGA=;
 b=b4tzdx2vPpKD9TGIV/7RrETEkGvgyKiFgpU29kxJk2kowkEe5ZtrBfFQ
 C66YyXTlt+77pDX1we/wZyxq0eLN/9kn+6l0S/rbHTN4ZXzOk4YpOyrNK
 shRaO+tj/CLCL2upj4mnrD41Ev7F1AtMxQ6npSyRlykTC+rySKZ3gxAKW
 MrnJl3QAwcLuyf8yz1inDuCd37eFpZbqT1L3Pb9LydEq6/gOX2ZuazqzB
 un78M6kbjoJHXTYhGb51G5uzGVlSkWcfVg1py4cB8p7TxSbeMgPEi6Pih
 hfDqCE4ONs79OJy3NRKII0imgxEYk6ppoSZxjKLAUGjk1peOEan0i0CLR w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="229502666"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="229502666"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 08:47:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="526564344"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 08:47:00 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 08:44:30 -0800
Message-Id: <20220210164430.299456-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
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

DMC_DEBUGU3 changes from DG1+

Bspec: 49788
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 ++++--
 drivers/gpu/drm/i915/i915_reg.h                      | 1 +
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f4de004d470f..87fc4b9b7b93 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -474,8 +474,10 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 		 * reg for DC3CO debugging and validation,
 		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
 		 */
-		seq_printf(m, "DC3CO count: %d\n",
-			   intel_de_read(dev_priv, DMC_DEBUG3));
+		if (IS_DGFX(dev_priv))
+			seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, DG1_DMC_DEBUG3));
+		else
+			seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, DMC_DEBUG3));
 	} else {
 		dc5_reg = IS_BROXTON(dev_priv) ? BXT_DMC_DC3_DC5_COUNT :
 						 SKL_DMC_DC3_DC5_COUNT;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 87c92314ee26..802962e3977c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5633,6 +5633,7 @@
 #define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
 
 #define DMC_DEBUG3		_MMIO(0x101090)
+#define DG1_DMC_DEBUG3		_MMIO(0x13415C)
 
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
-- 
2.25.1

