Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F054B52CB7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 11:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBFD210EA53;
	Thu, 11 Sep 2025 09:10:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZkbbiYq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 206EF10EA53
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 09:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757581803; x=1789117803;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yGL+vxJx/w1TmbqdqxZh2t46QUiSVnW24zkqsYC3dR8=;
 b=mZkbbiYq695GivlbosEZi127ejXH3TNInDW1Vzd0GbX8ILa4Mc1xO4PS
 ApaKj5l4P3fLoBvnxswIC6djgk/49dr91lL+Zp7d/5Ov8CEpQv48204sw
 opLHm8DTypOFLsr1HNRfkrRUCUbNx6rEjAJKaj7l7R9uyeEGj/jtqiRMg
 UuI808NuPtuLaX5c1aC4uuIhyUOXGantN9AMVNGanFaLyeTFrZ+jAu/OG
 8wREvKYCT4zb3hGCFkXofg81saFHsNEqGecoFDAYqet5ioQXW/o1hXQ+x
 2yrU1yN3JNe9vezbzdS/Ty0trn7s53s7MuqsSYjeASp3WniCzpF9V9pCW A==;
X-CSE-ConnectionGUID: Qwp9PcLcRUaP0j7elPXRsg==
X-CSE-MsgGUID: 9aa5kVywRqOJheErs3dvGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="59136381"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="59136381"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 02:10:03 -0700
X-CSE-ConnectionGUID: vFnU+61YQ8WaVp4yvEdyOQ==
X-CSE-MsgGUID: IeIQ6eXxTr2DcxCw2pzDYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="177678948"
Received: from varungup-desk.iind.intel.com ([10.190.238.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 02:09:59 -0700
From: Varun Gupta <varun.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: himal.prasad.ghimiray@intel.com,
	varun.gupta@intel.com
Subject: [PATCH] drm/xe: Fix driver reference in FLR comment
Date: Thu, 11 Sep 2025 14:39:55 +0530
Message-ID: <20250911090955.762081-1-varun.gupta@intel.com>
X-Mailer: git-send-email 2.43.0
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

Fixes the comment about the driver-initiated FLR to refer to
the 'xe' driver instead of the old 'i915' driver.

Signed-off-by: Varun Gupta <varun.gupta@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index c7bba535b145..76076e3f1914 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -532,7 +532,7 @@ static bool xe_driver_flr_disabled(struct xe_device *xe)
  * re-init and saving/restoring (or re-populating) the wiped memory. Since we
  * perform the FLR as the very last action before releasing access to the HW
  * during the driver release flow, we don't attempt recovery at all, because
- * if/when a new instance of i915 is bound to the device it will do a full
+ * if/when a new instance of xe is bound to the device it will do a full
  * re-init anyway.
  */
 static void __xe_driver_flr(struct xe_device *xe)
-- 
2.43.0

