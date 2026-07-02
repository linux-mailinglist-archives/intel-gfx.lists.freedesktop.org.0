Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CgTwOoscRmqfKAsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:08:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E276F4962
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:08:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=eDJCknLr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ADDE10F20C;
	Thu,  2 Jul 2026 08:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8558F10F202;
 Thu,  2 Jul 2026 08:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782979719;
 bh=cELi72UXcmsxoDSqIeRcipM+x1a+26Tc3n9a0CDuv8s=;
 h=From:To:Cc:Subject:Date:From;
 b=eDJCknLrlx3iDzwLiSTTy/i+gZ4R2PtkG9P27BfordS+mOjr0Z6ISi+msb1lLa/TT
 RgCqQkQE8e6CQGDRI+VI1wmccR1wEko92Zay9dugVd/Nnh+CgADLRrVKXh0KBDqubs
 TfhQI7H8aX5oLMY5fZXbOrv2LZa1RYSXVV/AwqvkjiTpZ6ftkeIkeoUUrdhTEp1PPQ
 PaxL/PKTCRbu8YL24oMMBnIi6UYIJQpcC0f1pgFEahEKDClAqnjjHIm5VAu1z9oFhC
 PjEYKQbm25+Aw7dd/9OlVF6H8llTm728wSSWtagjRIe3kLGwlEECzVfIDW7zw5m65j
 dPdWDURERetMQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
Date: Thu,  2 Jul 2026 10:09:06 +0200
Message-ID: <20260702080913.434121-1-dev@lankhorst.se>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6E276F4962

All fixes to make the core i915 module (without display) working correctly on
PREEMPT_RT.

Some fixes are still needed, as the selftests still fail. But otherwise the
test results were looking good on PREEMPT_RT.

Maarten Lankhorst (3):
  drm/i915/gt: Fix selftests on PREEMPT_RT
  drm/i915/gt: Set stop_timeout() correctly on PREEMPT-RT
  drm/i915: Use sleeping selftests for igt_atomic on PREEMPT_RT

Sebastian Andrzej Siewior (4):
  drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() +
    spin_lock()
  drm/i915: Drop the irqs_disabled() check
  drm/i915/guc: Consider also RCU depth in busy loop.
  drm/i915/gt: Add a spinlock to prevent starvation of irq_work.

 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c     |  8 +++++++-
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h   |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c       |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c    | 17 +++++------------
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c    |  8 ++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc.h          |  2 +-
 drivers/gpu/drm/i915/i915_request.c             |  2 --
 drivers/gpu/drm/i915/selftests/igt_atomic.c     |  7 +++++++
 8 files changed, 26 insertions(+), 21 deletions(-)

-- 
2.53.0

