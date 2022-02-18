Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107AF4BC17C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 22:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CA610E1B1;
	Fri, 18 Feb 2022 21:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741BB10E1B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 21:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645218101; x=1676754101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bXIRM5Zps6Lp79LM+/hNOK4MRQnV6xlbYiTEWXeWs6o=;
 b=dzyyDhFhuohxj/a4LdOQOE5l8IqLvebZCRo/fPbOBU6MxgDG2wIlDDXV
 GRDQB8pwX+6h2irbDhRwvRm9N4jn4jWBhCAxAvxalRI132TujvCxvcfLz
 v9uX35u8oNWyMhbVAIj7DqHLjYm9O7kAkyx6hdH+bGyFViaAZSXJmQwKV
 t/iZ09NL/LnJo/YwCNnRytbznGj1DTZhEYEBeXZH2R16ifzKHM2YMIGwJ
 QsXuKQzd0RUIX75MdbhvcsbHmphPFUmmM3SPGmljG76a5GQGR2qV9+yiL
 bqQ1IUT17/PCLHZeuLvJOT73ZES3x9Ktt7B0yz0p2Cu8OneXs8L+QaUUQ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="238628776"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="238628776"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 13:01:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="626737643"
Received: from psanchog-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.134.36.77])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 13:01:23 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 13:03:30 -0800
Message-Id: <20220218210330.48653-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rps/tgl+: Remove RPS interrupt support
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

TGL+ and newer platforms don't support RPS up and low interruption
limits.
It is not used for broadwell and newer plaforms that supports
execlist but here making sure that it is explicit not used even in
debug scenarios.

BSpec: 33301
BSpec: 52069
BSpec: 9520
HSD: 1405911647
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index fd95449ed46da..c8124101aada2 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1486,7 +1486,7 @@ void intel_rps_enable(struct intel_rps *rps)
 
 	if (has_busy_stats(rps))
 		intel_rps_set_timer(rps);
-	else if (GRAPHICS_VER(i915) >= 6)
+	else if (GRAPHICS_VER(i915) >= 6 && GRAPHICS_VER(i915) <= 11)
 		intel_rps_set_interrupts(rps);
 	else
 		/* Ironlake currently uses intel_ips.ko */ {}
-- 
2.35.1

