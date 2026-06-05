Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6eCGKYG/Imp4dAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:22:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD88648122
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:22:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=VotzUqye;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF3111A7FF;
	Fri,  5 Jun 2026 12:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF3DE10E469
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2026 06:07:50 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-2bea7176c72so10203135ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2026 23:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780639670; x=1781244470; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=M5WkcatAHhLMBNeD67NubkG9Mg0FFDk4z9wml5JZOUU=;
 b=VotzUqye4l8ufsB0FJ8tEP7J+6cOElz5twrd8zV4DPpK/zK1E1ttRIrbeIrBIGCxv0
 2F3yleNhIa43o/iPh9dVPdjrFasLMXzfv+9bDEXbYSQtC09FvxBnC/vYjE3AD4MlDpbr
 iE5F2PwXU/0QWKjRlJDMgl5aCsqOqQWalXbP0WPHEYDBHdPU+T+Tv168u0sR8OLljtxs
 +3olFCZFSZpekkp9Mh3GpoE+3GcHUJE70pXX2os2VxIfhE/tv4tDuvc0e73PoZNNaKkB
 3GaDmkYG6pUMZRAo+Dq0WsDhm6tSjBMLKMY98fHpnmGXxE5KeiNIqQQw5YTkE2H4nXiE
 FAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780639670; x=1781244470;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=M5WkcatAHhLMBNeD67NubkG9Mg0FFDk4z9wml5JZOUU=;
 b=jLe/jPvzsRjwcmZI/P/QrqN9NkFOubxJ7ONy/X2dddLqKH21BqB1JagdhYqdRGIdOs
 Knj066P+O6BSWY9HkFhzlYOjJAga6dIH1VMvnyIH4yHv9Z7X7I5dq0wTBDm0abpB9EMz
 n0EjxxFpxRtaS5Uza4wntaetTMwaDqpi/heJJD3gunxYp/t65SsP8pA20UryfH3R1bBt
 RhU2XGZbCmyy2nUbG7kv5PWiib32+I6pNsaWzHNFIS1zCdQq7s+NiRq2n0Oh935lW2Xw
 0fMC6MYf6tIk6IpkIuZIDZ/E/2MxA5TwdUhzcI4za4Eq8N9e4sVQTVInTzRqq6pfJxNH
 epbw==
X-Forwarded-Encrypted: i=1;
 AFNElJ9fW+Z70Y5zQngj92lQZ07MROMVEvUSuWoOJVobznW3PDdSLzr3wdSCGhtlwJnCxOpos1YR9LdN2fk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyVkqkx9WMc7Ivr2LF1/Y+sD+DOBivtoON8zUOwxbStEoo5C+si
 /Vc2OcmJXaF4fDH/BCDbf79AhJ0qFkSzGGcoQDdzySw47DjuXpT65lKN
X-Gm-Gg: Acq92OHMxcPR+XS/bzisdPbvJIaXVI9xTua0V3FA/AqKPVoAEVAZMnhn1RalLzoBjJD
 eWRCnkj433faI0BlSkfICRJaziptky2EWpmNY2iAmkpy4EfTXoFeFhkJ8Nz+GUikPfPKVPEgY+d
 fwU+3gv5A2mmPitCYdPCnmRM9bImrpGE5SJLixC435BIpf+CLF9ykXxt/Xi4YeQ1JHk0zW0fTFH
 DdFG128YEwngR85f7gAYN75WkfZ9JGli1TmbKye1XgNsZ3bLcvzMrxLBb3HZ6+paNm57cFrb+HB
 F1ZB+AUkyBjqlg8+YskZE6JLrbeZ/lgYxvKosqgaf4OCgfqyHl3U8AGU6xxg3M5LNnWCrUvlW62
 C4fsek8n1PdLuPJnD51Buuqsup0CSZ/qyu8ThGJIU18O1cGJv7i+TC45HPF2m/zCkbcPPfDrzmO
 pgrLZQvq7TJCD34POB
X-Received: by 2002:a17:902:fc46:b0:2c0:b9a1:6493 with SMTP id
 d9443c01a7336-2c1e7b082b4mr20237105ad.10.1780639670162; 
 Thu, 04 Jun 2026 23:07:50 -0700 (PDT)
Received: from lgs.. ([2001:250:5800:1000::f280])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2c1646e5c51sm77298475ad.0.2026.06.04.23.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2026 23:07:49 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Imre Deak <imre.deak@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>
Subject: [PATCH] drm/i915/dp_tunnel: fix CRTC hw state cleanup ordering
Date: Fri,  5 Jun 2026 14:05:27 +0800
Message-ID: <20260605060527.1443552-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 05 Jun 2026 12:22:20 +0000
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:imre.deak@intel.com,m:uma.shankar@intel.com,m:michal.grzelak@intel.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:lgs201920130244@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0CD88648122

intel_crtc_prepare_cleared_state() frees the old CRTC hw state before
calling intel_dp_tunnel_atomic_clear_stream_bw(). The latter can fail
while looking up the DP tunnel group state, for example with -EDEADLK.

If that happens, the function returns without completing the cleared
state preparation, leaving the duplicated CRTC state with its hw color
blob references already dropped. The failed atomic state will then be
cleared by the atomic core, which can drop the same references again.

Move the hw state release after the DP tunnel stream BW clear has
succeeded. Keep the temporary state allocation before the failable DP
tunnel operation so an allocation failure cannot happen after the stream
BW has already been cleared.

Fixes: fb69d0076e68 ("drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state")
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ad2fe10b6b1f..0c015bc6c9fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4646,9 +4646,6 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 	if (!saved_state)
 		return -ENOMEM;
 
-	/* free the old crtc_state->hw members */
-	intel_crtc_free_hw_state(crtc_state);
-
 	err = intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
 	if (err) {
 		kfree(saved_state);
@@ -4656,6 +4653,9 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 		return err;
 	}
 
+	/* free the old crtc_state->hw members */
+	intel_crtc_free_hw_state(crtc_state);
+
 	/* FIXME: before the switch to atomic started, a new pipe_config was
 	 * kzalloc'd. Code that depends on any field being zero should be
 	 * fixed, so that the crtc_state can be safely duplicated. For now,
-- 
2.43.0

