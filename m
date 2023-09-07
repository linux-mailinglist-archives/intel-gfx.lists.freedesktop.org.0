Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 836677974A2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2E310E821;
	Thu,  7 Sep 2023 15:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A91CC10E80A;
 Thu,  7 Sep 2023 15:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101205; x=1725637205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+0Ej6SdaSfHXtgZcQgCsl9/6bxsPrShYeuG0RHjG1+o=;
 b=Otp3SdmsK+WcYhZwW1hhYhjteKdrzjVxdUzWQZTZWQMfevIYLs4OG+C/
 gmflPmKqK8mCVD4Xg71xpHgHbfz4rU9OrX3sops8PkWI5YWmQrzhBmWuC
 GgUB/GSBhj3o13Vyu//NGkFAJrQclGQdKqzBxYAv7txvHobzU/SsFt2Ou
 g4J0p8Q7aPo0NA3oNve2HekXI8EX3eDhizlUxSJCtXGfR0quoyAsVnhoO
 BcO0os89wozrw0XNfUhGKiavtmL89Lqw5iEeaZvklwN9MfNY+vXPKcomJ
 LB5XWwLzI2imH+mNd8txoD+fTBBdQw9kO3tesmtz62w2igFzf3FsAdiFa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445751"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445751"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930225"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930225"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:32 -0700
Message-Id: <20230907153757.2249452-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/27] drm/i915/lnl: Add display definitions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Add Lunar Lake platform definitions for i915 display. The support for
LNL will be added to the xe driver, with i915 only driving the display
side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
i915 module.

v2: Use a LPDP_FEATURES macro (Matt Roper)

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 089674e2f1d2..feafb0f94b06 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -768,6 +768,12 @@ static const struct intel_display_device_info xe_lpdp_display = {
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
 };
 
+static const struct intel_display_device_info xe2_lpd_display = {
+	XE_LPDP_FEATURES,
+
+	.__runtime_defaults.ip.ver = 20,
+};
+
 /*
  * Separate detection for no display cases to keep the display id array simple.
  *
@@ -847,6 +853,7 @@ static const struct {
 	const struct intel_display_device_info *display;
 } gmdid_display_map[] = {
 	{ 14,  0, &xe_lpdp_display },
+	{ 20,  0, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *
-- 
2.40.1

