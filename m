Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5969D2CA7DA
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 17:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0FE589BC0;
	Tue,  1 Dec 2020 16:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB09889BC0
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 16:14:32 +0000 (UTC)
IronPort-SDR: xMYmQZRK5uXWp6PvOYdLGlAI9pFwkrZG9iZCQUZ5JwSoJni0YDo9RyNd2oIKDmm5I2fpS0fu6p
 YuvR/NMIfQPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234459551"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="234459551"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 08:14:14 -0800
IronPort-SDR: 4hPIQYSHEQ/j7LmkL/D0uCroXbPqFPM4MN8KB8LfitBKmUHRuVokcvQySPyLN7Mxo+zE43iufg
 qn5nUFVVZ2nw==
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="364813636"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 08:14:13 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 22:17:49 +0530
Message-Id: <20201201164749.32702-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201201164749.32702-1-uma.shankar@intel.com>
References: <20201201164749.32702-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v5 2/2] Revert "drm/i915/display/fbc: Disable fbc by
 default on TGL"
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

FBC can be re-enabled on TGL with WA of keeping it disabled
while PSR2 is enabled.

This reverts commit 2982ded2ff5ce0cf1a49bc39a526da182782b664.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 611cadc5c70a..415c9d949d36 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1445,13 +1445,6 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *dev_priv)
 	if (!HAS_FBC(dev_priv))
 		return 0;
 
-	/*
-	 * Fbc is causing random underruns in CI execution on TGL platforms.
-	 * Disabling the same while the problem is being debugged and analyzed.
-	 */
-	if (IS_TIGERLAKE(dev_priv))
-		return 0;
-
 	if (IS_BROADWELL(dev_priv) || INTEL_GEN(dev_priv) >= 9)
 		return 1;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
