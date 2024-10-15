Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D723B99DDFF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 08:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72AEA10E507;
	Tue, 15 Oct 2024 06:12:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hSpbgf+P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1055D10E504;
 Tue, 15 Oct 2024 06:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728972770; x=1760508770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aTaa62lrBipflMuHDhRXYHbLUY0CN4jvQvSGofVzVeE=;
 b=hSpbgf+PTD/ItDmJBG1tBphbgm6sLfPpd/R+sg4/q/fZBEmmqFb9Zz1r
 5SCuO06JKSlTBLoYRytvMpcTEA91buG0JStSHQ+8MTn3TC87E9SK74BDg
 xE+Uomy8qiyz7ypR8I1dXMT8XRZGmViugqd3iEsIWdHYnmfEecVLEQDy2
 bLFgP11xVr7LSuhVDgd9bVWQ/yn/jZ+n0gQ4lShfGM0nfNFGYhHk43/mS
 Tp8xGOeKp+5stSjSgew3/p8vlYtS93MkbMDNcWNywOjaNCNRYZQ5/kGux
 ONMHAMIeTq0DT+Yn4p9ny57BKndfs1m0KowzOyc9cdpWKd60pBOJkeJYc A==;
X-CSE-ConnectionGUID: oi4+qtrCSfq4Z2qnuurDcw==
X-CSE-MsgGUID: ex5Ys8bOTo+GNJJgTOWveA==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="28444827"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="28444827"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 23:12:50 -0700
X-CSE-ConnectionGUID: AXEVnGeWQGOmXzCmXmzcqA==
X-CSE-MsgGUID: IXEkVnjDTVKLFwt07uV8Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="82564167"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 14 Oct 2024 23:12:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, vandita.kulkarni@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/4] drm/i914/xe3lpd: Increase bigjoiner limitations
Date: Tue, 15 Oct 2024 11:40:10 +0530
Message-ID: <20241015061011.2087826-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241015061011.2087826-1-suraj.kandpal@intel.com>
References: <20241015061011.2087826-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

With 6k resolution support for a single crtc being added
bigjoiner will only come into picture when hdisplay > 6144

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6b27fabd61c3..6cdc968522df 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1314,14 +1314,17 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int hdisplay_limit;
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
 	num_joined_pipes /= 2;
 
+	hdisplay_limit = DISPLAY_VER(i915) >= 30 ? 6144 : 5120;
+
 	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
-	       hdisplay > num_joined_pipes * 5120;
+	       hdisplay > num_joined_pipes * hdisplay_limit;
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-- 
2.47.0

