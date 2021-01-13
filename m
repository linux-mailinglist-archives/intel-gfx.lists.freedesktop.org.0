Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1592F4CDD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 15:13:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C416E9F6;
	Wed, 13 Jan 2021 14:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A91E6EA1A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 14:13:26 +0000 (UTC)
IronPort-SDR: ulSyb/n7XtOEM4uDfDz2bjJARHyDnbIKrpgTDXCuUFGN1jGaWgNrr5j8FMMIwbOj5z0urZdI89
 7ZHP5WNcHx+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165881425"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="165881425"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 06:13:25 -0800
IronPort-SDR: +KshcCxnMZgQL+DfSisFj9xyTU5xRYqiVb4PI5lDkVcf2wRN9R/rvGKHCRPldr68/hiLiRPa6g
 pnxCKK6de72A==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="381864773"
Received: from iklein-mobl.ger.corp.intel.com (HELO localhost) ([10.249.40.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 06:13:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 16:13:17 +0200
Message-Id: <20210113141317.30765-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: fix the uint*_t types that
 have crept in
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Always prefer the kernel types over stdint types in i915.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_mocs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index ca72894918ba..cf373c72359e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -99,7 +99,7 @@ static void live_mocs_fini(struct live_mocs *arg)
 
 static int read_regs(struct i915_request *rq,
 		     u32 addr, unsigned int count,
-		     uint32_t *offset)
+		     u32 *offset)
 {
 	unsigned int i;
 	u32 *cs;
@@ -127,7 +127,7 @@ static int read_regs(struct i915_request *rq,
 
 static int read_mocs_table(struct i915_request *rq,
 			   const struct drm_i915_mocs_table *table,
-			   uint32_t *offset)
+			   u32 *offset)
 {
 	u32 addr;
 
@@ -141,7 +141,7 @@ static int read_mocs_table(struct i915_request *rq,
 
 static int read_l3cc_table(struct i915_request *rq,
 			   const struct drm_i915_mocs_table *table,
-			   uint32_t *offset)
+			   u32 *offset)
 {
 	u32 addr = i915_mmio_reg_offset(GEN9_LNCFCMOCS(0));
 
@@ -150,7 +150,7 @@ static int read_l3cc_table(struct i915_request *rq,
 
 static int check_mocs_table(struct intel_engine_cs *engine,
 			    const struct drm_i915_mocs_table *table,
-			    uint32_t **vaddr)
+			    u32 **vaddr)
 {
 	unsigned int i;
 	u32 expect;
@@ -179,7 +179,7 @@ static bool mcr_range(struct drm_i915_private *i915, u32 offset)
 
 static int check_l3cc_table(struct intel_engine_cs *engine,
 			    const struct drm_i915_mocs_table *table,
-			    uint32_t **vaddr)
+			    u32 **vaddr)
 {
 	/* Can we read the MCR range 0xb00 directly? See intel_workarounds! */
 	u32 reg = i915_mmio_reg_offset(GEN9_LNCFCMOCS(0));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
