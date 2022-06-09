Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9783B545892
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C65A212B26E;
	Thu,  9 Jun 2022 23:21:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325B912B23B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654816871; x=1686352871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IniQ56IikGffyeZVup0EUCOBmy9Y+mIoHRkIqR/CBm0=;
 b=K5JbSV9eHeLZZmJgwtacXw/ZCvgG2tx0HzDXZTpNoa8dymiWxCez7OWK
 Zg6eNusY2nM2x+H6p5oJ96lfrXmHDPPzS3+yXQKWJOhBGFUb1VV+VG0P3
 oF9wV66Wl9K/TUJYhy0P1nLYRQuDDnxfRbj+UwaGtrWWRF89Mab0r9aTT
 gDeXtEEPxTDUkyPgkvEh5nwpAXofmnt7OWn0bDyHnEZ3QoqKXaA25WOwl
 VwErJbDHCbBqPMRq3S+ih50C86Ch9WzZyCYO7G900pEZSTJs+r8cFFgr+
 0HYNT2Qi4Bb6UkYzmxzdTfFILWaAYwc0WwRgiw87FkSaL3sjbYJqrSr9Q w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="277481332"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="277481332"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="908586482"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:10 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 16:19:53 -0700
Message-Id: <20220609231955.3632596-14-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915/huc: report HuC as loaded even
 if load still in progress
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The media driver uses this only as an indication that HuC is enabled and
they have a secondary check within their batches to verify if the HuC
is indeed loaded or not. They have therefore requested us to report this
as true if HuC loading is in progress.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 075ec97b459d..33bfac91fa01 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -408,8 +408,8 @@ bool intel_huc_is_authenticated(struct intel_huc *huc)
  *  * -EOPNOTSUPP if HuC firmware is disabled,
  *  * -ENOPKG if HuC firmware was not installed,
  *  * -ENOEXEC if HuC firmware is invalid or mismatched,
- *  * 0 if HuC firmware is not running,
- *  * 1 if HuC firmware is authenticated and running.
+ *  * 1 if HuC firmware is authenticated and running or if delayed load is in progress,
+ *  * 0 if HuC firmware is not running and delayed load is not in progress
  */
 int intel_huc_check_status(struct intel_huc *huc)
 {
@@ -426,7 +426,10 @@ int intel_huc_check_status(struct intel_huc *huc)
 		break;
 	}
 
-	return intel_huc_is_authenticated(huc);
+	if (intel_huc_is_authenticated(huc))
+		return 1;
+
+	return !i915_sw_fence_done(&huc->delayed_load.fence);
 }
 
 static bool huc_has_delayed_load(struct intel_huc *huc)
-- 
2.25.1

