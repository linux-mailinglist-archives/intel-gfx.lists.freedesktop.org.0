Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B58F2B042A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 12:45:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A22B26E1F7;
	Thu, 12 Nov 2020 11:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E594B6E1F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 11:44:57 +0000 (UTC)
IronPort-SDR: kQhk3EAsv0bfGicYncq3+/08rPrtItat+eY42hBlcOAoxd1SllR6N/W1X1IPIc6FmJKos4VVPf
 CWq/BtlaCYBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="188289929"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="188289929"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 03:44:57 -0800
IronPort-SDR: 7n2UeORSo1BUyu5wWl3K4Sm9/d/2UkW6DCmC7vQ5dvzXwFkQUZcoXUFr6IOW6rR4LFJ+n1Uooh
 znAOFgOw52Hg==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="474250500"
Received: from mghidovi-mobl1.ti.intel.com (HELO localhost) ([10.251.81.155])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 03:44:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 13:44:34 +0200
Message-Id: <3148dbcb1b690dcf57b1cd2071b6a26d5c30eccf.1605181350.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1605181350.git.jani.nikula@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: remove last users of
 I915_READ_FW()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the preferred intel_uncore_read_fw() instead.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 77e76b665098..7cbca268cb61 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1238,10 +1238,10 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 		u32 rpdown, rpdownei;
 
 		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
-		rpup = I915_READ_FW(GEN6_RP_CUR_UP) & GEN6_RP_EI_MASK;
-		rpupei = I915_READ_FW(GEN6_RP_CUR_UP_EI) & GEN6_RP_EI_MASK;
-		rpdown = I915_READ_FW(GEN6_RP_CUR_DOWN) & GEN6_RP_EI_MASK;
-		rpdownei = I915_READ_FW(GEN6_RP_CUR_DOWN_EI) & GEN6_RP_EI_MASK;
+		rpup = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_UP) & GEN6_RP_EI_MASK;
+		rpupei = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_UP_EI) & GEN6_RP_EI_MASK;
+		rpdown = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_DOWN) & GEN6_RP_EI_MASK;
+		rpdownei = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_RP_EI_MASK;
 		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 
 		seq_printf(m, "\nRPS Autotuning (current \"%s\" window):\n",
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
