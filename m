Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F707B0C268
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 13:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4462E10E505;
	Mon, 21 Jul 2025 11:14:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xwma816j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3199910E4F5;
 Mon, 21 Jul 2025 11:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753096475; x=1784632475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WBZCx6VAPD8Q+jezwP7+wyI7qhgMjWaInHd/dCcyTX4=;
 b=Xwma816jd70HrQ14O2+di7LMkYN3vItfQAQ/DfhqPhHeY82jgv0rFtCD
 V1YZY7HlX8Xj7HiM/iVDUPujYg/eHN0OeNvu2GXcbqmZUwQajLGIrt3PS
 huMoJ894yKrReouUavC6kIkx4Ymlfu6oEgzr3KNJKqBdK9WbWyBOTFZyj
 TBb6EPg1mYwNSbuDjMA9WceWcckTv/P8/A0lhdbTp5wrNoVSVLJnwnKMc
 X5/bpGInovO/E73LHIaHCEhLvby24dazsPNS9rqJ3x4ZsJojrQkhT+XBw
 aqa3fRsDP/wE7vN8RoPueZFF0qDxn9cIzhwF40UYLhEGH5VmmzgVU3g0M g==;
X-CSE-ConnectionGUID: gybfVsVVQOWENUBygxwSSw==
X-CSE-MsgGUID: JYwsAm/eT5WliPmNLStXzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55427308"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55427308"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:14:35 -0700
X-CSE-ConnectionGUID: JNY+etPvQwWUNcophh52hA==
X-CSE-MsgGUID: +hzYPBhcQZqfoYNDei+nEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="159146217"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.64])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:14:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 7/7] drm/i915/psr: Use TRANS_PUSH to trigger frame change
 event
Date: Mon, 21 Jul 2025 14:14:06 +0300
Message-ID: <20250721111406.1468064-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250721111406.1468064-1-jouni.hogander@intel.com>
References: <20250721111406.1468064-1-jouni.hogander@intel.com>
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

v2: use AND instead of OR in intel_psr_use_trans_push

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 172b1070c7b7..ea6356d10b3a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4261,5 +4261,7 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 
 bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
 {
-	return false;
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return DISPLAY_VER(display) >= 20 && crtc_state->has_psr;
 }
-- 
2.43.0

