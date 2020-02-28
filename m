Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F6B173D8C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 17:50:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82C16F482;
	Fri, 28 Feb 2020 16:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCE736F481;
 Fri, 28 Feb 2020 16:50:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5373A47E2;
 Fri, 28 Feb 2020 16:50:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 16:50:26 -0000
Message-ID: <158290862677.7477.3139092781568374884@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228131716.3243616-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200228131716.3243616-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915/gt=3A_Expose_engine?=
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

Series: series starting with [1/7] drm/i915/gt: Expose engine properties via sysfs
URL   : https://patchwork.freedesktop.org/series/74080/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d3b9bcf44547 drm/i915/gt: Expose engine properties via sysfs
-:76: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#76: 
new file mode 100644

-:181: CHECK:SPACING: No space is necessary after a cast
#181: FILE: drivers/gpu/drm/i915/gt/sysfs_engines.c:101:
+			 show_unknown ? BITS_PER_TYPE(typeof(caps)) : count) {

total: 0 errors, 1 warnings, 1 checks, 242 lines checked
25aedca1dd0a drm/i915/gt: Expose engine->mmio_base via sysfs
ac66efa1d295 drm/i915/gt: Expose timeslice duration to sysfs
e01f8abc4a64 drm/i915/gt: Expose busywait duration to sysfs
6e9daee1bf88 drm/i915/gt: Expose reset stop timeout via sysfs
60fac5998627 drm/i915/gt: Expose preempt reset timeout via sysfs
5d649480e8d6 drm/i915/gt: Expose heartbeat interval via sysfs

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
