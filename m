Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMb3FgBLDmoM9gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 02:00:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F22E59D165
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 02:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66D910E44B;
	Wed, 20 May 2026 23:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="IaSAsgwV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC1310F1A9;
 Wed, 20 May 2026 23:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TzZdEjG1qBjv/ktjs8BFwiq0Lq3CcF6q36SdstWH/7A=; b=IaSAsgwVeo471VPBhJCeTpbVsz
 b0fV4TgUBn6iVL7HZGsk7T+DD86/lGtlnPNro95tybhk0n8fGeCZFip9LPj4E+mBHyc4yHM7OlEDi
 /jeRXaxwYIoAWcjcKRJLJam00/hoQ2NGXXlDxGewXfvgVdri6Z5S+DW4wzXUtkNHs9JFaono1pHXi
 h+dDiW4fjRG0YwNyn9b41ejNWn6WJwtGa3y9SefKww61ufpcoXqxdyw5FTJzSmOnL36A5JgbjR4jL
 STB8BKfxjX2LzWle6vIWBSivz6BF8KaDdCZcgQvRONoRdvptVNnRJ7OZl5RXeLi3CfJj7+SEZ5+1i
 YYhWQtDQ==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wPqpI-00456i-CN; Thu, 21 May 2026 01:59:48 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Rodrigo Siqueira <siqueira@igalia.com>
Subject: [PATCH 8/9] drm/i915/display: Ensure only supported writeback modes
 pass
Date: Wed, 20 May 2026 16:58:19 -0700
Message-ID: <20260520235820.2313192-9-John.Harrison@Igalia.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,Igalia.com:mid]
X-Rspamd-Queue-Id: 2F22E59D165
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Rodrigo Siqueira <siqueira@igalia.com>

When running the kms_writeback test, we can see the failure in the test
invalid-mode:

Starting subtest: invalid-mode
(kms_writeback:1101) CRITICAL: Test assertion failure function do_invalid_mode, file ../tests/kms_writeback.c:469:
(kms_writeback:1101) CRITICAL: Failed assertion: ret != 0
(kms_writeback:1101) CRITICAL: error: 0 == 0
Subtest invalid-mode failed.
**** DEBUG ****
(kms_writeback:1101) DEBUG: Test requirement passed: !(data.dump_check || data.list_modes)
(kms_writeback:1101) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=5120, height=2880, format=XB24(0x34324258), modifier=0x0, size=0)
(kms_writeback:1101) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=6, pitch=20480)
(kms_writeback:1101) ioctl_wrappers-DEBUG: Test requirement passed: igt_has_fb_modifiers(fd)
(kms_writeback:1101) igt_kms-DEBUG: display: commit {
(kms_writeback:1101) igt_kms-DEBUG: Pipe A: Setting property "MODE_ID" to 0x1b8/440
(kms_writeback:1101) igt_kms-DEBUG: display:     Writeback-1: preparing atomic, pipe: A
(kms_writeback:1101) igt_kms-DEBUG: Writeback-1: Setting property "CRTC_ID" to 0x97/151
(kms_writeback:1101) igt_kms-DEBUG: Writeback-1: Setting property "WRITEBACK_FB_ID" to 0x1b9/441
(kms_writeback:1101) igt_kms-DEBUG: Writeback-1: Setting property "WRITEBACK_OUT_FENCE_PTR" to 0x7ffdb79337b4/140727683332020
(kms_writeback:1101) igt_kms-DEBUG: display: }
(kms_writeback:1101) CRITICAL: Test assertion failure function do_invalid_mode, file ../tests/kms_writeback.c:469:
(kms_writeback:1101) CRITICAL: Failed assertion: ret != 0
(kms_writeback:1101) CRITICAL: error: 0 == 0

Notice that the test is trying to set up 5120x2880, which is outside the
Intel writeback mode. To address this issue, add writeback mode
validation to the writeback atomic check path.

Signed-off-by: Rodrigo Siqueira <siqueira@igalia.com>
---
 drivers/gpu/drm/i915/display/intel_writeback.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 9808ee2092ef..2c641ec09287 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -226,6 +226,9 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
 	    fb->height != crtc_state->mode.vdisplay)
 		return -EINVAL;
 
+	if (intel_writeback_mode_valid(connector, &crtc_state->mode) != MODE_OK)
+		return -EINVAL;
+
 	ret = intel_writeback_check_format(fb->format->format);
 	if (ret) {
 		drm_dbg_kms(connector->dev,
-- 
2.43.0

