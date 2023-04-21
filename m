Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD3F6EA9DF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3CCD10EE09;
	Fri, 21 Apr 2023 12:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A5C110EE01
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078602; x=1713614602;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9SWTS3tc9LO/ylXiooaZGTu/bRAj3LT3iOkYQD9sMyk=;
 b=RbZwY9gPd5KzlkVJHmuvfVVUU9Yx1k60pVmGKpV3Aj30kd4QSpHL52HY
 aaT+hiAF1l/rt9e0CZlpyMSf/UMFKkpx5xsG2qcQcqUrJIx32pPxvq8lK
 FPMa1fjLAUsCwqeOcTi5nt6FukGEB8WyU8Qmc7lbH7ME5SvhttViWoM44
 ykalJFavKXsqqE49qGgNYEZcTe+JYnHpnbgRYV4vPpFZeOdexvUksRTzr
 eW3JqtjgdLeeM9Pagnkye9zDqCxYC4eELkn/OvrUiU8BaKP/Tc/iEkkdc
 JyZnZYKW3to4FWhha1Al5W/HSQKK9M6pYpMqAT28gAWdF93pzoiofrE7J w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900080"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900080"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725428"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725428"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:02:58 +0300
Message-Id: <20230421120307.24793-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/psr: Reintroduce HSW PSR1
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
2.39.2

