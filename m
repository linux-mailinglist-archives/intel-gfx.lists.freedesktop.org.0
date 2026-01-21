Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJJbCF87cWnKfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 21:47:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B035D904
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 21:47:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE0B10E884;
	Wed, 21 Jan 2026 20:47:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="PK9xdVJu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f201.google.com (mail-dy1-f201.google.com
 [74.125.82.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50AB010E886
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 20:47:24 +0000 (UTC)
Received: by mail-dy1-f201.google.com with SMTP id
 5a478bee46e88-2b6b9c1249fso455678eec.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 12:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769028444; x=1769633244;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=/asIp0nkNh7HmrCfGJJav0eZDXLPbeZkOAARCIQJcew=;
 b=PK9xdVJuBCeuIk6JTGbYf+jFKaKaIGZPkj/v866Mw24FvIIgMv6AdwWgyzhiTCHHaD
 eJo09MigT8rOqRGDa5N+peUPo4gv4VKcmGT7JXHRUdI82nGRgeBS+YjWm9Skkh/IY7qh
 k7fYeSNv3LqfhGBEq/wm0i20/Ro8jXGXl/mXC8kXmp3yuxVnwMOBVHpZuOPrL+lpkBw3
 v15jYW9FM5TJUuEwIf8taSxBYk5DdVYZAtqBdZwF43VDNtvDv1q3pqQS8Jl3Qzic8Cf3
 hWDdPCMKmQwD3yUlxW4wW7nrVl6Br6izofHczwYg0KAbw/9hUgfkkeEhEl9SolCGo/+r
 KgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769028444; x=1769633244;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/asIp0nkNh7HmrCfGJJav0eZDXLPbeZkOAARCIQJcew=;
 b=W2FT3ST42been2cXbkj2lr+0oj32Gvo5AL3EfrRdrgLYrtKwqwtMo0YYWQNYS5TgLg
 l+R7ibiWS7iRJYihwI2Cofn3fWU0vS5YgXGldxQ8es5s3bwR/bmQaI1jeVnKiuOxCSZr
 2FaCS2C/Lgw3ta6OTPMh1a+vt6k+CrcG3U7Z0XwRUEZIRMLfmnoUlllTrIu5REB35Nnm
 qdjNgHbAqSRu0oIKCLG6257Di2ME1LF+5OAjDppFAMsM566SORUXbJN3N/1+LG/PTdd6
 UcyZCcpIDYFMItKZNjOvwSgLfwNv9NLgQR5ias2f4qoPt61SkvRBT2tNjOThtutop7F9
 ciqw==
X-Gm-Message-State: AOJu0YwL76ChMR/NJNZN/NeuZz1mjYEaxP0SCjLEI+YQfyJ3VreBapMC
 67UvMUsSFoG20+vp1VQyJJHCNUOCtY0cBn73qrZaLOWzb4x+wTVvhfyuXYdSXBOP4uj8lSj+NwV
 wdBR4cBJSHhtyiD0+5Ig4xqdMPASGfjI5xV+nPmEJiZK1xZniEP+4emfhJjfEbrRccLscSae62a
 PVHrl2r/zg8sDi+kkOIypQC/iX9FeLVNfnFdNhK33OSHlZtuvBP6TdeXMv9wQ=
X-Received: from dyblf48.prod.google.com ([2002:a05:7301:a30:b0:2b6:d0da:33fa])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:541:b0:2ac:21b5:f43c with SMTP id
 5a478bee46e88-2b6b4e8a488mr13968778eec.20.1769028443336; 
 Wed, 21 Jan 2026 12:47:23 -0800 (PST)
Date: Wed, 21 Jan 2026 12:46:53 -0800
In-Reply-To: <20260121204705.432290-1-jdsultan@google.com>
Mime-Version: 1.0
References: <20260121204705.432290-1-jdsultan@google.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260121204705.432290-3-jdsultan@google.com>
Subject: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
From: Juasheem Sultan <jdsultan@google.com>
To: intel-gfx@lists.freedesktop.org, intel_xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Manasi Navare <navaremanasi@google.com>, Drew Davenport <ddavenport@google.com>,
 Sean Paul <seanpaul@google.com>, Samuel Jacob <samjaco@google.com>, 
 Rajat Jain <rajatja@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="UTF-8"
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: C3B035D904
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When attempting the initial commit, there is a mismatch between
the new crtc_state and the old crtc_state. This causes us to fail the
pipe_config comparison and force a modeset. In the case where we are
inheriting an initialized state, we can sync the new and the old state
to pass the comparison and allow us to do a fastset and achieve an
uninterrupted handoff to userspace.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0d527cf22866..6eef4bd2e251 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 	if (old_crtc_state->vrr.in_range != new_crtc_state->vrr.in_range)
 		new_crtc_state->update_lrr = false;
 
+	/* Copying crtc state if inheriting an old state for commit */
+	if (old_crtc_state->inherited) {
+		new_crtc_state->hw = old_crtc_state->hw;
+
+		new_crtc_state->port_clock = old_crtc_state->port_clock;
+		new_crtc_state->pipe_bpp = old_crtc_state->pipe_bpp;
+		new_crtc_state->cpu_transcoder = old_crtc_state->cpu_transcoder;
+		new_crtc_state->lane_count = old_crtc_state->lane_count;
+		new_crtc_state->output_types = old_crtc_state->output_types;
+		new_crtc_state->dp_m_n = old_crtc_state->dp_m_n;
+		new_crtc_state->framestart_delay = old_crtc_state->framestart_delay;
+		new_crtc_state->pixel_multiplier = old_crtc_state->pixel_multiplier;
+		new_crtc_state->pixel_rate = old_crtc_state->pixel_rate;
+		new_crtc_state->enhanced_framing = old_crtc_state->enhanced_framing;
+		new_crtc_state->dpll_hw_state = old_crtc_state->dpll_hw_state;
+		new_crtc_state->intel_dpll = old_crtc_state->intel_dpll;
+		new_crtc_state->vrr.guardband = old_crtc_state->vrr.guardband;
+	}
+
 	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true)) {
 		drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
 			    crtc->base.base.id, crtc->base.name);
-- 
2.52.0.457.g6b5491de43-goog

