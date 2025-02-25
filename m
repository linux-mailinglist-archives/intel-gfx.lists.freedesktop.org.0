Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84759A43FAD
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 13:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F10310E66A;
	Tue, 25 Feb 2025 12:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1AA510E66A;
 Tue, 25 Feb 2025 12:50:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_display_?=
 =?utf-8?q?reset_cleanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2025 12:50:54 -0000
Message-ID: <174048785465.1965219.11109426878821943839@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1740481927.git.jani.nikula@intel.com>
In-Reply-To: <cover.1740481927.git.jani.nikula@intel.com>
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

Series: drm/i915: display reset cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/143233/
State : warning

== Summary ==

Error: dim checkpatch failed
4aee0c5c8245 drm/i915/display: convert display reset to struct intel_display *
08d24e29e256 drm/i915: move pending_fb_pin to struct intel_display
4ae0720392a8 drm/i915/reset: add intel_gt_gpu_reset_clobbers_display() helper
e9b2124c2313 drm/i915/reset: add intel_display_reset_test()
a5f7acb57eac drm/i915/reset: add wrappers for display reset calls
48c7cc64192a drm/i915/reset: move gt related stuff out of display reset
-:74: WARNING:MEMORY_BARRIER: memory barrier without comment
#74: FILE: drivers/gpu/drm/i915/gt/intel_reset.c:1419:
+	smp_mb__after_atomic();

total: 0 errors, 1 warnings, 0 checks, 69 lines checked
e4654c30f51f drm/i915/reset: pass test only parameter to intel_display_reset_finish()
7793b5599ab7 drm/i915/reset: add modeset_stuck callback to intel_display_reset_prepare()


