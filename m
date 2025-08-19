Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBE0B2BA20
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 09:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA6210E550;
	Tue, 19 Aug 2025 07:04:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YNWB8D7i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACA2810E547;
 Tue, 19 Aug 2025 07:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755587059; x=1787123059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IolXGu4ndMfVxmpkPik6iqviJUiYiSu6RJEHHNh0qF8=;
 b=YNWB8D7iPuabBzWkMeFma5GDNMwDWw5djS1rkqku9f9G8qj+lOGSAZs6
 WAiP2enCaqszSJLHyKCV1qEVBcahlzeinKjZ/bskDhKHL1DDbNnF2Os6Y
 EZVWl8K4itzIiSGeasR21KbcIJOpy9Utdhb3MAluIvUPjPNQ1JYitmyD2
 0xypTZjRBQFXh1LXWAC0ll4SUiNNBRlQqJ3H7KwzO2as17/4KPBer7Qia
 CraOtLB4gcMxJQla+zJxswjqYZU+OpjovTMNDGJ/wZ6vdIvqRd/yYsc52
 k0OF6tiiWsKjLpURiP3ARt14hLS/sPS0/PMZhE+FNQNZZTnTPoidIsj0c w==;
X-CSE-ConnectionGUID: ilGro9FuR/eYRiwsay9GUA==
X-CSE-MsgGUID: Vs3ReDfVTg+i3UIZ55YzUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="75392394"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75392394"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 00:04:19 -0700
X-CSE-ConnectionGUID: rzNNvyG0TVGQcbx+RGqPhg==
X-CSE-MsgGUID: Bv4EHvCQSlu16+2gA4Y2ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168008322"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.65])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 00:04:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 6/6] drm/i915/psr: Use TRANS_PUSH to trigger frame change
 event
Date: Tue, 19 Aug 2025 10:03:53 +0300
Message-ID: <20250819070353.3062341-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819070353.3062341-1-jouni.hogander@intel.com>
References: <20250819070353.3062341-1-jouni.hogander@intel.com>
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

v3: use HAS_PSR_FRAME_CHANGE macro
v2: use AND instead of OR in intel_psr_use_trans_push

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6481e3f6eca3..09d46010d13c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4263,6 +4263,7 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 
 bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
 {
-	/* TODO: Enable using trans push when everything is in place */
-	return false;
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return HAS_PSR_FRAME_CHANGE(display) && crtc_state->has_psr;
 }
-- 
2.43.0

