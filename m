Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 339EB57C801
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6020A8CF35;
	Thu, 21 Jul 2022 09:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF8208BFBF
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396892; x=1689932892;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xeXBJu+CdcPsQvqVnCJAsIVedEyYyp4c8nKP5+8DxL4=;
 b=kB6WMorcbRlI6HJ6ybzRUjBWXWAs/ErTyhN7wIPqWlc+J5j+5Cm/L4sM
 cukNp2WMjGeLJyQpBALrH7zdgNruaTVH42oHAh+a1yED1kkX0l7T+pK3z
 6ENN+uSRFdShBPEEsb+EmWaaAOie/ZUuN1BSOYJ6lQxIRrn40RMYwpRDe
 Lj7ZzvOicjk492h5Ntnv2Z0MX8EIe+v+kF0qjxLWxUrpBV2GEka0oTlG+
 W57qORusfyWw85mmrtZKhwwjpDdCslCZIIEOzi8MZTUYrD1vvhbtkAm40
 g1R7xM/1X71jZ9iRsMhjjOgIS5b3AXhEB+dwO9q6y6YvI+Uq3MNKjBDrJ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="373304112"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="373304112"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="740617423"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2022 02:48:09 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwU026833; Thu, 21 Jul 2022 10:48:06 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:50 +0530
Message-Id: <20220721095955.3986943-4-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915: Extend rpm in
 intel_guc_global_policies_update
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

intel_guc_is_ready need to be guarded with rpm
helpers as it needs guc interaction.

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index ba7541f3ca61..1d3b3559420d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -195,11 +195,14 @@ int intel_guc_global_policies_update(struct intel_guc *guc)
 
 	guc_policies_init(guc);
 
-	if (!intel_guc_is_ready(guc))
+	wakeref = intel_runtime_pm_get(&gt->i915->runtime_pm);
+	if (!intel_guc_is_ready(guc)) {
+		intel_runtime_pm_put(&gt->i915->runtime_pm, wakeref);
 		return 0;
+	}
 
-	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
-		ret = guc_action_policies_update(guc, scheduler_policies);
+	ret = guc_action_policies_update(guc, scheduler_policies);
+	intel_runtime_pm_put(&gt->i915->runtime_pm, wakeref);
 
 	return ret;
 }
-- 
2.25.1

