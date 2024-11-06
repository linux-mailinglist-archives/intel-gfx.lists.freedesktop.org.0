Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C6E9BF8AE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD03610E781;
	Wed,  6 Nov 2024 21:52:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGVf8ZCp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1D4910E77F;
 Wed,  6 Nov 2024 21:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929971; x=1762465971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qbC+v05l0Nw8rcZT6b+g9fYV7+aP0Qavjn1ycZRrbdk=;
 b=XGVf8ZCpJe54JMN4NCvq+2RmKDpa1hApPz9XO8tAVUESRJ0fMOGi+e7/
 FGfuwS5jNI+OUyWLqrh+ubKtO+k/glLbO4GrsH/Xt4gjWkGxW2xII+k5o
 D9dlQ8+swZjGcJNDxoxBcg524/eMvogqtur2nxPAyPAF412FIE1PcMbZF
 TUMuoCDROWzC9d1jEmIBPu9XZvX9SpuL7qaduGCu88ALsP2ddnnD/3qX8
 Ap+q3lwT1jWmbMeUuNv3E4eBt60atV3Zn0EJaQ1Xx/RTfTBGlj24sTgXf
 C04JxRtIWyg7xRdBUtoXDJHMvLfiztU34PEk0Rf5aB3IJ280qJKExbgH7 g==;
X-CSE-ConnectionGUID: k1m1IWIGRPqIWTLx20UVNg==
X-CSE-MsgGUID: qAWDAqCeT3mm2BMIm5R6Ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212154"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212154"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:50 -0800
X-CSE-ConnectionGUID: w3bCN3ssSzq1AzIRmJHLwg==
X-CSE-MsgGUID: FaFtiog1Ruy0XrU58WGwCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882468"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:49 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 04/17] drm/i915/dmc_wl: Check for non-zero refcount in
 release work
Date: Wed,  6 Nov 2024 18:50:30 -0300
Message-ID: <20241106215231.103474-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

