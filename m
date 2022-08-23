Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 609AF59CCC9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:06:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D1EA74DB;
	Tue, 23 Aug 2022 00:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D382A74C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213025; x=1692749025;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=641/tqHD4cZqRXgJBnNiCPyh0v5dfz3mzuDP84IQseg=;
 b=C1XzuDgFSH5fSasTdjlFjqh0XJ3xbOET+qcg/sVgESaSU08pdVDR5uwh
 0UPdkBmbnRzePt7XfGbT1A0ZbR9f3wl7EbG29TrTjXmy9MwBWqCWMEjvN
 LJhmv+CQ83XgvRVGDO6dwpSGmE5sieibh3OzJQ82d1EJTPdkPOIz1bic4
 mjjMWzD3MEXJMBym3D5WyuUrjXzn1r6pw2PdankyzIWC7TMCHpufF5t8T
 DSL0AUe1nh0CPvYFLGcWWZUMKeywyJWe+iRpj2AoANqKqOhw9DKEx8WFR
 emdqQzXBjPOWaLnOCEmg7k1zGWSpUAtz5jKHhQkhzeot69hNQmZ1jzzP5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304843"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304843"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775556"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:40 +0000
Message-Id: <20220823000342.281222-18-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/19] drm/i915/perf: Save/restore EU flex
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 74cbe8eaf531..3e152219fcb2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -375,6 +375,14 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	for (i = 0; i < GEN9_LNCFCMOCS_REG_COUNT; i++)
 		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
+
 	return ret ? -1 : 0;
 }
 
-- 
2.25.1

