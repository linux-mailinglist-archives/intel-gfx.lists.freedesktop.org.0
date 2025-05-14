Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 047FFAB793D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 00:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8683B10E047;
	Wed, 14 May 2025 22:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HObFNCbW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9EE910E047
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 May 2025 22:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747263296; x=1778799296;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lk74XXUTDGczt1K3klv0Ir9tK7oWof1oulBABmNHKnk=;
 b=HObFNCbW6qCFS+0LglbkpkqCctACSd2qtTsDEa2OZDHLK+U3zfQAgt4a
 y66thD3JlTZ5D/xKk65llc/GaRbkvmcyZxU9om0KlJJ6DWM0aAtXdBLou
 mWrHD+WwJDjPNRZVMQ3VpLCZJ8gu7FpLyWHpc80KkL/+pOYiAWq2uxH7X
 mM5o3v1XVSri08gkwqDbGEIWjr7ebBd4z3tg2AiiGK+ODRjvaUK4DxVP5
 F+C2CJgJnXs75nVe4PjboqCKA2V4+2ITH6L9btzb4Vrletu72f9cMDJ+d
 NXfjuGttdTF++Kh7X7kOZQ2otyNvMQfhrRVBfDYkt2CJVJYMRoyQDlAV4 A==;
X-CSE-ConnectionGUID: Zth+x7UkTKioayVPr0z4XA==
X-CSE-MsgGUID: 4InFRQ60Q/WGtBERlHlkjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48434019"
X-IronPort-AV: E=Sophos;i="6.15,289,1739865600"; d="scan'208";a="48434019"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 15:54:55 -0700
X-CSE-ConnectionGUID: N0YvK4XcRJCY/ZxvDV19XQ==
X-CSE-MsgGUID: Bi4zFpUGQcmqdWCZB+XsQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,289,1739865600"; d="scan'208";a="138704144"
Received: from jesusnar-desk.jf.intel.com ([10.165.21.207])
 by orviesa007.jf.intel.com with ESMTP; 14 May 2025 15:54:55 -0700
From: Jesus Narvaez <jesus.narvaez@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jesus Narvaez <jesus.narvaez@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Mousumi Jana <mousumi.jana@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH] drm/i915/guc: Check if expecting reply before decrementing
 outstanding_submission_g2h
Date: Wed, 14 May 2025 15:52:24 -0700
Message-Id: <20250514225224.4142684-1-jesus.narvaez@intel.com>
X-Mailer: git-send-email 2.34.1
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

When sending a H2G message where a reply is expected in
guc_submission_send_busy_loop(), outstanding_submission_g2h is
incremented before the send. However, if there is an error sending the
message, outstanding_submission_g2h is decremented without checking if a
reply is expected.

Therefore, check if reply is expected when there is a failure before
decrementing outstanding_submission_g2h.

Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")
Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Mousumi Jana <mousumi.jana@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 39696ceea9a5..68bdf0c80ec3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -633,7 +633,7 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
 		atomic_inc(&guc->outstanding_submission_g2h);
 
 	ret = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
-	if (ret)
+	if (ret && g2h_len_dw)
 		atomic_dec(&guc->outstanding_submission_g2h);
 
 	return ret;
-- 
2.34.1

