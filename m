Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DD86A6C59
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 13:29:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9058B10E0C5;
	Wed,  1 Mar 2023 12:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE81B10E0C5
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677673793; x=1709209793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w2F4bgH1L8vg8guYnoEF4SYuYFzpta42uu1jFBuJbhg=;
 b=dgzTE7xBZoD7Oq+s5JjGnH7+qNjoVqrn9EXKCO8Jterr5o04w4m3MWvU
 DT+XYxeyRNmW0jlQxuPTHj83rWQJqMvCo1VaxIZF2fmP5Wgee1T/DrleR
 6NGaXWSaOTALxbgtDV1GVbtJGAS32LvF1Z+SN8yHNZ3ynky3jk905ZOFp
 Ce9qF1Q+uNCoTt2a7rt6EPqHivHOWqeH6jRLhV9JK6sc2AhJaKPRWAMGj
 hUm1FKTYbPHM+N6yok6P/XyktbD0MoobEyM26/Ascqv8q2mdOeeoV6wdj
 yYpB3sBWvKhNktJEkLK63o3FihhFbYZODMF3FbOUTD/0AZc795Ph4Ip31 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="318195887"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="318195887"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:29:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="676739570"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="676739570"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:29:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 14:29:41 +0200
Message-Id: <20230301122944.1298929-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230301122944.1298929-1-jani.nikula@intel.com>
References: <20230301122944.1298929-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/5] drm/i915/dmc: use has_dmc_id_fw()
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

