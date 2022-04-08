Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 158794F9629
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 14:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CFD910F163;
	Fri,  8 Apr 2022 12:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDF210F128
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 12:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649422276; x=1680958276;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xgrvevO6W9+bevhqZ83qCfJFS4mYq9Y4WOvMHyOgr1E=;
 b=nOhxZijh8DwRoC2PWRCDQSLc8YMkVdX1TRTCxP3Ya+pleTlrs8RdDXoc
 4ScN09/RLMVvy4nT0KlEcSRvIj0oU3zyctmsHR6h19VIG1ajQZwsfVz3v
 pPm9pTmyan1lRUEy7lKydWsBULnu4N0Ub0TsevSwmozjimBvz67pt7ep/
 3vkWFWTwNHc385PxKaGBXOBH4aQi5pr5+1thgpHKTVXm8lsu91pXXHI02
 JtEJnktZvdbzWDnLOUfcB/syap1fYXq1LC5xmSHIRd4+XrL97nGo3Xq7g
 +TQVveqkapVe3K9LApkE2KZ3vHMbkQsBf8m/nBlz7KP+8NO2BJzQHw1V6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="322273321"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="322273321"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 05:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="550491211"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga007.jf.intel.com with ESMTP; 08 Apr 2022 05:51:14 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Apr 2022 15:51:59 +0300
Message-Id: <20220408125200.9069-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
References: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix skl_pcode_try_request function
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

Currently skl_pcode_try_request function doesn't
properly handle return value it gets from
snb_pcode_rw, but treats status != 0 as success,
returning true, which basically doesn't allow
to use retry/timeout mechanisms if PCode happens
to be busy and returns EGAIN or some other status
code not equal to 0.

We saw this on real hw and also tried simulating this
by always returning -EAGAIN from snb_pcode_rw for 6 times, which
currently will just result in false success, while it should
have tried until timeout is reached:

[   22.357729] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Changing CDCLK to
307200 kHz, VCO 614400 kHz, ref 38400 kHz, bypass 19200 kHz, voltage level 0
[   22.357831] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 1
[   22.357892] i915 0000:00:02.0: [drm:skl_pcode_request [i915]] Success, exiting
[   22.357936] i915 0000:00:02.0: [drm] ERROR Failed to inform PCU about cdclk change (err -11, freq 307200)

We see en error because higher level api, still notices that status was wrong,
however we still did try only once.

We fix it by requiring _both_ the status to be 0 and
request/reply match for success(true) and function
should return failure(false) if either status turns
out to be EAGAIN, EBUSY or whatever or reply/request
masks do not match.

So now we see this in the logs:

[   22.318667] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Changing CDCLK to
307200 kHz, VCO 614400 kHz, ref 38400 kHz, bypass 19200 kHz, voltage level 0
[   22.318782] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 1
[   22.318849] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 2
[   22.319006] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 3
[   22.319091] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 4
[   22.319158] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 5
[   22.319224] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 6

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pcode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 391a37492ce5..fb6c43e8a02f 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -136,7 +136,7 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
 {
 	*status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
 
-	return *status || ((request & reply_mask) == reply);
+	return (*status == 0) && ((request & reply_mask) == reply);
 }
 
 /**
-- 
2.24.1.485.gad05a3d8e5

