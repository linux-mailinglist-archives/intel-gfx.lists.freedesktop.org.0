Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC50885D3E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 17:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C0510ED9E;
	Thu, 21 Mar 2024 16:18:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLL9Gatf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696E910ED9E
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 16:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711037896; x=1742573896;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/vCuy5tXaGNo6FstSJofvi7PjLaxusKPqF6CC0wN9+I=;
 b=TLL9GatfhPXni0IHlp1U9t7KhzfXEBOaRIyH+iSu/skp63z2Rc4xUbGM
 94gqiMYQOqJE57JbXPTkg8pgnPRt+0GJvbSgqSIQLzA3nHd2B2KKMyg5j
 bprv+QRs64Af71As21wDlqy63IcQ6rPeL5Nx19vwKdR2F5aIE/6f+o/AT
 p++E5eN8PfJor2g7CRMUQphhReExCP0Ht9pzl5AZ+hACfvK1OJR9EugI7
 J/VQa669sVm8WkeBSJ1fC3g/yrgqPHCU4OCuqIYIEoecO5JeFHiXtdXx1
 HPKZma1mqIUmV+MBTC4Jm9qGwLLiVveIlgL+3HaCexCBtz4Y9HRp51o5S w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5894186"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="5894186"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:18:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783099"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="827783099"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2024 09:18:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Mar 2024 18:18:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915/bios: Update VBT driver feature block version
 numbers
Date: Thu, 21 Mar 2024 18:18:03 +0200
Message-ID: <20240321161806.31714-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

While the spec does claim that most of the driver feature flags
start from BDB version 165, reality and some VBIOS code disagrees.
The VBIOS code says it sart from version 159, and my ILK
with version 162 definitely has these things already in its
VBT. Update the version number comments to say 159+ for all
the bits that seem relevant for pre-hsw hardware.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index f2506b0be790..24583b455f2d 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -603,22 +603,22 @@ struct bdb_driver_features {
 	u8 custom_vbt_version;					/* 155+ */
 
 	/* Driver Feature Flags */
-	u16 rmpm_enabled:1;					/* 165+ */
-	u16 s2ddt_enabled:1;					/* 165+ */
-	u16 dpst_enabled:1;					/* 165-227 */
-	u16 bltclt_enabled:1;					/* 165+ */
-	u16 adb_enabled:1;					/* 165-227 */
-	u16 drrs_enabled:1;					/* 165-227 */
-	u16 grs_enabled:1;					/* 165+ */
-	u16 gpmt_enabled:1;					/* 165+ */
-	u16 tbt_enabled:1;					/* 165+ */
+	u16 rmpm_enabled:1;					/* 159+ */
+	u16 s2ddt_enabled:1;					/* 159+ */
+	u16 dpst_enabled:1;					/* 159-227 */
+	u16 bltclt_enabled:1;					/* 159+ */
+	u16 adb_enabled:1;					/* 159-227 */
+	u16 drrs_enabled:1;					/* 159-227 */
+	u16 grs_enabled:1;					/* 159+ */
+	u16 gpmt_enabled:1;					/* 159+ */
+	u16 tbt_enabled:1;					/* 159+ */
 	u16 psr_enabled:1;					/* 165-227 */
 	u16 ips_enabled:1;					/* 165+ */
 	u16 dfps_enabled:1;					/* 165+ */
 	u16 dmrrs_enabled:1;					/* 174-227 */
 	u16 adt_enabled:1;					/* ???-228 */
 	u16 hpd_wake:1;						/* 201-240 */
-	u16 pc_feature_valid:1;
+	u16 pc_feature_valid:1;					/* 159+ */
 } __packed;
 
 /*
-- 
2.43.2

