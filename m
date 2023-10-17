Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C157CBCDE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 09:55:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E4110E158;
	Tue, 17 Oct 2023 07:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148BD10E158
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 07:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697529298; x=1729065298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=20wBU5sGO8SZdKL2h9lnfZeSpKWd+Fv7aOm5md+dL48=;
 b=ch8+MWk3D+T/GZRc0bb+2FJyvgAvIpL36nRQsmWtN6RPWRkWwlduAva9
 9ya+X4Sbnp2H0zoz0hxNqN2v17Fp4k3hfPG22x95cWirbMUdbGmtO3FIC
 5pr9O7RZmTHkkIW5RDdwW4gW/NEIyOZzDHTjxxgllxSCpSyBE3bhf+4ya
 JM9FRaGyIq44gXxrfHW/gt4rspc4H/vf0zTdhj8/a9U86lt4Z7C13H+tC
 NYCXmh8yinZd+qg1iLXq/YA+2flcAmRx9lT09GwbW3H9AxBG6C6NE5IEJ
 Vy1yu4QJs+hpaAxwvr9EaIzor3DVNXRxJVRrU54ZUt6CDIb3zVDROTU3I w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="471944703"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="471944703"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:54:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="899821230"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="899821230"
Received: from ksuvorov-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.208.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:52:48 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 10:54:34 +0300
Message-Id: <20231017075435.95320-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017075435.95320-1-vinod.govindapillai@intel.com>
References: <20231017075435.95320-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/2] drm/i915/display: display device info
 debugfs entry
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

Have a common debugfs entry to get the display device info for
both xe and i915 drivers.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fbe75d47a165..ed83339f50f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -641,6 +641,16 @@ static int i915_display_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static int i915_display_device_info(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct drm_printer p = drm_seq_file_printer(m);
+
+	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INFO(i915), &p);
+
+	return 0;
+}
+
 static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1059,6 +1069,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_display_info", i915_display_info, 0},
+	{"i915_display_device_info", i915_display_device_info, 0},
 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
 	{"i915_ddb_info", i915_ddb_info, 0},
-- 
2.34.1

