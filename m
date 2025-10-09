Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3967BC7D1D
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4262610E969;
	Thu,  9 Oct 2025 07:55:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHfcLeC1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D22910E969
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 07:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759996543; x=1791532543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W11gCCSQxh4FP1RarZ6/OiIVU6THacl5nR367hwXdXM=;
 b=aHfcLeC1hN+q7UY7kwcU9E4QnSBxlmFVpt/0udiHkH1H58UcC1peq4Jr
 bGb3m0CnzTn5HKeRCsLct6Fjr+DaSLedw+1MqlvxL2q3VzPemEbPA6O7K
 JhNTmxJ6ILBHRhVQJudj4dZOsN6WBrPK5wOe1PiwzhhSrHNAiOBOnxBUE
 7W3Xn/hi3DRhsXx7FnAYsI6sIQ4e4olRFyUvNHC0hrl3CrpW7CzawZHqa
 0z1P0fDjU4Z9Eelp+L6sDSx6fBBjLAZhc++CNaxjY7F0IuMb8PE4Km9Ok
 1pMm4f38UHS83Iumq9qKUo9VFdaoRIMRQMEczAWIHxAwNXFlSVALJh9hs w==;
X-CSE-ConnectionGUID: v2o58/9WRWebkruQk9YOeQ==
X-CSE-MsgGUID: 7EW38i9pRXGIbDVFYna9qA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72880730"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72880730"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:43 -0700
X-CSE-ConnectionGUID: BKJzFm3nTcq08BOF/Qzh/A==
X-CSE-MsgGUID: N9glhXoaRA6T4xb/g+mTGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="211600951"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.0])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:41 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 3/7] drm/i915/wm: remove stale FIXME in
 skl_needs_memory_bw_wa()
Date: Thu,  9 Oct 2025 10:54:34 +0300
Message-ID: <20251009075517.837587-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009075517.837587-1-luciano.coelho@intel.com>
References: <20251009075517.837587-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This FIXME has been there forever and apparently the _proper code_ has
never been added, and, since it's a very old platform alreday, most
likely never will.  It hasn't been a problem to keep the workaround
for all cases, so let's drop the FIXME tag.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 5e69fe034d6a..3a982458395e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -83,8 +83,8 @@ u8 intel_enabled_dbuf_slices_mask(struct intel_display *display)
 }
 
 /*
- * FIXME: We still don't have the proper code detect if we need to apply the WA,
- * so assume we'll always need it in order to avoid underruns.
+ * We don't have the proper code detect if we need to apply the WA, so
+ * assume we'll always need it in order to avoid underruns.
  */
 static bool skl_needs_memory_bw_wa(struct intel_display *display)
 {
-- 
2.51.0

