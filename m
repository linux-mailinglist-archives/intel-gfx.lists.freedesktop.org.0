Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A2476CE78
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 15:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73B410E0D8;
	Wed,  2 Aug 2023 13:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B9EBC10E181;
 Wed,  2 Aug 2023 13:24:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1031A00E8;
 Wed,  2 Aug 2023 13:24:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ziqi Zhao" <astrajoan@yahoo.com>
Date: Wed, 02 Aug 2023 13:24:57 -0000
Message-ID: <169098269762.6324.13605533381115885805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <00000000000034cf5d05fea52dd4@google.com>
In-Reply-To: <00000000000034cf5d05fea52dd4@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/modes=3A_Fix_division_by_zero_error?=
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

Series: drm/modes: Fix division by zero error
URL   : https://patchwork.freedesktop.org/series/121879/
State : warning

== Summary ==

Error: dim checkpatch failed
1beffd9a2b07 drm/modes: Fix division by zero error
-:18: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#18: 
Reported-by: syzbot+622bba18029bcde672e1@syzkaller.appspotmail.com
Signed-off-by: Ziqi Zhao <astrajoan@yahoo.com>

-:50: CHECK:SPACING: No space is necessary after a cast
#50: FILE: drivers/gpu/drm/drm_modes.c:1306:
+	return DIV_ROUND_CLOSEST_ULL(num, (u32) den);

total: 0 errors, 1 warnings, 1 checks, 27 lines checked


