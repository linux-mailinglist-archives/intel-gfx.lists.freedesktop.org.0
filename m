Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA1A21B47B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E726EC0C;
	Fri, 10 Jul 2020 12:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B79A6EC0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:15 +0000 (UTC)
IronPort-SDR: 14JJAvyhSWpHUGWE4IkkDSGwAIsSpMgAlMCttsynZ8nWvu3zZKMNhsM/Xm7pYXZbWXM7XRuAnA
 Fg/niXQvDdfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653762"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653762"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:15 -0700
IronPort-SDR: 1qnx8WDeZP3DxsVDAaesD0JfHmBzZzwxNP8NEkMi23f+b5FY7op5DEEIqQVwhxxNAaYqB4UFve
 F9syp/7zVshA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257767"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:12 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:25 +0100
Message-Id: <20200710115757.290984-29-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 28/60] drm/i915/dg1: DG1 does not support DC6
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

From: Anshuman Gupta <anshuman.gupta@intel.com>

DC6 is not supported on DG1, so change the allowed DC mask for DG1.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 21f39c94056e..389a0f2d3a14 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4689,7 +4689,10 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	int max_dc;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		max_dc = 4;
+		if (IS_DG1(dev_priv))
+			max_dc = 3;
+		else
+			max_dc = 4;
 		/*
 		 * DC9 has a separate HW flow from the rest of the DC states,
 		 * not depending on the DMC firmware. It's needed by system
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
