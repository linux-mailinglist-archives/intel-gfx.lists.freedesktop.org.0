Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE5C294949
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 10:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7726EA7C;
	Wed, 21 Oct 2020 08:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0498D6EA78
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 08:21:49 +0000 (UTC)
IronPort-SDR: LbZHV1ygvewZOemjPSkRIXbcLeVBjUymLxGWfP/WYT9me+Og3AkDtsLGxldb9bbFMMib1Ge7YI
 8lqHCC69NYTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="167452510"
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="167452510"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 01:21:49 -0700
IronPort-SDR: KJ7nkIe/sP62kEBdhHno2cYygK+rp4xF7Oh/RcDWIp06XXMHRux+ZAan07VeqzDwUbwAa9K3e9
 Ncjd0LLjVwxg==
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="316303291"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 01:21:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 01:20:34 -0700
Message-Id: <20201021082034.3170478-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021082034.3170478-1-lucas.demarchi@intel.com>
References: <20201021082034.3170478-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/dg1: Implement WA_16011163337
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

From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

Set GS Timer to 224.
Bspec: 53508

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 8d24ea769fe6..cd0c5847e2df 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -684,6 +684,11 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
 	/* Wa_22010493298 */
 	WA_SET_BIT_MASKED(HIZ_CHICKEN,
 			  DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE);
+
+	/* Wa_16011163337 */
+	wa_add(wal,
+	       FF_MODE2,
+	       FF_MODE2_GS_TIMER_MASK, FF_MODE2_GS_TIMER_224, 0);
 }
 
 static void
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
