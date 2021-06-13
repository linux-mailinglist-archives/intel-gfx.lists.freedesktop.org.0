Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA443A597F
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Jun 2021 18:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC3789F73;
	Sun, 13 Jun 2021 16:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852F389CA2
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Jun 2021 16:14:04 +0000 (UTC)
IronPort-SDR: qM+tL1iT/UmHT4pBoGxgRQWviHMJRjN/E4dIjTikgcKIA7kT12Rp7d3gALmlzUtJCK6rdsSINO
 Gb9Wh2dyhGng==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="227171307"
X-IronPort-AV: E=Sophos;i="5.83,271,1616482800"; d="scan'208";a="227171307"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2021 09:14:03 -0700
IronPort-SDR: 6pWyqQXaw64oDH+qu94Nxs2+bRxDvlpHpkQEf6xK6OASHplOpAr0NowoIpn6LCs+/23/egpLHT
 iW5ZcjC14eug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,271,1616482800"; d="scan'208";a="620826842"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005.jf.intel.com with ESMTP; 13 Jun 2021 09:14:03 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 13 Jun 2021 09:14:02 -0700
Message-Id: <20210613161403.32549-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210613161403.32549-1-anusha.srivatsa@intel.com>
References: <20210613161403.32549-1-anusha.srivatsa@intel.com>
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
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
