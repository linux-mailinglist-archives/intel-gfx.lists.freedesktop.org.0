Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE6228D6C1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 01:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0951D6E981;
	Tue, 13 Oct 2020 23:01:32 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7986E47A
 for <Intel-GFX@lists.freedesktop.org>; Tue, 13 Oct 2020 23:01:30 +0000 (UTC)
IronPort-SDR: jwWMrY15LFK1KoL2I2BFLb3y0zXbR/hyGAhqd4Qm5BikDqAwtMeijgEJIOD+5ZPFo0YwnZ1C3V
 MmyMXLX3csnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="230176807"
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="230176807"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 16:01:29 -0700
IronPort-SDR: ONHZkzcf+SSgSBsFXp2kpQXaz0hY5UPTDe9z2cF0AAQ4qefGb+mTIjJtTLV8srbUIewxlmGFY9
 nQk8G7x7tTmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="390471190"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga001.jf.intel.com with ESMTP; 13 Oct 2020 16:01:29 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue, 13 Oct 2020 16:01:29 -0700
Message-Id: <20201013230129.2596998-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201013230129.2596998-1-John.C.Harrison@Intel.com>
References: <20201013230129.2596998-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/guc: Clear pointers on free
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

From: John Harrison <John.C.Harrison@Intel.com>

Clear out some pointers when objects have been de-allocated. This
makes it much easier to track down use-after-free type issues.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 7950d28beb8c..5212ff844292 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -220,6 +220,7 @@ int intel_guc_ads_create(struct intel_guc *guc)
 void intel_guc_ads_destroy(struct intel_guc *guc)
 {
 	i915_vma_unpin_and_release(&guc->ads_vma, I915_VMA_RELEASE_MAP);
+	guc->ads_blob = NULL;
 }
 
 static void guc_ads_private_data_reset(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 11742fca0e9e..fa9e048cc65f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -210,6 +210,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
 	GEM_BUG_ON(ct->enabled);
 
 	i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
+	memset(ct, 0, sizeof(*ct));
 }
 
 /**
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
