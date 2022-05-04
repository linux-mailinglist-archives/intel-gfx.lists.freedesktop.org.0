Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC36519E7B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 13:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7467F10E4D8;
	Wed,  4 May 2022 11:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E5810ECE4
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 11:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651664905; x=1683200905;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bUFko7bDKdT9XzV4f71l+lAEF8plnTmTPo+W/e6KnTA=;
 b=PXxZ9OBZ4Wa5E/IQwW8rhYO4jSMsN6+IqNTtglI0DfJRy6Q145PGU0IE
 PrBHa8bczuPhqIETrT09I/E+R7wbuYz3FnTGiFFtFG9GODfbehFjGii5R
 maPbfNs+54XKQ/uYnqt8IZIawP1kfHWEVwN3GLRPOzYbLRgV6asRk3+1p
 4Nso6vcsjiG0TGPm7azqvYVZIgZq9VZRVCtKpVBut/luRgblQQ0TAnloy
 eXN/f2PAS4gnBfmYw4tOUWsGsywNEXxG0TQg5yITpUQKv2jCazAQB0kfm
 S0w6RGe0yVPKhkGqmBww2yQytCelefbscWPUavdJITMz+eiDeevkKR2eW g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="292932063"
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="292932063"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 04:48:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="584695272"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 04:48:19 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 13:48:08 +0200
Message-Id: <20220504114808.1578304-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220504114808.1578304-1-andrzej.hajda@intel.com>
References: <20220504114808.1578304-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] [DO NOT MERGE] tty/vt: add some logging to
 vt error path
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

Intel CI contains machine which permanently fails with
fb initialization with crashes. Add extra logs to debug the issue.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/tty/vt/vt.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/tty/vt/vt.c b/drivers/tty/vt/vt.c
index f8c87c4d739955..430d9639d9fd20 100644
--- a/drivers/tty/vt/vt.c
+++ b/drivers/tty/vt/vt.c
@@ -3627,6 +3627,8 @@ int __init vty_init(const struct file_operations *console_fops)
 
 static struct class *vtconsole_class;
 
+#define ERR(__err) ({ void *err = ERR_PTR(__err); pr_err("%s:%d: err=%pe\n", __func__, __LINE__, err); PTR_ERR(err); })
+
 static int do_bind_con_driver(const struct consw *csw, int first, int last,
 			   int deflt)
 {
@@ -3636,7 +3638,7 @@ static int do_bind_con_driver(const struct consw *csw, int first, int last,
 	int i, j = -1, k = -1, retval = -ENODEV;
 
 	if (!try_module_get(owner))
-		return -ENODEV;
+		return ERR(-ENODEV);
 
 	WARN_CONSOLE_UNLOCKED();
 
@@ -3651,7 +3653,7 @@ static int do_bind_con_driver(const struct consw *csw, int first, int last,
 		}
 	}
 
-	if (retval)
+	if (retval && ERR(retval))
 		goto err;
 
 	if (!(con_driver->flag & CON_DRIVER_FLAG_INIT)) {
@@ -4111,21 +4113,21 @@ static int do_register_con_driver(const struct consw *csw, int first, int last)
 	WARN_CONSOLE_UNLOCKED();
 
 	if (!try_module_get(owner))
-		return -ENODEV;
+		return ERR(-ENODEV);
 
 	for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
 		con_driver = &registered_con_driver[i];
 
 		/* already registered */
 		if (con_driver->con == csw) {
-			retval = -EBUSY;
+			retval = ERR(-EBUSY);
 			goto err;
 		}
 	}
 
 	desc = csw->con_startup();
 	if (!desc) {
-		retval = -ENODEV;
+		retval = ERR(-ENODEV);
 		goto err;
 	}
 
@@ -4148,7 +4150,7 @@ static int do_register_con_driver(const struct consw *csw, int first, int last)
 		}
 	}
 
-	if (retval)
+	if (retval && ERR(retval))
 		goto err;
 
 	con_driver->dev =
-- 
2.25.1

