Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B18614AE2A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 03:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E6E06EC55;
	Tue, 28 Jan 2020 02:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 88CBB6EC53;
 Tue, 28 Jan 2020 02:29:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F6D4A0019;
 Tue, 28 Jan 2020 02:29:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 02:29:17 -0000
Message-ID: <158017855749.20534.18363389720851831006@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/i915/gt=3A_Expose_engine?=
 =?utf-8?q?_properties_via_sysfs?=
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

Series: series starting with [1/8] drm/i915/gt: Expose engine properties via sysfs
URL   : https://patchwork.freedesktop.org/series/72638/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
988fe3ead6d1 drm/i915/gt: Expose engine properties via sysfs
-:91: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#91: 
new file mode 100644

-:196: CHECK:SPACING: No space is necessary after a cast
#196: FILE: drivers/gpu/drm/i915/gt/sysfs_engines.c:101:
+			 show_unknown ? BITS_PER_TYPE(typeof(caps)) : count) {

total: 0 errors, 1 warnings, 1 checks, 255 lines checked
91825d7a3da0 drm/i915/gt: Expose engine->mmio_base via sysfs
8d73412baf92 drm/i915/gt: Expose timeslice duration to sysfs
bbaa9815c6d6 drm/i915/gt: Expose busywait duration to sysfs
d8525a46fca0 drm/i915/gt: Expose reset stop timeout via sysfs
b5a6e0a034f4 drm/i915/gt: Expose preempt reset timeout via sysfs
34c7e80d10c4 drm/i915/gt: Expose heartbeat interval via sysfs
ee38c0c884e0 drm/i915/gt: Limit C-states while waiting for requests

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
