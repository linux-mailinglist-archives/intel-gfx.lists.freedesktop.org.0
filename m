Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0D373385A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 20:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C35D10E67B;
	Fri, 16 Jun 2023 18:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C7E10E67D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 18:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686941468; x=1718477468;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oLSIHyE74lj8eMINsNWDOdvEY8QL2+Tm2Xo1gHDzab0=;
 b=iNfCt3XhsB1ybheyOb4HKlsyNVN4FQ7pD5zWIlLLbbP58v4rTioOa3Tc
 5kFLJkjVAqWlhPMFw5XehYC5YigcDNsdTNdXKl6mo/WlBqa2HfEmEEmhE
 WaEKkwtD/v/1LfItBX2tS1xFOXyAgJfHVa22IVHQuId97fRrrpZHyItDE
 i1D48gZ9Nnxtweoi0EZ/NExBcw9vXoyTTTYbIwpJX1T3jRPKPm2YwcKMP
 VgJQy3YJsId8l2Ct9GeopJzrsGLlHiB1HX5IyXwN1JKXPCyltNV9pD7+h
 kG2d6ErrYm1r6aojw9iQb7q94gLKaJrePZF+L5XgEqJ7xwugcRl+4JcTG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="356778205"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="356778205"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 11:51:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="887198421"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="887198421"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 11:51:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 21:51:04 +0300
Message-Id: <20230616185104.2502003-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230616185104.2502003-1-imre.deak@intel.com>
References: <20230616185104.2502003-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Prevent needless toggling of DC
 states during modesets
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

DC states are disabled / re-enabled around each modeset, which may lead
to a needless off->on->off toggling of the DC_off power well. This has
some overhead as toggling DC states involves running a DMC firmware
handler and also running a periodic firmware handler while DC states are
enabled. The limit of when DC states have a benefit is at 30 FPS (using
DC3co) and below 30 FPS (using DC5/6), where the firmware can actually
disable clocks / power off power wells. Accordingly delay powering off
the DC_off powerwell (which re-enables DC states) by 17 ms at the end of
a modeset to avoid the above overhead at or above 60 FPS.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dd52c689267f4..de77d130d6f9f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7148,7 +7148,11 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore);
 	}
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DC_OFF, wakeref);
+	/*
+	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
+	 * toggling overhead at and above 60 FPS.
+	 */
+	intel_display_power_put_async_delay(dev_priv, POWER_DOMAIN_DC_OFF, wakeref, 17);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 
 	/*
-- 
2.37.2

