Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCE99C1D85
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B3910E99E;
	Fri,  8 Nov 2024 13:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f9vLSudW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BAFC10E984;
 Fri,  8 Nov 2024 13:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070983; x=1762606983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qbC+v05l0Nw8rcZT6b+g9fYV7+aP0Qavjn1ycZRrbdk=;
 b=f9vLSudW4hAaVxPl3g5hcpoo63sQfYAMdKDStH+j35X5zMf+JifUQ57e
 uf7MB8TkqrAzald/husYnhkCrMv8qAL2LPKdEG9/9bjFsT8lZYUHlyyxT
 4TWtt84xWxhgVb+zphLtsjMzKdPjLYcu0JNCo+GjuLeJhgcp4L8+w/hdM
 H8cWcBHBYMbLGFLJFc5DTw+8sgQNP4YkilacSAEnpTe4xZTOTHvYXogjc
 6abx3nijXW0nPuSVb4+Cls9rX1klZTurX5GUmPClBRMTLGH540Rpo7MWE
 l60yynm4GYImSjoiLgAIYk5QC70rIerm7tFBUemat6yVYiSoA8dPzlp6d A==;
X-CSE-ConnectionGUID: S4LyNuEMTS6XyWTBRJ7JUA==
X-CSE-MsgGUID: SMN93kH9RX2UD6ZRMhIqxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513125"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513125"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:03 -0800
X-CSE-ConnectionGUID: BPXzdXVpQ+aKK2ei1KDkag==
X-CSE-MsgGUID: 9uWjCNg8S0Cx/mBtbB8jmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692475"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:02:47 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 04/15] drm/i915/dmc_wl: Check for non-zero refcount in
 release work
Date: Fri,  8 Nov 2024 09:57:09 -0300
Message-ID: <20241108130218.24125-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

When the DMC wakelock refcount reaches zero, we know that there are no
users and that we can do the actual release operation on the hardware,
which is queued with a delayed work. The idea of the delayed work is to
avoid performing the release if a new lock user appears (i.e. refcount
gets incremented) in a very short period of time.

Based on the above, the release work should bail out if refcount is
non-zero (meaning new lock users appeared in the meantime), but our
current code actually does the opposite: it bails when refcount is zero.
That means that the wakelock is not released when it should be; and
that, when the work is not canceled in time, it ends up being releasing
when it should not.

Fix that by inverting the condition.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 9255505437d5..a0a060706305 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -76,8 +76,11 @@ static void intel_dmc_wl_work(struct work_struct *work)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	/* Bail out if refcount reached zero while waiting for the spinlock */
-	if (!refcount_read(&wl->refcount))
+	/*
+	 * Bail out if refcount became non-zero while waiting for the spinlock,
+	 * meaning that the lock is now taken again.
+	 */
+	if (refcount_read(&wl->refcount))
 		goto out_unlock;
 
 	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
-- 
2.47.0

