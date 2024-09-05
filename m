Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A06296D707
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 13:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC30610E864;
	Thu,  5 Sep 2024 11:25:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hKqWKhXn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08F810E864
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725535534; x=1757071534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j8Ldpm8iCkYgj2my+479dHGIPt74KD7gfUIog73lHic=;
 b=hKqWKhXna0OykRw8Za/IOW+XMBY4ZyCmCD+YOr3AqVp/r/vg+ybnF4Ew
 mZYG5n7KuCCF1BkRaLZZ4VUgRihu/uy+f+9oq4H7ScsuXoHooyVsbVh5c
 4iVGiiHXm2SKJzW5Tw/VBu7Zqvwe9hjc25Os0ADM2bzmZ5PW3tTAJMKTY
 orHC7xb6YMKs37m3sdCpdKkaU4HCpBQ4TYTrM9nqg7cAkcLV5LAPbXx0F
 q3UkkGip1Bvnutdz6d6Si7Aq2xwPet+j1hcFMghCjvX1gLty0p6Pzohie
 Yh/XvSFcsFen0ZRJqMeaKtUcj3obqnurlO5phihLiWLJLHD2Ei7kQN06n A==;
X-CSE-ConnectionGUID: Ya50a1eHTjm+ptolumQeEQ==
X-CSE-MsgGUID: l4f2VwhvTAK1yOO6M3nDGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34816329"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="34816329"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:25:34 -0700
X-CSE-ConnectionGUID: izNM5Pu4RAm1sqLYHcUJGw==
X-CSE-MsgGUID: VkgNiS/ES+2++lPfirgvHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="70389059"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:25:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	stable@vger.kernel.org
Subject: [PATCH] drm/i915/bios: fix printk format width
Date: Thu,  5 Sep 2024 14:25:19 +0300
Message-Id: <20240905112519.4186408-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

s/0x04%x/0x%04x/ to use 0 prefixed width 4 instead of printing 04
verbatim.

Fixes: 51f5748179d4 ("drm/i915/bios: create fake child devices on missing VBT")
Cc: <stable@vger.kernel.org> # v5.13+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cd32c9cd38a9..daa4b9535123 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2949,7 +2949,7 @@ init_vbt_missing_defaults(struct intel_display *display)
 		list_add_tail(&devdata->node, &display->vbt.display_devices);
 
 		drm_dbg_kms(display->drm,
-			    "Generating default VBT child device with type 0x04%x on port %c\n",
+			    "Generating default VBT child device with type 0x%04x on port %c\n",
 			    child->device_type, port_name(port));
 	}
 
-- 
2.39.2

