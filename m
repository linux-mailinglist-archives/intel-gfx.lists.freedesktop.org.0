Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2123E4FC6EE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 23:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BAE610E06A;
	Mon, 11 Apr 2022 21:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09C1D10E06A;
 Mon, 11 Apr 2022 21:51:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0982BAA01E;
 Mon, 11 Apr 2022 21:51:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: cgel.zte@gmail.com
Date: Mon, 11 Apr 2022 21:51:19 -0000
Message-ID: <164971387901.2971.6385681543965036917@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220408095531.2495168-1-lv.ruyi@zte.com.cn>
In-Reply-To: <20220408095531.2495168-1-lv.ruyi@zte.com.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drivers=3A_Fix_spelling_mistake_=22writting=22_-=3E_=22writ?=
 =?utf-8?q?ing=22?=
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

Series: drivers: Fix spelling mistake "writting" -> "writing"
URL   : https://patchwork.freedesktop.org/series/102525/
State : warning

== Summary ==

Error: dim checkpatch failed
6dc04b2a73d1 drivers: Fix spelling mistake "writting" -> "writing"
-:4: WARNING:TYPO_SPELLING: 'writting' may be misspelled - perhaps 'writing'?
#4: 
Subject: [PATCH] drivers: Fix spelling mistake "writting" -> "writing"
                                                ^^^^^^^^

-:20: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#20: FILE: drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7307:
+	 * index will auto-inc after each data writing */

total: 0 errors, 2 warnings, 0 checks, 82 lines checked


