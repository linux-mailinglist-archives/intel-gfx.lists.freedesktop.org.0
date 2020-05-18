Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB11C1D8BA6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 01:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47F4A6E4B3;
	Mon, 18 May 2020 23:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 038486E14B;
 Mon, 18 May 2020 23:33:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1661A0BD0;
 Mon, 18 May 2020 23:33:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 18 May 2020 23:33:38 -0000
Message-ID: <158984481898.31686.8501500026901413489@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518231407.6837-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200518231407.6837-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Don=27t_set_queu?=
 =?utf-8?q?e-priority_hint_when_supressing_the_reschedule?=
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

Series: series starting with [1/4] drm/i915: Don't set queue-priority hint when supressing the reschedule
URL   : https://patchwork.freedesktop.org/series/77377/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c3388b20997e drm/i915: Don't set queue-priority hint when supressing the reschedule
-:10: WARNING:TYPO_SPELLING: 'runnning' may be misspelled - perhaps 'running'?
#10: 
the HW runnning with only the inflight request.

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
4aca4773f1ae drm/i915/selftests: Change priority overflow detection
01cc89bf4af8 drm/i915/selftests: Restore to default heartbeat
c9d0c46590ba drm/i915/selftests: Check for an initial-breadcrumb in wait_for_submit()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
