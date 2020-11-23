Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1416A2C127B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 18:59:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CC789ACD;
	Mon, 23 Nov 2020 17:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E6F289ACD
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 17:59:52 +0000 (UTC)
IronPort-SDR: LAAi0rHJuzTMSKWRyoMObgy2mS6ue/KQYVFlYvuhhwp+2WwVi860QVZT4S/Co1MYnzt0yx1Gfr
 irl1jkkGYAjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="233424271"
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="233424271"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 09:59:52 -0800
IronPort-SDR: duHfIIVTNvV65/0AdPRzgIGLvxPFyjofGjd781D1oylk5RL1U45olbrp/VQmqqVbI+z1S2o8ne
 96cZz0rF9vaQ==
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="478196756"
Received: from suygunge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 09:59:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org
Date: Mon, 23 Nov 2020 19:59:22 +0200
Message-Id: <e40642f3b027d2bb6bc851ddb60e0a61ea51f5f8.1606153547.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1606153547.git.jani.nikula@intel.com>
References: <cover.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] relay: require non-NULL callbacks in
 relay_open()
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
Cc: Christoph Hellwig <hch@infradead.org>, jani.nikula@intel.com,
 Andrew Morton <akpm@linux-foundation.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are no clients passing NULL callbacks, which makes sense as it
wouldn't even create a file. Require non-NULL callbacks, and throw away
the handling for NULL callbacks.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Cc: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 kernel/relay.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/kernel/relay.c b/kernel/relay.c
index b51343642bf4..d9b8185161a8 100644
--- a/kernel/relay.c
+++ b/kernel/relay.c
@@ -291,13 +291,6 @@ static int remove_buf_file_default_callback(struct dentry *dentry)
 	return -EINVAL;
 }
 
-/* relay channel default callbacks */
-static struct rchan_callbacks default_channel_callbacks = {
-	.subbuf_start = subbuf_start_default_callback,
-	.create_buf_file = create_buf_file_default_callback,
-	.remove_buf_file = remove_buf_file_default_callback,
-};
-
 /**
  *	wakeup_readers - wake up readers waiting on a channel
  *	@work: contains the channel buffer
@@ -472,11 +465,6 @@ static void relay_close_buf(struct rchan_buf *buf)
 static void setup_callbacks(struct rchan *chan,
 				   struct rchan_callbacks *cb)
 {
-	if (!cb) {
-		chan->cb = &default_channel_callbacks;
-		return;
-	}
-
 	if (!cb->subbuf_start)
 		cb->subbuf_start = subbuf_start_default_callback;
 	if (!cb->create_buf_file)
@@ -542,6 +530,8 @@ struct rchan *relay_open(const char *base_filename,
 		return NULL;
 	if (subbuf_size > UINT_MAX / n_subbufs)
 		return NULL;
+	if (!cb)
+		return NULL;
 
 	chan = kzalloc(sizeof(struct rchan), GFP_KERNEL);
 	if (!chan)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
