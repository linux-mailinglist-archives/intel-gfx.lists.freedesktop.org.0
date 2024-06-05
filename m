Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE1D8FCA7F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6230D10E1D2;
	Wed,  5 Jun 2024 11:33:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RWFd2PaE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997FB10E26A
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717587220; x=1749123220;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9yK1aUaiTG65s5c2nbXuG9RudAnzp9awJ5s2BH0pNzg=;
 b=RWFd2PaELvoRL4uceUEMO8Didq+iq2mVip5zmVQ7So6gfeOFYZqJpkeD
 Z+29Cpg2h3AjU80CuAUaBFWX8B4ZIgPsGz8w19EY90cpT7mU1Ua0TFRgI
 CMePeOey0QUMk5ps87S2EnAFkyDGWvm9E9xLwz7bkhZGah5C6L+FKmsMi
 aryQS20DAbFyYap3ySY8N8nEB+vjJYvNlcKoYXh4rTdy70LwG1Uc5fn+D
 FeUVXZRF4JJnVZ0IE06DMY7x/TZ2oI6uFR/A2cp0D0QHqJTK0AU3XNB1N
 IIow5Tt5EidYzBbXLG4lQDDZIdrlCrAlxP9sqik1Q84pkzvEpJVeCQO2Z A==;
X-CSE-ConnectionGUID: RokTi6o+SbKzGtiUtH9xQg==
X-CSE-MsgGUID: P0o2hQ0UT6mFi9TKgkLjcg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="36721824"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="36721824"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:33:40 -0700
X-CSE-ConnectionGUID: U3bIWOMWS8+MJYVwPnMFWQ==
X-CSE-MsgGUID: z0rlS92LQZyzJABA0MxrLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37567823"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 04:33:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 14:33:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Reduce DDI clock gating printk level from NOTICE to
 DEBUG
Date: Wed,  5 Jun 2024 14:33:36 +0300
Message-ID: <20240605113336.11194-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
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

No idea why the DDI clock gating print is done with drm_notice().
Just use drm_dbg_kms() since no one is going to be interested in
this under normal circumstances.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3c3fc53376ce..c76bbd13bb27 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2072,9 +2072,9 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 	    !encoder->is_clock_enabled(encoder))
 		return;
 
-	drm_notice(&i915->drm,
-		   "[ENCODER:%d:%s] is disabled/in DSI mode with an ungated DDI clock, gate it\n",
-		   encoder->base.base.id, encoder->base.name);
+	drm_dbg_kms(&i915->drm,
+		    "[ENCODER:%d:%s] is disabled/in DSI mode with an ungated DDI clock, gate it\n",
+		    encoder->base.base.id, encoder->base.name);
 
 	encoder->disable_clock(encoder);
 }
-- 
2.44.1

