Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF0C535EAA
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 12:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9E310E2D7;
	Fri, 27 May 2022 10:50:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF7C10E066;
 Fri, 27 May 2022 10:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653648651; x=1685184651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CJhT6tZ4Cs0BuvfUU3fiJpIcTj6HeGMX5ZF3A8n8wpk=;
 b=eF8jyN+bYV6DTB9rpGyELtFMqvrm6UO+gQ6Np2ZkseVPwKUTa5FI9LDA
 lr8KBKRe54Spbh8njfEeZIY0JlkLYrzBZvzfOHd9F9w4N8H/SDYju2oh2
 0VcS/lbQOCL7lumwXd4USEwAyWyjzhDZpIU3bneb40DlKVffyYkdg4i8W
 WUl9AupNO1PQTVaOQOnmd2t4h7x5+fz3O/zJZXsYc1L9yzlY8V4Zl6eq8
 6qXD9OA8eLtk/R4ba2zZ3mRCRvkYONqw/ISeezNz/hQC8M5gAl04q9m8r
 Dqh1FqCk/+B01GN6I4JpQPRxAXHCkE4zDZSb9nJ56k6TGMSe+Ny3P01XW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="262066131"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="262066131"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 03:50:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="550155687"
Received: from dnanduri-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.215.174])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 03:50:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 27 May 2022 11:50:40 +0100
Message-Id: <20220527105042.2233128-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] lib/igt_device_scan: Free filtered
 devices in igt_devices_free
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Fix a possible oversight.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_device_scan.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index 3c23fe0eb520..a30433ae2cff 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -814,6 +814,11 @@ void igt_devices_free(void)
 		igt_device_free(dev);
 		free(dev);
 	}
+
+	igt_list_for_each_entry_safe(dev, tmp, &igt_devs.filtered, link) {
+		igt_list_del(&dev->link);
+		free(dev);
+	}
 }
 
 /**
-- 
2.32.0

