Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3680D9ADABB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 05:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8994E10E89F;
	Thu, 24 Oct 2024 03:56:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m04+0L2q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53EC510E89F;
 Thu, 24 Oct 2024 03:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729742175; x=1761278175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BlIR1Bp3m6Hwiy1JUDcHgld/mahDUZa5oWAlF3gBO2A=;
 b=m04+0L2qOZVx/Dg/4IHvMCh8XiLhcF84dnX60SsN+t4DYPHJVloxhvyN
 muQfCGVsRE4Fhr1YFmhFpH5GJgxwlklTx4klWujmaR+VYnCTrhMeZmLsk
 mLrSFgiGLMNJu62aM5TnhF8yXzf8TmXDX0OG3GnoEcAZSOGKBp+sYm9Yr
 kNmu6yCZmIGEjvLc+DL+BFbPHueTuFU6mqZUBUA/R/ec9EdMv1bbtMvSH
 TsGTrX3rZShfQwMS0/+xlg3gYRaUKlTQzqQmt+gOWVJt4prJN/vavNZas
 m0x5O383BZTam22lJRdHChm+NYq0rnje+AlRivKkjfT4qV3RrCetjA6Ev g==;
X-CSE-ConnectionGUID: unD5KMJ5RIGwaE+EThXbPg==
X-CSE-MsgGUID: af2ybpQKR76EHAIoRxztiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28818511"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="28818511"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 20:56:15 -0700
X-CSE-ConnectionGUID: ZOHVMk4RTf6r7H+8rn1Owg==
X-CSE-MsgGUID: 8DnkSAbVSwOPTxiyllNNTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80128114"
Received: from linux-lunar-lake-client-platform.iind.intel.com
 ([10.227.88.172])
 by fmviesa007.fm.intel.com with ESMTP; 23 Oct 2024 20:56:13 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/4] drm/i914/xe3lpd: Increase bigjoiner limitations
Date: Thu, 24 Oct 2024 09:25:51 +0530
Message-Id: <20241024035552.94363-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241024035552.94363-1-suraj.kandpal@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
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

With 6k resolution support for a single crtc being added
bigjoiner will only come into picture when hdisplay > 6144

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbb096be02ad..e0baad468d76 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1313,14 +1313,17 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int hdisplay_limit;
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
 	num_joined_pipes /= 2;
 
+	hdisplay_limit = DISPLAY_VER(i915) >= 30 ? 6144 : 5120;
+
 	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
-	       hdisplay > num_joined_pipes * 5120;
+	       hdisplay > num_joined_pipes * hdisplay_limit;
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-- 
2.34.1

