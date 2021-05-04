Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C04372E7D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 19:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41ED6EB38;
	Tue,  4 May 2021 17:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 243C36EB38;
 Tue,  4 May 2021 17:09:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C34BA0019;
 Tue,  4 May 2021 17:09:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 04 May 2021 17:09:23 -0000
Message-ID: <162014816309.3296.16228013514672221010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210504164136.96456-1-matthew.auld@intel.com>
In-Reply-To: <20210504164136.96456-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_drop_the_=5F=5Fi915=5Factive=5Fcall_pointer_pac?=
 =?utf-8?q?king?=
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

Series: drm/i915: drop the __i915_active_call pointer packing
URL   : https://patchwork.freedesktop.org/series/89783/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
332fdd121463 drm/i915: drop the __i915_active_call pointer packing
-:18: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ca419f407b43 ("drm/i915: Fix crash in auto_retire")'
#18: 
References: ca419f407b43 ("drm/i915: Fix crash in auto_retire")

-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
References: d8e44e4dd221 ("drm/i915/overlay: Fix active retire callback alignment")

-:19: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d8e44e4dd221 ("drm/i915/overlay: Fix active retire callback alignment")'
#19: 
References: d8e44e4dd221 ("drm/i915/overlay: Fix active retire callback alignment")

-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fd5f262db118 ("drm/i915/selftests: Fix active retire callback alignment")'
#20: 
References: fd5f262db118 ("drm/i915/selftests: Fix active retire callback alignment")

total: 3 errors, 1 warnings, 0 checks, 235 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
