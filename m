Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CC5697B70
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 13:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E115F10EAB1;
	Wed, 15 Feb 2023 12:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33CA210E107;
 Wed, 15 Feb 2023 12:06:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29031AADD5;
 Wed, 15 Feb 2023 12:06:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5559627672512569257=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 15 Feb 2023 12:06:36 -0000
Message-ID: <167646279611.30600.16524555122058106209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230214234856.744573-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230214234856.744573-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_use_stolen_memory_for_ring_buffers?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5559627672512569257==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Don't use stolen memory for ring buffers
URL   : https://patchwork.freedesktop.org/series/114030/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12739_full -> Patchwork_114030v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/index.html

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): shard-rkl0 

New tests
---------

  New tests have been introduced between CI_DRM_12739_full and Patchwork_114030v1_full:

### New IGT tests (262) ###

  * igt@core_setmaster@master-drop-set-root:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@core_setmaster@master-drop-set-shared-fd:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@core_setmaster@master-drop-set-user:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@all-busy-check-all:
    - Statuses : 3 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@basics:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-check-all:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-check-all@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-check-all@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-check-all@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-check-all@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-hang:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-hang@bcs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-hang@rcs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-hang@vcs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-hang@vecs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle-check-all:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle-check-all@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle-check-all@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle-check-all@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle-check-all@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy-idle@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@busy@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@idle:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@idle@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@idle@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@idle@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@idle@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@idle@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@isolation@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@isolation@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@isolation@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@isolation@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@isolation@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-check-all:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-check-all@vecs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-idle-check-all@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ccs@block-copy-inplace:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@clean:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_isolation@clean@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@clean@rcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@clean@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@clean@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@clean@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-create:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_isolation@dirty-create@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-create@rcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-create@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-create@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-create@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-switch:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_isolation@dirty-switch@bcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-switch@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-switch@vcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-switch@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@dirty-switch@vecs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_isolation@nonpriv-switch:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_isolation@nonpriv-switch@bcs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv-switch@rcs0:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv-switch@vcs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv-switch@vecs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv@rcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@nonpriv@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_isolation@preservation-reset:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_isolation@preservation-reset@bcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-reset@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-reset@vcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-reset@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-reset@vecs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-s3:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation@rcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_isolation@preservation@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-shared-gtt:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-shared-gtt@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-shared-gtt@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-shared-gtt@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-shared-gtt@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-shared-gtt@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-single-timeline:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-single-timeline@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-single-timeline@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-single-timeline@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-single-timeline@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@exec-single-timeline@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-in-order:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-in-order@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-in-order@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-in-order@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-in-order@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-in-order@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-independent:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-independent@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-independent@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-independent@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-independent@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-independent@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-out-order:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-out-order@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-out-order@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-out-order@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-out-order@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-out-order@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-promotion:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-promotion@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-promotion@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-promotion@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-promotion@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-promotion@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-smoketest:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-smoketest@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-smoketest@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-smoketest@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-smoketest@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_shared@q-smoketest@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_big@single:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_schedule@semaphore-power:
    - Statuses : 3 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@gem_mmap@bad-offset:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_mmap@bad-size:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_mmap@pf-nonblock:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_gtt@bad-object:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_gtt@pf-nonblock:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_offset@oob-read:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_wc@bad-object:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_wc@bad-offset:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_wc@bad-size:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_wc@pf-nonblock:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_render_copy@yf-tiled:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_watchdog@default-physical:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_watchdog@default-virtual:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_dc@dc9-dpms:
    - Statuses : 1 pass(s) 3 skip(s)
    - Exec time: [0.0] s

  * igt@i915_query@test-query-geometry-subslices:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - Statuses : 1 pass(s) 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - Statuses : 3 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_lease@atomic_implicit_crtc:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_lease@cursor_implicit_plane:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_lease@page_flip_implicit_plane:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc_implicit_plane:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@perf@blocking-parameterized:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@perf@gen12-oa-tlb-invalidate:
    - Statuses : 2 pass(s) 3 skip(s)
    - Exec time: [0.0] s

  * igt@perf@global-sseu-config:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@perf@global-sseu-config-invalid:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@perf@polling-parameterized:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@idempotent:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_heartbeat_interval@idempotent@bcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@idempotent@rcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@idempotent@vcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@idempotent@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@idempotent@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@invalid:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_heartbeat_interval@invalid@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@invalid@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@invalid@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@invalid@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@invalid@vecs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@mixed:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - Statuses : 2 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - Statuses : 2 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - Statuses : 2 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@nopreempt:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_heartbeat_interval@nopreempt@bcs0:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@nopreempt@rcs0:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@nopreempt@vcs0:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@nopreempt@vecs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@precise:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_heartbeat_interval@precise@bcs0:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@precise@rcs0:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@precise@vcs0:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@precise@vecs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@idempotent:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_preempt_timeout@idempotent@bcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@idempotent@rcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@idempotent@vcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@idempotent@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@idempotent@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@invalid:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_preempt_timeout@invalid@bcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@invalid@rcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@invalid@vcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@invalid@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@invalid@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@timeout:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_preempt_timeout@timeout@bcs0:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@timeout@rcs0:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@timeout@vcs0:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@timeout@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@timeout@vecs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@duration:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_timeslice_duration@duration@bcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@duration@rcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@duration@vcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@duration@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@duration@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@idempotent:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_timeslice_duration@idempotent@bcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@idempotent@rcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@idempotent@vcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@idempotent@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@idempotent@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@invalid:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_timeslice_duration@invalid@bcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@invalid@rcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@invalid@vcs0:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@invalid@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@invalid@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@timeout:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_timeslice_duration@timeout@bcs0:
    - Statuses : 1 fail(s) 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - Statuses : 1 fail(s) 4 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@timeout@vcs0:
    - Statuses : 2 fail(s) 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@timeout@vcs1:
    - Statuses : 1 fail(s) 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_114030v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@busy-idle (NEW):
    - {shard-dg1}:        NOTRUN -> [SKIP][1] ([i915#5563]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-17/igt@drm_fdinfo@busy-idle.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][2] -> [FAIL][3] ([i915#2842]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs (NEW):
    - {shard-tglu}:       NOTRUN -> [SKIP][4] ([i915#4613])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_mmap_gtt@bad-object (NEW):
    - {shard-dg1}:        NOTRUN -> [SKIP][5] ([i915#4077]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-14/igt@gem_mmap_gtt@bad-object.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2346])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2346])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt (NEW):
    - {shard-dg1}:        NOTRUN -> [SKIP][10] ([i915#4833])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt (NEW):
    - {shard-tglu-9}:     NOTRUN -> [SKIP][11] ([i915#1849])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt (NEW):
    - {shard-rkl}:        [SKIP][12] ([fdo#111825]) -> [SKIP][13] ([i915#1849] / [i915#4098])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
    - {shard-tglu}:       NOTRUN -> [SKIP][14] ([fdo#109280])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt (NEW):
    - {shard-tglu}:       [SKIP][15] ([fdo#110189]) -> [SKIP][16] ([i915#1849])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4 (NEW):
    - {shard-rkl}:        [SKIP][17] ([i915#5439]) -> [SKIP][18] ([i915#1849] / [i915#4098])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_lease@cursor_implicit_plane (NEW):
    - {shard-tglu}:       NOTRUN -> [SKIP][19] ([i915#1845])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-6/igt@kms_lease@cursor_implicit_plane.html

  * igt@sysfs_timeslice_duration@timeout@rcs0 (NEW):
    - {shard-dg1}:        NOTRUN -> [FAIL][20] ([i915#1755]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-17/igt@sysfs_timeslice_duration@timeout@rcs0.html

  * igt@sysfs_timeslice_duration@timeout@vcs0 (NEW):
    - {shard-rkl}:        [PASS][21] -> [FAIL][22] ([i915#1755])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-1/igt@sysfs_timeslice_duration@timeout@vcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-3/igt@sysfs_timeslice_duration@timeout@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][23] ([i915#6268]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][25] ([i915#6252]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - {shard-rkl}:        [FAIL][27] ([i915#2846]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][29] ([i915#2842]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - {shard-rkl}:        [SKIP][31] ([fdo#109313]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - {shard-rkl}:        [SKIP][33] ([i915#3282]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - {shard-rkl}:        [SKIP][35] ([i915#3281]) -> [PASS][36] +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gen9_exec_parse@bb-start-out:
    - {shard-rkl}:        [SKIP][37] ([i915#2527]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gen9_exec_parse@bb-start-out.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - {shard-dg1}:        [FAIL][39] ([i915#3591]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_sseu@full-enable:
    - {shard-rkl}:        [SKIP][41] ([i915#4387]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][43] ([i915#1845] / [i915#4098]) -> [PASS][44] +22 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-3/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-apl:          [FAIL][45] ([i915#2346]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][47] ([i915#2346]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][51] ([i915#1849] / [i915#4098]) -> [PASS][52] +17 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
    - {shard-rkl}:        [SKIP][53] ([i915#1849]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html

  * igt@kms_psr@cursor_blt:
    - {shard-rkl}:        [SKIP][55] ([i915#1072]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-3/igt@kms_psr@cursor_blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_psr@cursor_blt.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:
    - {shard-rkl}:        [SKIP][57] ([i915#4098]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-5/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html

  * igt@perf@mi-rpc:
    - {shard-rkl}:        [SKIP][59] ([i915#2434]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-6/igt@perf@mi-rpc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@perf@mi-rpc.html

  * igt@perf_pmu@idle@rcs0:
    - {shard-rkl}:        [FAIL][61] ([i915#4349]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@perf_pmu@idle@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@perf_pmu@idle@rcs0.html

  * igt@prime_vgem@basic-fence-flip:
    - {shard-rkl}:        [SKIP][63] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152


Build changes
-------------

  * Linux: CI_DRM_12739 -> Patchwork_114030v1

  CI-20190529: 20190529
  CI_DRM_12739: 5fc904286af94038fbf2c7cda50ed871b70cf4e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114030v1: 5fc904286af94038fbf2c7cda50ed871b70cf4e8 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/index.html

--===============5559627672512569257==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Don&#39;t use stolen memory for ring buffers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114030/">https://patchwork.freedesktop.org/series/114030/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12739_full -&gt; Patchwork_114030v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/index.html</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): shard-rkl0 </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12739_full and Patchwork_114030v1_full:</p>
<h3>New IGT tests (262)</h3>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-root:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@core_setmaster@master-drop-set-shared-fd:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@core_setmaster@master-drop-set-user:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>Statuses : 3 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@basics:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@vcs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@vecs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vecs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-inplace:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@clean:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@clean@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@clean@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@clean@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@clean@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@clean@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-create:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-create@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-create@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-create@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-create@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-create@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-switch:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-switch@bcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-switch@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-switch@vcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-switch@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-switch@vecs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@bcs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@rcs0:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@vcs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@vecs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-reset:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-reset@bcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-reset@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-reset@vcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-reset@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-reset@vecs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-shared-gtt:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-shared-gtt@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-shared-gtt@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-shared-gtt@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-shared-gtt@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-shared-gtt@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-single-timeline:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-single-timeline@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-single-timeline@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-single-timeline@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-single-timeline@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-single-timeline@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-independent:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-independent@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-independent@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-independent@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-independent@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-independent@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-out-order:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-out-order@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-out-order@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-out-order@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-out-order@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-out-order@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-promotion:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-promotion@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-promotion@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-promotion@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-promotion@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-promotion@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>Statuses : 3 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@pf-nonblock:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@pf-nonblock:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@oob-read:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@pf-nonblock:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-physical:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-virtual:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>Statuses : 1 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>Statuses : 3 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>Statuses : 1 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@atomic_implicit_crtc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor_implicit_plane:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@page_flip_implicit_plane:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc_implicit_plane:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>Statuses : 2 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@idempotent:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@idempotent@bcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@idempotent@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@idempotent@vcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@idempotent@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@idempotent@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@invalid:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@invalid@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@invalid@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@invalid@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@invalid@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@invalid@vecs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>Statuses : 2 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>Statuses : 2 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>Statuses : 2 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@bcs0:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@rcs0:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs0:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vecs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@bcs0:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@rcs0:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vcs0:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vecs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@idempotent:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@idempotent@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@idempotent@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@idempotent@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@idempotent@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@idempotent@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@invalid:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@invalid@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@invalid@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@invalid@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@invalid@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@invalid@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@bcs0:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vcs0:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@duration:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@duration@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@duration@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@duration@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@duration@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@duration@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@idempotent:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@idempotent@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@idempotent@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@idempotent@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@idempotent@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@idempotent@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@invalid:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@invalid@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@invalid@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@invalid@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@invalid@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@invalid@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vcs0:</p>
<ul>
<li>Statuses : 2 fail(s) 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vcs1:</p>
<ul>
<li>Statuses : 1 fail(s) 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114030v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@busy-idle (NEW):</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-17/igt@drm_fdinfo@busy-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5563">i915#5563</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs (NEW):</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object (NEW):</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-14/igt@gem_mmap_gtt@bad-object.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt (NEW):</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4833">i915#4833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt (NEW):</p>
<ul>
<li>{shard-tglu-9}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt (NEW):</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt (NEW):</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5439">i915#5439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor_implicit_plane (NEW):</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-tglu-6/igt@kms_lease@cursor_implicit_plane.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0 (NEW):</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-17/igt@sysfs_timeslice_duration@timeout@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1755">i915#1755</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vcs0 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-1/igt@sysfs_timeslice_duration@timeout@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-3/igt@sysfs_timeslice_duration@timeout@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1755">i915#1755</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109313">fdo#109313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-3/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html">PASS</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-3/igt@kms_psr@cursor_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_psr@cursor_blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-5/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@perf@mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@perf_pmu@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-5/igt@perf_pmu@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12739/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114030v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12739 -&gt; Patchwork_114030v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12739: 5fc904286af94038fbf2c7cda50ed871b70cf4e8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114030v1: 5fc904286af94038fbf2c7cda50ed871b70cf4e8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5559627672512569257==--
