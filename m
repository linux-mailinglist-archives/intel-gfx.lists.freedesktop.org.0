Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1710402DB9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 19:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5646E091;
	Tue,  7 Sep 2021 17:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E8546E091;
 Tue,  7 Sep 2021 17:28:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96EF3A9A42;
 Tue,  7 Sep 2021 17:28:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3083633986781784541=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 17:28:19 -0000
Message-ID: <163103569960.24494.10045558642492738697@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210907132044.157225-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210907132044.157225-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Iga2Vy?=
 =?utf-8?q?nel/locking=3A_Add_context_to_ww=5Fmutex=5Ftrylock=2E?=
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

--===============3083633986781784541==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: kernel/locking: Add context to ww_mutex_trylock.
URL   : https://patchwork.freedesktop.org/series/94437/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10557_full -> Patchwork_20976_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_10557_full and Patchwork_20976_full:

### New IGT tests (145) ###

  * igt@feature_discovery@chamelium:
    - Statuses : 6 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@feature_discovery@display:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@feature_discovery@display-2x:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@feature_discovery@display-3x:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@feature_discovery@display-4x:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@feature_discovery@psr1:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@feature_discovery@psr2:
    - Statuses : 1 pass(s) 4 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_fence@invalid-timeline-fence-array:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
    - Statuses : 5 pass(s)
    - Exec time: [0.05, 0.50] s

  * igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.49] s

  * igt@gem_exec_fence@syncobj-timeline-chain-engines:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.14] s

  * igt@gem_exec_fence@syncobj-timeline-export:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_fence@syncobj-timeline-invalid-flags:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_fence@syncobj-timeline-invalid-wait:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_fence@syncobj-timeline-repeat:
    - Statuses : 7 pass(s)
    - Exec time: [0.30, 3.55] s

  * igt@gem_exec_fence@syncobj-timeline-signal:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_fence@syncobj-timeline-unused-fence:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_fence@syncobj-timeline-wait:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.17] s

  * igt@gem_mmap_offset@blt-coherency:
    - Statuses : 5 pass(s)
    - Exec time: [0.01, 0.08] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:
    - Statuses : 7 pass(s)
    - Exec time: [0.28, 1.17] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - Statuses : 6 pass(s)
    - Exec time: [0.53, 2.41] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.28] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@32bits-limit:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@device-signal-unordered:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@device-submit-unordered:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted:
    - Statuses : 4 pass(s)
    - Exec time: [0.10] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.10, 0.12] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-submitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-unsubmitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-submitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-available-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-unsubmitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@host-signal-ordered:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@host-signal-points:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.08] s

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-query-bad-pad:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-query-illegal-handle:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-query-one-illegal-handle:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-query-zero-handles:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-bad-pad:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-illegal-handle:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-illegal-point:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-signal-one-illegal-handle:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-signal-zero-handles:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-single-wait-all-unsubmitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-single-wait-unsubmitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-transfer-bad-pad:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-transfer-illegal-handle:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-wait-bad-flags:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-wait-illegal-handle:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@multi-wait-all-available-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-all-available-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-available-submitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-available-submitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-submitted:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-submitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@reset-during-wait-for-submit:
    - Statuses : 4 pass(s)
    - Exec time: [0.10] s

  * igt@syncobj_timeline@reset-multiple-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@reset-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@reset-unsignaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@signal:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@signal-array:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@signal-point-0:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-for-submit-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@single-wait-all-for-submit-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-for-submit-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@single-wait-all-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-available-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-available-submitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-for-submit-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-for-submit-available-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-for-submit-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@single-wait-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@transfer-timeline-point:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@wait-all-complex:
    - Statuses : 7 pass(s)
    - Exec time: [0.21, 0.23] s

  * igt@syncobj_timeline@wait-all-delayed-signal:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-all-for-submit-complex:
    - Statuses : 3 pass(s)
    - Exec time: [0.22] s

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - Statuses :
    - Exec time: [None] s

  * igt@syncobj_timeline@wait-all-for-submit-snapshot:
    - Statuses : 7 pass(s)
    - Exec time: [0.08, 0.09] s

  * igt@syncobj_timeline@wait-all-interrupted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-all-snapshot:
    - Statuses : 6 pass(s)
    - Exec time: [0.08, 0.09] s

  * igt@syncobj_timeline@wait-any-complex:
    - Statuses : 6 pass(s)
    - Exec time: [0.06, 0.09] s

  * igt@syncobj_timeline@wait-any-interrupted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-any-snapshot:
    - Statuses : 6 pass(s)
    - Exec time: [0.08, 0.09] s

  * igt@syncobj_timeline@wait-delayed-signal:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-for-submit-complex:
    - Statuses : 4 pass(s)
    - Exec time: [0.06, 0.07] s

  * igt@syncobj_timeline@wait-for-submit-delayed-submit:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-for-submit-snapshot:
    - Statuses : 6 pass(s)
    - Exec time: [0.08, 0.09] s

  

Known issues
------------

  Here are the changes found in Patchwork_20976_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][1] ([i915#3002]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-snb7/igt@gem_create@create-massive.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][2] ([i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-snb7/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [PASS][4] -> [TIMEOUT][5] ([i915#2369] / [i915#3063])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl8/igt@gem_eio@unwedge-stress.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl9/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#2190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([fdo#110542])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#3323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][12] ([i915#3002])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl1/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglb:         NOTRUN -> [SKIP][13] ([i915#3297])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#2856])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([i915#2856]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([fdo#111644] / [i915#1397] / [i915#2411])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#151])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl2/igt@i915_pm_rpm@system-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl10/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-apl8/igt@i915_suspend@forcewake.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-iclb:         [PASS][22] -> [DMESG-WARN][23] ([i915#3621])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111615])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#3689]) +6 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +260 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl3/igt@kms_cdclk@mode-transition.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@atomic:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111828])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3116]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][37] ([i915#2105])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [PASS][38] -> [INCOMPLETE][39] ([i915#2411] / [i915#2828] / [i915#456])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3319])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3359])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111825]) +14 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#2346] / [i915#533])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +38 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#198])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#79])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([i915#3701])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109280])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][54] -> [INCOMPLETE][55] ([i915#2411] / [i915#456]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/index.html

--===============3083633986781784541==
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
<tr><td><b>Series:</b></td><td>kernel/locking: Add context to ww_mutex_trylock.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94437/">https://patchwork.freedesktop.org/series/94437/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10557_full -&gt; Patchwork_20976_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10557_full and Patchwork_20976_full:</p>
<h3>New IGT tests (145)</h3>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>Statuses : 3 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>Statuses : 1 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@invalid-timeline-fence-array:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.05, 0.50] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.49] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-chain-engines:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-export:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-invalid-flags:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-invalid-wait:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-repeat:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.30, 3.55] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-signal:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-unused-fence:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-wait:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@blt-coherency:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.01, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.28, 1.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.53, 2.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 2.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@32bits-limit:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@device-signal-unordered:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@device-submit-unordered:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.10, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-submitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-submitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@host-signal-ordered:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@host-signal-points:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.01, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-bad-pad:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-illegal-handle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-one-illegal-handle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-zero-handles:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-bad-pad:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-illegal-handle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-illegal-point:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-one-illegal-handle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-zero-handles:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-all-unsubmitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-unsubmitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-bad-pad:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-illegal-handle:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-bad-flags:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-illegal-handle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-submitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-submitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-submitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-during-wait-for-submit:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-multiple-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-unsignaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal-array:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal-point-0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-available-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-available-submitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-complex:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.21, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-delayed-signal:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-complex:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-snapshot:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-interrupted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-snapshot:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-complex:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.06, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-interrupted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-snapshot:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-delayed-signal:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-complex:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.06, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-delayed-submit:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-snapshot:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20976_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-snb7/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-snb7/igt@gem_ctx_persistence@engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl9/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([fdo#110542])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl1/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl2/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl10/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> ([i915#151])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-apl8/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl8/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-WARN</a> ([i915#3621])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl3/igt@kms_cdclk@mode-transition.html">SKIP</a> ([fdo#109271]) +260 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb5/igt@kms_content_protection@atomic.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-apl3/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([fdo#111825]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20976/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-</p>
</li>
</ul>

</body>
</html>

--===============3083633986781784541==--
