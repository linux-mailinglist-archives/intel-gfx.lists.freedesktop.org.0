Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 762981A2D22
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 02:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30BA76EB26;
	Thu,  9 Apr 2020 00:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557066EB27
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 00:57:26 +0000 (UTC)
IronPort-SDR: yLQB0dkP9kmWpbTOF+jxxIfgzYGzjlHzwefdJpZRg1pJfI4be0tQsgUaHGVcGyH50lO59eFjz9
 DyylIFBaMilA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 17:57:26 -0700
IronPort-SDR: u0KocL/S6zrBakq437EY92KF/G+dZoSj7a5Ev6oWEwFLY+fRQGH+HkH4pKuL+pLrbfpS0NlKAE
 bdQ1cQjwLtbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,360,1580803200"; d="scan'208";a="244185359"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2020 17:57:26 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 17:56:55 -0700
Message-Id: <20200409005658.12262-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409005658.12262-1-daniele.ceraolospurio@intel.com>
References: <20200409005658.12262-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/guc: drop guc parameter from
 guc_ggtt_offset
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

We stopped using the parameter in commit dd18cedfa36f
("drm/i915/guc: Move the pin bias value from GuC to GGTT"),
so we can safely remove it.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c            | 6 +++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h            | 4 +---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c        | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c         | 5 ++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c            | 3 +--
 6 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 861657897c0f..5134d544bf4c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -220,7 +220,7 @@ static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
 	if (intel_guc_submission_is_used(guc)) {
 		u32 ctxnum, base;
 
-		base = intel_guc_ggtt_offset(guc, guc->stage_desc_pool);
+		base = intel_guc_ggtt_offset(guc->stage_desc_pool);
 		ctxnum = GUC_MAX_STAGE_DESCRIPTORS / 16;
 
 		base >>= PAGE_SHIFT;
@@ -232,7 +232,7 @@ static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
 
 static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
 {
-	u32 offset = intel_guc_ggtt_offset(guc, guc->log.vma) >> PAGE_SHIFT;
+	u32 offset = intel_guc_ggtt_offset(guc->log.vma) >> PAGE_SHIFT;
 	u32 flags;
 
 	#if (((CRASH_BUFFER_SIZE) % SZ_1M) == 0)
@@ -273,7 +273,7 @@ static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
 
 static u32 guc_ctl_ads_flags(struct intel_guc *guc)
 {
-	u32 ads = intel_guc_ggtt_offset(guc, guc->ads_vma) >> PAGE_SHIFT;
+	u32 ads = intel_guc_ggtt_offset(guc->ads_vma) >> PAGE_SHIFT;
 	u32 flags = ads << GUC_ADS_ADDR_SHIFT;
 
 	return flags;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index e84ab67b317d..366191204a7d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -103,7 +103,6 @@ static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
 
 /**
  * intel_guc_ggtt_offset() - Get and validate the GGTT offset of @vma
- * @guc: intel_guc structure.
  * @vma: i915 graphics virtual memory area.
  *
  * GuC does not allow any gfx GGTT address that falls into range
@@ -114,8 +113,7 @@ static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
  *
  * Return: GGTT offset of the @vma.
  */
-static inline u32 intel_guc_ggtt_offset(struct intel_guc *guc,
-					struct i915_vma *vma)
+static inline u32 intel_guc_ggtt_offset(struct i915_vma *vma)
 {
 	u32 offset = i915_ggtt_offset(vma);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 101728006ae9..9237d798f7f4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -107,7 +107,7 @@ static void __guc_ads_init(struct intel_guc *guc)
 	blob->system_info.vebox_enable_mask = VEBOX_MASK(dev_priv);
 	blob->system_info.vdbox_sfc_support_mask = RUNTIME_INFO(dev_priv)->vdbox_sfc_access;
 
-	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
+	base = intel_guc_ggtt_offset(guc->ads_vma);
 
 	/* Clients info  */
 	guc_ct_pool_entries_init(blob->ct_pool, ARRAY_SIZE(blob->ct_pool));
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 11742fca0e9e..aad5ac54c1ba 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -187,7 +187,7 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
 		return err;
 	}
 
-	CT_DEBUG(ct, "vma base=%#x\n", intel_guc_ggtt_offset(guc, ct->vma));
+	CT_DEBUG(ct, "vma base=%#x\n", intel_guc_ggtt_offset(ct->vma));
 
 	/* store pointers to desc and cmds */
 	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
@@ -220,7 +220,6 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
  */
 int intel_guc_ct_enable(struct intel_guc_ct *ct)
 {
-	struct intel_guc *guc = ct_to_guc(ct);
 	u32 base, cmds, size;
 	int err;
 	int i;
@@ -229,7 +228,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 
 	/* vma should be already allocated and map'ed */
 	GEM_BUG_ON(!ct->vma);
-	base = intel_guc_ggtt_offset(guc, ct->vma);
+	base = intel_guc_ggtt_offset(ct->vma);
 
 	/* (re)initialize descriptors
 	 * cmds buffers are in the second half of the blob page
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index fe7778c28d2d..7eaf173dd588 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -153,8 +153,8 @@ static void guc_stage_desc_init(struct intel_guc *guc)
 	desc->stage_id = 0;
 	desc->priority = GUC_CLIENT_PRIORITY_KMD_NORMAL;
 
-	desc->process_desc = intel_guc_ggtt_offset(guc, guc->proc_desc);
-	desc->wq_addr = intel_guc_ggtt_offset(guc, guc->workqueue);
+	desc->process_desc = intel_guc_ggtt_offset(guc->proc_desc);
+	desc->wq_addr = intel_guc_ggtt_offset(guc->workqueue);
 	desc->wq_size = GUC_WQ_SIZE;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 65eeb44b397d..534f4d9f6591 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -166,8 +166,7 @@ int intel_huc_auth(struct intel_huc *huc)
 	if (ret)
 		goto fail;
 
-	ret = intel_guc_auth_huc(guc,
-				 intel_guc_ggtt_offset(guc, huc->rsa_data));
+	ret = intel_guc_auth_huc(guc, intel_guc_ggtt_offset(huc->rsa_data));
 	if (ret) {
 		DRM_ERROR("HuC: GuC did not ack Auth request %d\n", ret);
 		goto fail;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
