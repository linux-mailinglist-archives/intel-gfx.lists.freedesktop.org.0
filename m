Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A64218CB9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 18:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 769A66E214;
	Wed,  8 Jul 2020 16:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 272186E06D;
 Wed,  8 Jul 2020 16:15:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20A10A363D;
 Wed,  8 Jul 2020 16:15:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jul 2020 16:15:33 -0000
Message-ID: <159422493310.3839.3449610684413238095@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708150527.1302305-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708150527.1302305-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/vgem=3A_Replace_opencoded_version_of_drm=5Fgem=5Fdumb?=
 =?utf-8?b?X21hcF9vZmZzZXQoKSAocmV2Mik=?=
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

Series: drm/vgem: Replace opencoded version of drm_gem_dumb_map_offset() (rev2)
URL   : https://patchwork.freedesktop.org/series/79255/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0a11cb9ac305 drm/vgem: Replace opencoded version of drm_gem_dumb_map_offset()
-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 90378e589192 ("drm/gem: drm_gem_dumb_map_offset(): reject dma-buf")'
#13: 
Instead, the drm_gem_dumb_map_offset(), since 90378e589192 ("drm/gem:

total: 1 errors, 0 warnings, 0 checks, 39 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
