Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 375842EBE21
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 14:01:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882A46E0CC;
	Wed,  6 Jan 2021 13:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC9A26E08E;
 Wed,  6 Jan 2021 13:01:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E724BA7DFC;
 Wed,  6 Jan 2021 13:01:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 Jan 2021 13:01:24 -0000
Message-ID: <160993808492.18709.17726755561635373482@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210106123939.18435-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210106123939.18435-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Break_?=
 =?utf-8?q?out_of_the_lrc_layout_test_after_register_mismatch?=
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

Series: series starting with [1/4] drm/i915/selftests: Break out of the lrc layout test after register mismatch
URL   : https://patchwork.freedesktop.org/series/85548/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
df520ae36315 drm/i915/selftests: Break out of the lrc layout test after register mismatch
3a8f3c7e5e40 drm/i915/selftests: Improve handling of iomem around stolen
9c4b26ad0411 drm/i915/gt: Restore ce->signal flush before releasing virtual engine
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")'
#14: 
bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer"),

total: 1 errors, 0 warnings, 0 checks, 90 lines checked
22c93cdd73c1 drm/i915/gt: Remove timeslice suppression


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
