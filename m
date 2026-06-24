Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MKSWHmAcPGotkAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 20:05:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7726C09DA
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 20:05:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=ZDROC0MH;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4045110F075;
	Wed, 24 Jun 2026 18:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89A310F05E;
 Wed, 24 Jun 2026 18:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782324294;
 bh=N5KhZ0RSeZ3StdcSSUx6eMBPMdhBmpPkvQhNVsbfOxU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZDROC0MHByPb8J4rmZXNASFgSlWcWwgSKLxGdzQUc/9ghumYabdOsFjQgWBFR7PaO
 oLHetK57DWyk2/dfyisVO22/p8BBrck6CY9DhZMkmnzE2c4OBmh4qhqOVyhHkIayc1
 MW4qWN1vYzCNK3VE8DMJRq5+KuAtXTw+TUCdQxhnLglz9Yety0iHOK+3fwlpXM2rhy
 0ZxtjXhE1gVLaFPEmr5a3fli7jppgX5Jjw/sO/WfbRRH0utxyKu6dSiQZCUHgjt3LD
 jc7zXxGQ9zj1bEt5gPeAzyrP6PCcRunas3Q9Bgsb+4Q1YTYx+oQBmXQLQ1rlgLJF6m
 ygPGUIA/mNNUw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v10 30/30] drm/i915: Disable "busy" pmu event on
 CONFIG_PREEMPT_RT
Date: Wed, 24 Jun 2026 20:04:57 +0200
Message-ID: <20260624180459.1024068-31-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260624180459.1024068-1-dev@lankhorst.se>
References: <20260624180459.1024068-1-dev@lankhorst.se>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B7726C09DA

The busyness implementation for guc is incompatible with PMU,
so disable it to prevent upsetting lockdep.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/i915_pmu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 65771e54b9b51..f381e6f30d987 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -554,6 +554,10 @@ engine_event_status(struct intel_engine_cs *engine,
 {
 	switch (sample) {
 	case I915_SAMPLE_BUSY:
+		/* The guc submission engine->busyness() callback has issues with CONFIG_PREEMPT_RT */
+		if (IS_ENABLED(CONFIG_PREEMPT_RT) && intel_uc_uses_guc_submission(&engine->gt->uc))
+			return -ENODEV;
+		break;
 	case I915_SAMPLE_WAIT:
 		break;
 	case I915_SAMPLE_SEMA:
-- 
2.53.0

