Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF58B27BAE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Aug 2025 10:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8BF10E365;
	Fri, 15 Aug 2025 08:52:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PajzIMCJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8894010E8F1;
 Fri, 15 Aug 2025 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755247942; x=1786783942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dwuvpX7AXx533V87IdmZ2WbG2sfghrcKAScIo/n5E8k=;
 b=PajzIMCJOW8bLxih3CG4j8qx0EZ82DzPDFr/WRxkuwuBQucKIy0Ns3QB
 vaaVsxQkm2XO+TQtINQXI40Fs3Aw3duVuwV+Jjui0hEyJwQGY/NetW0Y1
 oXIPAc2yEEsTeDxiWojF7doMlfXO5E2TIufiCto0zHs9BuY3xX0u6tfrO
 9LGU20g4BzHDlMfOJyH+PgwE6kXijqqEwK8mJDFlV0jDp9e8RY3ZnY0tb
 nAJTB0YmXCAd2/15bPP9Bvrt3T7P+kYHbpfGWZLgqwoZV5nZxwCOWbdEp
 ytvRSMkdFhijyVzFg3ZB01lOOtxJHyAstEM8A2cuM2mMgvDuIr3pN+FL4 w==;
X-CSE-ConnectionGUID: 89EQaY6tR0m+jSJqJsx0xQ==
X-CSE-MsgGUID: c8xBpB1hQMOnJP026Y/KUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="57647500"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="57647500"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:52:22 -0700
X-CSE-ConnectionGUID: sFwVrInBSriSM7ZJ8/NyKA==
X-CSE-MsgGUID: mAQOZ2SfSaKUSyy6VA5CqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="167233450"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:52:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/3] drm/i915/psr: Check pause counter before continuing to
 PSR activation
Date: Fri, 15 Aug 2025 11:45:34 +0300
Message-ID: <20250815084534.1637030-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250815084534.1637030-1-jouni.hogander@intel.com>
References: <20250815084534.1637030-1-jouni.hogander@intel.com>
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

Currently intel_psr_work is re-activating PSR even when pause_counter > 0
which is incorrect. Fix this by checking pause_counter before re-activating
PSR.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14822
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3930d28e3486..c6715dd44418 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3214,6 +3214,9 @@ static void intel_psr_work(struct work_struct *work)
 		goto unlock;
 	}
 
+	if (intel_dp->psr.pause_counter)
+		goto unlock;
+
 	/*
 	 * We have to make sure PSR is ready for re-enable
 	 * otherwise it keeps disabled until next full enable/disable cycle.
-- 
2.43.0

