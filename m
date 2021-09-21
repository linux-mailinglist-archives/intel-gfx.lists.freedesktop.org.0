Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1F8413B58
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 22:28:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407AC6E828;
	Tue, 21 Sep 2021 20:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B10AE6E858;
 Tue, 21 Sep 2021 20:28:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9E3DA008A;
 Tue, 21 Sep 2021 20:28:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 20:28:43 -0000
Message-ID: <163225612365.15889.18426576345089261479@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921175111.850331-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210921175111.850331-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Suspend_/_resume_backup-_and_restore_of_LMEM=2E?=
 =?utf-8?q?_=28rev8=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Suspend / resume backup- and restore of LMEM. (rev8)
URL   : https://patchwork.freedesktop.org/series/94278/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
48163f8d741d drm/i915/ttm: Implement a function to copy the contents of two TTM-based objects
dadfa3bea529 drm/i915/gem: Implement a function to process all gem objects of a region
05339330d99f drm/i915/gt: Increase suspend timeout
59b42466eac1 drm/i915 Implement LMEM backup and restore for suspend / resume
-:287: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#287: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 459 lines checked
5702aa41a823 drm/i915/gt: Register the migrate contexts with their engines
ff28a5a68d2f drm/i915: Don't back up pinned LMEM context images and rings during suspend
b23bb4297033 drm/i915: Reduce the number of objects subject to memcpy recover


