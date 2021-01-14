Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7982F6B90
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 20:55:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5DC6E02F;
	Thu, 14 Jan 2021 19:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7414D6E02F;
 Thu, 14 Jan 2021 19:55:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E063A0019;
 Thu, 14 Jan 2021 19:55:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 14 Jan 2021 19:55:36 -0000
Message-ID: <161065413642.19646.8086424791271551957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm-buf=3A_Add_debug_option_=28rev2=29?=
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

Series: drm-buf: Add debug option (rev2)
URL   : https://patchwork.freedesktop.org/series/85813/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9406d53d49b1 drm-buf: Add debug option
-:64: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#64: FILE: drivers/dma-buf/dma-buf.c:669:
+static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,

-:79: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#79: FILE: drivers/dma-buf/dma-buf.c:684:
+		 * before passing the sgt back to the exporter. */

-:108: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#108: FILE: drivers/dma-buf/dma-buf.c:815:
+{
+

-:150: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 1 checks, 99 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
