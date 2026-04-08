Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFCDCqMV1mnwAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:45:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD873B946A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C1E10E596;
	Wed,  8 Apr 2026 08:45:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ch1ehORK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E936710E599
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 08:45:17 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id
 6a1803df08f44-89fc4147f2eso74895166d6.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2026 01:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775637917; x=1776242717; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=3lr+SQhutbSWGABS7oQ2OjJMnCc+Y1xCXHP8EbLYn64=;
 b=Ch1ehORKhIcyC14cSR/WO7bL4FBH6PadmhAIO3BLfGMf8X8r58JJY8F6idH4paX2VU
 lpESWUfZBDdWjNmD9segymcehWLh6CexXRAkTxSIlKPINC0xtJYaQBvKb02GqJwZHGUB
 jdhMD2b/jmx5fp0ycdB2CrWUnKWtuwo2Ds2+pkjSMvQ9h8Fam3NlnzcNciSCibRT/HU8
 dv3CHp3sfsBx0LOtpep0vvqP3eyRqAkjgjohbytfZUYfTHM6ATetiYTa/Cz7ZX4Cvtbt
 H79aWDJK8qim53pmZDYDSdPQbkka9Mv735tdKddA8ELMq/vIGe89INytrV2asmcANH/2
 km8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775637917; x=1776242717;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3lr+SQhutbSWGABS7oQ2OjJMnCc+Y1xCXHP8EbLYn64=;
 b=p3P6h8JCJPzeEsoigaw6qH21u23KLyUoCuEvw/tA+G8b5Bdul/SVAXkOPH/D6VXhN7
 2UEAQnAp/uS7Kd1grIk7RJD2Bns92YmMVo70C83w42p9w5ckWvTlc1WX8I2WdbsZLMhc
 A3KNvMvMRq7YPTvCtiAxRZkKL9BOoNNLGw+SG9WYSqEbm1koca4I6rHZQgc+1r4xnbi+
 VH2K5AeZVmsLvilBeO94BJ0jlqfpEcdU84/sywYV+48tbqwB/tsyOFj4ibtsCDgA4mW3
 cd3nTjmhoK8DzY5TNh2+tlpSugWcirqqFQadTGht5dFXDdsaVAjC7gdNJcbBljgchXTe
 NSrA==
X-Gm-Message-State: AOJu0Yy864nLdiN4QU37lR3Gl6T7AI5yJhyUVYsV6KrUo02SfSN2Rj8D
 Ty7vmmCGjDzIcPmNpfmHtF8inQHqoEHZ41pLMGVyrVg0kzDgujmmsG3R
X-Gm-Gg: AeBDieuXirblx191fOtLBe0pmzx4YziKKDvJlm/+uv6EolB2WjHob0SmAULwEiFCxym
 pbvJmQY9BhmLrgLoIcrP1Zi+mCGFxIMv7SVCJ5U4uxSejdq+DpmgNHRXcikxj9C0kfp0bYju4xl
 xPRWAkKqotUtV6TedxuAOd3JZUhtER7QL5xrH92k08gbaWjuhJfMSfL2Vg7D8GGQo154YuZ8nb3
 RVG/cCplKHIyM++Gk64GYpdwxdFGS6/3fnJXG+VCFSsLT7Wu4v1LWPZw1Zwj8RU29naMKdxf3o5
 kuge6pS8AtS7Y505BTjdRsds1BYjctiCnvcuNwqZU3N9HWpsi1ex7LJ5kUdw4V8qEAsduP/H+Te
 IDGXN6XMar/LhUyA+NU4V8I7/PBAZBCz/GbJwMX7aeTCA+Kxu/nUsZOYEe6TCxlmXz9+yalqY/Z
 foW5H8YMekJ1t0LtpT
X-Received: by 2002:a05:6214:468c:b0:89c:e4c3:dc2d with SMTP id
 6a1803df08f44-8a7022bbe6amr337024886d6.2.1775637916961; 
 Wed, 08 Apr 2026 01:45:16 -0700 (PDT)
Received: from localhost ([2001:67c:1562:8007::aac:4468])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8ac56e3a898sm39028506d6.38.2026.04.08.01.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2026 01:45:16 -0700 (PDT)
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/dp: Clear accumulated HPD events after link training
Date: Wed,  8 Apr 2026 16:45:09 +0800
Message-ID: <20260408084509.555045-1-acelan.kao@canonical.com>
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
X-Spamd-Result: default: False [3.89 / 15.00];
	DMARC_POLICY_REJECT(2.00)[canonical.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,canonical.com:email,canonical.com:mid];
	FORGED_SENDER(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.893];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: CDD873B946A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

After link training completes, intel_dp_stop_link_train() calls
intel_hpd_unblock() which fires all HPD events that accumulated
during training via queue_work_for_missed_irqs(). On MST hubs that
generate rapid short HPD pulses (observed at 5-55ms intervals on
Dell U2721DE with Realtek MST hub), this creates a burst of stale
ESI processing that races with the ongoing modeset pipeline enabling
the 2nd MST stream, resulting in a GPU hard lockup.

Use intel_hpd_clear_and_unblock() instead, which clears the
accumulated HPD events before unblocking. These events are stale
since they reflect link status before the successful retrain. Any
new HPD events arriving after the unblock will be processed normally,
and the scheduled link check (intel_encoder_link_check_queue_work)
provides a safety net for detecting legitimate link issues.

Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a26094223f780..4de2b3d3ea21c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1267,7 +1267,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
 	}
 
-	intel_hpd_unblock(encoder);
+	intel_hpd_clear_and_unblock(encoder);
 
 	if (!display->hotplug.ignore_long_hpd &&
 	    intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
-- 
2.53.0

