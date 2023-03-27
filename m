Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E44686CA41A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11C310E579;
	Mon, 27 Mar 2023 12:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9C5210E579;
 Mon, 27 Mar 2023 12:29:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1B51AA917;
 Mon, 27 Mar 2023 12:29:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 27 Mar 2023 12:29:53 -0000
Message-ID: <167992019389.32630.17112232670168602316@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230327105330.312131-1-jani.nikula@intel.com>
In-Reply-To: <20230327105330.312131-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=2Ccore-for-CI=5D_Revert_=22Reve?=
 =?utf-8?q?rt_=22drm/i915=3A_Don=27t_select_BROKEN=22=22?=
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

Series: series starting with [1/2,core-for-CI] Revert "Revert "drm/i915: Don't select BROKEN""
URL   : https://patchwork.freedesktop.org/series/115659/
State : warning

== Summary ==

Error: dim checkpatch failed
90424153487a Revert "Revert "drm/i915: Don't select BROKEN""
a8ac1f2f356f drm/i915: remove unused config DRM_I915_UNSTABLE
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8c26491f5853 ("drm/i915: Kill the fake lmem support")'
#10: 
removed in 8c26491f5853 ("drm/i915: Kill the fake lmem support"). Drop

-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
deleted file mode 100644

total: 1 errors, 1 warnings, 0 checks, 11 lines checked


