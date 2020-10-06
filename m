Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1336284B28
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 13:54:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCB276E436;
	Tue,  6 Oct 2020 11:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D786E1A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 11:54:07 +0000 (UTC)
IronPort-SDR: edMS5WxbG8aUyThP/372pfHss4b+xVtucHQKuGA4G6fiQs1zgbPUEYHzHgQJVCDsUesmhMf19j
 lvjJ/PAXJMPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161067256"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161067256"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 04:54:07 -0700
IronPort-SDR: Mj3PtuH3cInM7lmCzzTjaSOYe+UQZlpVwx4o8aJA53Umf9J33reoAI74yGEAPWgziMvjvfSQ75
 tLMhPRZRkZ0Q==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527320452"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 04:54:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 14:54:01 +0300
Message-Id: <20201006115401.1521958-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201006115401.1521958-1-imre.deak@intel.com>
References: <20201006115401.1521958-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/skl: Fix WRPLL p0/1/2 PDIV divider
 selection
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The p0 divider (aka PDIV) doesn't support the div-by-5 configuration, so
in case the effective divider (p0*p1*p2) value is 5, either p1 (QDIV) or
p2 (KDIV) must be used. p1 can't be used either since it must match p0
if p0 is 1, so using p2 is the only possibility.

This didn't cause an actual problem, since the HDMI port clock is
limited to 300MHz on SKL, which means the minimum effective divider is 6
there, but let's still fix the logic (instead of removing dividers
smaller than 6 from the effective divider list).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 2a411dd46769..eabe63716eb3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1367,8 +1367,12 @@ static void skl_wrpll_get_multipliers(unsigned int p,
 		*p0 = 3;
 		*p1 = 1;
 		*p2 = p / 3;
-	} else if (p == 5 || p == 7) {
-		*p0 = p;
+	} else if (p == 5) {
+		*p0 = 1;
+		*p1 = 1;
+		*p2 = 5;
+	} else if (p == 7) {
+		*p0 = 7;
 		*p1 = 1;
 		*p2 = 1;
 	} else if (p == 15) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
