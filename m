Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44608433D6A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 19:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75006E17F;
	Tue, 19 Oct 2021 17:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EAA06E17F;
 Tue, 19 Oct 2021 17:25:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1074EA47DF;
 Tue, 19 Oct 2021 17:25:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Oct 2021 17:25:15 -0000
Message-ID: <163466431503.5185.7713533084750588415@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211005065151.828922-1-bigeasy@linutronix.de>
In-Reply-To: <20211005065151.828922-1-bigeasy@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Increase_DRM=5FOBJECT=5FMAX=5FPROPERTY_by_18=2E_=28r?=
 =?utf-8?q?ev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Increase DRM_OBJECT_MAX_PROPERTY by 18. (rev2)
URL   : https://patchwork.freedesktop.org/series/95440/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4252f133017b drm: Increase DRM_OBJECT_MAX_PROPERTY by 18.
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
> > On Wed, Oct 13, 2021 at 07:35:48PM +0200, Sebastian Andrzej Siewior wrote:

-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit c7fcbf251397 ("drm/plane: check that fb_damage is set up when used")'
#9: 
> > > c7fcbf2513973 -> does not boot

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit c7fcbf251397 ("drm/plane: check that fb_damage is set up when used")'
#10: 
> > > c7fcbf2513973 + 2f425cf5242a0 -> boots, 18 x DRM_OBJECT_MAX_PROPERTY

-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6f11f37459d8 ("drm/plane: remove drm_helper_get_plane_damage_clips")'
#11: 
> > > 6f11f37459d8f -> boots, 0 x DRM_OBJECT_MAX_PROPERTY

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6f11f37459d8 ("drm/plane: remove drm_helper_get_plane_damage_clips")'
#12: 
> > > 6f11f37459d8f + 2f425cf5242a0 -> boots, 18 x DRM_OBJECT_MAX_PROPERTY

-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2f425cf5242a ("drm: Fix oops in damage self-tests by mocking damage property")'
#15: 
> > 2f425cf5242a0 on top (not merged), and that already got you the warning

-:24: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6f11f37459d8 ("drm/plane: remove drm_helper_get_plane_damage_clips")'
#24: 
> attached. dmesg.txt is 6f11f37459d8f and the other is 6f11f37459d8f +

-:46: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 7 errors, 1 warnings, 0 checks, 7 lines checked


