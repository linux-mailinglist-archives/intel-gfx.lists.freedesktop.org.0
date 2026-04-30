Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCp/JdXh82mG8QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 01 May 2026 01:12:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1CD4A8B5A
	for <lists+intel-gfx@lfdr.de>; Fri, 01 May 2026 01:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F1710E49E;
	Thu, 30 Apr 2026 23:12:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="vIOayJr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f202.google.com (mail-dy1-f202.google.com
 [74.125.82.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B60CF10E49E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 23:12:18 +0000 (UTC)
Received: by mail-dy1-f202.google.com with SMTP id
 5a478bee46e88-2eaf70f3b5fso1671727eec.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 16:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1777590738; x=1778195538;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=gzcblbbyW/9Vt3MC2YWCOLen+ddxbB7SpVukBwecwdE=;
 b=vIOayJr1Cc7tWyOhOlP9Prv1q8AdBXMBmizJCZdxt9+6NggU/WHu7lJpxIfN5nGt+l
 8A+Ducg5jPIAavINkj8iF8E2z0c/n3BXZI51K1H42BTkd2ak6HH6JwTgjtkzBFu6P4mz
 acA1RW1DwbqaKsbtogL/7zermVwM1zFSryfbpWn2DvxXTVtKFzSjSr5XVjT67dbEjJDL
 0G7ZFY8zA/DEEKN02tjqrFVwLid06PoYFv+2HAy1aOyxjsZQBzPykZpjtcGnx4kw0fZF
 XFfi0TQc3metntEZb7DY8+14Nrd7p+wQi6XdzDg3rNqMDQtxaJdDEUY/gXd6GIsrfvY+
 SUzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777590738; x=1778195538;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gzcblbbyW/9Vt3MC2YWCOLen+ddxbB7SpVukBwecwdE=;
 b=QUyuhw0KPTPO55AedJcgI1faxC4jAmhLTFHHWonlLik2esCoDUI0PcIsDxGopY0Ywr
 0ECnExe0ssZQlF4mYDhPKbyRdYNXLI2Z+ymIHCb0hCAdmOt9Yivh9asHwwyy7h0vAOqa
 Z1ZyWU9i7slNLvSrUcmT/6OdIVFbPayZvwNk8W0j3FbnxAIRB0bM4JnxaimsoXmwT2Kr
 CRkVpvalEA0hhPNljz/H0nmmqjSIVwhblN5k2J9hwAFVW7Vlx7lys95ZkeFgXHLW3qp7
 1+fjmuBo77lYi/UoG0J9upUvI/U0RQLYIPkP0L5hRKS0BqjQcn5ApE3qGoYPf96F34FT
 CR0g==
X-Gm-Message-State: AOJu0Yz86DLOGND1FH9LsNaMsebBG/Fhub62ftTl1QB342L9lgov9oxw
 WxWCCJTSNuDDpwKBDDQe+y0EmA9RNGTBynlFyCkAn1Bh9w99rqUILDXQrPHl4HT8may46W4Qnzq
 LyJWeKqVhDgoMWgSMqO3oYqej9FLdx0nuhrfX1oUPaCZQ48bBOkVwI41RNn/8VPrEf05ny4Vj30
 n1cJb4UEkwHXDO6u0R+99SMvLTgJBOD3rPNbd5/70ZKrgOryG0faXYzvxQ8Kw=
X-Received: from dycqw28-n1.prod.google.com
 ([2002:a05:7300:c01c:10b0:2d9:9fa3:5aa6])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7301:608b:b0:2da:1a81:588 with SMTP id
 5a478bee46e88-2ed3c8cb783mr2412425eec.14.1777590737499; 
 Thu, 30 Apr 2026 16:12:17 -0700 (PDT)
Date: Thu, 30 Apr 2026 16:12:04 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
Message-ID: <20260430231206.772649-1-jdsultan@google.com>
Subject: [PATCH] drm/i915/dp: Handle VSC SDP revision 7 in unpack
From: Juasheem Sultan <jdsultan@google.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Manasi Navare <navaremanasi@google.com>, 
 Sean Paul <seanpaul@google.com>, Juasheem Sultan <jdsultan@google.com>
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
X-Rspamd-Queue-Id: 0B1CD4A8B5A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

VSC SDP revision 7 (Panel Replay + Pixel Encoding/Colorimetry Format)
unpacking is missing in intel_dp_vsc_sdp_unpack(). This causes pipe
state mismatches during state readout because the VSC SDP state is not
properly recovered when Panel Replay is active with colorimetry.

Add the missing case for revision 7 to intel_dp_vsc_sdp_unpack()
so that the state is correctly recovered.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4955bd8b11d7..d691c99e2dec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5338,11 +5338,15 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 		 *   VSC SDP supporting 3D stereo + Panel Replay.
 		 */
 		return 0;
-	} else if (sdp->sdp_header.HB2 == 0x5 && sdp->sdp_header.HB3 == 0x13) {
+	} else if ((sdp->sdp_header.HB2 == 0x5 || sdp->sdp_header.HB2 == 0x7) &&
+			sdp->sdp_header.HB3 == 0x13) {
 		/*
 		 * - HB2 = 0x5, HB3 = 0x13
 		 *   VSC SDP supporting 3D stereo + PSR2 + Pixel Encoding/Colorimetry
 		 *   Format.
+		 * - HB2 = 0x7, HB3 = 0x13
+		 *   VSC SDP supporting 3D stereo + Panel Replay + Pixel Encoding/Colorimetry
+		 *   Format.
 		 */
 		vsc->pixelformat = (sdp->db[16] >> 4) & 0xf;
 		vsc->colorimetry = sdp->db[16] & 0xf;
-- 
2.54.0.545.g6539524ca2-goog

