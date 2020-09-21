Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B594273139
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 19:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C5C6E511;
	Mon, 21 Sep 2020 17:54:31 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 635DE6E512
 for <Intel-GFX@lists.freedesktop.org>; Mon, 21 Sep 2020 17:54:29 +0000 (UTC)
IronPort-SDR: +sfsSO/1Z/6C1eo6GPRRP8CJVsAcBHKcEb+2sIyLMEcxkR7uRsHMWU0otrvGuv/yimj88wAECr
 0isTVdQkveYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="224596832"
X-IronPort-AV: E=Sophos;i="5.77,287,1596524400"; d="scan'208";a="224596832"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 10:54:28 -0700
IronPort-SDR: n3i1OxOdEhg168qxtIl8254L7I05sJp6PN5ed0UbMsEfN5szfW5wrZqV3TfBiFUcfeU+WhoOSH
 DoOCkY5voVnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,287,1596524400"; d="scan'208";a="321863514"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 21 Sep 2020 10:54:28 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 21 Sep 2020 10:54:27 -0700
Message-Id: <20200921175428.2914478-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200921175428.2914478-1-John.C.Harrison@Intel.com>
References: <20200921175428.2914478-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/guc: Clear pointers on free
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

Was hitting null pointers and similar issues when running various
module load/unload and inject failure type tests. So clear those
pointers down when the objects have been de-allocated.

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
