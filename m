Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BFA2FA68B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 17:45:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37DB89998;
	Mon, 18 Jan 2021 16:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FFD989991;
 Mon, 18 Jan 2021 16:45:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3DDC0A7DFB;
 Mon, 18 Jan 2021 16:45:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 18 Jan 2021 16:45:02 -0000
Message-ID: <161098830221.28164.16830081598077812293@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210118124334.21250-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210118124334.21250-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Do_not_suspen?=
 =?utf-8?q?d_bonded_requests_if_one_hangs?=
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

Series: series starting with [1/2] drm/i915/gt: Do not suspend bonded requests if one hangs
URL   : https://patchwork.freedesktop.org/series/85991/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cf42e636b946 drm/i915/gt: Do not suspend bonded requests if one hangs
93452ea1d70b drm/i915/gt: Skip over completed active execlists, again
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")'
#10: 
Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")

-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")'
#11: 
References: 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")

total: 2 errors, 1 warnings, 0 checks, 74 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
