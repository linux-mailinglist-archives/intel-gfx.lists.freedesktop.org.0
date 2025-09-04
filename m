Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C85B4466B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 21:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C8C10EABD;
	Thu,  4 Sep 2025 19:30:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CBhstV+U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D566E10EABD
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Sep 2025 19:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757014243; x=1788550243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9Jkqjj3CmmjSU/icnl1IG0k6NyIrbuQOWSNBwxq/Dcc=;
 b=CBhstV+U9bx1h2jWewPixXC8XcUHrc3/Cn9PDV88QrW0Mowt19AP87aj
 L/fzAhRX/dYj1RVX8874T8c99JjGebZ+mojENWTxgosq6duov5JtoWj0b
 30suSKEwmxyd54Q8w07xQoVi6UuO4h6yOAf4TiKlWpy4Qm9qrn/nFyGUc
 VNuZugxHzJ8do8VmAPfm/InUMAmgLwUgUOIARee46iX306y9fpregVqWo
 xCy4dqRWdU+dJulHNoxH/rN1FBZdITBpmi46pCXIGlab726egg5s1rfCU
 qA3gmabp5n91JbwoI9K+srNB9Aa14YCQf/hOJBHy/eW/qhUI48XPk1fQC Q==;
X-CSE-ConnectionGUID: PcagmF5/RSa0xi+ymyAgNA==
X-CSE-MsgGUID: MzY8xZR1RwKLAft8c3Bb4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63005168"
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="63005168"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 12:30:43 -0700
X-CSE-ConnectionGUID: W4DWNS21TNyvX732cRSEPg==
X-CSE-MsgGUID: UGJlnfTaSzmplbVahB0Y+A==
X-ExtLoop1: 1
Received: from dut4066lnl.fm.intel.com ([10.105.8.59])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 12:30:42 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 andi.shyti@intel.com, krzysztof.karas@intel.com,
 sebastian.brzezinka@intel.com
Subject: [PATCH] drm/i915/gt: Fix memory leak in hangcheck selftest
Date: Thu,  4 Sep 2025 19:30:42 +0000
Message-ID: <20250904193041.12888-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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

In active_engines, if intel_context_create fails, we need to go
backwards through all the created contexts to free/put them.  However,
the way this is currently performed skips the first created context, as
if count == 1, then --count returns 0 and exits the while-loop
prematurely without performing the intel_context_put on context 0.

Fix this by post-decrementing count in the while-loop, rather than
pre-decrementing it.  This change makes the prior guard against count
underflowing unnecessary, as the while-loop exits when count == 0.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 619c70c54ef9..4f252f704975 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -904,9 +904,7 @@ static void active_engine(struct kthread_work *work)
 			arg->result = PTR_ERR(ce[count]);
 			pr_err("[%s] Create context #%ld failed: %d!\n",
 			       engine->name, count, arg->result);
-			if (!count)
-				return;
-			while (--count)
+			while (count--)
 				intel_context_put(ce[count]);
 			return;
 		}
-- 
2.43.0

