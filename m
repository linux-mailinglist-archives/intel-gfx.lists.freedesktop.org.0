Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8187B05120
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 07:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BAD10E50F;
	Tue, 15 Jul 2025 05:40:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="df/RKW6F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389C310E510;
 Tue, 15 Jul 2025 05:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752558049; x=1784094049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iYwuETrdVf9vMiV0WALcE0orWor0Pekg1li3UL0rdF4=;
 b=df/RKW6FGamzjXxRYFlhjBh9T/idem/SBOQQ0gbU49U6gJdUv9fI+g3q
 /23xU+FvCrvSe712H3T2z64Qx3navzhQ6IDwE+YFiMEvqv/rkCokl1RtD
 /v6a5O/03EgE0v8Bhq16r1bKREeg/LByaWPdPIY2xIC6tgrHb/VO9LOnA
 OlhliZy6cHmsUtBOT7hQBMtGwQmXRdMoVDLTz1d2RVgYrYtc69YzgDPG7
 5LATVLBd5mqqYSY9n+NYOmoG1k89cfOpaiI4CmjqfkW3nFbqH0Dng+yw7
 vDH2TMvnPIsGDjGEFziHT4sYq4ztLsJc5Eo871bB8E/00rmkhDjPkhWu5 Q==;
X-CSE-ConnectionGUID: DeP6SR5jQDuEYWbnH37C5g==
X-CSE-MsgGUID: U64KwL2zQPSmFPIcGUH9Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54701879"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="54701879"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:49 -0700
X-CSE-ConnectionGUID: x/G7TZXkRmSZhAD/PowzBg==
X-CSE-MsgGUID: hm6fEhW9TmexzShI9oaYRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="157232339"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 7/7] drm/i915/psr: Use TRANS_PUSH to trigger frame change
 event
Date: Tue, 15 Jul 2025 08:40:24 +0300
Message-ID: <20250715054024.3856223-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715054024.3856223-1-jouni.hogander@intel.com>
References: <20250715054024.3856223-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Now we have everything in place for triggering PSR "frame change" event
using TRANS_PUSH: use TRANS_PUSH for LunarLake and onwards.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d3f4828279aa..b2fd601a437c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4282,5 +4282,7 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 
 bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
 {
-	return false;
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return DISPLAY_VER(display) >= 20 || crtc_state->has_psr;
 }
-- 
2.43.0

