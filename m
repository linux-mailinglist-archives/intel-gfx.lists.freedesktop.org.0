Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D62C449C58
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 20:24:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90FF89D9A;
	Mon,  8 Nov 2021 19:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CAC189DA5;
 Mon,  8 Nov 2021 19:24:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 123E5A363D;
 Mon,  8 Nov 2021 19:24:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4958789184203465918=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Mon, 08 Nov 2021 19:24:21 -0000
Message-ID: <163639946102.32039.7923619906425578804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211108164054.23588-1-matthew.brost@intel.com>
In-Reply-To: <20211108164054.23588-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Refcount_context_during_error_capture_=28rev2=29?=
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

--===============4958789184203465918==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Refcount context during error capture (rev2)
URL   : https://patchwork.freedesktop.org/series/94634/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10854_full -> Patchwork_21534_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

New tests
---------

  New tests have been introduced between CI_DRM_10854_full and Patchwork_21534_full:

### New IGT tests (189) ###

  * igt@debugfs_test@sysfs:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.47] s

  * igt@gem_ctx_exec@basic-nohangcheck:
    - Statuses : 7 pass(s)
    - Exec time: [0.05, 0.94] s

  * igt@gem_ctx_persistence@file:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_persistence@idempotent:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_persistence@process:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.29] s

  * igt@gem_ctx_persistence@processes:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.62] s

  * igt@gem_ctx_persistence@smoketest:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 35.09] s

  * igt@gem_eio@kms:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 17.11] s

  * igt@gem_exec_suspend@basic-s0:
    - Statuses : 6 pass(s)
    - Exec time: [1.46, 22.04] s

  * igt@gem_mmap_gtt@close-race:
    - Statuses : 8 pass(s)
    - Exec time: [20.07, 20.91] s

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - Statuses : 7 pass(s)
    - Exec time: [1.02, 6.41] s

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - Statuses : 7 pass(s)
    - Exec time: [1.45, 10.60] s

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - Statuses : 7 pass(s)
    - Exec time: [0.97, 7.63] s

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - Statuses : 5 pass(s)
    - Exec time: [3.48, 28.44] s

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - Statuses : 6 pass(s)
    - Exec time: [3.99, 26.29] s

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - Statuses : 7 pass(s)
    - Exec time: [4.07, 30.91] s

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - Statuses : 7 pass(s)
    - Exec time: [1.92, 12.09] s

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - Statuses : 7 pass(s)
    - Exec time: [2.37, 15.52] s

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - Statuses : 7 pass(s)
    - Exec time: [1.90, 15.27] s

  * igt@gem_mmap_gtt@flink-race:
    - Statuses : 7 pass(s)
    - Exec time: [20.07, 20.65] s

  * igt@gem_mmap_gtt@isolation:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_pread@exhaustion:
    - Statuses : 6 warn(s)
    - Exec time: [2.64, 46.97] s

  * igt@gem_pwrite@basic-exhaustion:
    - Statuses : 1 skip(s) 7 warn(s)
    - Exec time: [0.0, 48.08] s

  * igt@gem_pwrite@basic-self:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.30] s

  * igt@gem_userptr_blits@nohangcheck:
    - Statuses : 8 pass(s)
    - Exec time: [0.05, 0.94] s

  * igt@gem_userptr_blits@stress-purge:
    - Statuses : 5 pass(s)
    - Exec time: [5.37, 8.90] s

  * igt@i915_pm_dc@dc5-dpms:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.15] s

  * igt@i915_pm_dc@dc5-psr:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 3.36] s

  * igt@i915_pm_dc@dc6-dpms:
    - Statuses : 2 fail(s) 2 pass(s) 3 skip(s)
    - Exec time: [0.0, 3.97] s

  * igt@i915_pm_dc@dc6-psr:
    - Statuses : 2 fail(s) 1 pass(s) 4 skip(s)
    - Exec time: [0.0, 3.81] s

  * igt@kms_atomic_interruptible@atomic-setmode@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [6.25, 6.37] s

  * igt@kms_atomic_interruptible@atomic-setmode@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [6.87, 7.39] s

  * igt@kms_atomic_interruptible@atomic-setmode@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.56] s

  * igt@kms_atomic_interruptible@atomic-setmode@vga-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.15] s

  * igt@kms_atomic_interruptible@legacy-cursor@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [6.21, 6.34] s

  * igt@kms_atomic_interruptible@legacy-cursor@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [7.50, 7.80] s

  * igt@kms_atomic_interruptible@legacy-cursor@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.56] s

  * igt@kms_atomic_interruptible@legacy-cursor@vga-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.15] s

  * igt@kms_atomic_interruptible@legacy-dpms@dp-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.38] s

  * igt@kms_atomic_interruptible@legacy-dpms@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [7.50, 7.92] s

  * igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.62] s

  * igt@kms_atomic_interruptible@legacy-dpms@vga-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.16] s

  * igt@kms_atomic_interruptible@legacy-pageflip@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [6.25, 6.37] s

  * igt@kms_atomic_interruptible@legacy-pageflip@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [7.50, 7.90] s

  * igt@kms_atomic_interruptible@legacy-pageflip@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.57] s

  * igt@kms_atomic_interruptible@legacy-pageflip@vga-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.19] s

  * igt@kms_atomic_interruptible@legacy-setmode@dp-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.33] s

  * igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.90] s

  * igt@kms_atomic_interruptible@legacy-setmode@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.56] s

  * igt@kms_atomic_interruptible@legacy-setmode@vga-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.16] s

  * igt@kms_atomic_interruptible@universal-setplane-primary@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [6.26, 6.37] s

  * igt@kms_atomic_interruptible@universal-setplane-primary@edp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [7.49, 7.56] s

  * igt@kms_atomic_interruptible@universal-setplane-primary@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.61] s

  * igt@kms_atomic_interruptible@universal-setplane-primary@vga-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.19] s

  * igt@kms_chamelium@dp-mode-timings:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_chamelium@hdmi-mode-timings:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@pipe-d-ctm-0-25:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.02] s

  * igt@kms_color@pipe-d-ctm-0-5:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 2.05] s

  * igt@kms_color@pipe-d-ctm-0-75:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.49] s

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.03] s

  * igt@kms_color@pipe-d-ctm-green-to-red:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 1.05] s

  * igt@kms_color@pipe-d-ctm-max:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 1.06] s

  * igt@kms_color@pipe-d-ctm-negative:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 1.05] s

  * igt@kms_color@pipe-d-ctm-red-to-blue:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.06] s

  * igt@kms_color@pipe-d-degamma:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.33] s

  * igt@kms_color@pipe-d-gamma:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@pipe-d-legacy-gamma:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@pipe-d-legacy-gamma-reset:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 0.02] s

  * igt@kms_content_protection@content_type_change:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.02] s

  * igt@kms_content_protection@lic:
    - Statuses : 6 skip(s) 1 timeout(s)
    - Exec time: [0.0, 120.57] s

  * igt@kms_content_protection@mei_interface:
    - Statuses : 7 skip(s)
    - Exec time: [0.00, 0.01] s

  * igt@kms_content_protection@srm:
    - Statuses : 4 skip(s) 2 timeout(s)
    - Exec time: [0.00, 121.10] s

  * igt@kms_content_protection@type1:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.03] s

  * igt@kms_content_protection@uevent:
    - Statuses : 2 fail(s) 5 skip(s)
    - Exec time: [0.0, 34.54] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 2.62] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.79] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-random:
    - Statuses : 1 pass(s) 3 skip(s)
    - Exec time: [0.0, 3.99] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-rapid-movement:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.20] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.03] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.61] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x42-onscreen:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.82] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x42-random:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 4.02] s

  * igt@kms_cursor_crc@pipe-d-cursor-128x42-sliding:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 4.01] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.60] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-random:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.04] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.89] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-offscreen:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 2.60] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-onscreen:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.77] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-random:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.99] s

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-sliding:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.88] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-sliding:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-offscreen:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.63] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.86] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-random:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 4.11] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 3.87] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.61] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-onscreen:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.79] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-random:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 4.00] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.23] s

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.92] s

  * igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.27] s

  * igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.27] s

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.74] s

  * igt@kms_cursor_crc@pipe-d-cursor-size-change:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - Statuses : 1 incomplete(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 3.51] s

  * igt@kms_cursor_edge_walk@pipe-d-128x128-left-edge:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.53] s

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.49] s

  * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.49] s

  * igt@kms_cursor_edge_walk@pipe-d-256x256-bottom-edge:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.52] s

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.50] s

  * igt@kms_cursor_edge_walk@pipe-d-256x256-right-edge:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.47] s

  * igt@kms_cursor_edge_walk@pipe-d-256x256-top-edge:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.48] s

  * igt@kms_cursor_edge_walk@pipe-d-64x64-bottom-edge:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 3.50] s

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.51] s

  * igt@kms_cursor_edge_walk@pipe-d-64x64-right-edge:
    - Statuses : 1 pass(s) 4 skip(s)
    - Exec time: [0.0, 3.50] s

  * igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.49] s

  * igt@kms_cursor_legacy@pipe-d-forked-bo:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 21.54] s

  * igt@kms_cursor_legacy@pipe-d-forked-move:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 21.55] s

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - Statuses : 3 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 21.49] s

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 21.67] s

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 21.64] s

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 1.45] s

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@pipe-d-alpha-7efc:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 12.01] s

  * igt@kms_plane_alpha_blend@pipe-d-alpha-basic:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 7.23] s

  * igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 2.49] s

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.41] s

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-mid:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.94] s

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.96] s

  * igt@kms_plane_alpha_blend@pipe-d-coverage-7efc:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 12.01] s

  * igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 2.36] s

  * igt@kms_plane_cursor@pipe-d-overlay-size-128:
    - Statuses : 6 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_plane_cursor@pipe-d-overlay-size-256:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 3.07] s

  * igt@kms_plane_cursor@pipe-d-overlay-size-64:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.09] s

  * igt@kms_plane_cursor@pipe-d-primary-size-128:
    - Statuses : 1 pass(s) 4 skip(s)
    - Exec time: [0.0, 3.08] s

  * igt@kms_plane_cursor@pipe-d-primary-size-256:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.02] s

  * igt@kms_plane_cursor@pipe-d-primary-size-64:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.04] s

  * igt@kms_plane_cursor@pipe-d-viewport-size-128:
    - Statuses : 5 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_plane_cursor@pipe-d-viewport-size-256:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.05] s

  * igt@kms_plane_cursor@pipe-d-viewport-size-64:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_lowres@pipe-d-tiling-none:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@pipe-d-tiling-x:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@pipe-d-tiling-y:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@pipe-d-tiling-yf:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-none:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 1.45] s

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.41] s

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-y:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.47] s

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 1.20] s

  * igt@kms_universal_plane@universal-plane-pipe-d-functional:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.71] s

  * igt@kms_universal_plane@universal-plane-pipe-d-sanity:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vblank@pipe-d-accuracy-idle:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.87] s

  * igt@kms_vblank@pipe-d-query-busy:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 3.01] s

  * igt@kms_vblank@pipe-d-query-busy-hang:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 16.99] s

  * igt@kms_vblank@pipe-d-query-forked:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.90] s

  * igt@kms_vblank@pipe-d-query-forked-busy:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 3.02] s

  * igt@kms_vblank@pipe-d-query-forked-busy-hang:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.01] s

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vblank@pipe-d-query-idle:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.88] s

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 16.37] s

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-rpm:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.66] s

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.69] s

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.55] s

  * igt@kms_vblank@pipe-d-ts-continuation-idle-hang:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 16.45] s

  * igt@kms_vblank@pipe-d-ts-continuation-modeset:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.67] s

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 16.19] s

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 3.65] s

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.46] s

  * igt@kms_vblank@pipe-d-wait-busy:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.01] s

  * igt@kms_vblank@pipe-d-wait-busy-hang:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0, 17.02] s

  * igt@kms_vblank@pipe-d-wait-forked:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.90] s

  * igt@kms_vblank@pipe-d-wait-forked-busy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@pipe-d-wait-forked-busy-hang:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 16.56] s

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 17.09] s

  * igt@kms_vblank@pipe-d-wait-idle:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.89] s

  * igt@kms_vblank@pipe-d-wait-idle-hang:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 16.68] s

  

Known issues
------------

  Here are the changes found in Patchwork_21534_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [FAIL][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#4338]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb7/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb7/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb6/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#1839])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-tglb8/igt@feature_discovery@display-3x.html

  * igt@gem_ctx_persistence@hostile:
    - shard-snb:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#1099])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#280])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-tglb5/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          [PASS][54] -> [INCOMPLETE][55] ([i915#2369])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-skl1/igt@gem_exec_capture@pi@vcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-skl6/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#2846])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][58] ([i915#2842]) +8 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-tglb8/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [PASS][61] -> [FAIL][62] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][63] ([i915#2849])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][64] -> [SKIP][65] ([i915#2190])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion (NEW):
    - shard-apl:          NOTRUN -> [WARN][66] ([i915#2658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-apl2/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-self (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][67] ([i915#3282]) +1 similar issue
   [67]: https://intel-g

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/index.html

--===============4958789184203465918==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/guc: Refcount context during error =
capture (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/94634/">https://patchwork.freedesktop.org/series/94634/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21534/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21534/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10854_full -&gt; Patchwork_21534_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10854_full and Patchwork_2=
1534_full:</p>
<h3>New IGT tests (189)</h3>
<ul>
<li>
<p>igt@debugfs_test@sysfs:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.47] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.05, 0.94] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.62] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 35.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 17.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.46, 22.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [20.07, 20.91] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.02, 6.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.45, 10.60] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.97, 7.63] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [3.48, 28.44] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [3.99, 26.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [4.07, 30.91] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.92, 12.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.37, 15.52] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.90, 15.27] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [20.07, 20.65] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@isolation:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>Statuses : 6 warn(s)</li>
<li>Exec time: [2.64, 46.97] s</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>Statuses : 1 skip(s) 7 warn(s)</li>
<li>Exec time: [0.0, 48.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@nohangcheck:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.05, 0.94] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-purge:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [5.37, 8.90] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-dpms:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 2.15] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>Statuses : 3 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 3.36] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>Statuses : 2 fail(s) 2 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 3.97] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>Statuses : 2 fail(s) 1 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 3.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [6.25, 6.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [6.87, 7.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode@vga-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [6.21, 6.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [7.50, 7.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@vga-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [7.50, 7.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@vga-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-pageflip@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [6.25, 6.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-pageflip@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [7.50, 7.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-pageflip@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-pageflip@vga-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@vga-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [6.26, 6.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.49, 7.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@hdmi-a-1-pipe-a:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@vga-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-25:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 2.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-75:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-green-to-red:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 1.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 1.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 1.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-gamma:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-legacy-gamma:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-legacy-gamma-reset:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>Statuses : 6 skip(s) 1 timeout(s)</li>
<li>Exec time: [0.0, 120.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>Statuses : 4 skip(s) 2 timeout(s)</li>
<li>Exec time: [0.00, 121.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>Statuses : 2 fail(s) 5 skip(s)</li>
<li>Exec time: [0.0, 34.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 2.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-random:</p>
<ul>
<li>Statuses : 1 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 3.99] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-rapid-movement:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 4.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x42-onscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.82] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x42-random:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 4.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x42-sliding:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 4.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-random:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 4.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.89] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-offscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 2.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-onscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.77] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-random:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.99] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-sliding:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-random:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-sliding:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-random:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-offscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.86] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-random:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 4.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 3.87] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-onscreen:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-random:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 4.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-size-change:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>Statuses : 1 incomplete(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 3.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-left-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.53] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-bottom-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-right-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-top-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-bottom-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 3.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-right-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 3.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-forked-bo:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 21.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-forked-move:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 21.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 21.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 21.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 21.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 1.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-7efc:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 12.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-basic:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 7.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 2.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-mid:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.96] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-coverage-7efc:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 12.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 2.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-overlay-size-128:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-overlay-size-256:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 3.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-overlay-size-64:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-primary-size-128:</p>
<ul>
<li>Statuses : 1 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 3.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-primary-size-256:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-primary-size-64:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-128:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-256:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-64:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-none:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-x:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-y:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-yf:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-none:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 1.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-x:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-y:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0, 1.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-d-functional:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-d-sanity:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-accuracy-idle:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.87] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-busy:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 3.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-busy-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 16.99] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-busy:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 3.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-busy-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-idle:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-idle-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 16.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-dpms-rpm:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.66] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 16.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 16.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 3.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-suspend:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-busy:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-busy-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 17.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-busy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-busy-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 16.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 17.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.89] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle-hang:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 16.68] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21534_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10854/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10854/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10854/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10854/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10854/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10854/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854=
/shard-snb5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10854/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10854/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0854/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10854/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10854/shard-snb2/boot.html">PASS</a>) ([i915#4338]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21534/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21534/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21534/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21534/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21534/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21534/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21534/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21534/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-snb2/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21534/shard-tglb8/igt@feature_discovery@display-3x.=
html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21534/shard-snb4/igt@gem_ctx_persistence@hostile.ht=
ml">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21534/shard-tglb5/igt@gem_ctx_sseu@engines.html">SK=
IP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10854/shard-skl1/igt@gem_exec_capture@pi@vcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-s=
kl6/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10854/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/sha=
rd-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21534/shard-tglb8/igt@gem_exec_fair@basic-none-vip@=
rcs0.html">FAIL</a> ([i915#2842]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10854/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/sh=
ard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10854/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/=
shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21534/shard-iclb5/igt@gem_exec_fair@basic-throttle@=
rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10854/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21534/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion (NEW):</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21534/shard-apl2/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-g">SKIP</a> (=
[i915#3282]) +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4958789184203465918==--
