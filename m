Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YuA4DngRRmr6IwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 09:21:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D566F41B1
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 09:21:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=ClW4kagO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6D010F164;
	Thu,  2 Jul 2026 07:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20C510E097;
 Thu,  2 Jul 2026 07:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782976882;
 bh=SUeYEWvwLNnE6mZVedeWtrDvYb9EDhTCTdkSZZ3MxL8=;
 h=From:To:Cc:Subject:Date:From;
 b=ClW4kagOm7dguxmAIsr5/D3pZMzLdfOXap7nsRSH9wYntl9yAx0JJ5BpYfmUazdU1
 oUjI2/9mMSNEXm9n2KTORJfH7a2hTZnMgXIiIANeBS6HZ5q/1iO3t6kkNvka+zFZxl
 ZxYLYgOWRfXbRc5MP095ls94Ugy9pS3jlPD6PCo4PWgFg0QxSmn3j2zH7magUtL9pX
 1JWgHvDLhhns0lziYLvXAz1cvP5fyZwk8/3wkUrircqPmlBq1fxR2cs6+CKOa20W2+
 OJS2AdPc20dpQ6g6qFYvfsCoIStVUssX3qqvqj5gNENKfpRGHhpphoFdnIrBXFhunD
 wC9vRonQ+AALg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 00/10] drm/intel/display: Changes required to make vblank
 evasion PREEMPT_RT safe.
Date: Thu,  2 Jul 2026 09:21:43 +0200
Message-ID: <20260702072154.171324-1-dev@lankhorst.se>
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
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lankhorst.se:dkim,lankhorst.se:mid,lankhorst.se:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0D566F41B1

CONFIG_PREEMPT_RT requires code to be as deterministic as possible,
and codes with interrupts disabled cannot use spinlocks.

In order to handle this correctly, we ensure any locking requirements
are handled before disabling interrupts, and only start locking again
after interrupts are re-enabled and timing sensitive path completed.

This also has the benefit of making the vblank evasion code more
deterministic; without locking there's much less jitter.

Previously, we scheduled vblank work on completion.
This is now handled by scheduling the vblank in advance, only arming
it upon completion without locks.

Maarten Lankhorst (9):
  drm/vblank_work: Add methods to schedule vblank_work in 2 stages
  drm/vblank: Add a 2-stage version of drm_crtc_arm_vblank_event
  drm/intel/display: Make intel_crtc_arm_vblank_event static
  drm/intel/display: Convert vblank event handling to 2-stage arming
  drm/i915/display: Move vblank put until after critical section
  drm/i915/display: Remove locking from intel_vblank_evade critical
    section
  drm/i915/display: Handle vlv dsi workaround in scanline_in_safe_range
    too
  drm/i915/display: Make get_vblank_counter use intel_de_read_fw()
  drm/i915/display: Do not take uncore lock in i915_get_vblank_counter

Mike Galbraith (1):
  drm/i915: Use preempt_disable/enable_rt() where recommended

 drivers/gpu/drm/drm_vblank.c                  |  64 +++++++++-
 drivers/gpu/drm/drm_vblank_work.c             | 110 +++++++++++++----
 drivers/gpu/drm/i915/display/intel_crtc.c     |  86 ++++++-------
 drivers/gpu/drm/i915/display/intel_crtc.h     |   1 -
 drivers/gpu/drm/i915/display/intel_cursor.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_de.h       |   8 ++
 drivers/gpu/drm/i915/display/intel_vblank.c   | 115 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_vblank.h   |   1 +
 drivers/gpu/drm/i915/intel_uncore.h           |  26 ++--
 .../drm/xe/compat-i915-headers/intel_uncore.h |   7 ++
 include/drm/drm_vblank.h                      |  14 ++-
 include/drm/drm_vblank_work.h                 |  12 ++
 12 files changed, 324 insertions(+), 128 deletions(-)

-- 
2.53.0

