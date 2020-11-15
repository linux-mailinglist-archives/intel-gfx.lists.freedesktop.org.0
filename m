Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1922B35F2
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 16:57:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC88A6E9BA;
	Sun, 15 Nov 2020 15:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AA5E6E9AD;
 Sun, 15 Nov 2020 15:57:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1ACF4A8836;
 Sun, 15 Nov 2020 15:57:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Nov 2020 15:57:15 -0000
Message-ID: <160545583508.9577.5747564672621187022@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201115153139.24369-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201115153139.24369-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Revert_=22drm=3A_convert_drm=5Fatomic=5Fuapi=2Ec_to_new_deb?=
 =?utf-8?q?ug_helpers=22?=
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

Series: Revert "drm: convert drm_atomic_uapi.c to new debug helpers"
URL   : https://patchwork.freedesktop.org/series/83856/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d8ecccff711f Revert "drm: convert drm_atomic_uapi.c to new debug helpers"
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
<7>[    3.739908] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and_unlock] test CRTC 0 primary plane

-:13: WARNING:REPEATED_WORD: Possible repeated word: 'ff'
#13: 
<4>[    3.754910] Code: 24 28 be 10 00 00 00 48 c7 c2 60 b0 38 82 48 8b 78 18 ff 75 20 8b 85 d8 00 00 00 50 e8 89 45 ff ff 58 31 c0 5a 5b 5d 41 5c c3 <48> 8b 04 25 00 00 00 00 41 8b 4c 24 28 49 89 d9 be 10 00 00 00 4d

total: 0 errors, 2 warnings, 0 checks, 206 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
