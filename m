Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D94B62E94EA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 13:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2EC8936E;
	Mon,  4 Jan 2021 12:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A7FE88935A;
 Mon,  4 Jan 2021 12:35:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99DBAA73C9;
 Mon,  4 Jan 2021 12:35:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 Jan 2021 12:35:16 -0000
Message-ID: <160976371659.24930.11095850865160466378@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210104115145.24460-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915/selftests=3A_Set_er?=
 =?utf-8?q?ror_returns?=
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

Series: series starting with [1/6] drm/i915/selftests: Set error returns
URL   : https://patchwork.freedesktop.org/series/85440/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a79946cc2df2 drm/i915/selftests: Set error returns
ad716358ae5b drm/i915: Set rawclk earlier during mmio probe
64dc3f4f54bb drm/i915/gt: Allow failed resets without assertion
a09becee5f16 drm/i915/gt: Check the virtual still matches upon locking
f4334c245caa drm/i915/gt: Restore ce->signal flush before releasing virtual engine
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")'
#14: 
bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer"),

total: 1 errors, 0 warnings, 0 checks, 25 lines checked
c04ace814141 drm/i915/gt: Remove timeslice suppression


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
