Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBw9OPJKDmrL9gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 01:59:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B96AE59D11B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 01:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1F910F18E;
	Wed, 20 May 2026 23:59:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="rgQP5YwX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8D210F18C;
 Wed, 20 May 2026 23:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oOHCC0oyTDuvn33q6C9NcT9SfiMKm4MmWdbvyY4b3pw=; b=rgQP5YwXPB/YvfTqu1AIeU3X9+
 hdsCZVCUibQNOiNaoMMDNUJKjFfvxnvLfMlquv5d/LXSGVjyOzr8B2ahPGcF5DUSHi60+wEebVfbj
 /C2FYATX8NeX2xbNkmF0PEd3mNpI1QcGfUVsODK/rFnGmp6+DSgZt40jI3agqh1shPiXTePqEz5L0
 5Gl6TS9Y45UwFb6hYAjQFEgjmRY1F41lWN9ICPEWYL5oLLkREH9AKiSbkXuDDsmhXNDAZLRHP2ej1
 SnKRJyNJ9H+i9cZ8/jfpC+jC9XgeoCOka1deH0HHBc9CjS5JgvUZcCHbToy5W5bQxCU+lLeEnfnVs
 wZM+SRYg==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wPqpA-00456i-5N; Thu, 21 May 2026 01:59:40 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915/display: Fail writeback setup if no transcoder
 offsets defined
Date: Wed, 20 May 2026 16:58:14 -0700
Message-ID: <20260520235820.2313192-4-John.Harrison@Igalia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.997];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,Igalia.com:mid]
X-Rspamd-Queue-Id: B96AE59D11B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for writeback transcoder offsets for DG2 class devices.

If the transcoder offsets are missing for a given device but writeback
is enabled anyway, the failure mode is non-obvious. Rather than giving
any kind of error, the setup completes successfully but then timeouts
are seen when trying to use the writeback output followed by
inconsistent state errors. E.g.:
[May12 09:20] xe 0000:00:02.0: [drm] *ERROR* [CRTC:151:pipe A] flip_done timed out
[  +0.000003] xe 0000:00:02.0: [drm] attached crtc is active, but connector isn't
[  +0.000003] WARNING: drivers/gpu/drm/i915/display/intel_modeset_verify.c:59 at verify_connector_state+0x208/0x3b0 [xe], CPU#5: kms_writeback/1203

To make the issue clearer, update the transcoder configuration to fail
if the necessary offsets are not configured. That forces the atomic
mode set to fail and writeback just can't be used. Hence no kernel
ERRORs, WARNINGs or timeouts.

Signed-off-by: John Harrison <John.Harrison@Igalia.com>
---
 drivers/gpu/drm/i915/display/intel_writeback.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 2fd49405c0b6..064c6ff5bc73 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -465,9 +465,10 @@ intel_writeback_compute_config(struct intel_encoder *encoder,
 	if (!conn_state->writeback_job)
 		return 0;
 
-	if (HAS_TRANSCODER(display, TRANSCODER_WD_0))
-		pipe_config->cpu_transcoder = TRANSCODER_WD_0;
+	if (!HAS_TRANSCODER(display, TRANSCODER_WD_0))
+		return -ENODEV;
 
+	pipe_config->cpu_transcoder = TRANSCODER_WD_0;
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_WRITEBACK);
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
-- 
2.43.0

