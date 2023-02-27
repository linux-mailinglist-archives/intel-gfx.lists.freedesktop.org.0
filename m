Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 903E06A47E5
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 18:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BDCB10E184;
	Mon, 27 Feb 2023 17:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632D210E184
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 17:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677518953; x=1709054953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w2F4bgH1L8vg8guYnoEF4SYuYFzpta42uu1jFBuJbhg=;
 b=fekifw1rnrkJLixkUm8016ujVc1dP2O4wIIOYyL/MYNc3klpks5omTlZ
 x8o7LOt7/ASj7Ioc8O67TPvInrpdF7JHiGEX5KVUr2J6g1TCJJZ5f4DJ3
 VufU6jvt4yYfD9R0o/GfHfmWNAvTk2P7tRJbYYsy5ml5C1qB3Yj5abkF1
 ZljbHFtqlzuakvKMNq1HEGX1tRnmH5xYTmBYPSRquB0NK5A9sUjETAY7G
 8l5Sh9GWPDx6Q5hyDT6+Ep9Hj1uRSxzTaYGWwPNhdbtKKJfQSMDFWOk98
 qUIhKM68OBlyYSSwRRkDp6Lb2bdu9588QifvIhWZlMktHEJvsqh34E8Gv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="322163606"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="322163606"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:25:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="737805412"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="737805412"
Received: from jkaisrli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:25:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 19:25:19 +0200
Message-Id: <20230227172521.851935-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230227172521.851935-1-jani.nikula@intel.com>
References: <20230227172521.851935-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/dmc: use has_dmc_id_fw()
 instead of poking dmc->dmc_info directly
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This will help in follow-up changes.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index ab4fdedd4c5f..599fb92a5161 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1098,12 +1098,12 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	seq_printf(m, "Pipe A fw needed: %s\n",
 		   str_yes_no(GRAPHICS_VER(i915) >= 12));
 	seq_printf(m, "Pipe A fw loaded: %s\n",
-		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
+		   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEA)));
 	seq_printf(m, "Pipe B fw needed: %s\n",
 		   str_yes_no(IS_ALDERLAKE_P(i915) ||
 			      DISPLAY_VER(i915) >= 14));
 	seq_printf(m, "Pipe B fw loaded: %s\n",
-		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
+		   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEB)));
 
 	if (!intel_dmc_has_payload(i915))
 		goto out;
-- 
2.39.1

