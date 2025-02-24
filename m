Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3DBA42180
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491FF10E532;
	Mon, 24 Feb 2025 13:42:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KNmGvMjN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F030610E12A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 06:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740377263; x=1771913263;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6VHWhiEegxCt35w1KI6QrVoasDkZYefpvDND8yT0Rcs=;
 b=KNmGvMjN6hyMM1Iqev+apD/ZsBrYSOnab0JS6TqHbQbjymlJlj6arpsp
 L/7M/1qdvrAVTwCx1gbj7eFzD3AGhZG7DLX1VSVDm5vokG3F2Uo2ZJ6Zm
 BbQOiJBixve5Xb6+6LH3UOgpVCFYxjhZ/EroAOrYsyDuNGom/7Wku91pT
 ssqZdtagjme2W7U3CPB8jNPZsyfMawso7IiG7hAgjM1bGCoblEAG3ZIgu
 IVDYjWzzaRm+7kSYbQNUyom8XE9doY1BA9FOX9Hz14FByR2jBH0K2pxqV
 /BSvxKgXbJ3BVP+EW+J5bjjhaDiWY7GH9ieIsfAEN66n6wDLAwvJLi6sM w==;
X-CSE-ConnectionGUID: +Otm2bqiT8qwzF7bOBaEHg==
X-CSE-MsgGUID: QNaEyvrnTWGdivEB7YYX7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="52521421"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="52521421"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:07:43 -0800
X-CSE-ConnectionGUID: 2H5IfyUaSeSRRZjhYbowTg==
X-CSE-MsgGUID: Adovw+aKR/yo/hSLFjvYcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="153158582"
Received: from unknown (HELO nitin-Super-Server.iind.intel.com)
 ([10.190.238.72])
 by orviesa001.jf.intel.com with ESMTP; 23 Feb 2025 22:07:41 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@intel.com,
	andi.shyti@intel.com,
	nitin.r.gote@intel.com
Subject: [PATCH] drm/i915/gt: Add a delay to let engine resumes correctly
Date: Mon, 24 Feb 2025 12:01:04 +0530
Message-Id: <20250224063104.308242-1-nitin.r.gote@intel.com>
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

Sometimes engine reset fails because the engine resumes from an
incorrect RING_HEAD. Engine head failed to set to zero even after
writing into it. This is a timing issue and we experimented
different values and found out that 20ms delay works best based
on testing.

So, add a 20ms delay to let engine resumes from correct RING_HEAD.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13650
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 6e9977b2d180..5576f000e965 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -365,6 +365,13 @@ static void reset_prepare(struct intel_engine_cs *engine)
 			     ENGINE_READ_FW(engine, RING_HEAD),
 			     ENGINE_READ_FW(engine, RING_TAIL),
 			     ENGINE_READ_FW(engine, RING_START));
+		/*
+		 * Sometimes engine head failed to set to zero even after writing into it.
+		 * Use 20ms delay to let engine resumes from correct RING_HEAD.
+		 * Experimented different values and determined that 20ms works best
+		 * based on testing.
+		 */
+		mdelay(20);
 		if (!stop_ring(engine)) {
 			drm_err(&engine->i915->drm,
 				"failed to set %s head to zero "
-- 
2.25.1

