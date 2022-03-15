Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C124D9BE3
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EA0910E4DB;
	Tue, 15 Mar 2022 13:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9974110E494
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647349975; x=1678885975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bw9X21ncjxkGpypbqQM5Z7Pm+qsQfuMYlU0yKF9tJPE=;
 b=XkF5+SiCKrvMarZvrK8eNIi2aiwmVOEJT/jTwpDiEwBvLHxthNZghIKB
 9jeUDTYPjLuzLtxrXer/D1fzvK26ddc4gMnYpz2w4JoJgJcg1h0Jd0rQm
 6GF0Y9Ss6vxCMD5h9y3SCBO430MLRN4+PcE3msz7j4LbsshS8JCnhYnYv
 oBhRx8Q8ciqafS4249Lb13j5wm4FlL4S+zuCWEw8WtMrDe5cUMSs3JBu7
 3FrNXWYwW02w/uJNbS8UkQ/0avdlLQaKhZdnjCalWYzWIUu/IK+sy3iir
 TJZOBKJAsP7WeyaNmtWlaKj5SBjygsRZrRov2ClrltMwfAMJCY1GH4yF2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="253853044"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="253853044"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:12:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="556920066"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:12:51 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 15 Mar 2022 15:11:55 +0200
Message-Id: <20220315131157.3972238-4-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220315131157.3972238-1-alexander.usyskin@intel.com>
References: <20220315131157.3972238-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 3/5] mei: gsc: setup char driver alive in
 spite of firmware handshake failure
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
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Setup char device in spite of firmware handshake failure.
In order to provide host access to the firmware status registers and other
information required for the manufacturing process.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
V5: Rebase
V6: Rebase
V7: add Greg KH Reviewed-by
V8: Rebase
V9: Rebase
V11: Rebase
---
 drivers/misc/mei/gsc-me.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
index 64b02adf3149..58e39c00f150 100644
--- a/drivers/misc/mei/gsc-me.c
+++ b/drivers/misc/mei/gsc-me.c
@@ -79,11 +79,12 @@ static int mei_gsc_probe(struct auxiliary_device *aux_dev,
 	pm_runtime_set_active(device);
 	pm_runtime_enable(device);
 
-	if (mei_start(dev)) {
-		dev_err(device, "init hw failure.\n");
-		ret = -ENODEV;
-		goto irq_err;
-	}
+	/* Continue to char device setup in spite of firmware handshake failure.
+	 * In order to provide access to the firmware status registers to the user
+	 * space via sysfs.
+	 */
+	if (mei_start(dev))
+		dev_warn(device, "init hw failure.\n");
 
 	pm_runtime_set_autosuspend_delay(device, MEI_GSC_RPM_TIMEOUT);
 	pm_runtime_use_autosuspend(device);
@@ -97,7 +98,6 @@ static int mei_gsc_probe(struct auxiliary_device *aux_dev,
 
 register_err:
 	mei_stop(dev);
-irq_err:
 	devm_free_irq(device, hw->irq, dev);
 
 err:
-- 
2.32.0

