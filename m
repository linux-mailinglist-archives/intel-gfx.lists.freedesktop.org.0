Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E791AABB8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74A4E6EA0F;
	Wed, 15 Apr 2020 15:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 528356EA0D;
 Wed, 15 Apr 2020 15:21:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C18AA47DA;
 Wed, 15 Apr 2020 15:21:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Apr 2020 15:21:46 -0000
Message-ID: <158696410628.21016.16523280845287416259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415144512.29953-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415144512.29953-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Move_the_batch_buffer_pool_from_the_engine_t?=
 =?utf-8?q?o_the_gt?=
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

Series: drm/i915/gt: Move the batch buffer pool from the engine to the gt
URL   : https://patchwork.freedesktop.org/series/75979/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4498659d6015 drm/i915/gt: Move the batch buffer pool from the engine to the gt
-:14: WARNING:TYPO_SPELLING: 'hierachy' may be misspelled - perhaps 'hierarchy'?
#14: 
retirement order easier to track), we can move it up the hierachy to the

-:289: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#289: 
deleted file mode 100644

-:596: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#596: FILE: drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h:1:
+/*

-:597: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#597: FILE: drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 4 warnings, 0 checks, 559 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
