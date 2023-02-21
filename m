Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0C769E9F5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 23:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6324D10E37F;
	Tue, 21 Feb 2023 22:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F5110E37F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 22:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677017858; x=1708553858;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e9LljwpVCCk2IVMgeT9SHPgf7ifAuDc7t2JT071ftis=;
 b=G00y+OctzPfopC0xzFw06FacZz67KP3n5/f7jlSZXox6l7z80ppYb/D4
 //5MQK504SqEyE/Isk9q5PwY1SG4/9pBepRLjHf664VwyNsL5SSYVjlVR
 gZZ1ykSKhDJ7m+TkI56QfzXgBoYJP0uM+7q9JAx+S8EbFx9rB3ZxbSfZM
 NhToiih7qwWLbGEaLqrK56sU1pl7wAiY2pGoFgAc0KActgiLeJOjU5sAZ
 trjoe4tzbHweHm/hU1CLCSgmmgl3wFjZnE1EFk/XF3RyEU9eP0iJNH8LE
 tYCPGwOw6akbAgsYl47RKfSuokPzLjotrqnoMXCHH57x/W7yz2Ygy7/kP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="332771128"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="332771128"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 14:17:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="781165811"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="781165811"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 14:17:38 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 14:13:08 -0800
Message-Id: <20230221221309.1467995-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Ensure memory quiesced before
 invalidation
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
Cc: jonathan.cavitt@intel.com, gregory.f.germano@intel.com,
 saurabhg.gupta@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All memory traffic must be quiesced before requesting
an aux invalidation on platforms that use Aux CCS.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e1c76e5bfa82..6f830f80eb0f 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -181,6 +181,13 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 {
 	struct intel_engine_cs *engine = rq->engine;
 
+	/*
+	 * Aux invalidations on Aux CCS platforms require
+	 * memory traffic is quiesced prior.
+	 */
+	if (!HAS_FLAT_CCS(engine->i915))
+		mode |= EMIT_FLUSH;
+
 	if (mode & EMIT_FLUSH) {
 		u32 flags = 0;
 		u32 *cs;
-- 
2.25.1

