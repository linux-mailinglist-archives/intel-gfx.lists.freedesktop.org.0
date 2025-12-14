Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10744CBBFC7
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Dec 2025 21:20:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F63F10E053;
	Sun, 14 Dec 2025 20:20:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="voPLXKkS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE5010E053;
 Sun, 14 Dec 2025 20:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=sdZ2XNso7LaVfo7xffwtPadlGCczVr6VgA9Hc58ER7M=; b=voPLXKkS0xllnSy/qI9HUA+dpU
 2b8HSR3VgmhwTx2iki/+vGiD9iLMm2A3DLC+X/eFYnwgRqSsXUsxyFSPNibEyKpKh/sUqYQihPCDV
 YbflAKSK5Ra8HWrb8cLyjawRLU88ODOZv9mZTVCEJ9dlGp4IQtN/Ih4mxs7JeaFECPS6a/EXN85eT
 UH4N7XUQAHie+0LhlWs7ky5Zf2jV2zZbrrkDYBCYt2JgikFw2CWROy1QklmRUrODXHSWzW0xa1P+y
 d3nR/NTlL56udnW/gse3ISPZx/lbabwcGY+QcgXBFKFrCW91eBzEG3gYBLMKVqxbIEzE2obC81/pr
 VuudzgPA==;
Received: from [50.53.43.113] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vUsZn-00000002iOd-3P2v; Sun, 14 Dec 2025 20:20:20 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: [PATCH] iopoll: fix parameter names in kernel-doc
Date: Sun, 14 Dec 2025 12:20:16 -0800
Message-ID: <20251214202016.2198503-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Correct the parameter names to avoid kernel-doc warnings:

Warning: include/linux/iopoll.h:169 function parameter 'sleep_us' not
 described in 'read_poll_timeout_atomic'
Warning: ../include/linux/iopoll.h:169 function parameter
 'sleep_before_read' not described in 'read_poll_timeout_atomic'

Fixes: 9df8043a546d ("iopoll: Generalize read_poll_timeout() into poll_timeout_us()")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
---
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
---
 include/linux/iopoll.h |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

--- linux-next-20251201.orig/include/linux/iopoll.h
+++ linux-next-20251201/include/linux/iopoll.h
@@ -150,16 +150,16 @@
  * @op: accessor function (takes @args as its arguments)
  * @val: Variable to read the value into
  * @cond: Break condition (usually involving @val)
- * @delay_us: Time to udelay between reads in us (0 tight-loops). Please
+ * @sleep_us: Time to udelay between reads in us (0 tight-loops). Please
  *            read udelay() function description for details and
  *            limitations.
  * @timeout_us: Timeout in us, 0 means never timeout
- * @delay_before_read: if it is true, delay @delay_us before read.
+ * @sleep_before_read: if it is true, delay @sleep_us before read.
  * @args: arguments for @op poll
  *
  * This macro does not rely on timekeeping.  Hence it is safe to call even when
  * timekeeping is suspended, at the expense of an underestimation of wall clock
- * time, which is rather minimal with a non-zero delay_us.
+ * time, which is rather minimal with a non-zero @sleep_us.
  *
  * When available, you'll probably want to use one of the specialized
  * macros defined below rather than this macro directly.
