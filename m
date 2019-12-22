Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9FA128E90
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 15:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA98E6E55C;
	Sun, 22 Dec 2019 14:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBFF46E126;
 Sun, 22 Dec 2019 14:48:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5237A010F;
 Sun, 22 Dec 2019 14:48:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 14:48:04 -0000
Message-ID: <157702608485.8700.15634490843419283968@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Pull_int?=
 =?utf-8?b?ZWxfZ3RfaW5pdF9odygpIGludG8gaW50ZWxfZ3RfcmVzdW1lKCk=?=
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

Series: series starting with [CI,1/3] drm/i915/gt: Pull intel_gt_init_hw() into intel_gt_resume()
URL   : https://patchwork.freedesktop.org/series/71265/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cb4e6cb28b27 drm/i915/gt: Pull intel_gt_init_hw() into intel_gt_resume()
fcc9f73412fe drm/i915/gt: Merge engine init/setup loops
0b9f22e52d14 drm/i915/gt: Move pm debug files into a gt aware debugfs
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

-:303: CHECK:CAMELCASE: Avoid CamelCase: <GEN6_RCn_MASK>
#303: FILE: drivers/gpu/drm/i915/gt/debugfs_gt_pm.c:112:
+	switch (gt_core_status & GEN6_RCn_MASK) {

total: 0 errors, 1 warnings, 1 checks, 771 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
