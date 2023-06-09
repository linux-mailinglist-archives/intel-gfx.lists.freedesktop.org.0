Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312C7729C79
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8003110E6B9;
	Fri,  9 Jun 2023 14:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2C710E6B9
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320061; x=1717856061;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=x8YJl9NQVjvT9WBvHcT5osEPIixLyhAdp7/YEwPX6wE=;
 b=AzpE1axaN4/7DXUJdS69Un8zV2kndjP91O716qFn27J1OE5mDah84Kx7
 yFZBfkUN31onJwd2efCqmTJqLHtm3mvXsA/sw4vWg2oB8V3ShzdO2hFNb
 fnttmP2CstPIpyfdQsfTgCx8EjEDKtlWcnOQR++PnizfnCWTYHy5sVuXU
 Pc1WyVG9y8WyKFA5IRnCa7k7EYE2ZHNSdkqVAKwuSQ4WXgkpMKUyqAhTj
 KUhGZCwyHndx7PTga1y4gyzvQ1SwgDv98fa2yxXKPORhqxLsi8e7l5uNB
 pz2si9FuEQJDr5lmRZbraTUKN3rlKylqSejo+e2gk0FTJCv3Y80q8pdEk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966378"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966378"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183066"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183066"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:13:55 +0300
Message-Id: <20230609141404.12729-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/13] drm/i915/psr: Reintroduce HSW PSR1
 registers
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add back hsw'w special SRD/PSR1 registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  4 ++++
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 60518d5d0c4e..7f748c7a71f3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -237,25 +237,37 @@ static u32 psr_irq_mask_get(struct intel_dp *intel_dp)
 static i915_reg_t psr_ctl_reg(struct drm_i915_private *dev_priv,
 			      enum transcoder cpu_transcoder)
 {
-	return EDP_PSR_CTL(cpu_transcoder);
+	if (DISPLAY_VER(dev_priv) >= 8)
+		return EDP_PSR_CTL(cpu_transcoder);
+	else
+		return HSW_SRD_CTL;
 }
 
 static i915_reg_t psr_debug_reg(struct drm_i915_private *dev_priv,
 				enum transcoder cpu_transcoder)
 {
-	return EDP_PSR_DEBUG(cpu_transcoder);
+	if (DISPLAY_VER(dev_priv) >= 8)
+		return EDP_PSR_DEBUG(cpu_transcoder);
+	else
+		return HSW_SRD_DEBUG;
 }
 
 static i915_reg_t psr_perf_cnt_reg(struct drm_i915_private *dev_priv,
 				   enum transcoder cpu_transcoder)
 {
-	return EDP_PSR_PERF_CNT(cpu_transcoder);
+	if (DISPLAY_VER(dev_priv) >= 8)
+		return EDP_PSR_PERF_CNT(cpu_transcoder);
+	else
+		return HSW_SRD_PERF_CNT;
 }
 
 static i915_reg_t psr_status_reg(struct drm_i915_private *dev_priv,
 				 enum transcoder cpu_transcoder)
 {
-	return EDP_PSR_STATUS(cpu_transcoder);
+	if (DISPLAY_VER(dev_priv) >= 8)
+		return EDP_PSR_STATUS(cpu_transcoder);
+	else
+		return HSW_SRD_STATUS;
 }
 
 static i915_reg_t psr_imr_reg(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 8750cb0d8d9d..998f638ee182 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -19,6 +19,7 @@
  * HSW PSR registers are relative to DDIA(_DDI_BUF_CTL_A + 0x800) with just one
  * instance of it
  */
+#define HSW_SRD_CTL				_MMIO(0x64800)
 #define _SRD_CTL_A				0x60800
 #define _SRD_CTL_EDP				0x6f800
 #define EDP_PSR_CTL(tran)			_MMIO_TRANS2(tran, _SRD_CTL_A)
@@ -83,6 +84,7 @@
 #define _SRD_AUX_DATA_EDP			0x6f814
 #define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
 
+#define HSW_SRD_STATUS				_MMIO(0x64840)
 #define _SRD_STATUS_A				0x60840
 #define _SRD_STATUS_EDP				0x6f840
 #define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(tran, _SRD_STATUS_A)
@@ -107,12 +109,14 @@
 #define   EDP_PSR_STATUS_SENDING_TP1		REG_BIT(4)
 #define   EDP_PSR_STATUS_IDLE_MASK		REG_GENMASK(3, 0)
 
+#define HSW_SRD_PERF_CNT		_MMIO(0x64844)
 #define _SRD_PERF_CNT_A			0x60844
 #define _SRD_PERF_CNT_EDP		0x6f844
 #define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(tran, _SRD_PERF_CNT_A)
 #define   EDP_PSR_PERF_CNT_MASK		REG_GENMASK(23, 0)
 
 /* PSR_MASK on SKL+ */
+#define HSW_SRD_DEBUG				_MMIO(0x64860)
 #define _SRD_DEBUG_A				0x60860
 #define _SRD_DEBUG_EDP				0x6f860
 #define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(tran, _SRD_DEBUG_A)
-- 
2.39.3

