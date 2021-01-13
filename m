Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6498F2F4189
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 03:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D4A89B9F;
	Wed, 13 Jan 2021 02:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D8C89B84
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 02:14:01 +0000 (UTC)
IronPort-SDR: j7hdmmX3Lfu1/zBwkjzgoMzVUUbskKeL+hdUogBBwesU2GAMQmUlO0d3zWdMI/6trStKnNnnyM
 CysEARF5E1OA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165815289"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="165815289"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:14:01 -0800
IronPort-SDR: j4JEkmXeXeoXZLwy8gNLMuqVFeov+f+bLF3zUFfVKVbNsUJs474U9T5/WuDc2mRpWnV+BdEPLP
 nbB1xTX2HqWQ==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="464739731"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:14:01 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 18:12:34 -0800
Message-Id: <20210113021236.8164-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
References: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/guc: do not dump execlists
 state with GuC submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GuC owns the execlists state and the context IDs used for submission, so
the status of the ports and the CSB entries are not something we control
or can decode from the i915 side, therefore we can avoid dumping it. A
follow-up patch will also stop setting the csb pointers when using GuC
submission.

GuC dumps all the required events in the GuC logs when verbosity is set
high enough.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 1847d3c2ea99..f62303bf80b8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1470,7 +1470,9 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
 	}
 
-	if (HAS_EXECLISTS(dev_priv)) {
+	if (intel_engine_in_guc_submission_mode(engine)) {
+		/* nothing to print yet */
+	} else if (HAS_EXECLISTS(dev_priv)) {
 		struct i915_request * const *port, *rq;
 		const u32 *hws =
 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
