Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F295D4F29C5
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 12:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 356DA10E61B;
	Tue,  5 Apr 2022 10:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5384710E610
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 10:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649155229; x=1680691229;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ILOctOrMma5HgUcaxgvAJiGXFGejWzn7cNTuUfFpiHU=;
 b=L/KLh5dJlJ4k+mYHC+ME6ug6t+evvfvrTQE+2Xl4KhyvJ9thygGrtulj
 B70mwtyPbY2Bv+5hT2KA4VfXUG5Ag753FfppBUDvCIjTe9UCbEEtU75Jn
 nC/D6eXqO6ZdZLS/M/3XelGoFmPX+1pTf+aDTmCZwFjJxR+rmDsvnKa6x
 FUMmANNorL33yzY5UCkopqjh3GOBAd4K6GOvkGrmnWATdCtkyWU0VKATw
 eVP3oH5XqU1Y685arJjBP622CahP1Nmp/a25U9uP7LVg8w70I+k3rifyU
 tl0pEHO3EWFB0cTXZxfymoNi6VGHtGrOfG0ckFDDDrGD6fE61wX5eDckA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="260895089"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="260895089"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 03:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="641564584"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Apr 2022 03:40:27 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 13:41:14 +0300
Message-Id: <20220405104114.20780-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix skl_pcode_try_request function
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

