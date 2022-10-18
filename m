Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 174A4603607
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 00:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B6B10EB73;
	Tue, 18 Oct 2022 22:37:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DBAE10F04D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 22:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666132631; x=1697668631;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=S6TU5IPCKqugKuXPsfWSoRIT1EXNM/yiDDISPsvQZ4M=;
 b=ECn4Ixo/d94pRxPxPbitOGPTWWzRqYfCjCrX3DtfrcwsT6z25jZ63QE6
 AyrxRV4TIFuvohCzAoLGRsz2oyPb/Pr19lLzbZUjmxiQwQ2QTYrQN8Zb4
 K0OZ3b55LF4h3hVWihT075a05aBuvwfutI7+yuHO8P4xEdmKN/rQUl1P9
 +7peZAQ3HPjCLyWGknA5iUMb+6BmYBIa04OmCE+zLQlRzfj49dTaDk40b
 88BQMrA3YR3gG5fMF+5w4jv6APmZRHas36a6103XMQ5lgfiP3Sn64MMra
 FG2BWAjcpIQwJgss9z/6m/eftWnx9CcD5wyBuHPCHUXmFEyRIGe/ax4+U A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="304986543"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="304986543"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="803986553"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="803986553"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:53 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 18 Oct 2022 22:36:45 +0000
Message-Id: <20221018223648.5244-14-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
References: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 13/16] drm/i915/perf: Save/restore EU flex
 counters across reset
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

If a drm client is killed, then hw contexts used by the client are reset
immediately. This reset clears the EU flex counter configuration. If an
OA use case is running in parallel, it would start seeing zeroed eu
counter values following the reset even if the drm client is restarted.
Save/restore the EU flex counter config so that the EU counters can be
monitored continuously across resets.

v2:
- Save/restore eu flex config only for gen12, as for pre-gen12, these
  are saved and restored in the context image.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 34ef4f36e660..a419d60166c8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -392,6 +392,16 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 		else
 			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
+	if (GRAPHICS_VER(engine->i915) >= 12) {
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
+	}
+
 	return ret ? -1 : 0;
 }
 
-- 
2.25.1

