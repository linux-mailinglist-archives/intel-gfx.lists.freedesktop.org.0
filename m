Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E22475A1D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 14:57:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A1F410E537;
	Wed, 15 Dec 2021 13:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0090010E537
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Dec 2021 13:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639576673; x=1671112673;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pqrizbWMDB8CuvAtjODNYAP/gTLp/24Si3iA4T53x4o=;
 b=Vd55n9hVLHoka2qXBC+l4ovaGqAyZV6wSx5amPvF8N79r5yQyDO2LDH5
 PnQh6NylRV1FxqCfYtfoMUeaBf2wCJO9XmCk7wevxxpHTpB7DioyIoKRV
 ccHzF5uKbqkCpE7UvCqGXkzGngXnAfgBO03aFI6ZCIx/8nELdcJ2+qm5Z
 XXFAxRvTxtcWQUsb9hC9oCLQqJsO5Dgt5NCmBOG9kNM1+RbYeg52aLm7h
 MFUAUEjilBBtVKdB2feHXBcx5QUu2DiVE9EpI0CV60d4J9YdhqxhdseO6
 8lgDYjIOYNiOUZGzw5+80ATz+NpDR/eIM5DDC8jqSbYVC+MzL/qNQbVoC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="239450411"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="239450411"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 05:57:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="682502782"
Received: from sannilnx.jer.intel.com ([10.12.231.79])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 05:57:50 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 15 Dec 2021 15:56:20 +0200
Message-Id: <20211215135622.1060229-4-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211215135622.1060229-1-alexander.usyskin@intel.com>
References: <20211215135622.1060229-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] mei: gsc: setup char driver alive in spite
 of firmware handshake failure
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue to char device setup in spite of firmware handshake failure.
In order to provide access to the firmware status registers and other
information are valuable for debug and manufacturing.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/gsc-me.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
index 901d6e0ce6cd..c6bf869d910b 100644
--- a/drivers/misc/mei/gsc-me.c
+++ b/drivers/misc/mei/gsc-me.c
@@ -86,11 +86,12 @@ static int mei_gsc_probe(struct platform_device *platdev)
 	pm_runtime_set_active(device);
 	pm_runtime_enable(device);
 
-	if (mei_start(dev)) {
-		dev_err(device, "init hw failure.\n");
-		ret = -ENODEV;
-		goto err;
-	}
+	/* Continue to char device setup in spite of firmware handshake failure.
+	 * In order to provide access to the firmware status registers to the user
+	 * space via sysfs.
+	 */
+	if (mei_start(dev))
+		dev_warn(device, "init hw failure.\n");
 
 	pm_runtime_set_autosuspend_delay(device, MEI_GSC_RPM_TIMEOUT);
 	pm_runtime_use_autosuspend(device);
-- 
2.32.0

