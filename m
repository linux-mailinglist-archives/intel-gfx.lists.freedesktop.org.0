Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2927A2B8235
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 17:54:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80FF26E463;
	Wed, 18 Nov 2020 16:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E20C26E461
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 16:53:59 +0000 (UTC)
IronPort-SDR: PKoGkdoFeLdbd+jN+0LkMHtQcd1Dk5Dfm0IQxGBTFdeiD+A8/SGbFWZT9x+pM5CdM7JRBdhtIi
 yM9GqwaoD11A==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="150991931"
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="150991931"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 08:53:59 -0800
IronPort-SDR: jsxUfAN5DZO4IEOLUgumsySlshtRsfXJkfhQKxxX/cDt8ZHc5WlB6ERFxzx2zU+cenkOdC0ncv
 wtXbOLqwiH9A==
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="330580086"
Received: from dlmurray-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.82.13])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 08:53:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 18 Nov 2020 18:53:19 +0200
Message-Id: <20201118165320.26829-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201118165320.26829-1-jani.nikula@intel.com>
References: <20201118165320.26829-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] ath9k: make relay callbacks const
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
 linux-wireless@vger.kernel.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that relay_open() accepts const callbacks, make relay callbacks
const.

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: QCA ath9k Development <ath9k-devel@qca.qualcomm.com>
Cc: linux-wireless@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/net/wireless/ath/ath9k/common-spectral.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath9k/common-spectral.c b/drivers/net/wireless/ath/ath9k/common-spectral.c
index 21191955a7c1..e055adfb5361 100644
--- a/drivers/net/wireless/ath/ath9k/common-spectral.c
+++ b/drivers/net/wireless/ath/ath9k/common-spectral.c
@@ -1053,7 +1053,7 @@ static int remove_buf_file_handler(struct dentry *dentry)
 	return 0;
 }
 
-static struct rchan_callbacks rfs_spec_scan_cb = {
+static const struct rchan_callbacks rfs_spec_scan_cb = {
 	.create_buf_file = create_buf_file_handler,
 	.remove_buf_file = remove_buf_file_handler,
 };
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
