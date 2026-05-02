Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMa3KoGU+GnnwgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 14:43:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 642CB4BD19A
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 14:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC53D10E6A8;
	Mon,  4 May 2026 12:43:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j307ZgTb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD1989CAD
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2026 19:19:53 +0000 (UTC)
Received: by mail-vk1-f173.google.com with SMTP id
 71dfb90a1353d-56d933b555cso886598e0c.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 02 May 2026 12:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777749592; x=1778354392; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=x2r10uGrKHV33PsNUv9ruSE933g5xqNd7qcsNOcjvJI=;
 b=j307ZgTb/eHyCu7LDK/3pgBziFtCKVZgWZRlCko5ra/k03cwNDClc5C52ssKI0fNK9
 B8MhTYFv5wZtPcuFAM6ZARxy7m9wkRPbvREjP9QWyOpBNDSmIWxNLGCatzJ7smHZba8/
 uk/HkGLyqQCJDbz/cQXVTF+25NMqkmXCEHqOhUUoTNP2nYLy5PCRHtlq+7c28Y3WUqC6
 pCRKdrY+hxMyz1q+YFG/9y5KqVKFbfK4FoIUUWsImzJNdd0PgFx/r6g4k3oz+ui+ImBZ
 ss9+ExdK4zp3cKRHjas8c2rO1sqaCCUCXtrBQQtuGDgzeQ1dqS+k+CSQwGTuqPPklGey
 J1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777749592; x=1778354392;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x2r10uGrKHV33PsNUv9ruSE933g5xqNd7qcsNOcjvJI=;
 b=EA7bCh5EmTmHps23bfzDGl/aQzEZd8+/3/IXbW3+o9ufG7HsrVQXxj5KzCrxEV1ec6
 alwR61nfrc5lEesYDUy6U4teZW7iq2vc1+aHKkl2z4fVtsHrGyr0KwcB5akSxY8yaed8
 wTO1a2NnTApWD+BAh6qD738o767tppvRbHwtjhwgwm/+I66ycSdnJlK4ys5taie+ywGR
 BAcmfRGEWSXYKebo47jHWQLek9sSW7ShTEDcgAClE6S9avz2ig14qHZ+3zFMhl0OwQ2q
 D9+c0qZcQuqsUm/MQIawzx8OA8Tw7wC3broNK/gb/Uu09wwni6KTIGl7NqaoO0PI+C9k
 DvvQ==
X-Gm-Message-State: AOJu0YxT3AhSHp7xXtjlfSEmVl0TLyzfrTCF+A+LuSxOjmwqFuSll6OB
 NalHnPeNNf7S9WEYLueeBaBbQbFdfIUzRx+Gl8Qy+98ahaqh1CeAoHoC
X-Gm-Gg: AeBDiesMt6HSuUuKo7u4qaCjTgy5QWrchVONeRPUHKaocNmwuSUfp5MkfML2HQvEsfS
 tU8zRsBU7zwWN5uZtp21v6E9YjueiSa8kw8cQ4OI51jxZVFzWV3d8Og5l9/WH2WJV14IcSVPFb9
 3OisTZmJe/lln00LmtShGVuT9b2esas0nRPxFGankCR+7fu2GWXJYbU0k8km97F49LybUNxBk4o
 0iJDnysmm6PG64eVn3S2goyn9g3ngjhz4nn+US+Z04kTV8aQef+pdtir5TQNpiHLH2nXlt0hPJA
 pqbJ3XxudXXVcEZgRtgzDaO/kltadZpkk7Ped4QS8U0TvHghHxzV898KnI5CppkySAG3pKpp/8f
 u+SwuXO2LfOUL1aZxr5SXFMRe8DoSrQ0kSV7dbXrXLgrBGpHWQPVDX2wwUE1KCSEn+MDcLsAQSB
 Im9yKMX0VyJKK/n2CX5szkpM7nl8Vfwu323Hv1oQ==
X-Received: by 2002:a05:6122:1d0b:b0:56d:b50d:3ee7 with SMTP id
 71dfb90a1353d-5750c4b4e2fmr1896410e0c.2.1777749592357; 
 Sat, 02 May 2026 12:19:52 -0700 (PDT)
Received: from nixos-office ([129.222.53.215])
 by smtp.gmail.com with ESMTPSA id
 71dfb90a1353d-5749f7e8c25sm3474641e0c.2.2026.05.02.12.19.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2026 12:19:50 -0700 (PDT)
From: Julian Braha <julianbraha@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Julian Braha <julianbraha@gmail.com>
Subject: [PATCH] drm/i915: replace select with dependency for visible
 DEBUG_OBJECTS
Date: Sat,  2 May 2026 20:19:32 +0100
Message-ID: <20260502191932.4491-1-julianbraha@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 04 May 2026 12:43:41 +0000
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
X-Rspamd-Queue-Id: 642CB4BD19A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	DATE_IN_PAST(1.00)[41];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:julianbraha@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.494];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

DRM_I915_SW_FENCE_DEBUG_OBJECTS currently selects DEBUG_OBJECTS even though
DEBUG_OBJECTS is visible to users. Other config options use 'depends on'
for DEBUG_OBJECTS, so let's do the same here.

This select-visible Kconfig misusage was detected by Kconfirm, a static
analysis tool for Kconfig.

Signed-off-by: Julian Braha <julianbraha@gmail.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 52a3a59b4ba2..028a2c97361d 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -153,7 +153,7 @@ config DRM_I915_TRACE_GTT
 config DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	bool "Enable additional driver debugging for fence objects"
 	depends on DRM_I915
-	select DEBUG_OBJECTS
+	depends on DEBUG_OBJECTS
 	default n
 	help
 	  Choose this option to turn on extra driver debugging that may affect
-- 
2.53.0

