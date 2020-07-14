Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B6621FF5D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 23:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554D46E9E5;
	Tue, 14 Jul 2020 20:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A716E974;
 Tue, 14 Jul 2020 20:58:44 +0000 (UTC)
IronPort-SDR: UZC3fata1iaWnt/eOIn6mw5DzR249nD/JSMjnLU1ZtMowBFihD71488+/6BVwqEIOb2pawNDdI
 wIVe39GKLYfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="150444614"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="150444614"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 13:58:44 -0700
IronPort-SDR: 0yPl9tHJaGUjTa5M3mEuMe/H1ZhhPL2M8pOB2NQvBjILxZ4e47NZYaVhQ8ZvTu+9Yuf9avk1qX
 J4h6hWEO16dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="316504267"
Received: from ahanamuk-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.251.155.61])
 by orsmga008.jf.intel.com with ESMTP; 14 Jul 2020 13:58:43 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 14 Jul 2020 13:57:33 -0700
Message-Id: <1594760265-11618-48-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] =?utf-8?q?=5BPATCH_v2_47/59=5D_drm/kmb=3A_Don?=
 =?utf-8?q?=E2=80=99t_inadvertantly_disable_LCD_controller?=
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

setbits instead of write dword for LCD_CONTROL register
this was inadvertantly disabling the LCD controller.

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_plane.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index 3245ec7..1582ccf 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -158,6 +158,9 @@ static void kmb_plane_atomic_disable(struct drm_plane *plane,
 	kmb_clr_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
 			LCD_DMA_LAYER_ENABLE);
 	kmb_clr_bitmask_lcd(dev_p, LCD_CONTROL, ctrl);
+	DRM_INFO("%s : %d lcd_ctrl = 0x%x lcd_int_enable=0x%x\n",
+			__func__, __LINE__, kmb_read_lcd(dev_p, LCD_CONTROL),
+			kmb_read_lcd(dev_p, LCD_INT_ENABLE));
 }
 
 
@@ -454,7 +457,7 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	 */
 	ctrl |= LCD_CTRL_VHSYNC_IDLE_LVL;
 
-	kmb_write_lcd(dev_p, LCD_CONTROL, ctrl);
+	kmb_set_bitmask_lcd(dev_p, LCD_CONTROL, ctrl);
 
 	/* FIXME no doc on how to set output format,these values are taken
 	 * from the Myriadx tests
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
