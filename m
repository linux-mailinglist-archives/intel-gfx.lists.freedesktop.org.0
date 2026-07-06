Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LLrnBeqVS2r5VwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:47:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CCA7100BC
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:47:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=LV0NzvAl;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6809210E8F3;
	Mon,  6 Jul 2026 11:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F46510E336;
 Mon,  6 Jul 2026 11:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783338464;
 bh=W9LVkaWCJ6mz1Fpj26b8EiLt/bi8HRInnG4tcu+I5vE=;
 h=From:To:Cc:Subject:Date:From;
 b=LV0NzvAl/xYaq/AI2C7cMoXya0/fswznzObwhHJk1OM7BAKTA9QOD1nz3+8FArWNy
 HXM+AaaEPMpyO+uWgtMs0yI7yz/qlCBNnD0Xz52mbPdU9iKMDd3ylFqQlrZs8q9kNA
 FHhnkfv5LQv7c1RMWuUzl4D9XCS9vt08/3TcsI6zmgCAI/vFPOFIl01snLoObd4qEK
 GqI1aUszYvEaxFXOrUP33hblLBqLNcMYuD0x8bMU1/zxlTuGBJC56xaei7n63+J77I
 9yUFxtou2nTxwIBo43YL2XYHWhRKO+C1HCULZgU77KXQu85CaumSaF+7+wbaxnjS11
 U4EvRQQeXaa1Q==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v4 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
Date: Mon,  6 Jul 2026 13:48:16 +0200
Message-ID: <20260706114823.752313-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3CCA7100BC

All fixes to make the core i915 module (without display) working correctly on
PREEMPT_RT.

Some fixes are still needed, as the selftests still fail. But otherwise the
test results were looking good on PREEMPT_RT.

It looks like the patch that added a spinlock caused a regression on !PREEMPT_RT,
and may even have caused similar test failures on PREEMPT_RT, so to fix it
I removed RCU entirely, and converted to a locked implementation instead.

This time at least, i915 live selftests pass on !PREEMPRT_RT for at least 1 machine
with same config as CI.

Changes since v3:
- Fix some issues in last patch found by sashiko.
Changes since v2:
- Remove the extra signaler_active lock, it broke because
  it didn't protect anything, instead use signalers_lock.

Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Maarten Lankhorst (3):
  drm/i915/gt: Fix selftests on PREEMPT_RT
  drm/i915/gt: Set stop_timeout() correctly on PREEMPT-RT
  drm/i915: Use sleeping selftests for igt_atomic on PREEMPT_RT

Sebastian Andrzej Siewior (4):
  drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() +
    spin_lock()
  drm/i915: Drop the irqs_disabled() check
  drm/i915/guc: Consider also RCU depth in busy loop.
  drm/i915/gt: Use signalers_lock to prevent starvation of irq_work.

 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 172 +++++++++++-------
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |   1 -
 drivers/gpu/drm/i915/gt/intel_context.c       |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  17 +-
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +-
 drivers/gpu/drm/i915/i915_request.c           |   2 -
 drivers/gpu/drm/i915/selftests/igt_atomic.c   |   7 +
 9 files changed, 130 insertions(+), 82 deletions(-)

-- 
2.53.0

