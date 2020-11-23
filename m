Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E8F2C1282
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 19:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FEDB6E05D;
	Mon, 23 Nov 2020 18:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 307546E05D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 18:00:38 +0000 (UTC)
IronPort-SDR: 9ssHyNk4e21kw0NMEaNFbe2vGC1bM8FNzsPzVF6xiMVJiYSgdnQTRDyqFcr1fr0XIFzTe8oIft
 UMMYpNgEZJgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="256522009"
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="256522009"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 10:00:37 -0800
IronPort-SDR: uIJ4xAF3qw/Rcf2+KRTJQ9eAiso9qCyOcgRGhS6DXYqHRVSdfyYteyYsRbbBLbRpVGCXhW3EjL
 3CoEmmfbw+EA==
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="332267090"
Received: from suygunge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.108])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 10:00:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org
Date: Mon, 23 Nov 2020 19:59:29 +0200
Message-Id: <7ff5ce0b735901eb4f10e13da2704f1d8c4a2507.1606153547.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1606153547.git.jani.nikula@intel.com>
References: <cover.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 9/9] blktrace: make relay callbacks const
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that relay_open() accepts const callbacks, make relay callbacks
const.

Cc: Jens Axboe <axboe@kernel.dk>
Cc: linux-block@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 kernel/trace/blktrace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/trace/blktrace.c b/kernel/trace/blktrace.c
index f1022945e346..b5c4b9ade960 100644
--- a/kernel/trace/blktrace.c
+++ b/kernel/trace/blktrace.c
@@ -449,7 +449,7 @@ static struct dentry *blk_create_buf_file_callback(const char *filename,
 					&relay_file_operations);
 }
 
-static struct rchan_callbacks blk_relay_callbacks = {
+static const struct rchan_callbacks blk_relay_callbacks = {
 	.subbuf_start		= blk_subbuf_start_callback,
 	.create_buf_file	= blk_create_buf_file_callback,
 	.remove_buf_file	= blk_remove_buf_file_callback,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
