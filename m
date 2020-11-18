Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C95582B8233
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 17:53:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23F46E45D;
	Wed, 18 Nov 2020 16:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C936E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 16:53:48 +0000 (UTC)
IronPort-SDR: mdOdMoOpCu+sA7iFwYcUzgnhRwNfyAt9bLMPRgXl4YQhRoWpPqxt4/MKKxpJN+OzIM8QYviHCe
 /II9FL2ONdlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="150991894"
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="150991894"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 08:53:47 -0800
IronPort-SDR: 2JPoZm1puBdyJUhiN8hWtniMNdU0bTak5c4ADWW+rjk9psh8/eSXz1aSpWHULO/sTP2bxgKw66
 AUCXXE7ioiRg==
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="359541207"
Received: from dlmurray-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.82.13])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 08:53:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 18 Nov 2020 18:53:17 +0200
Message-Id: <20201118165320.26829-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201118165320.26829-1-jani.nikula@intel.com>
References: <20201118165320.26829-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] ath10k: make relay callbacks const
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
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that relay_open() accepts const callbacks, make relay callbacks
const.

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: ath10k@lists.infradead.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/net/wireless/ath/ath10k/spectral.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/spectral.c b/drivers/net/wireless/ath/ath10k/spectral.c
index 5db6bff5193b..68254a967ccb 100644
--- a/drivers/net/wireless/ath/ath10k/spectral.c
+++ b/drivers/net/wireless/ath/ath10k/spectral.c
@@ -497,7 +497,7 @@ static int remove_buf_file_handler(struct dentry *dentry)
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
