Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 778588A35AA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A380610F7A8;
	Fri, 12 Apr 2024 18:28:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H1nuIpxW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC2910F7A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946480; x=1744482480;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZUnoNrSuLtd2siQMchwsdaq7jxnAIwAK5Gk/pTvrJZI=;
 b=H1nuIpxWRX/UOdrOkOItka8qDuHBrDJtj8+PJj2LMA8/k21zkBsk+TGS
 PMvVN2PUvwLmVtJSnpINklFiKZcvLIiYYeQ+4cDxIvJFtib5B6kM5OGSA
 rriZdyvtrb+j354djfB4fMD+Wkcs+7a2ILh3FmekVjPWui0H2RlKyWurx
 /iNP0yF3u5wAyr8KvC8a6wFVfnEyGDDWW2vOocjQ8cptDICgCWttNBzD+
 oHrm67gkbEQgbl8SRZ86LhRXrF+vUfDcJLHVKWikh5JpDJds9+39iITAR
 lv64mHMQNck7V7qMcnNeWRXy7Y4DwpnbdbDrxQ7b9vMe27TTa0s+cgwp8 A==;
X-CSE-ConnectionGUID: 9XoxFRrbRFydAW9CFO6WNQ==
X-CSE-MsgGUID: fKRjI6g7SyOCygcEz85qKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560608"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560608"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:55 -0700
X-CSE-ConnectionGUID: h28qJVgtQZOyJWqE/i19jA==
X-CSE-MsgGUID: n23OSoyQQaeaftZECrKPdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394930"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 17/18] drm/i915: Unionize dpll_hw_state
Date: Fri, 12 Apr 2024 21:27:02 +0300
Message-ID: <20240412182703.19916-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
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

intel_dpll_hw_state contains space for all possible PLL
register values across all platforms. That is rather wasteful
as each machine only needs to store the registers values
that are appropriate for the platform.

Turn intel_dpll_hw_state into a union so that we don't
waste memory for the register values of other platforms.

And let's use an anonymous union so that we don't have
to do tons of s/struct/union/ all over the place.

pahole:
 struct intel_dpll_hw_state {
-       struct i9xx_dpll_hw_state  i9xx;                 /*     0    16 */
-       struct hsw_dpll_hw_state   hsw;                  /*    16     8 */
-       struct skl_dpll_hw_state   skl;                  /*    24    12 */
-       struct bxt_dpll_hw_state   bxt;                  /*    36    44 */
-       /* --- cacheline 1 boundary (64 bytes) was 16 bytes ago --- */
-       struct icl_dpll_hw_state   icl;                  /*    80    60 */
+       union {
+               struct i9xx_dpll_hw_state i9xx;          /*     0    16 */
+               struct hsw_dpll_hw_state hsw;            /*     0     8 */
+               struct skl_dpll_hw_state skl;            /*     0    12 */
+               struct bxt_dpll_hw_state bxt;            /*     0    44 */
+               struct icl_dpll_hw_state icl;            /*     0    60 */
+       };                                               /*     0    60 */

-       /* size: 140, cachelines: 3, members: 5 */
-       /* last cacheline: 12 bytes */
+       /* size: 60, cachelines: 1, members: 1 */
+       /* last cacheline: 60 bytes */

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 95438f12c4f0..d0ec6196d398 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -230,11 +230,13 @@ struct icl_dpll_hw_state {
 };
 
 struct intel_dpll_hw_state {
-	struct i9xx_dpll_hw_state i9xx;
-	struct hsw_dpll_hw_state hsw;
-	struct skl_dpll_hw_state skl;
-	struct bxt_dpll_hw_state bxt;
-	struct icl_dpll_hw_state icl;
+	union {
+		struct i9xx_dpll_hw_state i9xx;
+		struct hsw_dpll_hw_state hsw;
+		struct skl_dpll_hw_state skl;
+		struct bxt_dpll_hw_state bxt;
+		struct icl_dpll_hw_state icl;
+	};
 };
 
 /**
-- 
2.43.2

