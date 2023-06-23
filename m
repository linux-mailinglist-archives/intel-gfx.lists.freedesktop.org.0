Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A05E73B52D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 12:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B0010E0E9;
	Fri, 23 Jun 2023 10:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2248C10E64C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 10:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687515804; x=1719051804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B3SJph1zqwSkFRX5Cww2ZvC4n1LuheI/yMiClvoN/zs=;
 b=jp6ZBYqyHC5KsVpC58t9pFT316H5+XS2M/WVElzfS/7/uctrs/OgSDo0
 YQsgfgCWGtphJPrfnE5Q3zVwv5rLFdgzAdLFTetVDR5cNSrZazow3nJfz
 HAqEUbsB2+u/qJVMZ1KPWgP9f7C6ESgtAURM0xBfCx4aG1Wil6RIIgoQB
 kos9HuReCgEE0I48595W5mXRYYDsuZcwz/pzsZNf11wvCymCE1GFkPWxC
 oaq+flwdH7EFYMYX083yq0tqY7Lr1XCKY+BuA31iEWxZVnD2hoARD7xYE
 04GCRbkvqRABRzh4cTllntoe7ffXuFYr9zwybM8PX2qYZq0QLoHE1etvQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="424417305"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="424417305"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 03:23:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="961920763"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="961920763"
Received: from wtedesch-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.233])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 03:23:21 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 23 Jun 2023 12:22:19 +0200
Message-Id: <20230623102220.343937-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230623102220.343937-1-andi.shyti@linux.intel.com>
References: <20230623102220.343937-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND 1/2] drm/i915/gt: Ensure memory quiesced
 before invalidation
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
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
index 23857cc08eca1..167faff318e26 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -202,6 +202,13 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
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
 		int err;
-- 
2.40.1

