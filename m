Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CC9244749
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E635A6EB17;
	Fri, 14 Aug 2020 09:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EDCF6EB17
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 09:46:10 +0000 (UTC)
IronPort-SDR: LhVjLGRJTNIZszIsRHE8FPfGGI4si11iDBkGHF5RDZc5wd6HhzTzar2NI0aRfcEcrZgS43AZSH
 clGsTIqwhRAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="152026589"
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="152026589"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 02:46:10 -0700
IronPort-SDR: E6RHUQ9EN6RWr2Zf91U4gIU2Qs7eh6th6YmDpehmiHrIQwdPQ0TRkQG8q2skyzl0aDDHEbLGga
 R8Qs1z9wQ/Jg==
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="440068608"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 14 Aug 2020 02:46:09 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 08:19:45 +0530
Message-Id: <20200814024950.26830-3-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
References: <20200814024950.26830-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] Critical KlockWork Error - Fixes -
 intel_fbdev.c - Possible NullPointerDereference1
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
 drivers/gpu/drm/i915/display/intel_fbdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index bd39eb6a21b8..ec4f82559fc1 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -595,9 +595,11 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 	 * been restored from swap. If the object is stolen however, it will be
 	 * full of whatever garbage was left in there.
 	 */
-	if (state == FBINFO_STATE_RUNNING &&
-	    intel_fb_obj(&ifbdev->fb->base)->stolen)
+	if (ifbdev->fb && intel_fb_obj(&ifbdev->fb->base)) {
+	    if (state == FBINFO_STATE_RUNNING &&
+		    intel_fb_obj(&ifbdev->fb->base)->stolen)
 		memset_io(info->screen_base, 0, info->screen_size);
+	}
 
 	drm_fb_helper_set_suspend(&ifbdev->helper, state);
 	console_unlock();
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
