Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6253C87FAA7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 10:24:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37EA10EC1A;
	Tue, 19 Mar 2024 09:24:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8bcUFHs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5250910EC1A
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 09:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710840289; x=1742376289;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5xhIcuoQD2Lg33RI4Lewyp764qnfQL0SAH6nY9W3ETg=;
 b=n8bcUFHsEtdruXn+D6BtyqlBzNBBz1uM8sl8dRffBXb8R6+gTmNjHqEM
 lYzPNArkeG1osGsxmbGTVJ1fXD5xalQostc+Yv56t2Syz0tCWqMKoPs30
 5YQ+BargapnlJP/tebK80jmMaa/4MAn7AhKmnizfge15qNQcz4aExO1aq
 zw+FAW4/g+1IKDuwKLkasQOGAIjli5K1QkpjjHrduP7V7cJzb2xNu9N1M
 WRjAgQPxDK8yB60tHsUCRRFhEbxOD7+fLvihmptCrU1ALmfp5KG9UuJIi
 VqB210hrO40ThFrUg4jF0FCWnfuRKz+357CFi1iNT/eP+aF80IvwOtVrd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5530419"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="5530419"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 02:24:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="827782095"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="827782095"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 19 Mar 2024 02:24:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Mar 2024 11:24:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/bios: Use the platform's port_mask when there is
 no VBT
Date: Tue, 19 Mar 2024 11:24:43 +0200
Message-ID: <20240319092443.15769-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240319092443.15769-1-ville.syrjala@linux.intel.com>
References: <20240319092443.15769-1-ville.syrjala@linux.intel.com>
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

When we have no VBT we currently assume ports A-F are
all pontially valid for every platform. That is nonsense.
Grab the bitmask of valid ports from the runtime info
instead.

Although the defaults we actually fill here look semi-sensible
only for hsw-skl era hardware. Dunno if we should try to do
something more appropriate here for other platforms,
or just try to nuke the whole thing?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c13a98431a7b..2abd2d7ceda2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2890,9 +2890,8 @@ init_vbt_panel_defaults(struct intel_panel *panel)
 static void
 init_vbt_missing_defaults(struct drm_i915_private *i915)
 {
+	unsigned int ports = DISPLAY_RUNTIME_INFO(i915)->port_mask;
 	enum port port;
-	int ports = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) |
-		    BIT(PORT_D) | BIT(PORT_E) | BIT(PORT_F);
 
 	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
 		return;
-- 
2.43.2

