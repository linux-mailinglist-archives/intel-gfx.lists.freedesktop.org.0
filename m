Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E375543274F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 21:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FDDA6EA13;
	Mon, 18 Oct 2021 19:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 339246EA13;
 Mon, 18 Oct 2021 19:11:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CCD3A77A5;
 Mon, 18 Oct 2021 19:11:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 19:11:42 -0000
Message-ID: <163458430218.27087.13983044040203880327@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211018174508.2137279-1-matthew.auld@intel.com>
In-Reply-To: <20211018174508.2137279-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_drm/i915=3A_mark_dmabuf_obje?=
 =?utf-8?q?cts_as_ALLOC=5FUSER?=
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

Series: series starting with [1/9] drm/i915: mark dmabuf objects as ALLOC_USER
URL   : https://patchwork.freedesktop.org/series/95982/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1ad5557daeac drm/i915: mark dmabuf objects as ALLOC_USER
9dfe83b2167d drm/i915: mark userptr objects as ALLOC_USER
fc3555ba8818 drm/i915: extract bypass-llc check into helper
42a7064ef6ae drm/i915/dmabuf: add paranoid flush-on-acquire
e13b48097394 drm/i915/userptr: add paranoid flush-on-acquire
3fd7ed641f99 drm/i915/shmem: ensure flush during swap-in on non-LLC
db935401f057 drm/i915: expand on the kernel-doc for cache_dirty
49bf1fb0cbbe drm/i915: mark up internal objects with start_cpu_write
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
While the pages can't be swapped out, they can be discarded by the shrinker.

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
ae2c908cf31f drm/i915/selftests: mark up hugepages object with start_cpu_write


