Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E9A790DA1
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Sep 2023 21:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3D110E11F;
	Sun,  3 Sep 2023 19:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B08F10E11F;
 Sun,  3 Sep 2023 19:11:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2B24AADF1;
 Sun,  3 Sep 2023 19:11:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Sun, 03 Sep 2023 19:11:29 -0000
Message-ID: <169376828996.29657.677252132222845602@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230903184607.272198-1-jim.cromie@gmail.com>
In-Reply-To: <20230903184607.272198-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=5Fdbg=3A_add_trailing_newlines_where_missing_=28rev2=29?=
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

Series: drm_dbg: add trailing newlines where missing (rev2)
URL   : https://patchwork.freedesktop.org/series/121583/
State : warning

== Summary ==

Error: dim checkpatch failed
4c66f4d11632 drm_dbg: add trailing newlines to msgs
7cd8bc083a40 drm_dbg: add trailing newlines to msgs
bf97bf2bfbe3 drm_dbg: add trailing newlines to msgs
a4719712c337 drm_dbg: add trailing newlines to msgs
-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/msm/msm_fb.c:180:
+	drm_dbg_state(dev, "create framebuffer: mode_cmd=%p (%dx%d@%4.4s)\n",
 			mode_cmd, mode_cmd->width, mode_cmd->height,

total: 0 errors, 0 warnings, 1 checks, 24 lines checked
ed1eced143b5 drm_dbg: add trailing newlines to msgs
019d4e4f030c drm: use correct ccflags-y syntax


