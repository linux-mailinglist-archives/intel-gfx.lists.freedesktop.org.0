Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DD1B4A04E
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 05:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BDA10E100;
	Tue,  9 Sep 2025 03:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B76510E100;
 Tue,  9 Sep 2025 03:49:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0277031300789415191=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/display=3A_add_?=
 =?utf-8?q?intel=5Fdisplay=5Fdevice=5Fpresent=28=29_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Sep 2025 03:49:20 -0000
Message-ID: <175738976000.315158.7289020973093723575@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250903090408.3492875-1-jani.nikula@intel.com>
In-Reply-To: <20250903090408.3492875-1-jani.nikula@intel.com>
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

--===============0277031300789415191==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: add intel_display_device_present() (rev3)
URL   : https://patchwork.freedesktop.org/series/149535/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17150_full -> Patchwork_149535v3_full
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

  New tests have been introduced between CI_DRM_17150_full and Patchwork_149535v3_full:

### New IGT tests (139) ###

  * igt@gem_exec_fence@invalid-timeline-fence-array:
    - Statuses : 6 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.17] s

  * igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.16] s

  * igt@gem_exec_fence@syncobj-timeline-chain-engines:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.17] s

  * igt@gem_exec_fence@syncobj-timeline-export:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_fence@syncobj-timeline-invalid-flags:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_fence@syncobj-timeline-invalid-wait:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_fence@syncobj-timeline-repeat:
    - Statuses : 6 pass(s)
    - Exec time: [0.23, 0.63] s

  * igt@gem_exec_fence@syncobj-timeline-signal:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_fence@syncobj-timeline-unused-fence:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_fence@syncobj-timeline-wait:
    - Statuses : 6 pass(s)
    - Exec time: [0.03, 1.41] s

  * igt@gem_mmap_offset@blt-coherency:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@i915_selftest@live@slpc:
    - Statuses : 7 pass(s)
    - Exec time: [1.15, 14.08] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [4.24, 4.42] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [4.29, 4.31] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [4.33] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [4.56] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [3.81, 4.24] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [3.93, 4.31] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.41] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.38] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.09, 0.39] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.16, 0.39] s

  * igt@kms_pm_lpsp@screens-disabled:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.15] s

  * igt@kms_writeback@writeback-check-output:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_writeback@writeback-fb-id:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_writeback@writeback-invalid-parameters:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_writeback@writeback-pixel-formats:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@32bits-limit:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@device-signal-unordered:
    - Statuses : 6 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@device-submit-unordered:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-submitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.10] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-signaled:
    - Statuses : 6 pass(s)
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
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-submitted:
    - Statuses : 7 pass(s)
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
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-unsubmitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-available-unsubmitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-unsubmitted:
    - Statuses : 1 dmesg-warn(s) 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@host-signal-ordered:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@host-signal-points:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-query-bad-pad:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-query-illegal-handle:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-query-one-illegal-handle:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-query-zero-handles:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-bad-pad:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-illegal-handle:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-illegal-point:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-one-illegal-handle:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-zero-handles:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-single-wait-all-unsubmitted:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-single-wait-unsubmitted:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-transfer-bad-pad:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-transfer-illegal-handle:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-wait-bad-flags:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-wait-illegal-handle:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@multi-wait-all-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-all-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-all-available-submitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-all-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-available-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-available-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-submitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@multi-wait-submitted-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@reset-during-wait-for-submit:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@reset-multiple-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.00] s

  * igt@syncobj_timeline@reset-signaled:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@reset-unsignaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@signal:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@signal-array:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@signal-point-0:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@single-wait-all-available-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-available-submitted:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@single-wait-all-for-submit-available-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-for-submit-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@single-wait-all-for-submit-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@single-wait-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@single-wait-for-submit-available-signaled:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@single-wait-for-submit-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@single-wait-for-submit-signaled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-signaled:
    - Statuses :
    - Exec time: [None] s

  * igt@syncobj_timeline@transfer-timeline-point:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@wait-all-complex:
    - Statuses : 5 pass(s)
    - Exec time: [0.21, 0.22] s

  * igt@syncobj_timeline@wait-all-delayed-signal:
    - Statuses : 4 pass(s)
    - Exec time: [0.10] s

  * igt@syncobj_timeline@wait-all-for-submit-complex:
    - Statuses : 7 pass(s)
    - Exec time: [0.21, 0.23] s

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - Statuses : 6 pass(s)
    - Exec time: [0.10] s

  * igt@syncobj_timeline@wait-all-for-submit-snapshot:
    - Statuses : 6 pass(s)
    - Exec time: [0.08] s

  * igt@syncobj_timeline@wait-all-interrupted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-all-snapshot:
    - Statuses : 6 pass(s)
    - Exec time: [0.08] s

  * igt@syncobj_timeline@wait-any-complex:
    - Statuses : 6 pass(s)
    - Exec time: [0.06] s

  * igt@syncobj_timeline@wait-any-interrupted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-any-snapshot:
    - Statuses : 7 pass(s)
    - Exec time: [0.08, 0.09] s

  * igt@syncobj_timeline@wait-delayed-signal:
    - Statuses : 6 pass(s)
    - Exec time: [0.10] s

  * igt@syncobj_timeline@wait-for-submit-complex:
    - Statuses : 6 pass(s)
    - Exec time: [0.06] s

  * igt@syncobj_timeline@wait-for-submit-delayed-submit:
    - Statuses : 6 pass(s)
    - Exec time: [0.10] s

  * igt@syncobj_timeline@wait-for-submit-snapshot:
    - Statuses : 6 pass(s)
    - Exec time: [0.08] s

  

Known issues
------------

  Here are the changes found in Patchwork_149535v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#11078])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@fbdev@nullptr:
    - shard-rkl:          [PASS][2] -> [SKIP][3] ([i915#14544] / [i915#2582])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@fbdev@nullptr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_caching@writes:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][4] ([i915#12917] / [i915#12964])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_caching@writes.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#9323])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][6] -> [INCOMPLETE][7] ([i915#12392] / [i915#13356])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#7697])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#6335])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#8562])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][11] ([i915#12353]) +1 other test incomplete
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk10/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2-9:        NOTRUN -> [SKIP][12] ([i915#8555])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu:         NOTRUN -> [SKIP][13] ([i915#280])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#280])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-suspend:
    - shard-dg2:          [PASS][15] -> [ABORT][16] ([i915#8213])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-6/igt@gem_eio@in-flight-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-10/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][17] -> [FAIL][18] ([i915#5784])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-17/igt@gem_eio@reset-stress.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-17/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2-9:        NOTRUN -> [SKIP][19] ([i915#4771]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#4525])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][21] ([i915#11713] / [i915#14756])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg2-9:        NOTRUN -> [FAIL][22] ([i915#11965]) +4 other tests fail
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4812]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_exec_fence@submit.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2-9:        NOTRUN -> [SKIP][24] ([i915#4812])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_flush@basic-wb-set-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#3539] / [i915#4852])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_flush@basic-wb-set-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2-9:        NOTRUN -> [SKIP][27] +2 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281]) +5 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3281])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#3281]) +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#3281]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#4860])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_gtt_cpu_tlb:
    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4077]) +1 other test skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_gtt_cpu_tlb.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][34] ([i915#2190])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][35] ([i915#4613]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#4613]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#4613]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#4613])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - shard-dg2-9:        NOTRUN -> [SKIP][39] ([i915#4077]) +2 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_mmap_gtt@basic-write-read-distinct.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4077]) +5 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [PASS][41] -> [ABORT][42] ([i915#14809]) +1 other test abort
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-4/igt@gem_mmap_offset@clear-via-pagefault.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-4/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_mmap_wc@fault-concurrent:
    - shard-dg2-9:        NOTRUN -> [SKIP][43] ([i915#4083])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_mmap_wc@fault-concurrent.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4083]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-dg2-9:        NOTRUN -> [SKIP][45] ([i915#3282]) +3 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#3282])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][47] ([i915#2658])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4270]) +1 other test skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          [PASS][49] -> [TIMEOUT][50] ([i915#12917] / [i915#12964])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
    - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#4270])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#4270])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          [PASS][53] -> [SKIP][54] ([i915#14544] / [i915#4270]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-rkl:          NOTRUN -> [TIMEOUT][55] ([i915#12917] / [i915#12964])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear:
    - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#5190] / [i915#8428]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-linear.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][57] +259 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#5190] / [i915#8428]) +3 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#4079]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][60] +6 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][61] ([i915#4885])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@access-control:
    - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#3297])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3297])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3297])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#3297]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3281] / [i915#3297])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_userptr_blits@relocations.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][67] +5 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#2527] / [i915#2856]) +2 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#2527])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#2856]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#2527])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#2856]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_drm_fdinfo@isolation@vcs0:
    - shard-dg2-9:        NOTRUN -> [SKIP][73] ([i915#14073]) +7 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@i915_drm_fdinfo@isolation@vcs0.html

  * igt@i915_drm_fdinfo@most-busy-check-all@vecs0:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#14073]) +7 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html

  * igt@i915_drm_fdinfo@virtual-busy-hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#14118])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-hang.html

  * igt@i915_module_load@reload-no-display:
    - shard-dg2:          [PASS][76] -> [DMESG-WARN][77] ([i915#13029] / [i915#14545])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-10/igt@i915_module_load@reload-no-display.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-1/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@resize-bar:
    - shard-dg2:          [PASS][78] -> [DMESG-WARN][79] ([i915#14545])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-10/igt@i915_module_load@resize-bar.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-1/igt@i915_module_load@resize-bar.html
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#7178])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#8399])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#6590]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2-9:        NOTRUN -> [SKIP][83] ([i915#11681] / [i915#6621])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][84] -> [INCOMPLETE][85] ([i915#13729] / [i915#13821])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-snb5/igt@i915_pm_rps@reset.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4387])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@gt_pm:
    - shard-rkl:          [PASS][87] -> [DMESG-FAIL][88] ([i915#12942]) +1 other test dmesg-fail
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@i915_selftest@live@gt_pm.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2-9:        NOTRUN -> [DMESG-FAIL][89] ([i915#12061]) +1 other test dmesg-fail
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@i915_selftest@live@workarounds.html
    - shard-mtlp:         [PASS][90] -> [DMESG-FAIL][91] ([i915#12061]) +1 other test dmesg-fail
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][92] ([i915#4817]) +2 other tests incomplete
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk5/igt@i915_suspend@forcewake.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4212]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][94] ([i915#4215] / [i915#5190])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#4212])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic:
    - shard-glk:          [PASS][96] -> [FAIL][97] ([i915#14888])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][98] ([i915#14888])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-rkl:          [PASS][99] -> [INCOMPLETE][100] ([i915#12761])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-2/igt@kms_async_flips@async-flip-suspend-resume.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][101] ([i915#12761])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][102] ([i915#5956])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#4538] / [i915#5286]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#5286]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#5286]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
    - shard-mtlp:         [PASS][106] -> [FAIL][107] ([i915#5138])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#5286])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#3638])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#4538] / [i915#5190]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4538] / [i915#5190]) +4 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#4538])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][113] +32 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2-9:        NOTRUN -> [SKIP][114] ([i915#5190]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][115] ([i915#10307] / [i915#6095]) +24 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][116] ([i915#12313])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#14098] / [i915#6095]) +23 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#10307] / [i915#6095]) +157 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#12313]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#12313])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#6095]) +19 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#12805])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#6095]) +34 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3:
    - shard-dg2:          [PASS][124] -> [INCOMPLETE][125] ([i915#12796]) +1 other test incomplete
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#12805])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#6095]) +12 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][128] ([i915#6095]) +4 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#6095]) +19 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#12313])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#12313])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#6095]) +171 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#13783]) +4 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_audio@hdmi-audio:
    - shard-dg2-9:        NOTRUN -> [SKIP][135] ([i915#11151] / [i915#7828]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_chamelium_audio@hdmi-audio.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#11151] / [i915#7828]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#11151] / [i915#7828]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#11151] / [i915#7828]) +3 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#11151] / [i915#7828]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#11151] / [i915#7828]) +3 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@ctm-signed:
    - shard-rkl:          [PASS][141] -> [SKIP][142] ([i915#12655] / [i915#14544])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_color@ctm-signed.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_color@ctm-signed.html

  * igt@kms_content_protection@atomic:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2-9:        NOTRUN -> [SKIP][144] ([i915#3299])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#9424])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][147] ([i915#1339] / [i915#7173])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3555]) +3 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][149] ([i915#13566]) +1 other test fail
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#13049])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#3555]) +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-rkl:          NOTRUN -> [FAIL][152] ([i915#13566]) +1 other test fail
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#3555])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][154] ([i915#12358] / [i915#14152] / [i915#7882])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk1/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][155] ([i915#12358] / [i915#14152])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk1/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#4103] / [i915#4213])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - shard-rkl:          [PASS][157] -> [SKIP][158] ([i915#11190] / [i915#14544]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][159] ([i915#13046] / [i915#5354])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#13046] / [i915#5354]) +2 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2-9:        NOTRUN -> [SKIP][161] ([i915#9067])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#4103])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#13749])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#13749])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#13748])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#3555] / [i915#3840])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#3840])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2-9:        NOTRUN -> [SKIP][168] ([i915#3555] / [i915#3840])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#3555] / [i915#3840])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          [PASS][170] -> [INCOMPLETE][171] ([i915#9878])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#3469])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#3469])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#1839]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#9337])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#3637] / [i915#9934]) +6 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-busy-flip:
    - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#9934]) +4 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#9934]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#3637] / [i915#9934]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#9934]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#9934]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-rmfb-interruptible:
    - shard-rkl:          [PASS][182] -> [SKIP][183] ([i915#14544] / [i915#3637]) +6 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_flip@flip-vs-rmfb-interruptible.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip@flip-vs-rmfb-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-tglu:         [PASS][184] -> [FAIL][185] ([i915#11832] / [i915#14600])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-tglu-7/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         [PASS][186] -> [FAIL][187] ([i915#14600])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-tglu-7/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#2587] / [i915#2672]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#2672] / [i915#3555]) +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#2587] / [i915#2672]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#2672] / [i915#3555])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#2587] / [i915#2672])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-rkl:          [PASS][193] -> [SKIP][194] ([i915#14544] / [i915#3555]) +4 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][195] ([i915#2672]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#2672] / [i915#3555]) +2 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#2672] / [i915#3555]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#2672]) +4 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555] / [i915#5190])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#2672])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][202] ([i915#2672] / [i915#3555]) +2 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#8708]) +10 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-dg2:          [PASS][204] -> [FAIL][205] ([i915#6880])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [PASS][206] -> [SKIP][207] ([i915#14544] / [i915#1849] / [i915#5354]) +9 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg1:          [PASS][208] -> [DMESG-WARN][209] ([i915#4423])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-glk10:        NOTRUN -> [SKIP][210] +80 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][211] ([i915#8708]) +10 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#5354]) +12 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#1825]) +11 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][214] ([i915#3458]) +7 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#3458]) +7 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move:
    - shard-dg2-9:        NOTRUN -> [SKIP][216] ([i915#5354]) +13 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#3458])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3023]) +5 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#8708])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][220] +6 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][221] +40 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][222] ([i915#3555] / [i915#8228])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#3555] / [i915#8228])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3555] / [i915#8228])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-rkl:          [PASS][225] -> [SKIP][226] ([i915#14544] / [i915#3555] / [i915#8826]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_invalid_mode@uint-max-clock.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][227] ([i915#10656]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#12394])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][229] ([i915#13688])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#6301])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@bad-source:
    - shard-rkl:          [PASS][231] -> [SKIP][232] ([i915#14544]) +64 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pipe_crc_basic@bad-source.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          [PASS][233] -> [SKIP][234] ([i915#14544] / [i915#8825]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-rkl:          [PASS][235] -> [SKIP][236] ([i915#14544] / [i915#7294]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-max.html
    - shard-glk:          NOTRUN -> [FAIL][237] ([i915#10647] / [i915#12169])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][238] ([i915#10647]) +1 other test fail
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html

  * igt@kms_plane_cursor@primary@pipe-a-hdmi-a-2-size-128:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][239] ([i915#12964]) +7 other tests dmesg-warn
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_plane_cursor@primary@pipe-a-hdmi-a-2-size-128.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#13958])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][241] ([i915#6953] / [i915#9423])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-rkl:          [PASS][242] -> [SKIP][243] ([i915#14544] / [i915#8152])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#12247]) +9 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-rkl:          [PASS][245] -> [SKIP][246] ([i915#12247] / [i915#14544] / [i915#8152]) +3 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          [PASS][247] -> [SKIP][248] ([i915#14544] / [i915#3555] / [i915#8152])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
    - shard-rkl:          [PASS][249] -> [SKIP][250] ([i915#12247] / [i915#14544]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#12343])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#9685])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-rkl:          [PASS][253] -> [SKIP][254] ([i915#13441] / [i915#14544])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html
    - shard-snb:          NOTRUN -> [SKIP][255] +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-snb5/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_lpsp@screens-disabled (NEW):
    - shard-rkl:          [SKIP][256] ([i915#8430]) -> [SKIP][257] ([i915#14544] / [i915#8430])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
    - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#8430])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-rkl:          [PASS][259] -> [SKIP][260] ([i915#14544] / [i915#1849])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_rpm@cursor-dpms.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#9519])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2-9:        NOTRUN -> [SKIP][262] ([i915#9519])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2-9:        NOTRUN -> [SKIP][263] ([i915#6524] / [i915#6805])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#6524] / [i915#6805])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#11520]) +3 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#11520]) +3 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#11520]) +2 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk10:        NOTRUN -> [SKIP][268] ([i915#11520]) +2 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][269] ([i915#11520]) +3 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#11520]) +1 other test skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][271] ([i915#11520]) +5 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk5/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][272] ([i915#11520]) +3 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#9683])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2-9:        NOTRUN -> [SKIP][274] ([i915#9683])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#1072] / [i915#9732]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-psr2-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][276] ([i915#9732]) +9 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_psr@fbc-psr2-basic.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][277] ([i915#1072] / [i915#9732]) +4 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr@pr-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#1072] / [i915#9732]) +9 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_psr@pr-primary-mmap-gtt.html

  * igt@kms_psr@psr-primary-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][279] ([i915#1072] / [i915#9732]) +8 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_psr@psr-primary-mmap-cpu.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#9732]) +6 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#9685])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#5190])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#5289]) +1 other test skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-glk:          NOTRUN -> [ABORT][284] ([i915#13179]) +1 other test abort
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk8/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [PASS][285] -> [FAIL][286] ([i915#9196]) +1 other test fail
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_vrr@flip-suspend:
    - shard-dg2-9:        NOTRUN -> [SKIP][287] ([i915#3555]) +3 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-tglu-1:       NOTRUN -> [SKIP][288] ([i915#9906])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-tglu:         NOTRUN -> [SKIP][289] ([i915#9906])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output (NEW):
    - shard-tglu-1:       NOTRUN -> [SKIP][290] ([i915#2437])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id (NEW):
    - shard-glk:          NOTRUN -> [SKIP][291] ([i915#2437]) +2 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#2437] / [i915#9412])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats (NEW):
    - shard-tglu-1:       NOTRUN -> [SKIP][293] ([i915#2437] / [i915#9412])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking@0-rcs0:
    - shard-rkl:          [PASS][294] -> [DMESG-WARN][295] ([i915#12964]) +10 other tests dmesg-warn
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@perf@blocking@0-rcs0.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@perf@blocking@0-rcs0.html

  * igt@perf@polling@0-rcs0:
    - shard-mtlp:         [PASS][296] -> [FAIL][297] ([i915#10538]) +1 other test fail
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-8/igt@perf@polling@0-rcs0.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-8/igt@perf@polling@0-rcs0.html

  * igt@perf_pmu@frequency:
    - shard-dg1:          NOTRUN -> [FAIL][298] ([i915#12549] / [i915#6806]) +1 other test fail
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@perf_pmu@frequency.html

  * igt@perf_pmu@module-unload:
    - shard-glk:          NOTRUN -> [FAIL][299] ([i915#14433])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#8516])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#3708] / [i915#4077])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#3708] / [i915#4077])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-write:
    - shard-dg2-9:        NOTRUN -> [SKIP][303] ([i915#3291] / [i915#3708])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@prime_vgem@basic-write.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#9917]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7:
    - shard-tglu-1:       NOTRUN -> [FAIL][305] ([i915#12910]) +9 other tests fail
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#9917])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
#### Possible fixes ####

  * igt@fbdev@pan:
    - shard-rkl:          [SKIP][307] ([i915#14544] / [i915#2582]) -> [PASS][308] +1 other test pass
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@fbdev@pan.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@fbdev@pan.html

  * igt@gem_exec_schedule@fairslice:
    - shard-rkl:          [DMESG-WARN][309] ([i915#12964]) -> [PASS][310] +12 other tests pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_exec_schedule@fairslice.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_exec_schedule@fairslice.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-glk:          [INCOMPLETE][311] ([i915#13196] / [i915#13356]) -> [PASS][312] +1 other test pass
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-glk8/igt@gem_exec_suspend@basic-s3.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk5/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][313] ([i915#5493]) -> [PASS][314] +1 other test pass
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-rkl:          [TIMEOUT][315] ([i915#12917] / [i915#12964]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-buf-execution.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-rkl:          [INCOMPLETE][317] ([i915#13356]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_workarounds@suspend-resume-context.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][319] -> [PASS][320] +1 other test pass
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-tglu-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][321] ([i915#5138]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_color@ctm-blue-to-red:
    - shard-rkl:          [SKIP][323] ([i915#12655] / [i915#14544]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_color@ctm-blue-to-red.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_color@ctm-blue-to-red.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][325] ([i915#13566]) -> [PASS][326] +1 other test pass
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:
    - shard-dg1:          [DMESG-WARN][327] ([i915#4423]) -> [PASS][328] +3 other tests pass
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-15/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-17/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][329] ([i915#11190] / [i915#14544]) -> [PASS][330] +2 other tests pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-glk:          [SKIP][331] -> [PASS][332] +5 other tests pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-glk8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-dpms-on-nop-interruptible:
    - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#3637]) -> [PASS][334] +8 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-rkl:          [INCOMPLETE][335] ([i915#6113]) -> [PASS][336] +1 other test pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#3555]) -> [PASS][338] +4 other tests pass
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][339] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][340] +7 other tests pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][341] ([i915#3555] / [i915#8228]) -> [PASS][342] +1 other test pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-7/igt@kms_hdr@invalid-metadata-sizes.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [SKIP][345] ([i915#12388]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-8/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-rkl:          [SKIP][347] ([i915#14544] / [i915#7294]) -> [PASS][348] +1 other test pass
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          [SKIP][349] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][350] +1 other test pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-rkl:          [SKIP][351] ([i915#12247] / [i915#14544]) -> [PASS][352] +7 other tests pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [SKIP][353] ([i915#14544] / [i915#8152]) -> [PASS][354] +1 other test pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
    - shard-rkl:          [SKIP][355] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][356] +8 other tests pass
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-rkl:          [SKIP][357] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          [SKIP][359] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][360] +1 other test pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-rkl:          [SKIP][361] ([i915#14544] / [i915#1849]) -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-rkl:          [SKIP][363] ([i915#14544] / [i915#6524]) -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_vblank@wait-forked-busy-hang:
    - shard-rkl:          [SKIP][365] ([i915#14544]) -> [PASS][366] +49 other tests pass
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_vblank@wait-forked-busy-hang.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_vblank@wait-forked-busy-hang.html

  
#### Warnings ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][367] ([i915#6230]) -> [SKIP][368] ([i915#14544] / [i915#6230])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@api_intel_bb@crc32.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          [SKIP][369] ([i915#8411]) -> [SKIP][370] ([i915#14544] / [i915#8411])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@api_intel_bb@object-reloc-purge-cache.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [SKIP][371] ([i915#3281]) -> [SKIP][372] ([i915#14544] / [i915#3281]) +11 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][373] ([i915#9323]) -> [SKIP][374] ([i915#14544] / [i915#9323])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          [SKIP][375] ([i915#14544] / [i915#7697]) -> [SKIP][376] ([i915#7697])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          [SKIP][377] ([i915#7697]) -> [SKIP][378] ([i915#14544] / [i915#7697])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          [SKIP][379] ([i915#14544] / [i915#6335]) -> [SKIP][380] ([i915#6335])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          [SKIP][381] ([i915#8562]) -> [SKIP][382] ([i915#14544] / [i915#8562])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@gem_create@create-ext-set-pat.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          [SKIP][383] ([i915#280]) -> [SKIP][384] ([i915#14544] / [i915#280]) +1 other test skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#4525]) -> [SKIP][386] ([i915#4525]) +1 other test skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          [SKIP][387] ([i915#14544] / [i915#6344]) -> [SKIP][388] ([i915#6344])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-rkl:          [SKIP][389] ([i915#14544] / [i915#3281]) -> [SKIP][390] ([i915#3281]) +10 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [SKIP][391] ([i915#7276]) -> [SKIP][392] ([i915#14544] / [i915#7276])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          [SKIP][393] ([i915#14544] / [i915#4613] / [i915#7582]) -> [SKIP][394] ([i915#4613] / [i915#7582])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#4613]) -> [SKIP][396] ([i915#4613]) +2 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-rkl:          [SKIP][397] ([i915#4613]) -> [SKIP][398] ([i915#14544] / [i915#4613]) +2 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_lmem_swapping@random.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [ABORT][399] -> [TIMEOUT][400] ([i915#5493]) +1 other test timeout
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_vme:
    - shard-rkl:          [SKIP][401] ([i915#284]) -> [SKIP][402] ([i915#14544] / [i915#284])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_media_vme.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_media_vme.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#3282]) -> [SKIP][404] ([i915#3282]) +5 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [TIMEOUT][405] ([i915#12917] / [i915#12964]) -> [SKIP][406] ([i915#13717])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-context.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-rkl:          [TIMEOUT][407] ([i915#12917] / [i915#12964]) -> [SKIP][408] ([i915#14544] / [i915#4270])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-2.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-rkl:          [SKIP][409] ([i915#3282]) -> [SKIP][410] ([i915#14544] / [i915#3282]) +4 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          [SKIP][411] ([i915#14544] / [i915#3297]) -> [SKIP][412] ([i915#3297]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          [SKIP][413] ([i915#3297]) -> [SKIP][414] ([i915#14544] / [i915#3297]) +2 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][415] ([i915#2527]) -> [SKIP][416] ([i915#14544] / [i915#2527]) +4 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#2527]) -> [SKIP][418] ([i915#2527]) +3 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          [SKIP][419] ([i915#8399]) -> [SKIP][420] ([i915#14544] / [i915#8399])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#8399]) -> [SKIP][422] ([i915#8399])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][423] ([i915#7984]) -> [SKIP][424] ([i915#14544] / [i915#7984])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@i915_power@sanity.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][425] ([i915#6245]) -> [SKIP][426] ([i915#14544] / [i915#6245])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@i915_query@hwconfig_table.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@i915_query@hwconfig_table.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          [SKIP][427] ([i915#14544]) -> [SKIP][428] ([i915#9531])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][429] ([i915#14544]) -> [SKIP][430] ([i915#1769] / [i915#3555])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][431] ([i915#5286]) -> [SKIP][432] ([i915#14544]) +8 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][433] ([i915#14544]) -> [SKIP][434] ([i915#5286]) +2 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-dg1:          [SKIP][435] ([i915#3638]) -> [SKIP][436] ([i915#3638] / [i915#4423])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-15/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-18/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][437] ([i915#3638]) -> [SKIP][438] ([i915#14544]) +4 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][439] ([i915#14544]) -> [SKIP][440] ([i915#3638]) +2 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][441] ([i915#14544]) -> [SKIP][442] +15 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][443] ([i915#12313]) -> [SKIP][444] ([i915#14544]) +3 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][445] ([i915#6095]) -> [SKIP][446] ([i915#14098] / [i915#6095]) +1 other test skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][447] ([i915#14098] / [i915#6095]) -> [SKIP][448] ([i915#6095]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][449] ([i915#12805]) -> [SKIP][450] ([i915#14544])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          [SKIP][451] ([i915#14544]) -> [SKIP][452] ([i915#14098] / [i915#6095]) +8 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][453] ([i915#14544]) -> [SKIP][454] ([i915#12313]) +2 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][455] ([i915#14098] / [i915#6095]) -> [SKIP][456] ([i915#14544]) +14 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          [SKIP][457] ([i915#14544] / [i915#3742]) -> [SKIP][458] ([i915#3742])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-rkl:          [SKIP][459] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][460] ([i915#11151] / [i915#7828]) +8 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          [SKIP][461] ([i915#11151] / [i915#7828]) -> [SKIP][462] ([i915#11151] / [i915#14544] / [i915#7828]) +12 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [FAIL][463] ([i915#7173]) -> [SKIP][464] ([i915#7118] / [i915#9424])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][465] ([i915#3116]) -> [SKIP][466] ([i915#14544])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][467] ([i915#7118] / [i915#9424]) -> [SKIP][468] ([i915#14544]) +1 other test skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_content_protection@legacy.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-rkl:          [SKIP][469] ([i915#9424]) -> [SKIP][470] ([i915#14544])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_content_protection@lic-type-0.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][471] ([i915#14544]) -> [SKIP][472] ([i915#9424])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_content_protection@mei-interface.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          [SKIP][473] ([i915#9433]) -> [SKIP][474] ([i915#9424])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-15/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [SKIP][475] ([i915#7118] / [i915#9424]) -> [FAIL][476] ([i915#1339] / [i915#7173])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-8/igt@kms_content_protection@uevent.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][477] ([i915#14544]) -> [SKIP][478] ([i915#3555]) +4 other tests skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          [SKIP][479] ([i915#13049]) -> [SKIP][480] ([i915#14544]) +1 other test skip
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-rkl:          [FAIL][481] ([i915#13566]) -> [SKIP][482] ([i915#14544]) +3 other tests skip
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          [SKIP][483] ([i915#14544]) -> [SKIP][484] ([i915#13049]) +1 other test skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][485] ([i915#3555]) -> [SKIP][486] ([i915#14544]) +5 other tests skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_edge_walk@128x128-left-edge:
    - shard-rkl:          [DMESG-WARN][487] ([i915#12964]) -> [SKIP][488] ([i915#14544])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-left-edge.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_edge_walk@128x128-left-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][489] -> [SKIP][490] ([i915#14544]) +17 other tests skip
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [FAIL][491] ([i915#2346]) -> [SKIP][492] ([i915#14544])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][493] ([i915#4103]) -> [SKIP][494] ([i915#14544])
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][495] ([i915#14544]) -> [SKIP][496] ([i915#4103])
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          [SKIP][497] ([i915#1257] / [i915#14544]) -> [SKIP][498] ([i915#1257])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_dp_aux_dev.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-rkl:          [SKIP][499] ([i915#14544]) -> [SKIP][500] ([i915#13749])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][501] ([i915#11190] / [i915#14544]) -> [SKIP][502] ([i915#3555] / [i915#3840])
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_dsc@dsc-basic.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          [SKIP][503] ([i915#3840]) -> [SKIP][504] ([i915#14544])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][505] ([i915#3555] / [i915#3840]) -> [SKIP][506] ([i915#14544])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][507] ([i915#3955]) -> [SKIP][508] ([i915#14544] / [i915#3955])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_fbcon_fbt@psr.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][509] ([i915#4854]) -> [SKIP][510] ([i915#14544] / [i915#4854])
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_feature_discovery@chamelium.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          [SKIP][511] ([i915#1839]) -> [SKIP][512] ([i915#14544] / [i915#1839])
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_feature_discovery@display-3x.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][513] ([i915#658]) -> [SKIP][514] ([i915#14544] / [i915#658])
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_feature_discovery@psr2.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][515] ([i915#9934]) -> [SKIP][516] ([i915#14544] / [i915#9934]) +7 other tests skip
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-rkl:          [SKIP][517] ([i915#14544] / [i915#9934]) -> [SKIP][518] ([i915#9934]) +4 other tests skip
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip@2x-nonexisting-fb-interruptible.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@dpms-off-confusion:
    - shard-rkl:          [DMESG-WARN][519] ([i915#12964]) -> [SKIP][520] ([i915#14544] / [i915#3637])
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_flip@dpms-off-confusion.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip@dpms-off-confusion.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          [SKIP][521] ([i915#14544] / [i915#3637]) -> [DMESG-WARN][522] ([i915#12964])
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip@plain-flip-fb-recreate.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][523] ([i915#2672] / [i915#3555]) -> [SKIP][524] ([i915#14544] / [i915#3555]) +3 other tests skip
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][525] ([i915#14544] / [i915#3555]) -> [SKIP][526] ([i915#2672] / [i915#3555]) +2 other tests skip
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][527] -> [SKIP][528] ([i915#14544] / [i915#1849] / [i915#5354])
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][529] ([i915#1825]) -> [SKIP][530] ([i915#14544] / [i915#1849] / [i915#5354]) +43 other tests skip
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][531] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][532] ([i915#5439])
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          [SKIP][533] ([i915#3023]) -> [SKIP][534] ([i915#14544] / [i915#1849] / [i915#5354]) +29 other tests skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][535] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][536] ([i915#3023]) +16 other tests skip
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          [SKIP][537] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][538] ([i915#9766])
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][539] ([i915#3458]) -> [SKIP][540] ([i915#10433] / [i915#3458]) +3 other tests skip
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][541] ([i915#10433] / [i915#3458]) -> [SKIP][542] ([i915#3458]) +1 other test skip
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][543] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][544] ([i915#1825]) +33 other tests skip
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][545] ([i915#12713]) -> [SKIP][546] ([i915#14544])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][547] ([i915#14544]) -> [SKIP][548] ([i915#3555] / [i915#8228]) +2 other tests skip
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_hdr@static-toggle.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          [SKIP][549] ([i915#3555] / [i915#8228]) -> [SKIP][550] ([i915#14544]) +3 other tests skip
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-rkl:          [SKIP][551] ([i915#13958]) -> [SKIP][552] ([i915#14544]) +1 other test skip
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-x.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][553] -> [SKIP][554] ([i915#14544] / [i915#8152])
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][555] ([i915#3555]) -> [SKIP][556] ([i915#14544] / [i915#3555] / [i915#8152])
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
    - shard-dg1:          [SKIP][557] ([i915#3555]) -> [SKIP][558] ([i915#3555] / [i915#4423])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
    - shard-dg1:          [SKIP][559] ([i915#12247]) -> [SKIP][560] ([i915#12247] / [i915#4423])
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][561] ([i915#12247]) -> [SKIP][562] ([i915#12247] / [i915#14544]) +2 other tests skip
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][563] ([i915#12247]) -> [SKIP][564] ([i915#12247] / [i915#14544] / [i915#8152]) +4 other tests skip
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][565] ([i915#5354]) -> [SKIP][566] ([i915#14544] / [i915#5354]) +1 other test skip
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          [SKIP][567] ([i915#12343]) -> [SKIP][568] ([i915#12343] / [i915#14544])
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][569] ([i915#14544] / [i915#4281]) -> [SKIP][570] ([i915#4281])
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][571] ([i915#14544] / [i915#9519]) -> [SKIP][572] ([i915#9519]) +1 other test skip
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@pm-tiling:
    - shard-rkl:          [SKIP][573] ([i915#14544]) -> [DMESG-WARN][574] ([i915#12964]) +2 other tests dmesg-warn
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_pm_rpm@pm-tiling.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][575] ([i915#11520] / [i915#14544]) -> [SKIP][576] ([i915#11520]) +6 other tests skip
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][577] ([i915#11520]) -> [SKIP][578] ([i915#11520] / [i915#14544]) +9 other tests skip
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          [SKIP][579] ([i915#14544] / [i915#9683]) -> [SKIP][580] ([i915#9683])
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          [SKIP][581] ([i915#1072] / [i915#9732]) -> [SKIP][582] ([i915#1072] / [i915#14544] / [i915#9732]) +24 other tests skip
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][583] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][584] ([i915#1072] / [i915#9732]) +20 other tests skip
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          [SKIP][585] ([i915#9685]) -> [SKIP][586] ([i915#14544] / [i915#9685])
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][587] ([i915#5289]) -> [SKIP][588] ([i915#14544])
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          [SKIP][589] ([i915#3555]) -> [SKIP][590] ([i915#14544] / [i915#3555])
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_setmode@basic-clone-single-crtc.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-rkl:          [SKIP][591] ([i915#14544] / [i915#3555]) -> [SKIP][592] ([i915#3555])
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc.html
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          [SKIP][593] ([i915#8623]) -> [SKIP][594] ([i915#14544])
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          [SKIP][595] ([i915#14544]) -> [SKIP][596] ([i915#11920])
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_vrr@lobf.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_vrr@lobf.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          [SKIP][597] ([i915#3555] / [i915#9906]) -> [SKIP][598] ([i915#14544])
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_vrr@negative-basic.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          [SKIP][599] ([i915#9906]) -> [SKIP][600] ([i915#14544]) +1 other test skip
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-rkl:          [SKIP][601] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][602] ([i915#2437] / [i915#9412])
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][603] ([i915#2436]) -> [SKIP][604] ([i915#14544] / [i915#2436])
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][605] ([i915#2433]) -> [SKIP][606] ([i915#14544] / [i915#2433])
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][607] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][608] ([i915#3291] / [i915#3708])
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][609] ([i915#3708]) -> [SKIP][610] ([i915#14544] / [i915#3708])
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@prime_vgem@coherency-gtt.html
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          [SKIP][611] ([i915#14544] / [i915#3708]) -> [SKIP][612] ([i915#3708])
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          [SKIP][613] ([i915#14544] / [i915#9917]) -> [SKIP][614] ([i915#9917]) +1 other test skip
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          [SKIP][615] ([i915#9917]) -> [SKIP][616] ([i915#14544] / [i915#9917])
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
  [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12942]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
  [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14756
  [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
  [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17150 -> Patchwork_149535v3

  CI-20190529: 20190529
  CI_DRM_17150: 78cc74214b6f200319b53d36c4c0ce6974af8d5b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8524: 8524
  Patchwork_149535v3: 78cc74214b6f200319b53d36c4c0ce6974af8d5b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/index.html

--===============0277031300789415191==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: add intel_display_device_present() (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/149535/">https://patchwork.freedesktop.org/series/149535/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17150_full -&gt; Patchwork_149535v3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17150_full and Patchwork_149535v3_full:</p>
<h3>New IGT tests (139)</h3>
<ul>
<li>
<p>igt@gem_exec_fence@invalid-timeline-fence-array:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-chain-engines:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-export:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-invalid-flags:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-invalid-wait:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-repeat:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.23, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-signal:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-unused-fence:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-wait:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.03, 1.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@blt-coherency:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.15, 14.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [4.24, 4.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [4.29, 4.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.81, 4.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.93, 4.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.09, 0.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.16, 0.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@32bits-limit:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@device-signal-unordered:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@device-submit-unordered:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
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
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
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
<li>Statuses : 6 pass(s)</li>
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
<li>Statuses : 6 pass(s)</li>
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
<li>Statuses : 7 pass(s)</li>
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
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@host-signal-ordered:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@host-signal-points:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-bad-pad:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-illegal-handle:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-one-illegal-handle:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-zero-handles:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-bad-pad:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-illegal-handle:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-illegal-point:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-one-illegal-handle:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-zero-handles:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-all-unsubmitted:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-unsubmitted:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-bad-pad:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-illegal-handle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
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
<li>Statuses : 6 pass(s)</li>
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
<p>igt@syncobj_timeline@multi-wait-all-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-submitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-submitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-submitted-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-during-wait-for-submit:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-multiple-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-signaled:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-unsignaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal-array:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal-point-0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-available-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-available-submitted:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-signaled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-signaled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-complex:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.21, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-delayed-signal:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-complex:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.21, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-snapshot:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.08] s</li>
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
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-complex:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.06] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-delayed-signal:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-complex:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-delayed-submit:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-snapshot:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_149535v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_caching@writes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk10/igt@gem_ctx_isolation@preservation-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353">i915#12353</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-6/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-10/igt@gem_eio@in-flight-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-17/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gem_exec_big@single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713">i915#11713</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14756">i915#14756</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965">i915#11965</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_exec_fence@submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_fence@submit67.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-set-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_flush@basic-wb-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_params@secure-non-root.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_exec_reloc@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_fenced_exec_thrash@2-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_gtt_cpu_tlb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_mmap_gtt@basic-write-read-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_mmap_gtt@medium-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-4/igt@gem_mmap_offset@clear-via-pagefault.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-4/igt@gem_mmap_offset@clear-via-pagefault.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809">i915#14809</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@fault-concurrent:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_mmap_wc@fault-concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_mmap_wc@write-gtt-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_pread@exhaustion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> +259 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_softpin@evict-snoop.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gen7_exec_parse@basic-rejected.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@isolation@vcs0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@i915_drm_fdinfo@isolation@vcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-check-all@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-10/igt@i915_module_load@reload-no-display.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-1/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-10/igt@i915_module_load@resize-bar.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-1/igt@i915_module_load@resize-bar.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178">i915#7178</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729">i915#13729</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821">i915#13821</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942">i915#12942</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk5/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-2/igt@kms_async_flips@async-flip-suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +157 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +171 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_chamelium_audio@hdmi-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_color@ctm-signed.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_color@ctm-signed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk1/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882">i915#7882</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk1/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_flip@2x-busy-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_flip@flip-vs-rmfb-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip@flip-vs-rmfb-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-tglu-7/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832">i915#11832</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600">i915#14600</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-tglu-7/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600">i915#14600</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> +80 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +12 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_invalid_mode@uint-max-clock.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@bad-source:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pipe_crc_basic@bad-source.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +64 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_plane_alpha_blend@constant-alpha-max.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@primary@pipe-a-hdmi-a-2-size-128:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_plane_cursor@primary@pipe-a-hdmi-a-2-size-128.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +7 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i915#13441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-snb5/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled (NEW):</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk5/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_psr@fbc-psr2-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_psr@pr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_psr@psr-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk8/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output (NEW):</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id (NEW):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats (NEW):</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@perf@blocking@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@perf@blocking@0-rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +10 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf@polling@0-rcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-8/igt@perf@polling@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-8/igt@perf@polling@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@perf_pmu@frequency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549">i915#12549</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@fbdev@pan.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@fbdev@pan.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@fairslice:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_exec_schedule@fairslice.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_exec_schedule@fairslice.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-glk8/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196">i915#13196</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk5/igt@gem_exec_suspend@basic-s3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-buf-execution.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-execution.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_workarounds@suspend-resume-context.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-tglu-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-tglu-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_color@ctm-blue-to-red.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_color@ctm-blue-to-red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-15/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-17/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-glk8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-7/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_invalid_mode@int-max-clock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-8/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_plane_alpha_blend@constant-alpha-min.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_pm_rpm@fences-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_prime@basic-crc-vgem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_vblank@wait-forked-busy-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_vblank@wait-forked-busy-hang.html">PASS</a> +49 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276">i915#7276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-context.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-2.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-15/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-18/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-3/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-15/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-8/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-11/igt@kms_content_protection@uevent.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_crc@cursor-random-128x42.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-left-edge:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-left-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_edge_walk@128x128-left-edge.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_flip@dpms-off-confusion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip@dpms-off-confusion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip@plain-flip-fb-recreate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-tiling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_pm_rpm@pm-tiling.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-8/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i915#2433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-8/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17150/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149535v3/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17150 -&gt; Patchwork_149535v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17150: 78cc74214b6f200319b53d36c4c0ce6974af8d5b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8524: 8524<br />
  Patchwork_149535v3: 78cc74214b6f200319b53d36c4c0ce6974af8d5b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0277031300789415191==--
