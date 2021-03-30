Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA2C34EB5C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 17:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B246E909;
	Tue, 30 Mar 2021 15:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B28A6E909
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 15:01:30 +0000 (UTC)
IronPort-SDR: eOu9USbZ1Jdl/5spatbz82j3h4/PU9ORujB2xjLgD2CoJ5IGvl+GuNSKgTKQkzI7dEhZ3brXxA
 f4LnH2n78qaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="188521503"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="188521503"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 08:01:23 -0700
IronPort-SDR: RHEoue9fnvKifaKtzfg2gqwucfFm9/Fd2rHOlRbteFM7d4m3ML22jugwM5booNTkOPc1ED7e2S
 vUBCnDENdNqA==
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="516466446"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 08:01:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Mar 2021 18:01:18 +0300
Message-Id: <20210330150118.1105079-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix docbook header for
 __intel_runtime_pm_get_if_active()
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the

Documentation/gpu/i915:22: /drivers/gpu/drm/i915/intel_runtime_pm.c:423: WARNING: Inline strong start-string without end-string.

warning from the htmldocs build.

Fixes: 9d58aa46291d ("drm/i915: Fix the GT fence revocation runtime PM logic")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index dba8df1ff5a9e..eaf7688f517d0 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -420,7 +420,7 @@ intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm)
  * already active and ensures that it is powered up. It is illegal to try
  * and access the HW should intel_runtime_pm_get_if_active() report failure.
  *
- * If @ignore_usecount=true, a reference will be acquired even if there is no
+ * If @ignore_usecount is true, a reference will be acquired even if there is no
  * user requiring the device to be powered up (dev->power.usage_count == 0).
  * If the function returns false in this case then it's guaranteed that the
  * device's runtime suspend hook has been called already or that it will be
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
