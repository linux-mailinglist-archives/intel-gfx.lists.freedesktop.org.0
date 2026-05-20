Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HcLJ/VKDmoM9gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 01:59:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 711CB59D140
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 01:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE67610F1A6;
	Wed, 20 May 2026 23:59:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="RpURz9q3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC8C10F19E;
 Wed, 20 May 2026 23:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o0fJPbvAKGHOnCDTDq7ULeMlMC+anyrI+jJXLbe2StY=; b=RpURz9q3sgRjFKn1hsogYtdrym
 H5xojogjjCUUsdoJAZ9HXnh+Z5IeVDBynnr0n249xAfRQuQ+hAN22Ps9cKR2hEd57Nh7xhUgch5gQ
 Q7QzNufzNid5uzEm0762RJlV1Pdt6bLgL534Bq9zh3b5bOyXmTigIUPG3hCBOKxBmr4WFC0gG9U3R
 NLKT/QekGZ3t68vI1ShuABbbkpLQEQD0Q96cZ2ZnWlMXhMOgNbwOn80iUALpIvlrOv6v4N+QA9Rd6
 ThSmXXnZFerJyld9O33RYSK52V1lllIcJTKDiNQvBNV3accQqLGKEUDSDkVvIk2Nn3zPL8x4ClFJd
 ej0lkmMw==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wPqpE-00456i-Vs; Thu, 21 May 2026 01:59:45 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915/display: Fix vblank wait timed out with writeback
Date: Wed, 20 May 2026 16:58:17 -0700
Message-ID: <20260520235820.2313192-7-John.Harrison@Igalia.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.992];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,Igalia.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 711CB59D140
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When running kms_writeback, the following warning pops up:
[  +0.000015] xe 0000:00:02.0: [drm] vblank wait timed out on crtc 0
[  +0.000014] WARNING: drivers/gpu/drm/drm_vblank.c:1320 at drm_crtc_wait_one_vblank+0x179/0x1e0 [drm], CPU#7: kms_writeback/1191

Waiting for vblank to ensure configuration changes have taken effect
is not a relevant concept for writeback connectors. So just skip the
wait when configuring writeback.

Signed-off-by: John Harrison <John.Harrison@Igalia.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 03de219f7a64..fe3384f1aaa8 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -33,6 +33,7 @@
 #include "intel_sprite.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
+#include "intel_writeback.h"
 #include "skl_universal_plane.h"
 
 static void assert_vblank_disabled(struct drm_crtc *crtc)
@@ -65,6 +66,9 @@ struct intel_crtc *intel_crtc_for_pipe(struct intel_display *display,
 
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
 {
+	if (intel_writeback_transcoder_is_wd(crtc->config->cpu_transcoder))
+		return;
+
 	drm_crtc_wait_one_vblank(&crtc->base);
 }
 
-- 
2.43.0

