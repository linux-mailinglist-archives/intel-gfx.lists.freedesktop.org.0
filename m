Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEDF4E77B7
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 16:33:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD2510E710;
	Fri, 25 Mar 2022 15:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0088E10E710
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 15:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648222406; x=1679758406;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=foR+U9+K31NRZJvpyOLtBv4y55ONz8fdAu+3+2e707M=;
 b=mEaQ7R9dEPpdEsyOb1r03ozdWPTxByqzkwKAyEAA8kqzvhdX14RqNe+o
 V8cmXmhWkrO16vJ4P9uT5WX6wEo3R4Ow1ERvzPjF10Hs5BKC0D+CJ0OLJ
 xPHrAJKM19Aldma9XYnl0zkbAlD99NGMqudhR/o1T+geAdYfbyFD1hd33
 NRmT0amkkf9NXxBq54zgHci5MEVpTAf86QGo3u/JbOKOGnWiHE/jcet8W
 1VAIh3oPuVPp3fJh+wUjoTWizrb/K9akNRaJ13FvKasHIRW5S2ZWhUfXs
 pw7B05l0Ld+zFnU3drFoYG2fWsuF04+1FCGtFGncemMKu0I1lvQWe9ohD g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="283527903"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="283527903"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 08:33:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="650273952"
Received: from mymcglot-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.213.175.5])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 08:33:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 08:34:36 -0700
Message-Id: <20220325153436.95045-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] docs: gpu: i915.rst: Update DRRS functions names
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

intel_drrs_enable and intel_drrs_disable where renamed to
intel_drrs_activate and intel_drrs_deactivate in commit
54903c7a6b40 ("drm/i915: s/enable/active/ for DRRS").

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 Documentation/gpu/i915.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index bcaefc952764e..ab596b0a9f259 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -187,10 +187,10 @@ Display Refresh Rate Switching (DRRS)
    :doc: Display Refresh Rate Switching (DRRS)
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_drrs_enable
+   :functions: intel_drrs_activate
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_drrs_disable
+   :functions: intel_drrs_deactivate
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :functions: intel_drrs_invalidate
-- 
2.35.1

