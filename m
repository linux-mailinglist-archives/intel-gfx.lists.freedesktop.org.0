Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3CA57F40A
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jul 2022 10:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15ED7BFC07;
	Sun, 24 Jul 2022 08:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5ACBFC02
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jul 2022 08:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658651127; x=1690187127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G1yujhj6+qoFPYeeBDu99uItvtsOTw0MkkjgAD9XQts=;
 b=HrX7z2xCOzrRqpJYbNkBOPEegtNTUi/tr//qtMKzW/y6ch0hrpPr2pCf
 ROiGADoOBdpTwagZ8ITB1RH4m/D8F0TaMrTTBPY8H0E7a0y6KACUQv9lY
 oVVYfAh/L7/PZG68WAe2dlkzYe2pHji0Aea6LFU7DU9nAQX/4dKidt+0y
 JlHE7fZUjr3s29vB73Jb3a5f6+NjAvZBjc1tfyPsT0WhgEWVVJSln5lrb
 Cnu7+Yzy5ZGezvQWVyzprVnZEA8FIbgjwTIod/aJn2yxRbFT4WAaEXQu5
 frRoCsYZRQzOZb8Y0Yy0thJ0bYpzCJ12Nr9bjGvPpLFT9iifsLIPFswIH g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10417"; a="313268006"
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="313268006"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 01:25:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="657756401"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 01:25:24 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Sun, 24 Jul 2022 11:24:25 +0300
Message-Id: <20220724082428.218628-12-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220724082428.218628-1-tomas.winkler@intel.com>
References: <20220724082428.218628-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 11/14] mei: gsc: add transition to PXP mode
 in resume flow
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vitaly Lubart <vitaly.lubart@intel.com>

Added transition to PXP mode in resume flow.

CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/misc/mei/gsc-me.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
index c8a167b57cc9..71f247f5e7ca 100644
--- a/drivers/misc/mei/gsc-me.c
+++ b/drivers/misc/mei/gsc-me.c
@@ -182,11 +182,22 @@ static int __maybe_unused mei_gsc_pm_suspend(struct device *device)
 static int __maybe_unused mei_gsc_pm_resume(struct device *device)
 {
 	struct mei_device *dev = dev_get_drvdata(device);
+	struct auxiliary_device *aux_dev;
+	struct mei_aux_device *adev;
 	int err;
+	struct mei_me_hw *hw;
 
 	if (!dev)
 		return -ENODEV;
 
+	hw = to_me_hw(dev);
+	aux_dev = to_auxiliary_dev(device);
+	adev = auxiliary_dev_to_mei_aux_dev(aux_dev);
+	if (adev->ext_op_mem.start) {
+		mei_gsc_set_ext_op_mem(hw, &adev->ext_op_mem);
+		dev->pxp_mode = MEI_DEV_PXP_INIT;
+	}
+
 	err = mei_restart(dev);
 	if (err)
 		return err;
-- 
2.35.3

