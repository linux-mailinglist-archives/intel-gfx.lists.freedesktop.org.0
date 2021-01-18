Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5612FA101
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 14:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF926E22C;
	Mon, 18 Jan 2021 13:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E226E20E;
 Mon, 18 Jan 2021 13:14:34 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 3280BB970;
 Mon, 18 Jan 2021 13:14:32 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie, daniel@ffwll.ch, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, sroland@vmware.com, zackr@vmware.com
Date: Mon, 18 Jan 2021 14:14:19 +0100
Message-Id: <20210118131420.15874-6-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118131420.15874-1-tzimmermann@suse.de>
References: <20210118131420.15874-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 5/6] drm/vmwgfx: Remove reference to struct
 drm_device.pdev
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Martin Krastev <krastevm@vmware.com>, linux-graphics-maintainer@vmware.com,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Using struct drm_device.pdev is deprecated in favor of drm_device.dev.
The reference to the field was reintroduced during a rebase.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Fixes: 9703bb329206 ("drm/vmwgfx: Switch to a managed drm device")
Cc: Zack Rusin <zackr@vmware.com>
Cc: Martin Krastev <krastevm@vmware.com>
Cc: Roland Scheidegger <sroland@vmware.com>
Cc: VMware Graphics <linux-graphics-maintainer@vmware.com>
Cc: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
index 8c3eb00e8b54..545b83e338fc 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
@@ -1524,7 +1524,6 @@ static int vmw_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (IS_ERR(vmw))
 		return PTR_ERR(vmw);
 
-	vmw->drm.pdev = pdev;
 	pci_set_drvdata(pdev, &vmw->drm);
 
 	ret = vmw_driver_load(vmw, ent->device);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
