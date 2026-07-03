Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HY0RG9udR2pecQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 13:32:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C85D701DF7
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 13:32:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=EDp6E9oA;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DFB110F7BA;
	Fri,  3 Jul 2026 11:32:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686D010E5B8;
 Fri,  3 Jul 2026 11:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783078352;
 bh=ha6JuY59zkP0E76SyxjpvCAJ8EMeACPbzS5V6uJKIyA=;
 h=From:To:Cc:Subject:Date:From;
 b=EDp6E9oAYDmj+EoIDyJuT9zisU/vuR+VkbF84H+jFkf5lnULyVuGd7I33a5mn4AWt
 Im9fJnVYk9trbGZD07yj7SL1WaBqv5ckMSFUJNgeSvsgrC8dOLwjnu/nwje0rfWECf
 5k0uSn0mLad/4f5VM+fxQhqQB+/amXs3jlyLZlzhfP5Lrkt5wJqyPHToypAXqcrrCu
 yeSDqCFEGL3///+Qbm30jeb9PBK8wofqrZDu+YliSBtoYzORThyHawGogAKxQ/qUq/
 N2c1V0E2ld0EhYWyP9Ms40bbkX52+lDjieCQpycbp202IgvJQDFVmqh7VqI1s0cIno
 hngSyzdqiEfmw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v2 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
Date: Fri,  3 Jul 2026 13:32:52 +0200
Message-ID: <20260703113259.801374-1-dev@lankhorst.se>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C85D701DF7

All fixes to make the core i915 module (without display) working correctly on
PREEMPT_RT.

Some fixes are still needed, as the selftests still fail. But otherwise the
test results were looking good on PREEMPT_RT.

It looks like the patch that added a spinlock caused a regression on !PREEMPT_RT,
and may even have caused similar test failures on PREEMPT_RT, so to fix it
I removed RCU entirely, and converted to a locked implementation instead.

This time at least, i915 live selftests pass on !PREEMPRT_RT for at least 1 machine
with same config as CI.

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
  drm/i915/gt: Use a spinlock to prevent starvation of irq_work.

 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 89 ++++++++++++-------
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  | 17 ++--
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |  8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +-
 drivers/gpu/drm/i915/i915_request.c           |  2 -
 drivers/gpu/drm/i915/selftests/igt_atomic.c   |  7 ++
 8 files changed, 74 insertions(+), 55 deletions(-)

-- 
2.53.0

