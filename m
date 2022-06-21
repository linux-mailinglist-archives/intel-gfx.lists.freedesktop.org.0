Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFC15531EC
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE1A10F23F;
	Tue, 21 Jun 2022 12:22:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65E8B10F23F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814172; x=1687350172;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=20mkI9reont+gW+/tGONu4qwXfTyUm588oF3YDTcv8s=;
 b=fZKNtLuRwtrV5fKuJgfCEyDcAPK2mn4KJ5oIAI6Mhzha0OJYEnNQ6p5k
 MShDcJQZlxMhBymG7xScp2oXlTDzRoQWJs+dkXyDN/PQG6uJgz1GpLtni
 2sz9r1ilEeU+Uj0h+67KDxA+XM9kDXlIqYr2Buh4Fe80YKaUAGfXIZLfg
 /AwA4RAWXrJ8XF+wINmLzFDCpz+m95sAuVXMWiByZf/pigu1EP/6rTbzY
 Ns/GbfS06DKgMv6DnGy5sCa4Dx/Kthi14GD4l2fyWHt4snqyb5jY59+r1
 Nbf+Nb+FmAe9BK4UlSFYpWJ3Wz5ZBJPOmXRLAopxc+ltXHKrXq/S/UW5I w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="277652946"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="277652946"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="655117739"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2022 05:22:49 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjs013778; Tue, 21 Jun 2022 13:22:45 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:12 +0530
Message-Id: <20220621123516.370479-8-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Guard rc6 helpers with
 is_intel_rpm_allowed
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

Guard intel_rc6_sanitize/intel_rc6_enable/intel_rc6_disable
rc6 helpers with is_intel_rpm_allowed as these
are called in intel_gt_resume/intel_gt_suspend_late.

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f8d0523f4c18..73e2fb9420a2 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -507,9 +507,14 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 
 static void rpm_get(struct intel_rc6 *rc6)
 {
+	struct drm_i915_private *i915 = rc6_to_i915(rc6);
+
 	GEM_BUG_ON(rc6->wakeref);
-	pm_runtime_get_sync(rc6_to_i915(rc6)->drm.dev);
-	rc6->wakeref = true;
+
+	if (is_intel_rpm_allowed(&i915->runtime_pm)) {
+		pm_runtime_get_sync(i915->drm.dev);
+		rc6->wakeref = true;
+	}
 }
 
 static void rpm_put(struct intel_rc6 *rc6)
@@ -623,7 +628,9 @@ void intel_rc6_enable(struct intel_rc6 *rc6)
 		return;
 
 	/* rc6 is ready, runtime-pm is go! */
-	rpm_put(rc6);
+	if (rc6->wakeref)
+		rpm_put(rc6);
+
 	rc6->enabled = true;
 }
 
-- 
2.25.1

