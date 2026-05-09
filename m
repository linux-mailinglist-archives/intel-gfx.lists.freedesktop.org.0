Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKbrAmbqAWpamQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 653245105A1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD05510E797;
	Mon, 11 May 2026 14:40:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GqZXOw6o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 303E110E101
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 May 2026 16:24:26 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-7dbcb45153cso209931a34.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 09 May 2026 09:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778343865; x=1778948665; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LO2P0xIyQDisD90PKW6kTEf7ozKUuDCN/MlNOVEwtA8=;
 b=GqZXOw6oXghP0yIrow/tU24BgNnJyQXl+7h1EJHsugVbpI802zf1C+53cbwCAgTa7w
 r40ua542vETZ3WwwdTlgc8sP8CYQafyflucoNp6B9G8C2MjMEwlvke3Icz4Pc8jGoFwP
 k3KYuJIsa38gxqbrJNxJ68qFXz6MWWGUAM570glqJHzaKUpUS5og/uRNowXREq4Zhzmh
 LJxm1uIf4ndADEdUapWPUqVRFYb5rN9+PYqnRdvUIUD+46pjLhGTw6gaTHaXzmZeirrj
 90su9JlTGOqRqabb3KH7XAHErJafSNDX10GSoknhvUJrLIZn5q+dBRhBOXuQcJa2vWta
 YIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778343865; x=1778948665;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=LO2P0xIyQDisD90PKW6kTEf7ozKUuDCN/MlNOVEwtA8=;
 b=KxXQZ5UYZPADQPROLZQ+EFuiuRf97zxjmwi2Na6IVIjLSYya1OTMxP1Nbx8OK50537
 7eyQyNhbGlWnURwe0wVKiqQfN/KhwLsf41wR2Y+eofSqs0s192IUSJXe85JsLU0fCslj
 KRT2Ki7KySrY1jInSl95HIQf11JoEBlpDyRYfxfo43uglzlkDDhRNLaIA4L0no6N9Q+C
 K+D5QxGe7ISRErqBWebz+p+XA+9PLZhxQetF/Pu1lp8n5OaZPXQCxkXXXNQ9Lhsqu+2l
 rmGPetmN5eZK/4wv/uQAQMwAvz1sW+FuNtBgWY/bTkDzT0VWGiQs3FDnAm8JiJZT6GIC
 TkxQ==
X-Gm-Message-State: AOJu0YzMiy45G1aYy/dpt0BCPMvDy/A3WTsifHZ8WY8zB8120gKA9jgR
 G/5BfW4z+rdGdAhTB07yC+u44YKiUwbvxVpy0z5Dlir9jEuTnLmiz2tu1VrbEV/jtuk=
X-Gm-Gg: Acq92OEIgyTOWCgUXu42rd4Iw1O+na7bzlgVV6kqBjTcdkrm4qDgh1CEGiinQ4O9rpb
 /AUMssOWi+TpH938i5fdaOjTLuvcTLIuXf1zn5aA40miH1xVMFGE6C/Deb4q9uT7TS70WTv+bP2
 Wx5d0rJg4fycEZzG8Cm6z5XRRlqAKYjtTLPOQcSKzq1E4MfDyIPm86z03ViBtPtXqrSJDZ2uAbX
 4bUIVbtycxgdDrfI5Z9iiYRsNDfLiEFhDfHzHcQMWMfKrV89nEB9SGby6Ivi590eZri4pFrHfDW
 21PpaTNqEWTySqB1zhW0vpX5mzE5kcSKx0QAAEsfkeGbHOsaPLv4x12iYGJbznihtbC6kMhSKaE
 h3eFiq0LsSIwxFmdWO0AfyCCshzkIuS84F61l8aE8J4VuSH+lyGa1oMcxdanSOoQWG21Z5MzfSl
 hcrKySHJpKsnuOFfggDchmLmHsMjpbaJjy8KWtoVs2M7dcLUpsYnbGj9LM7WWkAebgafA1EzyiX
 TvZ9Fji9v+eiZharlK2aEB0
X-Received: by 2002:a05:6870:fbac:b0:434:357:6dcd with SMTP id
 586e51a60fabf-434fc418c5amr6222410fac.8.1778343865106; 
 Sat, 09 May 2026 09:24:25 -0700 (PDT)
Received: from localhost ([136.49.184.116]) by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-435571099a4sm4623244fac.7.2026.05.09.09.24.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2026 09:24:24 -0700 (PDT)
From: Aaron Esau <aaron1esau@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 mika.kahola@intel.com, stable@vger.kernel.org,
 Aaron Esau <aaron1esau@gmail.com>
Subject: [PATCH 1/3] drm/i915/cx0: check PLL ACK bit in
 intel_cx0_pll_is_enabled()
Date: Sat,  9 May 2026 11:24:05 -0500
Message-ID: <20260509162407.510539-2-aaron1esau@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260509162407.510539-1-aaron1esau@gmail.com>
References: <20260509162407.510539-1-aaron1esau@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 11 May 2026 14:40:35 +0000
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
X-Rspamd-Queue-Id: 653245105A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[46];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,linux.intel.com,intel.com,ursulin.net,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[aaron1esau@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Action: no action

intel_cx0_pll_is_enabled() only checks the PCLK_PLL_REQUEST bit in
PORT_CLOCK_CTL, which is set by the driver during the PLL enable
sequence. It does not check the PCLK_PLL_ACK bit, which is the
hardware's response indicating the PLL actually locked.

When the CX0 PHY MSGBUS is unresponsive (e.g. after a failed s2idle
resume), the PLL register programming via MSGBUS silently fails and
the PLL never locks, but intel_cx0_pll_is_enabled() returns true
because the driver-set REQUEST bit is present. This causes all
downstream state readout and verification to operate on a PLL that
is not actually enabled.

Check both the REQUEST and ACK bits so that a PLL is only reported
as enabled when the hardware has confirmed it locked.

Fixes: bf8531990380 ("drm/i915/display: Allow display PHYs to reset power state")
Cc: stable@vger.kernel.org
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Aaron Esau <aaron1esau@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7288065d2..4cacea802 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3581,9 +3581,12 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	u8 lane = dig_port->lane_reversal ? INTEL_CX0_LANE1 : INTEL_CX0_LANE0;
+	u32 val;
 
-	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port)) &
-			     intel_cx0_get_pclk_pll_request(lane);
+	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
+
+	return (val & intel_cx0_get_pclk_pll_request(lane)) &&
+	       (val & intel_cx0_get_pclk_pll_ack(lane));
 }
 
 void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder)
-- 
2.54.0

