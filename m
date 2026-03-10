Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOsNFlxWsGkJiQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 18:35:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D75CE255AB3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 18:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA6410E668;
	Tue, 10 Mar 2026 17:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC08010E2C9;
 Tue, 10 Mar 2026 17:35:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev15=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2026 17:35:21 -0000
Message-ID: <177316412187.340892.6104386898477997207@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260310115709.2276203-1-dev@lankhorst.se>
In-Reply-To: <20260310115709.2276203-1-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: D75CE255AB3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.347];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:replyto]
X-Rspamd-Action: no action

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev15)
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/159035/revisions/15/mbox/ not applied
Applying: drm/vblank_work: Add methods to schedule vblank_work in 2 stages
Applying: drm/vblank: Add a 2-stage version of drm_crtc_arm_vblank_event
Applying: drm/intel/display: Make intel_crtc_arm_vblank_event static
Applying: drm/intel/display: Convert vblank event handling to 2-stage arming
Applying: drm/i915/display: Move vblank put until after critical section
Applying: drm/i915/display: Remove locking from intel_vblank_evade critical section
Applying: drm/i915/display: Handle vlv dsi workaround in scanline_in_safe_range too
Applying: drm/i915: Use preempt_disable/enable_rt() where recommended
Applying: drm/i915/display: Make get_vblank_counter use intel_de_read_fw()
Applying: drm/i915/display: Do not take uncore lock in i915_get_vblank_counter
Applying: drm/i915/display: Make icl_dsi_frame_update use _fw too
Applying: drm/i915/display: Use intel_de_read/write_fw in colorops
Applying: drm/i915/display: Use intel_de_write_fw in intel_pipe_fastset
Applying: drm/i915/display: Make set_pipeconf use the fw variants
Applying: drm/i915/display: Fix intel_lpe_audio_irq_handler for PREEMPT-RT
Applying: drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
Applying: drm/i915: Drop the irqs_disabled() check
Applying: drm/i915/guc: Consider also RCU depth in busy loop.
Applying: drm/i915/gt: Fix selftests on PREEMPT_RT
Applying: drm/i915/gt: Set stop_timeout() correctly on PREEMPT-RT
Applying: drm/i915/display: Remove uncore lock from vlv_atomic_update_fifo
Applying: drm/i915: Use sleeping selftests for igt_atomic on PREEMPT_RT
Applying: Revert "drm/i915: Depend on !PREEMPT_RT."
Applying: PREEMPT_RT injection
Applying: FOR-CI: bump MAX_STACK_TRACE_ENTRIES
Applying: drm/i915/gt: Add a spinlock to prevent starvation of irq_work.
error: corrupt patch at line 39
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0026 drm/i915/gt: Add a spinlock to prevent starvation of irq_work.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


