Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DB7A23638
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:01:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E65410E9DF;
	Thu, 30 Jan 2025 21:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHQ7fYrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA63A10E9DF;
 Thu, 30 Jan 2025 21:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738270862; x=1769806862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qVHXg3P8M/jwlyXjqgN47/+zJZpeGnPPaTvfAimI77o=;
 b=XHQ7fYrDFWeEdhuev89bRcXZmd7Y7AUWLTbah0SHPKfPTjis1g3uLaZ8
 KH2RZh8toqNr2nG7azQ7JHBPEGR7Z/UC7DMipj/TlN2dbiOPVel1o9bjF
 AXlwXwETK/o4qu7Tw6sMqfLZFNImrF7u2+4c+GpFuXVfyGx2fIfEhfVee
 Ncu6HMQSaOtZ665FrCkZFmj8W2lxLuNGF3VCBJ/XFr6ThuasS9iei20AS
 b8X5ERuMt4JFZ6urDKaNxAQ8w0D5elSQypep7fbB8pLsXsFqBraP7OPsF
 kZjYJCeHusA6NXKTA7pSsrtC213DGnMQ1LAIbV3i4FlycBjTOnh+G6iR1 A==;
X-CSE-ConnectionGUID: u8iQEJ4aQ3iehLyJAi6l/A==
X-CSE-MsgGUID: rSy7LdiLSMyjckGWn1XgOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="42491592"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="42491592"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:01:01 -0800
X-CSE-ConnectionGUID: cJJK/rmsSPuITE5ZPVcXGQ==
X-CSE-MsgGUID: dDBtSu7JQnCRpM/6mNQSBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="110015961"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.118])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:00:59 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v6 6/7] drm/i915/xe3: avoid calling fbc activate if fbc is
 active
Date: Thu, 30 Jan 2025 23:00:25 +0200
Message-ID: <20250130210027.591927-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250130210027.591927-1-vinod.govindapillai@intel.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

If FBC is already active, we don't need to call FBC activate
routine again. This is more relevant in case of dirty rect
support in FBC. Xe doesn't support legacy fences. Hence fence
programming also not required as part of this fbc_hw_activate.
Any FBC related register updates done after enabling the dirty
rect support in xe3 will trigger nuke by FBC HW. So avoid
calling fbc activate routine again if the FBC is already active.

The front buffer rendering sequence will call intel_fbc_flush()
and which will call intel_fbc_nuke() or intel_fbc_activate()
based on FBC status explicitly and won't get impacted by this
change.

v2: use HAS_FBC_DIRTY_RECT()
    move this functionality within intel_fbc_activate()

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 24736c7a79a6..b17ee1797118 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -750,8 +750,19 @@ static void intel_fbc_nuke(struct intel_fbc *fbc)
 
 static void intel_fbc_activate(struct intel_fbc *fbc)
 {
+	struct intel_display *display = fbc->display;
+
 	lockdep_assert_held(&fbc->lock);
 
+	/*
+	 * When dirty rectangle is enabled, any updates to FBC registers will
+	 * trigger nuke. So avoid calling intel_fbc_activate if fbc is already
+	 * active and for XE3 cases. Xe doesn't support legacy fences. So
+	 * no need to update the fences as well.
+	 */
+	if (HAS_FBC_DIRTY_RECT(display) && fbc->active)
+		return;
+
 	intel_fbc_hw_activate(fbc);
 	intel_fbc_nuke(fbc);
 
-- 
2.43.0

