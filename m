Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0FA81FF07
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Dec 2023 12:11:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5577510E28E;
	Fri, 29 Dec 2023 11:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3C710E28E;
 Fri, 29 Dec 2023 11:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703848270; x=1735384270;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uu234CAaECbHgWP+k1RYVl0ZXipe5oU9nmz0akr/2QA=;
 b=Tb0UeD2GYRnZd/kSiRuDUanyn8r3ub1AxpFkImDI5aVohLrtuCgEkCXJ
 uMPtDgV2oremZu5PiSfs08Vdn7cUFp6Xpsp15kzkXyD2GYSqPmnoFKCrs
 i/rQ/cmX30r9lt7In1H1i7FkUzBaeU2vheaW09ORcXcYAklV+bLRN7SdN
 ML7a/uEMP72Dm9Q8bFuS2CNIlgjhqXZOHafvMXLS6WF7ITp/4txT4htti
 16/k6k0aTPiyh+S44WaMRgNQdSNTvuoKrav1embVBSsFB8nFiONYWFhZd
 mOBGoBHOS0WyjVOv0j5A+Jwab3SP1FC2h/W7LFdNyaFUXh6HTu3dxFBIE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="10027350"
X-IronPort-AV: E=Sophos;i="6.04,314,1695711600"; d="scan'208";a="10027350"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2023 02:30:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="813017170"
X-IronPort-AV: E=Sophos;i="6.04,314,1695711600"; d="scan'208";a="813017170"
Received: from jquigley-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.51.13])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2023 02:30:46 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Subject: [PATCH v4 4/4] drm/i915/guc: Use the ce_to_guc() wrapper whenever
 possible
Date: Fri, 29 Dec 2023 11:27:34 +0100
Message-ID: <20231229102734.674362-5-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231229102734.674362-1-andi.shyti@linux.intel.com>
References: <20231229102734.674362-1-andi.shyti@linux.intel.com>
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Get the guc reference from the ce using the ce_to_guc() helper.
Just a leftover from previous cleanups.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 17629e26e899..7d73e056cd76 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3513,7 +3513,7 @@ static inline void sub_context_inflight_prio(struct intel_context *ce,
 
 static inline void update_context_prio(struct intel_context *ce)
 {
-	struct intel_guc *guc = &ce->engine->gt->uc.guc;
+	struct intel_guc *guc = ce_to_guc(ce);
 	int i;
 
 	BUILD_BUG_ON(GUC_CLIENT_PRIORITY_KMD_HIGH != 0);
-- 
2.43.0

