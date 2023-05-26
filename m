Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF1F712AC9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB47C10E823;
	Fri, 26 May 2023 16:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C0110E823
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119124; x=1716655124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kfHfX80MY6hUIgVmagFEiCq4OmDTtX2KFZIAaV3KGVQ=;
 b=WWvkNuncNIRUamV49DPi4wKdIkT31/mFMGL8SxZYOBpG+t+V9XkEy2gt
 BplgIDFiGiGSrvR3h5xLOAVltCz/YDPIGEANR6uXOT92tFbkMGeVQzgj/
 NU4V3snqIKsD6gc4J1PkTZrzFkDZ1T2zhkyQD6SnFIdQQ7Z18ZxAtv5vf
 l8pQHrwUDD2TG7KAjCzmI1xSZN4FAnCu5K94gKKB81atEX6uRR3yYnYTa
 BOBRCFQPCpdZkEbrPzdfMzXUSjNqyNaHmOwlg+4Ajv/4C+Ex9u9qLaG4b
 okfD0KbFNpw1BWR7vPW8zJr7pgfXM7Bbvwlt9zVQ8OaBQgyEVb88EEJgo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="353087564"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="353087564"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736056569"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="736056569"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:38:01 +0300
Message-Id: <d542f25bffd5a50ff621bee93415a972c7768a2a.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/15] drm/i915/gt/uc: drop unused but set
 variable sseu
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

Prepare for re-enabling -Wunused-but-set-variable.

Apparently sseu is leftover from commit 9a92732f040a ("drm/i915/gt: Add
general DSS steering iterator to intel_gt_mcr").

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 0ff864da92df..331cec07c125 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -301,7 +301,6 @@ guc_capture_alloc_steered_lists(struct intel_guc *guc,
 	const struct __guc_mmio_reg_descr_group *list;
 	struct __guc_mmio_reg_descr_group *extlists;
 	struct __guc_mmio_reg_descr *extarray;
-	struct sseu_dev_info *sseu;
 	bool has_xehpg_extregs;
 
 	/* steered registers currently only exist for the render-class */
@@ -318,7 +317,6 @@ guc_capture_alloc_steered_lists(struct intel_guc *guc,
 	if (has_xehpg_extregs)
 		num_steer_regs += ARRAY_SIZE(xehpg_extregs);
 
-	sseu = &gt->info.sseu;
 	for_each_ss_steering(iter, gt, slice, subslice)
 		num_tot_regs += num_steer_regs;
 
-- 
2.39.2

