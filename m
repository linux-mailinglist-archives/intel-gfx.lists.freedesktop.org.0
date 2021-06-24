Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 057B43B27CB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 08:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E6EB6EA44;
	Thu, 24 Jun 2021 06:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FC76E9F4;
 Thu, 24 Jun 2021 06:47:29 +0000 (UTC)
IronPort-SDR: Xher4smgE+a+/yC+84HREjbCW20u2zkVeC4PAfgrZ16Iroix8QlYpCf9Ns2txoEXSLbSVglUQK
 0oeGjQaTOxRA==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207346741"
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="207346741"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 23:47:25 -0700
IronPort-SDR: XZavAmwArK004IzFhK/bruuY2Hfk6ks3sOdpMTe0PQgLJDXQmO5qSyRdVlVnXqZSO4Gib0YZhN
 f8KlCxGtOTag==
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="556390871"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 23:47:24 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu, 24 Jun 2021 00:04:32 -0700
Message-Id: <20210624070516.21893-4-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210624070516.21893-1-matthew.brost@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/47] drm/i915/guc: Increase size of CTB buffers
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

With the introduction of non-blocking CTBs more than one CTB can be in
flight at a time. Increasing the size of the CTBs should reduce how
often software hits the case where no space is available in the CTB
buffer.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 07f080ddb9ae..a17215920e58 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -58,11 +58,16 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
  *      +--------+-----------------------------------------------+------+
  *
  * Size of each `CT Buffer`_ must be multiple of 4K.
- * As we don't expect too many messages, for now use minimum sizes.
+ * We don't expect too many messages in flight at any time, unless we are
+ * using the GuC submission. In that case each request requires a minimum
+ * 2 dwords which gives us a maximum 256 queue'd requests. Hopefully this
+ * enough space to avoid backpressure on the driver. We increase the size
+ * of the receive buffer (relative to the send) to ensure a G2H response
+ * CTB has a landing spot.
  */
 #define CTB_DESC_SIZE		ALIGN(sizeof(struct guc_ct_buffer_desc), SZ_2K)
 #define CTB_H2G_BUFFER_SIZE	(SZ_4K)
-#define CTB_G2H_BUFFER_SIZE	(SZ_4K)
+#define CTB_G2H_BUFFER_SIZE	(4 * CTB_H2G_BUFFER_SIZE)
 
 struct ct_request {
 	struct list_head link;
@@ -641,7 +646,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	/* beware of buffer wrap case */
 	if (unlikely(available < 0))
 		available += size;
-	CT_DEBUG(ct, "available %d (%u:%u)\n", available, head, tail);
+	CT_DEBUG(ct, "available %d (%u:%u:%u)\n", available, head, tail, size);
 	GEM_BUG_ON(available < 0);
 
 	header = cmds[head];
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
