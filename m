Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFBC7CCA81
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 20:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1538110E314;
	Tue, 17 Oct 2023 18:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A47F810E312
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 18:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697566730; x=1729102730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tbYWLHj+eumaQcVVvUmFmGipHv5n+/lm2FOMQFJ9g+w=;
 b=TYyp75+7otZdXttYOUBDLBc69BV2DMWxVVD7m5N9aOulJSJoF2yk68ND
 U1oJEokI6lE/noTIZ6RZBaCtDA61CGKEIaHt/H8lUQbCktAXffev4lmKO
 TgLc/toHuHOwlFqGzqbb2IZjI0oVo4MMbKxw9gMGidD84F55nv7wEHlgJ
 uyWK6zkWHeYt5i5LejwpX4VUmwgwU1ZMxKSADe+fNhPXTOjsMALl/eI/3
 FVR75ctnitXV21yTHx0gKp15EwiV75VTTdt1QLhrGGHi0slktKkObTZVe
 DAv/io92wlgZf8UrsEnOaeUT26JN3Tj27zSbYFChfZ3TSoP306DKbExom A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="472078882"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="472078882"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; 
   d="scan'208";a="4037627"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:17:43 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 11:08:01 -0700
Message-Id: <20231017180806.3054290-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
References: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v17 2/7] drm/i915/guc: Add CT size delay helper
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As of now, there is no mechanism for tracking a given request's
progress through the queue.  Instead, add a helper that returns
an estimated maximum time the queue should take to drain if
completely full.

Suggested-by: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: John Harrison <john.c.harrison@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 27 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  2 ++
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index c33210ead1ef7..03b616ba4ebb7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -103,6 +103,33 @@ enum { CTB_SEND = 0, CTB_RECV = 1 };
 
 enum { CTB_OWNER_HOST = 0 };
 
+/*
+ * Some H2G commands involve a synchronous response that the driver needs
+ * to wait for. In such cases, a timeout is required to prevent the driver
+ * from waiting forever in the case of an error (either no error response
+ * is defined in the protocol or something has died and requires a reset).
+ * The specific command may be defined as having a time bound response but
+ * the CT is a queue and that time guarantee only starts from the point
+ * when the command reaches the head of the queue and is processed by GuC.
+ *
+ * Ideally there would be a helper to report the progress of a given
+ * command through the CT. However, that would require a significant
+ * amount of work in the CT layer. In the meantime, provide a reasonable
+ * estimation of the worst case latency it should take for the entire
+ * queue to drain. And therefore, how long a caller should wait before
+ * giving up on their request. The current estimate is based on empirical
+ * measurement of a test that fills the buffer with context creation and
+ * destruction requests as they seem to be the slowest operation.
+ */
+long intel_guc_ct_max_queue_time_jiffies(void)
+{
+	/*
+	 * A 4KB buffer full of context destroy commands takes a little
+	 * over a second to process so bump that to 2s to be super safe.
+	 */
+	return (CTB_H2G_BUFFER_SIZE * HZ) / SZ_2K;
+}
+
 static void ct_receive_tasklet_func(struct tasklet_struct *t);
 static void ct_incoming_request_worker_func(struct work_struct *w);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 58e42901ff498..2c4bb9a941be6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -104,6 +104,8 @@ struct intel_guc_ct {
 #endif
 };
 
+long intel_guc_ct_max_queue_time_jiffies(void);
+
 void intel_guc_ct_init_early(struct intel_guc_ct *ct);
 int intel_guc_ct_init(struct intel_guc_ct *ct);
 void intel_guc_ct_fini(struct intel_guc_ct *ct);
-- 
2.25.1

