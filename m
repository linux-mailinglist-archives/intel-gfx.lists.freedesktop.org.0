Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB7F2F87FD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 22:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 137896E49F;
	Fri, 15 Jan 2021 21:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21C266E49F;
 Fri, 15 Jan 2021 21:55:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1058AA8835;
 Fri, 15 Jan 2021 21:55:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 15 Jan 2021 21:55:39 -0000
Message-ID: <161074773904.28527.11275251964875454437@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm-buf=3A_Add_debug_option_=28rev6=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm-buf: Add debug option (rev6)
URL   : https://patchwork.freedesktop.org/series/85813/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cd675d2b9e93 dma-buf: Add debug option
-:85: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#85: FILE: drivers/dma-buf/dma-buf.c:678:
+	 * before passing the sgt back to the exporter. */

-:90: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#90: FILE: drivers/dma-buf/dma-buf.c:683:
+
+}

-:91: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#91: FILE: drivers/dma-buf/dma-buf.c:684:
+}
+static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,

-:91: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#91: FILE: drivers/dma-buf/dma-buf.c:684:
+static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,

-:176: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 2 checks, 108 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
