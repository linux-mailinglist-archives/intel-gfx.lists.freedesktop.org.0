Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F3C4ED882
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394F110F317;
	Thu, 31 Mar 2022 11:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E501D10F2F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726137; x=1680262137;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N45I0Oj11Fw92hL3aerFd55twJ+Tn8QC1bV8Po5RY50=;
 b=oCRP8mOb+q1enB1iU001qwi40OHmEvzKITDVH0Yi0vU5pIeyD4Za2xcf
 AW6gUMn5fFESEj4uyH00Y6uD8IEojacGEwvQzlo8ybCTq2dx1lSINF3zC
 hQX5DhCzHwGDPq5eEoJJtey2PF6xFTWmJi9MiBHgeDHtDmSxHshFjXyyp
 TuH3+Heb8/l59FUmi300sVhxzNSYxUmBZY4z85uYlqR3zbzie1fpsGQEv
 qjktFQNClMapfI7cI0tzl/lOh0L1xSryDITAgwMj30sG/zvQH7pNLcPTW
 Exc9xi8dQYVlP7aMFH7KjWD4YQl/uIaR7FPq1u8+yJKk8Wxza7TkWIjz+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="247301782"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="247301782"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="640097457"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 31 Mar 2022 04:28:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:22 +0300
Message-Id: <20220331112822.11462-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/11] drm/i915: Allow static DRRS on LVDS
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

Nothing special about static DRRS on LVDS, it's just your
bog standard modeset. Let's allow it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 73129d21f5e5..e8478161f8b9 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -968,7 +968,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_connector->edid = edid;
 
 	/* Try EDID first */
-	intel_panel_add_edid_fixed_modes(intel_connector, false);
+	intel_panel_add_edid_fixed_modes(intel_connector,
+					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
 
 	/* Failed to get EDID, what about VBT? */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
-- 
2.34.1

