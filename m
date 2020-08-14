Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A5024474A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:46:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 395E36EB1A;
	Fri, 14 Aug 2020 09:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83566EB17
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 09:46:11 +0000 (UTC)
IronPort-SDR: cQIf6vclkbT9cHsd+w61JRmSJCi/jPEvB+u+ryG+wHegy2UGnQ+wwSoKtIhkaYeucm+BkNrMOW
 v64hK7kyjJ9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="152026590"
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="152026590"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 02:46:11 -0700
IronPort-SDR: fim6gnP4vRfVcD/l5qksWMUU8oQjoV35IcBDHWN9QMe1sulrBLxS2GE5GshSViEZJt9HY1B5eR
 VOleEtrHJ4eg==
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="440068617"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 14 Aug 2020 02:46:10 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 08:19:46 +0530
Message-Id: <20200814024950.26830-4-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
References: <20200814024950.26830-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] Critical KlockWork Error - Fixes -
 intel_display.c - Possible NullPointerDereference1
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
Cc: Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2ddabf92adde..30d189094e97 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2265,9 +2265,9 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	pinctl = 0;
 	if (HAS_GMCH(dev_priv))
 		pinctl |= PIN_MAPPABLE;
-
-	vma = i915_gem_object_pin_to_display_plane(obj,
-						   alignment, view, pinctl);
+	if (obj)
+	    vma = i915_gem_object_pin_to_display_plane(obj,
+		    alignment, view, pinctl);
 	if (IS_ERR(vma))
 		goto err;
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
