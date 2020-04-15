Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2AF1A8FEF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 02:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F3B6E7EA;
	Wed, 15 Apr 2020 00:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 587AE6E7E6;
 Wed, 15 Apr 2020 00:56:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50D8DA0138;
 Wed, 15 Apr 2020 00:56:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Apr 2020 00:56:03 -0000
Message-ID: <158691216332.21016.10325362437814109354@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414161423.23830-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200414161423.23830-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Try_to_smooth?=
 =?utf-8?q?_RPS_spikes?=
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

Series: series starting with [1/2] drm/i915/gt: Try to smooth RPS spikes
URL   : https://patchwork.freedesktop.org/series/75927/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa2b7bf5aa68 drm/i915/gt: Try to smooth RPS spikes
-:13: WARNING:TYPO_SPELLING: 'similary' may be misspelled - perhaps 'similarly'?
#13: 
similary 2 down EI to decrease. However, if the worker runs fast enough,

total: 0 errors, 1 warnings, 0 checks, 114 lines checked
c320d0f386a4 drm/i915/gt: Shrink the RPS evalution intervals
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")'
#12: 
21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")] but

total: 1 errors, 0 warnings, 0 checks, 51 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
