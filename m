Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5807997BA2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70FA310E84B;
	Thu, 10 Oct 2024 04:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLaeNuNs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68D4310E84B;
 Thu, 10 Oct 2024 04:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533322; x=1760069322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b34LO3VR/D/PSEKSRqeY3bK3mQyf2ahlP3F6BQajjWE=;
 b=LLaeNuNsiUmn6MZ8J3hB7+Pm0XWh/Q2I1RgfoQIH9Ocz16MvQSSM5FTt
 C3kXdbVi49lDU/xA4ONvEyA1lFSQODFz7GMPCVBNsmOsz4X2iKET3Gx/b
 l41tIPKsR1hGoJa85pcXEff/N7L/ZqWyJuUuUr0C7dvmjqzel+En2KanS
 2YLXSr7qCRlCMY92m/DEBxfNxVqHrMDiTakj+ahTo7Y9JNtG7VKFao/WI
 +kMhnHHf1KVGCLFsn040q4B42+2od46FbGEbjl/J2ZRIi2ttE5ab9NOwx
 0GJFHBMG+hJoqBMDT+kAp6KTn8sDD0Y0lrHmkaY+e77PSV/6aVxbwF0p/ g==;
X-CSE-ConnectionGUID: o1A0cja/S1eIfEOxi3ZStQ==
X-CSE-MsgGUID: o8fRdzRLTS+krz+R9t3sbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27986952"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27986952"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:42 -0700
X-CSE-ConnectionGUID: iWgTpzK5RcGw/qvMEe4hVg==
X-CSE-MsgGUID: 7BcPhhHQQle4Fa1d9q9VYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="99782642"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >= 14
Date: Thu, 10 Oct 2024 09:40:42 +0530
Message-ID: <20241010041045.2014069-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
References: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

LINK_N register has bits 31:24 for extended link N value used for
HDMI2.1 and for an alternate mode of operation of DP TG DDA
(Bspec:50488).

Add support for these extra bits.

v2: Drop extra link_n_ext member. (Jani)
v3: Avoid link_n_ext in set_m_n helper. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h              |  2 ++
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e1f6255e918b..2a7fa0013b44 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2721,14 +2721,21 @@ void intel_set_m_n(struct drm_i915_private *i915,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
+	u32 link_n = m_n->link_n;
+
 	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
 	intel_de_write(i915, data_n_reg, m_n->data_n);
 	intel_de_write(i915, link_m_reg, m_n->link_m);
+
+	if (DISPLAY_VER(i915) >= 14)
+		link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
+	else
+		link_n &= DATA_LINK_M_N_MASK;
 	/*
 	 * On BDW+ writing LINK_N arms the double buffered update
 	 * of all the M/N registers, so it must be written last.
 	 */
-	intel_de_write(i915, link_n_reg, m_n->link_n);
+	intel_de_write(i915, link_n_reg, link_n);
 }
 
 bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
@@ -3438,7 +3445,13 @@ void intel_get_m_n(struct drm_i915_private *i915,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
 	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
-	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
+	m_n->link_n = intel_de_read(i915, link_n_reg);
+
+	if (DISPLAY_VER(i915) >= 14)
+		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
+	else
+		m_n->link_n &= DATA_LINK_M_N_MASK;
+
 	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 818142f5a10c..c605642ffc3e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2167,6 +2167,8 @@
 
 #define _PIPEA_LINK_N1		0x60044
 #define _PIPEB_LINK_N1		0x61044
+#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
+#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
 #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
 
 #define _PIPEA_LINK_M2		0x60048
-- 
2.45.2

