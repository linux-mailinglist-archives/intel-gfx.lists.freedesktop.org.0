Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA20223D42C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 01:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A73B6E08E;
	Wed,  5 Aug 2020 23:29:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1835D6E08E
 for <Intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 23:29:24 +0000 (UTC)
IronPort-SDR: bKDnS/IM19Cf9HXdWYbqCGBiQqBNDpatJFEKJdjZ5KEFsTOssAu7RlDxIJPjRVUWDg7OQfslY4
 jhHtjKIH/dzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="150141677"
X-IronPort-AV: E=Sophos;i="5.75,439,1589266800"; d="scan'208";a="150141677"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 16:29:24 -0700
IronPort-SDR: +Byyk/Rm7Eyv2Ak0FTFkdZXdYwJuU3FsyEtNuvBM8EMlW8uEdbP6XhudrUI4qYoK7+6Cynd/0U
 Q9YNyCPxCTTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,439,1589266800"; d="scan'208";a="276229362"
Received: from klbarcus-mobl1.amr.corp.intel.com (HELO
 cataylo2-MOBL1.amr.corp.intel.com) ([10.254.81.202])
 by fmsmga008.fm.intel.com with ESMTP; 05 Aug 2020 16:29:23 -0700
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 16:29:20 -0700
Message-Id: <20200805232920.15085-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Implement WA_1406941453
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

From: Clint Taylor <clinton.a.taylor@intel.com>

Enable HW Default flip for small PL.

bspec: 52890
bspec: 53508
bspec: 53273

v2: rebase to drm-tip
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cef1c122696f..cb02813c5e92 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -639,6 +639,9 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	       FF_MODE2_GS_TIMER_MASK | FF_MODE2_TDS_TIMER_MASK,
 	       FF_MODE2_GS_TIMER_224  | FF_MODE2_TDS_TIMER_128,
 	       0);
+
+	/* Wa_1406941453:gen12 */
+	WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE, ENABLE_SMALLPL);
 }
 
 static void
@@ -1522,6 +1525,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
 				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
 				  RING_FORCE_TO_NONPRIV_RANGE_4);
+
+		/* Wa_1406941453:gen12 */
+		whitelist_reg(w, GEN10_SAMPLER_MODE);
 		break;
 
 	case VIDEO_DECODE_CLASS:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2b403df03404..494b2e1e358e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9314,6 +9314,7 @@ enum {
 #define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
 
 #define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
+#define   ENABLE_SMALLPL			REG_BIT(15)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
 
 /* IVYBRIDGE DPF */
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
