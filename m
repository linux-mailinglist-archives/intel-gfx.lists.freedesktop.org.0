Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1666188295
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 12:53:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3B1989EBB;
	Tue, 17 Mar 2020 11:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9866589EBB;
 Tue, 17 Mar 2020 11:53:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F96FA0009;
 Tue, 17 Mar 2020 11:53:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 17 Mar 2020 11:53:07 -0000
Message-ID: <158444598755.5179.17458730499146999183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317112909.2624035-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200317112909.2624035-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv7=2C1/3=5D_drm/i915/perf=3A_remove?=
 =?utf-8?q?_generated_code?=
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

Series: series starting with [v7,1/3] drm/i915/perf: remove generated code
URL   : https://patchwork.freedesktop.org/series/74767/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dfa8113ae277 drm/i915/perf: remove generated code
-:24: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '53f8f541ca', maybe rebased or not pulled?
#24: 
commit 53f8f541ca ("lib: Add i915_perf library"), previously this was

-:208: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#208: 
deleted file mode 100644

total: 0 errors, 2 warnings, 0 checks, 278 lines checked
1623895d809c drm/i915/perf: remove redundant power configuration register override
ab46c9416005 drm/i915/perf: introduce global sseu pinning

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
