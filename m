Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0PeaIthDH2p4jQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 22:58:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4B5631F1E
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 22:57:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=google.com header.s=20251104 header.b="nANA/alb";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=google.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B13113B31;
	Tue,  2 Jun 2026 20:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f74.google.com (mail-dl1-f74.google.com [74.125.82.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B8E4113B31
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 20:57:56 +0000 (UTC)
Received: by mail-dl1-f74.google.com with SMTP id
 a92af1059eb24-137dd5100c7so4817817c88.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jun 2026 13:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1780433875; x=1781038675;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=zJgTgRqQx2xuDhvFZl206Hrb1eedIpbxJ2h+oNVKZZw=;
 b=nANA/albtkDZvYrcY3cE5TF9AEz/UZKJZ5FkUXfMZ6b9c5lkTDKMYz5LrPkD1KIC26
 OyljiD2nXOM6hQJIfWX5IVW6xfdbp58AajdfHHMVFvV1fVdeqF62AE8NOI2EAopxJyXi
 0bK53u634U3HOUMERQoZVpoPoZBLD6levVcUor5sDjGr+HqJ/Mq39wE2emJfVjZIf9iV
 poqBVUJ60UH+XVvD9js2Qj75nwyNS7nXXN2cGanSVdfQfSdaWpNwBjSVL+loWCYjlcvF
 altV97M/sMsC+0PbK/4XHLx0IbiGaMYDPxPIuEkjVzg+UrBoj36jTMEKtzCeUaAOzHhh
 6Kxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780433875; x=1781038675;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zJgTgRqQx2xuDhvFZl206Hrb1eedIpbxJ2h+oNVKZZw=;
 b=ELMH25EVqCF/g+dUTv4zAJrCf7BPpELDyoyMs9fG+bD4TOsLTzHDVA0ZUmI9f7yMg8
 7OMNKoYqziHFzXSiOM69gdMI+V3pVE4mgdxIWD8b2JAAAGac9cKmxjjac+68tVhtgLeo
 Pbx2jKM/PoRjYCeSRY6HRwtH6n8KuUAqN8PozBqzD254ton54iuPGCUpaQIZ+yk8Re/q
 YJXboRBZdxd0897oVDIkJl2YOsgUgW9yts0ppIerMikEcSobCYwwwi4PpHZztVRdMyj4
 vyUo2C9TqFCMU6u19dQF6dNXJs9NoRr/Gf/M1rnEXohY7ba5k1fiSf+Ni+YdOnDniQdH
 v7sw==
X-Gm-Message-State: AOJu0YzBbNTfHGaS1q6xC8DMzEZYQTavzZTiXDr69kEJWoiz3VUF5SJe
 znWJ7Bc4nfRNLcLf2/dOc6hmd6068uRqtZ842THlRHyA0v8/Pg3RzPc99wnIduDxpQjzDfoNOsI
 OYA2L3Kv1lza3fF16GpMETLW7LMyBYEUTKVcmdtSfmrRWeYX5OSftHI0FkMMAqv5ESeSK2iXeoC
 JM7VpqlSr7dgqr1Dl6bqFht347RUuCSaXPe7JR21YOIzeZpsKfwD/VAIDad/U=
X-Received: from dlah13.prod.google.com ([2002:a05:701b:260d:b0:132:8d92:4d68])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7023:b8c:b0:130:c9cc:3395 with SMTP id
 a92af1059eb24-137f6bcccc1mr138726c88.29.1780433875119; 
 Tue, 02 Jun 2026 13:57:55 -0700 (PDT)
Date: Tue,  2 Jun 2026 13:54:02 -0700
In-Reply-To: <20260601212613.3682640-1-jdsultan@google.com>
Mime-Version: 1.0
References: <20260601212613.3682640-1-jdsultan@google.com>
X-Mailer: git-send-email 2.54.0.1013.g208068f2d8-goog
Message-ID: <20260602205422.1792007-1-jdsultan@google.com>
Subject: [PATCH v3] drm/i915/dp: Handle VSC SDP revision 7 in unpack
From: Juasheem Sultan <jdsultan@google.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Chaitanya Borah <chaitanya.kumar.borah@intel.com>,
 Gil Dekel <gildekel@google.com>, Juasheem Sultan <jdsultan@google.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF4B5631F1E

VSC SDP revision 7 (Panel Replay + Pixel Encoding/Colorimetry Format)
unpacking is missing in intel_dp_vsc_sdp_unpack(). This causes pipe
state mismatches during state readout because the VSC SDP state is not
properly recovered when Panel Replay is active with colorimetry.

Add the missing case for revision 7 to intel_dp_vsc_sdp_unpack()
so that the state is correctly recovered.

v2: Rebase onto latest upstream
v3: Fix git commit description

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Chaitanya Borah <chaitanya.kumar.borah@intel.com>
Cc: Gil Dekel <gildekel@google.com>
Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6ef2a0043cda..b8746dab051c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5343,11 +5343,15 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
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
2.54.0.1013.g208068f2d8-goog

