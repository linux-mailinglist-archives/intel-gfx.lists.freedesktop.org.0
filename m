Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C45C76B660
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEC610E40B;
	Tue,  1 Aug 2023 13:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF9C10E40B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898059; x=1722434059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vxEW0HKh4Rc9ulgyppHNk1uCkntm2f1GPaoFpxcKTV0=;
 b=AxWj4xu/R3ZXOchbzVYUryFlxPGmr0aykNBl2td1irYuShzHroRujG3q
 yyLy9hqDWBDn0gwbbB7o4V3JQk6miEIywiMTODL7G7BRnxKcxQ/ZFZG8W
 7B7UxCX1B3OgURAc9ccit+HnwjQM2cL4rBpO/0qFD638uPu4NyaCt5JHu
 SrgcGoBaFkESELnzTbhNly9XBTNvAY7I1c4xtgDk5cdEm79IN99/wP5NS
 8KiHhkownTfrQihJ1/M5a1tTNo98Xw99RFfeAignT2eiE/9ocCKd8lrv+
 7kERT5fff6U+c8+NuJmZpYZnSnz08foRzmJlpeyZaiPsHLLdLUD0F1yY4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435629399"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435629399"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:54:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="818803992"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="818803992"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 06:54:16 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 19:23:42 +0530
Message-Id: <20230801135344.3797924-13-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/14] drm/i915/rplu:
 s/ADLP_RPLU/RAPTORLAKE_U in RPLU defines
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace ADLP with
ALDERLAKE_P

v2:
- Replace IS_ADLP_RPLU with IS_RAPTORLAKE_U (Tvrtko/Lucas)
- Change the subject

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 57113fb01fb2..2fb030b1ff1d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3570,7 +3570,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
 			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		} else if (IS_ADLP_RPLU(dev_priv)) {
+		} else if (IS_RAPTORLAKE_U(dev_priv)) {
 			dev_priv->display.cdclk.table = rplu_cdclk_table;
 			dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
 		} else {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4e07ba69642d..d3a621e5a36b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -590,7 +590,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_RAPTORLAKE_P(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
-#define IS_ADLP_RPLU(i915) \
+#define IS_RAPTORLAKE_U(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
 #define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
-- 
2.34.1

