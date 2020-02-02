Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AECC14FE6A
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 17:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47DF86E0E0;
	Sun,  2 Feb 2020 16:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 004976E0D8;
 Sun,  2 Feb 2020 16:57:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED94DA0078;
 Sun,  2 Feb 2020 16:57:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 02 Feb 2020 16:57:20 -0000
Message-ID: <158066264095.17037.11798128981757173061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200202161009.3969641-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200202161009.3969641-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Remove_PageReserved_manipulation_from_drm=5Fpci=5Fal?=
 =?utf-8?q?loc?=
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

Series: drm: Remove PageReserved manipulation from drm_pci_alloc
URL   : https://patchwork.freedesktop.org/series/72882/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
955e2e4c57d7 drm: Remove PageReserved manipulation from drm_pci_alloc
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit de09d31dd38a ("page-flags: define PG_reserved behavior on compound pages")'
#10: 
commit de09d31dd38a50fdce106c15abd68432eebbd014

-:22: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Taketo Kabe'
#22: 
Reported-by: Taketo Kabe

total: 2 errors, 0 warnings, 0 checks, 49 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
