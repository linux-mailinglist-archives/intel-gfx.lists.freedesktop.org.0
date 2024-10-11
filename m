Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B2D99AEEC
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2060B10EB2F;
	Fri, 11 Oct 2024 22:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RhB0YOzz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B64A110E2F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687314; x=1760223314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DKCTEAUKcc+m3zQPFPKjJibAT+1v6z2TBQ64gUoCZZM=;
 b=RhB0YOzz5cexcKalDxuEV14B/EKvvXVz541UbM/saiwfaXbJcC+lSiBA
 2d/0Z7iVkl67nhYHUhtF12nLF+n68peyYCU4q6qtlBVQjA6jH/7KhBecl
 xawIjqHd4LNibytGJhKy7NiPmS9SdhJ9ZJoLQtVFr8J1SJh2kyN7IloPP
 q5xXSS5Za7ZNnCnpkpg7jgnrFjtpQ9Zm/QbAaH8Y4WNjSccu7suwzIX1K
 d0i0k0cNeyqK0lr+LHSB66M9LGuQEbcJJjC2viWKl67RCylHXw3skt1HJ
 r0tNr1vKJRoIlkFcqNT8mNb2dYxIb/KzPnIkwO7h7ql5WoSLv4rKa+m1E g==;
X-CSE-ConnectionGUID: bpqZ4jicQnWqIXR5DU5lZw==
X-CSE-MsgGUID: TcJigtnJQ1q/kHr9sU5B5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519757"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519757"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
X-CSE-ConnectionGUID: nyXh3GAGTRqA0F5pa0VyyA==
X-CSE-MsgGUID: DNeaGxsUTmWfqzV5vTf3Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040425"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 7/8] drm/i915/pmu: Remove pointless synchronize_rcu() call
Date: Fri, 11 Oct 2024 15:54:29 -0700
Message-ID: <20241011225430.1219345-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241011225430.1219345-1-lucas.demarchi@intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
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

This is already done inside perf_pmu_unregister() - no need to do it
before.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index e28c29bae2d9a..2f8004ade6d36 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -1338,13 +1338,8 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	if (!pmu->registered)
 		return;
 
-	/*
-	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
-	 * ensures all currently executing ones will have exited before we
-	 * proceed with unregistration.
-	 */
+	/* Disconnect the PMU callbacks */
 	pmu->registered = false;
-	synchronize_rcu();
 
 	hrtimer_cancel(&pmu->timer);
 
-- 
2.47.0

