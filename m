Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7C64AAF5F
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Feb 2022 14:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34E610E56A;
	Sun,  6 Feb 2022 13:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA4B89FCC
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Feb 2022 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644153233; x=1675689233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RPfAnYrchtvqrYB1kUbBqN/6hGrrdhKHKY7ccrDfJNE=;
 b=PevVLqSRDEhd2GXtPPShTmkBcn8BAWVfUrMpM5at91qog2y6+ZSw3Gos
 C5rJ15tMaiwE5NPT9cOgF3PDAvdaLOMsuYXGZ3pJ0UFhxGAU4SZDGTqQA
 mKdACBbo2qEmNly4P4Mil4EfvnBL/Cg5gssjPuZMdAjcObaTeo7zzXKqu
 YD2xzml1tEuHLnZxxDPbuORjzhv4uZ8HugaCXPsaXxF7FN5pQxVRLZw05
 Sl8jeawfncKUbLWXonZOa03A9tdTk8MzCAZlNAKdJuFVQi2geNpWCbCbK
 BTzEzuovRac5bFOzWqK+jeif0KeU0u/+y56fbTS7QkJ/gjZX0+gMpbWLJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10249"; a="232145926"
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="232145926"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 05:13:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="539750877"
Received: from sannilnx.jer.intel.com ([10.12.231.79])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 05:13:49 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Sun,  6 Feb 2022 15:13:20 +0200
Message-Id: <20220206131322.3246403-4-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220206131322.3246403-1-alexander.usyskin@intel.com>
References: <20220206131322.3246403-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/5] mei: gsc: setup char driver alive in
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Setup char device in spite of firmware handshake failure.
In order to provide host access to the firmware status registers and other
information required for the manufacturing process.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
V5: Rebase
---
 drivers/misc/mei/gsc-me.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
index 0afae70e0609..cf427f6fdec9 100644
--- a/drivers/misc/mei/gsc-me.c
+++ b/drivers/misc/mei/gsc-me.c
@@ -79,11 +79,12 @@ static int mei_gsc_probe(struct auxiliary_device *aux_dev,
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

