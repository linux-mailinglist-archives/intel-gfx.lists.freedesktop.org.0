Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D422EF9E6
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 22:06:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73CD6E8D9;
	Fri,  8 Jan 2021 21:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF5626E8D2;
 Fri,  8 Jan 2021 21:06:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7814A363D;
 Fri,  8 Jan 2021 21:06:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 08 Jan 2021 21:06:23 -0000
Message-ID: <161013998365.332.13977855271019561244@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210108204026.20682-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210108204026.20682-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/7=5D_drm/i915/gt=3A_Prevent_?=
 =?utf-8?q?use_of_engine-=3Ewa=5Fctx_after_error?=
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

Series: series starting with [CI,1/7] drm/i915/gt: Prevent use of engine->wa_ctx after error
URL   : https://patchwork.freedesktop.org/series/85631/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fe89d2253481 drm/i915/gt: Prevent use of engine->wa_ctx after error
d55691482444 drm/i915/selftests: Skip unstable timing measurements
0e9b79e3d075 drm/i915/selftests: Rearrange ktime_get to reduce latency against CS
d84e74909312 drm/i915/gt: Restore ce->signal flush before releasing virtual engine
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")'
#14: 
bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer"),

total: 1 errors, 0 warnings, 0 checks, 90 lines checked
b9b17d26acb3 drm/i915/gt: Only retire on the last breadcrumb if the last request
bd79ef49bf52 drm/i915/gt: Only disable preemption on gen8 render engines
29bd98e3a6a3 drm/i915/gt: Disable arbitration on no-preempt requests


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
