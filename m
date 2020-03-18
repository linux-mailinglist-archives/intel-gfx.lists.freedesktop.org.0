Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA14189A24
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 12:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63F86E8C3;
	Wed, 18 Mar 2020 11:02:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 335CF6E8C3
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 11:02:01 +0000 (UTC)
IronPort-SDR: A3PkAoY+3/UJvkeFmEp+2DDzgnE/4jMF6zQ6zlDDPNIBEUycjWrUG85Jb0P4IXDAlaX0IiSjs8
 JRWHY01GiR9g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 04:02:01 -0700
IronPort-SDR: CUe4awvlYCp5vJJ+arLkcjK03fMLV5e2PDUhGYnPS1C/hXc2vyNYr2BSVTo4hLZ9OV7S/GXY0i
 l7hWRYej2wug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="244790984"
Received: from unknown (HELO localhost.localdomain) ([10.214.196.8])
 by orsmga003.jf.intel.com with ESMTP; 18 Mar 2020 04:01:59 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 11:01:40 +0000
Message-Id: <20200318110146.22339-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318110146.22339-1-tvrtko.ursulin@linux.intel.com>
References: <20200318110146.22339-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Use explicit flag to mark
 unreachable intel_context
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

I need to keep the GEM context around a bit longer so adding an explicit
flag for syncing execbuf with closed/abandonded contexts.

v2:
 * Use already available context flags. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c    | 3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h  | 1 +
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 9afc60ab95e0..7c119a3a2cbd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -579,7 +579,8 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 		int err = 0;
 
 		/* serialises with execbuf */
-		RCU_INIT_POINTER(ce->gem_context, NULL);
+		set_bit(INTEL_CONTEXT_CLOSED, &ce->flags);
+
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..875da020d6c8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2316,7 +2316,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	prev = __i915_request_commit(rq);
 
 	/* Check that the context wasn't destroyed before submission */
-	if (likely(rcu_access_pointer(eb->context->gem_context))) {
+	if (likely(!test_bit(INTEL_CONTEXT_CLOSED, &eb->context->flags))) {
 		attr = eb->gem_context->sched;
 
 		/*
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 0f3b68b95c56..d5925c25f109 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -66,6 +66,7 @@ struct intel_context {
 #define CONTEXT_BANNED			4
 #define CONTEXT_FORCE_SINGLE_SUBMISSION	5
 #define CONTEXT_NOPREEMPT		6
+#define INTEL_CONTEXT_CLOSED		7
 
 	u32 *lrc_reg_state;
 	u64 lrc_desc;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
