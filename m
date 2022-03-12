Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B124D7059
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Mar 2022 19:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB6110E07A;
	Sat, 12 Mar 2022 18:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC19110E07A;
 Sat, 12 Mar 2022 18:13:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6EC9AA917;
 Sat, 12 Mar 2022 18:13:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "H.J. Lu" <hjl.tools@gmail.com>
Date: Sat, 12 Mar 2022 18:13:16 -0000
Message-ID: <164710879668.29601.9445723202191106926@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <YizavhoUkeEDQ9hd@gmail.com>
In-Reply-To: <YizavhoUkeEDQ9hd@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_Workaround_broken_video_BIOS_in_LG_Gram_20?=
 =?utf-8?b?MjEgKHJldjMp?=
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

Series: drm/i915/bios: Workaround broken video BIOS in LG Gram 2021 (rev3)
URL   : https://patchwork.freedesktop.org/series/99052/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
419de03fc393 drm/i915/bios: Workaround broken video BIOS in LG Gram 2021
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5b1b60c09550 ("drm-tip: 2022y-03m-12d-07h-42m-20s UTC integration manifest")'
#8: 
5b1b60c09550 drm-tip: 2022y-03m-12d-07h-42m-20s UTC integration manifest

-:208: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 2 errors, 0 warnings, 0 checks, 161 lines checked


