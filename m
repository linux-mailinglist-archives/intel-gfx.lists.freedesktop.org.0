Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6076C6AC0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A2F10EACE;
	Thu, 23 Mar 2023 14:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A17310EAC0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581257; x=1711117257;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kMdEnkXAAYZMMI+jSc2xsU1xytMvLP3ot79bQwnxiy0=;
 b=jU6WKbKY1F+peXrbUuaROEajiEed/8uJsiYIjnWRyNmQcUWh3ocWjIaF
 6Blu9fq64OB0gLYJvwh/0jje4iIjiT6ylIEUnQR9ToL2HYQvYdN6yyibF
 Sd2qLkyLoq7FH1HYI3RMMHz4agsHsZBvcY+CC47CbKTRligXNS99pCqEU
 vSLxw1dBzLsGRn7i5wTmt5pZ6SQQkh9N/QmsCiKm4J3OVJ6MF/GMUYIHm
 aT2/x/S9StF/mOpyP3oF+cFvbPclGt6FMDSZTSF8/ORlIampiyCGIZOIp
 EyCF1XBaYVoj2rkvuBK4CRzwDGigoTVWqlvGlrZrLpekfMz4BUXrFVjM8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892312"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892312"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722688"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722688"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:56 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:23 +0200
Message-Id: <20230323142035.1432621-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/29] drm/i915/tc: Remove redundant wakeref=0
 check from unblock_tc_cold()
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

After the previous patch unblock_tc_cold() will not be called in a
disconnected mode, so the wakeref passed to it will be always non-zero.
Remove the redundant check.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 253ab30c34f7a..21c6ef8064883 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -150,14 +150,6 @@ tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_domain domain
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 
-	/*
-	 * wakeref == -1, means some error happened saving save_depot_stack but
-	 * power should still be put down and 0 is a invalid save_depot_stack
-	 * id so can be used to skip it for non TC legacy ports.
-	 */
-	if (wakeref == 0)
-		return;
-
 	intel_display_power_put(i915, domain, wakeref);
 }
 
-- 
2.37.1

