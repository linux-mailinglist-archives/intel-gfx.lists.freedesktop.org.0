Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E52297CD92C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 12:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8D710E3D0;
	Wed, 18 Oct 2023 10:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009CC10E3B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 10:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697624861; x=1729160861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=42oPbByZEK6MGlws0E7L3zzGCN6jn/9898JNIPGIOhA=;
 b=hyhz+9uff0rvpz7q6eGY0gmREMrIv1Ek6W4GfALxo5BVmm29g+zN3UI/
 X6CN9qratuyV/bp2aKBuhUSFB0LPLhrDIkmhTiEPVo2WrNKRIkoAi429L
 K4w3uyGtqLCHoisUEjTea84iSdbvVXP3t/q3vD1qLsZ2yDe1Wx0ungOXS
 ltaLezIKDOXQ7Whx3M6hfSKRYhxwJngfOz1i0o1jNmn1p92lvslldEnPZ
 HUXbpdHdq6a+toQX+X59UJF2/w7Bt4DQrVlJcXdn6VCb9WsW0DXsrnlx+
 o7Acf++NK2TWdPikI2EsllYStL6GYSBWmnBfDzzr8RwRYj0mahdyUHUjF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="452453260"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="452453260"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 03:27:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="822393336"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="822393336"
Received: from feyang-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.44.154])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 03:27:38 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 13:27:22 +0300
Message-Id: <20231018102723.16915-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018102723.16915-1-vinod.govindapillai@intel.com>
References: <20231018102723.16915-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/display: debugfs entry to list
 display capabilities
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

Create a separate debugfs entry to list the display capabilities
IGT can rely on this debugfs entry for tests that depend on
display device and display runtime info for both xe and i915
drivers.

v2: rename the entry to i915_display_capabilities (Chaitanya)

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fbe75d47a165..b0248dfa8dea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -641,6 +641,17 @@ static int i915_display_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static int i915_display_capabilities(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct drm_printer p = drm_seq_file_printer(m);
+
+	intel_display_device_info_print(DISPLAY_INFO(i915),
+					DISPLAY_RUNTIME_INFO(i915), &p);
+
+	return 0;
+}
+
 static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1059,6 +1070,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_display_info", i915_display_info, 0},
+	{"i915_display_capabilities", i915_display_capabilities, 0},
 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
 	{"i915_ddb_info", i915_ddb_info, 0},
-- 
2.34.1

