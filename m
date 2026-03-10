Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAc4KjwHsGlregIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 12:57:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6484724BDF8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 12:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1ADD10E6CF;
	Tue, 10 Mar 2026 11:57:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="ORJP6pik";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB0410E6C9;
 Tue, 10 Mar 2026 11:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1773143854;
 bh=q5DGgQouGWGgfcuej1E52iDtx+kNPYr3AALCQt5FiTw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ORJP6pik4mxWZMAxvvvqW03RNGWTfnDYCsgf12gqe7z50Hvoh3Zq3Os2AE9LGniSi
 b85a460PAJAXUBq3zV3hDpxKlnX2JQeyOICXCLXFlicJs/6njoBLcW5+TxEKVLPQrA
 NWRHOpq+MhOpoEXonUyRHgaZdVAmqzDKfa/J7maxafwUemHXUVcQfYqyvcIdwXjEhJ
 U0dF+qmznJqi8DqKL9rdc5+tX1OmUCXm8DiJ9TSbUCXYbYHIuxxBUGomMp0iS9VEwa
 IFXXdkfNfTYY/2UJr2CQjhRgY7XRhDz7RAIW6zeBgdcZTXxpPPpmVIKw3cKS+kCnAO
 hkUvBh29/M8UQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Matthew Brost <matthew.brost@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v7 15/26] drm/i915/display: Fix intel_lpe_audio_irq_handler
 for PREEMPT-RT
Date: Tue, 10 Mar 2026 12:56:57 +0100
Message-ID: <20260310115709.2276203-16-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260310115709.2276203-1-dev@lankhorst.se>
References: <20260310115709.2276203-1-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: 6484724BDF8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email]
X-Rspamd-Action: no action

The LPE audio interrupt comes from the i915 interrupt handler. It
should be in irq disabled context.

With PREEMPT_RT enabled, the IRQ handler is threaded.
Because intel_lpe_audio_irq_handler() may be called in threaded IRQ context,
generic_handle_irq_safe API disables the interrupts before calling LPE's
interrupt top half handler.

This fixes braswell audio issues with RT enabled.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 117b60656ca19..306b16889bc92 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
 	if (!HAS_LPE_AUDIO(display))
 		return;
 
-	ret = generic_handle_irq(display->audio.lpe.irq);
+	ret = generic_handle_irq_safe(display->audio.lpe.irq);
 	if (ret)
 		drm_err_ratelimited(display->drm,
 				    "error handling LPE audio irq: %d\n", ret);
-- 
2.51.0

