Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 522D81D193F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 17:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448576EA6A;
	Wed, 13 May 2020 15:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 906FF6EA68;
 Wed, 13 May 2020 15:23:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A104A47EE;
 Wed, 13 May 2020 15:23:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 15:23:56 -0000
Message-ID: <158938343653.25404.14877588382656752376@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513122826.27484-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513122826.27484-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Suspend_tasklets_before_resume_sanitization?=
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

Series: drm/i915/gt: Suspend tasklets before resume sanitization
URL   : https://patchwork.freedesktop.org/series/77223/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8472_full -> Patchwork_17645_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8472_full and Patchwork_17645_full:

### New IGT tests (123) ###

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - Statuses : 8 pass(s)
    - Exec time: [2.98, 4.98] s

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - Statuses : 8 pass(s)
    - Exec time: [1.71, 2.86] s

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - Statuses : 8 pass(s)
    - Exec time: [2.73, 4.87] s

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement:
    - Statuses : 8 pass(s)
    - Exec time: [0.18, 1.08] s

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - Statuses : 8 pass(s)
    - Exec time: [2.60, 4.27] s

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.96] s

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.92] s

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.42] s

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.27] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - Statuses : 8 pass(s)
    - Exec time: [2.96, 4.95] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - Statuses : 7 pass(s)
    - Exec time: [1.73, 2.88] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [0.41, 4.43] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
    - Statuses : 8 pass(s)
    - Exec time: [0.28, 1.11] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - Statuses : 8 pass(s)
    - Exec time: [2.62, 4.29] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - Statuses : 1 fail(s) 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.95] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.90] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.46] s

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.26] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-random:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.95] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.90] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - Statuses : 1 fail(s) 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.44] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.71] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - Statuses : 8 pass(s)
    - Exec time: [2.98, 4.98] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - Statuses : 8 pass(s)
    - Exec time: [1.78, 3.27] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - Statuses : 8 pass(s)
    - Exec time: [2.69, 4.47] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
    - Statuses : 8 pass(s)
    - Exec time: [0.19, 1.11] s

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - Statuses : 8 pass(s)
    - Exec time: [2.64, 5.73] s

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - Statuses : 8 pass(s)
    - Exec time: [0.28, 1.07] s

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
    - Statuses : 8 pass(s)
    - Exec time: [0.27, 1.06] s

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - Statuses : 8 pass(s)
    - Exec time: [0.83, 4.28] s

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - Statuses : 8 pass(s)
    - Exec time: [0.49, 1.86] s

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - Statuses : 8 pass(s)
    - Exec time: [2.34, 5.20] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen:
    - Statuses : 8 pass(s)
    - Exec time: [4.04, 5.95] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - Statuses : 8 pass(s)
    - Exec time: [2.24, 4.53] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - Statuses : 8 pass(s)
    - Exec time: [3.70, 5.49] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - Statuses : 8 pass(s)
    - Exec time: [0.27, 2.24] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - Statuses : 7 pass(s)
    - Exec time: [3.58, 4.86] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - Statuses : 1 fail(s) 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.40] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.02] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.01] s

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.42] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - Statuses : 8 pass(s)
    - Exec time: [4.08, 5.87] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - Statuses : 8 pass(s)
    - Exec time: [2.24, 3.99] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - Statuses : 7 pass(s)
    - Exec time: [3.71, 5.51] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-rapid-movement:
    - Statuses : 8 pass(s)
    - Exec time: [0.27, 2.24] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - Statuses : 8 pass(s)
    - Exec time: [3.57, 5.38] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.91] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.52] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.50] s

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.39] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.87] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.03] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.50] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.36] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - Statuses : 8 pass(s)
    - Exec time: [4.14, 6.33] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - Statuses : 7 pass(s)
    - Exec time: [2.30, 4.43] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - Statuses : 8 pass(s)
    - Exec time: [3.72, 5.49] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-rapid-movement:
    - Statuses : 8 pass(s)
    - Exec time: [0.26, 2.27] s

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - Statuses : 8 pass(s)
    - Exec time: [3.58, 5.37] s

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
    - Statuses : 8 pass(s)
    - Exec time: [0.38, 2.21] s

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - Statuses : 8 pass(s)
    - Exec time: [0.42, 2.24] s

  * igt@kms_cursor_crc@pipe-b-cursor-dpms:
    - Statuses : 8 pass(s)
    - Exec time: [0.90, 5.37] s

  * igt@kms_cursor_crc@pipe-b-cursor-size-change:
    - Statuses : 8 pass(s)
    - Exec time: [0.51, 2.40] s

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - Statuses : 8 pass(s)
    - Exec time: [1.76, 6.16] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.84] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.38] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.94] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.24] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.30] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.88] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.96] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.48] s

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.75] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.84] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.98] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.48] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-rapid-movement:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.23] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.78] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.89] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.50] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.49] s

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.30] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-random:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.87] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.95] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.45] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.37] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.86] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.97] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.47] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-rapid-movement:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.21] s

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.81] s

  * igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.68] s

  * igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.20] s

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.42] s

  * igt@kms_cursor_crc@pipe-c-cursor-size-change:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.32] s

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - Statuses : 1 incomplete(s) 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.46] s

  

Known issues
------------

  Here are the changes found in Patchwork_17645_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#151] / [i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl5/igt@i915_pm_rpm@system-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl7/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen (NEW):
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([IGT#5] / [i915#697])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#64])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-tglb3/igt@kms_fbcon_fbt@fbc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-tglb6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][19] ([i915#1874]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl6/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl10/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen (NEW):
    - shard-skl:          [FAIL][21] ([i915#54]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][25] ([fdo#108145] / [i915#265]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][27] ([fdo#109441]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][29] ([i915#658]) -> [SKIP][30] ([i915#588])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][31] ([i915#1319]) -> [FAIL][32] ([fdo#110321] / [fdo#110336] / [i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-apl4/igt@kms_content_protection@legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][33] ([fdo#110321]) -> [TIMEOUT][34] ([i915#1319]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/shard-apl8/igt@kms_content_protection@lic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/shard-apl7/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8472 -> Patchwork_17645

  CI-20190529: 20190529
  CI_DRM_8472: 57acc5ba2cfb81691917a3da729573a99c893e5a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17645: a06430f11a8054e6b4ee2cbae13fd781319329aa @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
