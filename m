Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 763FD1BD932
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D717E89907;
	Wed, 29 Apr 2020 10:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBA4D893CD;
 Wed, 29 Apr 2020 10:11:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4C35A47EB;
 Wed, 29 Apr 2020 10:11:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bartlomiej Zolnierkiewicz" <b.zolnierkie@samsung.com>
Date: Wed, 29 Apr 2020 10:11:22 -0000
Message-ID: <158815508286.6697.978780390716752699@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420130118.7a866fd5@canb.auug.org.au>
In-Reply-To: <20200420130118.7a866fd5@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_linux-next=3A_build_failure_after_merge_of_the_drm-misc_tre?=
 =?utf-8?q?e?=
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

Series: linux-next: build failure after merge of the drm-misc tree
URL   : https://patchwork.freedesktop.org/series/76709/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4cb00cc7b2f7 linux-next: build failure after merge of the drm-misc tree
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
> On Mon, 20 Apr 2020 13:01:18 +1000 Stephen Rothwell <sfr@canb.auug.org.au> wrote:

-:25: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit a07a63b0e24d ("video: fbdev: controlfb: add COMPILE_TEST support")'
#25: 
>>   a07a63b0e24d ("video: fbdev: controlfb: add COMPILE_TEST support")

-:63: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 2 errors, 1 warnings, 0 checks, 16 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
