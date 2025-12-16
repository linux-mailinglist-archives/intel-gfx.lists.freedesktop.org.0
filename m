Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B39CC5218
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 21:55:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB2E910E764;
	Tue, 16 Dec 2025 20:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F132410E2F0;
 Tue, 16 Dec 2025 20:54:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_warning_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Dec 2025 20:54:59 -0000
Message-ID: <176591849998.95337.1543527335849618761@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251216092226.1777909-18-dev@lankhorst.se>
In-Reply-To: <20251216092226.1777909-18-dev@lankhorst.se>
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

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev3)
URL   : https://patchwork.freedesktop.org/series/159035/
State : warning

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/159035/revisions/3/mbox/ not applied
Applying: drm/i915/display: Fix intel_lpe_audio_irq_handler for PREEMPT-RT
Applying: drm/i915/display: Make get_vblank_counter use intel_de_read_fw()
Applying: drm/i915/display: Use intel_de_write_fw in intel_pipe_fastset
Applying: drm/i915/display: Make set_pipeconf use the fw variants
Applying: drm/i915/display: Move vblank put until after critical section
Applying: drm/i915/display: Remove locking from intel_vblank_evade critical section
Applying: drm/i915/display: Handle vlv dsi workaround in scanline_in_safe_range too
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_vblank.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/i915/display: Handle vlv dsi workaround in scanline_in_safe_range too
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


