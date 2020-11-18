Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E56D42B8234
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 17:53:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E816E45E;
	Wed, 18 Nov 2020 16:53:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B01A6E45E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 16:53:55 +0000 (UTC)
IronPort-SDR: GdwqFAI/MexNlZfMK6/rROGcF+Q0Z8RboPkoiVZN+/+UCFCc9jBzsVoi17r2vkGxZ2WeNO7zAk
 ipETFGZxPG6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="150991922"
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="150991922"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 08:53:54 -0800
IronPort-SDR: 5w0I3UUSeGLJLJiMv9LlRTYT7oJkfY7IZNpLLOgy5Esh1RbcfdTwHGfgbhMYwoP7jIzegSSmsn
 9b8YKy0Ym60w==
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="330580051"
Received: from dlmurray-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.82.13])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 08:53:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 18 Nov 2020 18:53:18 +0200
Message-Id: <20201118165320.26829-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201118165320.26829-1-jani.nikula@intel.com>
References: <20201118165320.26829-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] ath11k: make relay callbacks const
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 ath11k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that relay_open() accepts const callbacks, make relay callbacks
const.

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: ath11k@lists.infradead.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/net/wireless/ath/ath11k/spectral.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath11k/spectral.c b/drivers/net/wireless/ath/ath11k/spectral.c
index ac2a8cfdc1c0..1afe67759659 100644
--- a/drivers/net/wireless/ath/ath11k/spectral.c
+++ b/drivers/net/wireless/ath/ath11k/spectral.c
@@ -148,7 +148,7 @@ static int remove_buf_file_handler(struct dentry *dentry)
 	return 0;
 }
 
-static struct rchan_callbacks rfs_scan_cb = {
+static const struct rchan_callbacks rfs_scan_cb = {
 	.create_buf_file = create_buf_file_handler,
 	.remove_buf_file = remove_buf_file_handler,
 };
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
