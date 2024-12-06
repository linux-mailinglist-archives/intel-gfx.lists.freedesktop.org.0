Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2BC9E69FC
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 10:25:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A09710F033;
	Fri,  6 Dec 2024 09:25:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FjxhmDRl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D4710F033
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 09:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733477105; x=1765013105;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ev75U/xnxUlxjcdjUDcsdIMz3cd0ySp0IZYPvgozjeE=;
 b=FjxhmDRlGmTt0MRkY7Wb9drLLAzFGn8ZezT+Eq2X4ghjJ4NJ34ZllisO
 I81hpK50RHCiC3M258qGX7wiP1QG2SPnwEcNzPShsuLHgM/R3uoGFqoXn
 dLq33STjzhCzq0IO0tLJdg6mBxgiZkCOP9AN+fDXNOTH8CWCqJn43gmxJ
 Q7lnXFGarGGX+1fketFlL/DLJVqPI7FXXt3jEhSOuw6973zRxcsIBy2ec
 5yCcWad20+PwC4KW/UwuT8Cyh/KHgPEoK7XGDzajwopaCk3bP4AVxdC4e
 qUUuhyiHfbG/qrZQfDAhoorKkYywRn09/wKUtFMp8xKAZkj5pl0S61++E g==;
X-CSE-ConnectionGUID: dbezJlsbSDirmh1McBdrkg==
X-CSE-MsgGUID: x+glRTmYSn2rHJ0e69LCNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="44842510"
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="44842510"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 01:25:03 -0800
X-CSE-ConnectionGUID: /do/kGTATASwFRQPceM8Fw==
X-CSE-MsgGUID: EYJRtGJ7Q1GZB5hgQ8id6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="94167950"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa010.jf.intel.com with ESMTP; 06 Dec 2024 01:25:01 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 nitin.r.gote@intel.com
Subject: [PATCH v2 1/1] drm/i915/gt: Increase a time to retry RING_HEAD reset
Date: Fri,  6 Dec 2024 15:15:43 +0530
Message-Id: <20241206094543.1638580-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
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

Issue seen again where engine resets fails because the engine resumes from
an incorrect RING_HEAD. HEAD is still not 0 even after writing into it.
This seems to be timing issue and we experimented different values from 5ms
to 50ms and found out that 50ms works best based on testing.
So, if write doesn't succeed at first then retry again.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 32f3b52a183a..bc9f28524713 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -231,7 +231,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	set_pp_dir(engine);
 
 	/* First wake the ring up to an empty/idle ring */
-	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
+	for ((kt) = ktime_get() + (50 * NSEC_PER_MSEC);
 			ktime_before(ktime_get(), (kt)); cpu_relax()) {
 		/*
 		 * In case of resets fails because engine resumes from
-- 
2.25.1

