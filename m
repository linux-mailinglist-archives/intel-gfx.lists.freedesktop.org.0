Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCNeLAaE0mliYgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 05 Apr 2026 17:47:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DAA39EDFC
	for <lists+intel-gfx@lfdr.de>; Sun, 05 Apr 2026 17:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D576810E180;
	Sun,  5 Apr 2026 15:47:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LaDYnW/r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF8210E181
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Apr 2026 15:47:14 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-488b0e1b870so3621145e9.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 05 Apr 2026 08:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775404033; x=1776008833; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=lB+a99wJ5dswQkzQkoOsmekXtXL1XOz/X3cfxAbGqiM=;
 b=LaDYnW/rpoTNyZHDJt1Gqeua2qqwK2ekrpzVQvQMHYsMUKrYA9URoRRAYSs0jikty+
 17Y027gbwXfSU2d2RraTQkl8BAISxynu5itTB5vxZqS4uVeZi1eswaFj/44hBggqQ4fW
 6Ff1aanVe9+wSlidBLWixdbvs/Qg0mlv2hyi45ZTDjTS3U5HH7MvXnehYNEWljs4Awff
 7aOsxbAP8ZIek7OM0DGKR90GJDTKHfgVaDC7uijnzKi7fzj6Wzpm+nfSg2X+qXST9QDf
 CgQt4+pW+WsWPiLhntvqTPXhApN7ymVSyWxpzBArU9IVDYMvfAYNoPHwYTuNOa2XzFNx
 B2qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775404033; x=1776008833;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lB+a99wJ5dswQkzQkoOsmekXtXL1XOz/X3cfxAbGqiM=;
 b=k85Cvby1+Cb8pVSP/lVLAATrUN5W61uG6NhmGN5tX+nDBBYTTMOQwK+4rdpdPpYdNq
 L8g5z92SXJFQibC0zxlgzig0KGTLZ+W1SzhxLuzDRkrpp42T22XfPXY9jgIxvRO2bwMH
 RzSnfoyDQr7BZ8u/nbAz8mOdpQjfj6QuKnzA9HUHhm4PbhCbT7z8MsS3ilYP2i2j1pus
 3j363OD0xdXWp2cd3kAQ4JjghZJxfeKD6lU9zKz2lSVOr14y1z18nzX93cTbF/kl5lPz
 zmYriz21zUKV47JeHXAHExEYB9hzDA8Ha3Gt8JNwYXR+bzjFTWN0wMQwISstrQ9oLtzJ
 Chag==
X-Forwarded-Encrypted: i=1;
 AJvYcCWJC3yG0QXzJLLgQXoNAojJ57ZeJ7N1e9GB0lc9AmkaLtcFvOew04PLbxMxHkAlh/IeLLNAZSR1uIM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw4bg1nJApj7wcGWDpTtMxLGu3AZWY3rZKwJddhdw7Iq5o2Q7HU
 sYHY4zco6uw7wW9dz0RfJSuES/r1jl8ZRW/pe8CcIReHVnAyaH8wNCzQ
X-Gm-Gg: AeBDietNDo52Q6CA+29dSEDIQRt+2TtCMfq+RqbljB30Lz93vw5KpOI5L+FyDp7zM1q
 ZBw73QU00nrDLMikUHxIpJYbv06bXJ8e5ctAbV21JAlRCZx+h8ACPz32qsuRE7QztYI56eupr+Z
 KopUpsAyegT+O8Z9COJJzFNllBBZe/yPYFjAc/YrUI9YQ1iMXR2poqsr3lr02sCuBfIRZLhVxL6
 ICcDAlku94ABAJxNtT0mLKaNMPVUVzIfFqWlan0VEpZDB7b+nkh4aQe6NV9x3NROnF4drK3nDPl
 KaSjTc5kM0gD/R8hnF+ng9gqUHNZ2h/F/mibKRZjcLD3it7RYRTN4VZNOEeoTnojgPLFo8fCxeq
 rBKXDvQ17uKkl2QBT56A9bAvlDJXKfUMVgI/GtS0FYcQaxWwQS8fKJAWcKp/j7ESPTO1JAgFKyR
 1UGeSoisgtPhU2Mx+5MSIfA6EUoplxLq8VM5cSBmGlv7bkA/k/FhTUuZEjmkrhkZswjq2UHHkJA
 op0p+VxesS3
X-Received: by 2002:a05:600c:3b23:b0:488:869c:edaf with SMTP id
 5b1f17b1804b1-488996df052mr128364685e9.8.1775404032826; 
 Sun, 05 Apr 2026 08:47:12 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d1e4f52easm34255338f8f.36.2026.04.05.08.47.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2026 08:47:12 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Matthew Brost <matthew.brost@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Carlier <devnexen@gmail.com>
Subject: [PATCH v3] drm: use get_random_u64() where appropriate
Date: Sun,  5 Apr 2026 16:47:10 +0100
Message-ID: <20260405154710.4638-1-devnexen@gmail.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:thomas.hellstrom@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:matthew.brost@intel.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:devnexen@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[devnexen@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,ursulin.net,gmail.com,ffwll.ch,intel.com,lists.freedesktop.org,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[devnexen@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 05DAA39EDFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use the typed random integer helpers instead of
get_random_bytes() when filling a single integer variable.
The helpers return the value directly, require no pointer
or size argument, and better express intent.

Signed-off-by: David Carlier <devnexen@gmail.com>
---
 drivers/gpu/drm/i915/i915_hdcp_gsc.c | 2 +-
 drivers/gpu/drm/xe/xe_gsc_submit.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hdcp_gsc.c b/drivers/gpu/drm/i915/i915_hdcp_gsc.c
index 168b9ccbef3e..a0510f5ab25c 100644
--- a/drivers/gpu/drm/i915/i915_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/i915_hdcp_gsc.c
@@ -196,7 +196,7 @@ static ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_contex
 
 	memset(header_in, 0, msg_size_in);
 	memset(header_out, 0, msg_size_out);
-	get_random_bytes(&host_session_id, sizeof(u64));
+	host_session_id = get_random_u64();
 	intel_gsc_uc_heci_cmd_emit_mtl_header(header_in, HECI_MEADDRESS_HDCP,
 					      msg_size_in, host_session_id);
 	memcpy(gsc_context->hdcp_cmd_in + sizeof(*header_in), msg_in, msg_in_len);
diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.c b/drivers/gpu/drm/xe/xe_gsc_submit.c
index 08082b596501..195f99e6c3a8 100644
--- a/drivers/gpu/drm/xe/xe_gsc_submit.c
+++ b/drivers/gpu/drm/xe/xe_gsc_submit.c
@@ -49,7 +49,7 @@ u64 xe_gsc_create_host_session_id(void)
 {
 	u64 host_session_id;
 
-	get_random_bytes(&host_session_id, sizeof(u64));
+	host_session_id = get_random_u64();
 	host_session_id &= ~HOST_SESSION_CLIENT_MASK;
 	return host_session_id;
 }
-- 
2.53.0

