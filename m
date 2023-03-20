Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F916C21C5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 20:43:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F48D10E305;
	Mon, 20 Mar 2023 19:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA8A10E65E;
 Mon, 20 Mar 2023 19:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679341371; x=1710877371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cUcc6Fqt3EWZemIBUVp1TQIXbU+XFWDL5C3YQbE7nJE=;
 b=Y57DDfToy1EFJBjLSVAYaaXPQIe98K6x00xA1nwumLnkBtHusRDhgoZ8
 xYohrE/T9VPmHd9SbAmnIRw5MI8JGnycJrsUGQ9/S45waJ0RHC7N7URPO
 i8e5eATB3/Mqw/1MSyd1TU0g7V0zpCBGwOwW8bz0sWspX79+UDqLMTSLm
 zWhkhFXe8MZnBk3F0OYBNwI36yEela3T6vP2OvjXA1zCnHGKivF9uRn7O
 Oek7UrIr8E0vdZJAPIYB1V5DYJghoNrTlhf8OGDC1/H/XjNhBfWP4b+B1
 qzMdsjt7mFPMTSKhgijDY49O86U1utFIt74AJ2zcQfZAQ16ta+W65LYVt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="338790407"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="338790407"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 12:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="745517989"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="745517989"
Received: from ggranovs-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.60.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 12:42:49 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Date: Mon, 20 Mar 2023 20:41:18 +0100
Message-Id: <20230320194119.290561-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320194119.290561-1-andi.shyti@linux.intel.com>
References: <20230320194119.290561-1-andi.shyti@linux.intel.com>
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
Cc: Andi Shyti <andi.shyti@kernel.org>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

All memory traffic must be quiesced before requesting
an aux invalidation on platforms that use Aux CCS.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e1c76e5bfa827..6f830f80eb0f8 100644
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
2.39.2

