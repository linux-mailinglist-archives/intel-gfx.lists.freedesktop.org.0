Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0C47EA3B3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 20:23:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79AC10E18E;
	Mon, 13 Nov 2023 19:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58BDC10E18E;
 Mon, 13 Nov 2023 19:23:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C5F1AADDA;
 Mon, 13 Nov 2023 19:23:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krister Johansen" <kjlx@templeofstupid.com>
Date: Mon, 13 Nov 2023 19:23:04 -0000
Message-ID: <169990338428.24211.5227530969920814866@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1699564053.git.kjlx@templeofstupid.com>
In-Reply-To: <cover.1699564053.git.kjlx@templeofstupid.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fuse_submount=5Flookup_needs_to_be_initialized?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Fuse submount_lookup needs to be initialized
URL   : https://patchwork.freedesktop.org/series/126336/
State : warning

== Summary ==

Error: dim checkpatch failed
919b794dcf31 fuse: ensure submount_lookup is initialized on alloc
75bb4ac3057d fuse: share lookup state between submount and its parent
-:41: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#41: FILE: fs/fuse/fuse_i.h:72:
+	 * and kernel */

-:72: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*sl)...) over kzalloc(sizeof(struct fuse_submount_lookup)...)
#72: FILE: fs/fuse/inode.c:75:
+	sl = kzalloc(sizeof(struct fuse_submount_lookup), GFP_KERNEL_ACCOUNT);

total: 0 errors, 1 warnings, 1 checks, 163 lines checked


