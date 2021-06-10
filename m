Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6F93A33C3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 21:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8065E6EDD4;
	Thu, 10 Jun 2021 19:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E25D6EDCF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 19:13:19 +0000 (UTC)
IronPort-SDR: jG7ZwbkvMO2P9NLEs4u3NVH0c6xkIBFxCEJNL1EeUcQsl8abwhkAIw+eFDj9PVRKiWj/zp2vzA
 jGe4MfZHkLAQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185751453"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="185751453"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 12:13:19 -0700
IronPort-SDR: 2Bi8uK262xl58QkqvywRwCzBJvstDGSdCiucuBJoLQjsyN0K5yKcS9gB5yzbJGtUeMg8wW5RoC
 IZ5JFfYmQoxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="486301503"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2021 12:13:19 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 12:13:08 -0700
Message-Id: <20210610191309.25862-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210610191309.25862-1-anusha.srivatsa@intel.com>
References: <20210610191309.25862-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915/adl_p: Pipe B DMC Support
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ADLP requires us to load both Pipe A and Pipe B.
Plug Pipe B loading support.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
 drivers/gpu/drm/i915/display/intel_dmc.h             | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2a1c39a0e56e..db38891a9ef0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -546,6 +546,8 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 	seq_printf(m, "path: %s\n", dmc->fw_path);
 	seq_printf(m, "Pipe A fw support: %s\n", yesno(INTEL_GEN(dev_priv) >= 12));
 	seq_printf(m, "Pipe A fw loaded: %s\n", yesno(dmc->dmc_info[DMC_FW_PIPEA].payload));
+	seq_printf(m, "Pipe B fw support: %s\n", yesno(IS_ALDERLAKE_P(dev_priv)));
+	seq_printf(m, "Pipe B fw loaded: %s\n", yesno(dmc->dmc_info[DMC_FW_PIPEB].payload));
 
 	if (!intel_dmc_has_payload(dev_priv))
 		goto out;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 007a284b0ef0..c3c00ff03869 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -19,6 +19,7 @@ struct drm_i915_private;
 enum {
 	DMC_FW_MAIN = 0,
 	DMC_FW_PIPEA,
+	DMC_FW_PIPEB,
 	DMC_FW_MAX
 };
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
