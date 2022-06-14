Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F74054B097
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 14:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2EBF10F98B;
	Tue, 14 Jun 2022 12:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004EE10F98B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655209834; x=1686745834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XoXmY/ahNbxNOTPHC/RsKTjtPEaIJ01CJNz09/XISWs=;
 b=M1F8PHPkjPm6nkX1WpCWppXdYQhrmRshapJ4icxZV9tN7jG1BxsBLgOg
 YdEjxvYam3N5+vcyzpr7BjlY80ks0H71E61GwOGYeAVjo3QP/RaHonlZ6
 dttRpI8S/il6wrjxqpnfUBK7ICMWGaOTml4UquflPTQol3AAfbAVQZbgO
 fOXGNMucOdeGgFVBt87G/NneuVUJp9ZWnlrZPXh6SiNOoK9pANyMkA/nP
 TjV3316fx2vQiXVdHE9TGgsrUHGKuVgAWPIH6WDcFk4gQFsQd+UKBBm2Q
 647n8ALFQB3TGNK7/N2rAjevFDZqDOYgdPVe9h2rkysoIBL8VTSKRotLd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279639557"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="279639557"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 05:30:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="640342107"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jun 2022 05:30:30 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 15:30:49 +0300
Message-Id: <20220614123049.16183-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220614123049.16183-1-stanislav.lisovskiy@intel.com>
References: <20220614123049.16183-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dg2: Bump up CDCLK for DG2
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

We seem to need this W/A same way as for TGL, in order
to fix some of the underruns, which we currently have and
those not related to PSR.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6e80162632dd..86a22c3766e5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2300,7 +2300,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
 
 	/*
-	 * HACK. Currently for TGL platforms we calculate
+	 * HACK. Currently for TGL/DG2 platforms we calculate
 	 * min_cdclk initially based on pixel_rate divided
 	 * by 2, accounting for also plane requirements,
 	 * however in some cases the lowest possible CDCLK
@@ -2308,7 +2308,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * Explicitly stating here that this seems to be currently
 	 * rather a Hack, than final solution.
 	 */
-	if (IS_TIGERLAKE(dev_priv)) {
+	if (IS_TIGERLAKE(dev_priv) || IS_DG2(dev_priv)) {
 		/*
 		 * Clamp to max_cdclk_freq in case pixel rate is higher,
 		 * in order not to break an 8K, but still leave W/A at place.
-- 
2.24.1.485.gad05a3d8e5

