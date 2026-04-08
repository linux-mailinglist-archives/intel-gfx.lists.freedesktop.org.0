Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qENSCBaY12lNQAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 14:14:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9753CA3C0
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 14:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA1610E7DC;
	Thu,  9 Apr 2026 12:14:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iDFEMjhF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5627D10E03A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 22:02:16 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id
 ffacd0b85a97d-43d17bb1c1dso168428f8f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2026 15:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775685734; x=1776290534; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Y/wNq1qmjQxiqNtpEVenaKUauEvpMKc+7XYTfNVpOOk=;
 b=iDFEMjhFwcND5XVKp8tOREGUCtpncwcTKyy++TyYsT/2MSymkL7L1DwVo8NmkMm4nt
 8+Ta8oBmmbtT+B9X80/rnnuYlvoxjbewfpt7YlQwfpQPoA+hBsRTwhsUV24NEYoNsgW3
 oj3YDsu9cJAcHx7EA4SJcNxeEdv1sMbDn7aNUrQpiS7K1ia55aJU/qSv2D9INGvUDMoR
 NYDHJwGxGPdOxKPIAanSu8ZQJfUOg3FgRtPJ8V2cw/+dl1VTNe5Xri8nFbZ1cxFuFSXg
 icQc1TJ79AplIFTzRxY+Aqw56O/C6OyX7wQ+ZE7jvWQgrDyVYL+Z/2yCbwbw5yZD+DbF
 2yTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775685734; x=1776290534;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Y/wNq1qmjQxiqNtpEVenaKUauEvpMKc+7XYTfNVpOOk=;
 b=cfCvycVs5v4xM7ZKBdzAEX+rKdSqtHmfzFTANdzS7mU3H2Kh9Yr9O5WNujPd8iGexp
 O3Gxaocjkb8Mgaiprlvj/CSLWer1P9DnXrrwXK057hbLn5ZjrPOVR/f4MfWtYkq+0pep
 RsZeW70jrgdEEpsoe0GznfqFJrfycjTePWYDLM4GlGDhkeler2l8SCKFFQljtNtMfl8u
 V+MF32A1xNnXEGcau+vmJu+WX41XElFIk7L7pZyblBhgat4OO5S72got5C383GlbeWkT
 Fzzp+RTIQiHxyxSpAL4k3fyY10xEL1zotvyYfSKfM75bwPLrMGxNDHJ1FuPHpD7cM7Hj
 sqkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8EXoOYYTohDgnM76oXsQ6EwbyUGXFvHFYdp6BtALZowEyScZZvI4AARH94/rKAD16evQecmDCi28=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy3Mt5uk+1qqBwkrfMjxHzu183qGyTSI1tdYTFsLECQeKPgAyUu
 qk/a5w4t6PtPMB74Qo9Pbtc5IdX3e0m77U9ojuAJV3qbMhbgi0KdR+Iy
X-Gm-Gg: AeBDiesZrvn8TibvufN7vz8kHvD2bJoYGFifly90UQcXfjtJVdhWdiMMNWGztBKRcII
 7JwGg54Pgf+7P5L6Mv3XQlkz/3rOeH4xdlKOIs2kWjhjaWQ8Z/w4Zxo3ubbEPDiYeRl5X6kKxqv
 h96vb2U+QM5F7UptU+InKRXTIG/8Dl9cdIReWU2gVIVwAb42Bv2cpagNS+bL4E0NH9JZjgp/ShY
 ppBOhDm00Rwg+mnjh6Z5FOvfqe7/7u0Ynh5+iNRzzREgGysMNSrvCmsQRcr6nG0MqLjp6FNUGv/
 vPZdrNRzBGqJh2mSXRAJKH8kDW5CZgHS1Ck8IDs2L/f3hYfpRH2OdFOFrwiBMjEGPHCloPZKo2+
 UvIRUmajyZi/Qsc8caVtIl1+LpS/xND2zRb53cbhVnSnfDf02Wjq4I7Gk6AdiXlOr6KgL8LIxb8
 g3k6kEOH1ytJe2vf6jjoeUDjxb9toMhexV7jBbG3ceUzlCtF4=
X-Received: by 2002:a05:6000:4201:b0:43b:3d80:b0b9 with SMTP id
 ffacd0b85a97d-43d29295ed7mr34849194f8f.12.1775685734366; 
 Wed, 08 Apr 2026 15:02:14 -0700 (PDT)
Received: from DESKTOP-K4142FH.localdomain ([197.146.147.164])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d1e4d282esm61373268f8f.18.2026.04.08.15.02.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2026 15:02:13 -0700 (PDT)
From: Yassine Mounir <sosohero200@gmail.com>
To: joonas.lahtinen@linux.intel.com
Cc: ville.syrjala@linux.intel.com, torvalds@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Yassine Mounir <sosohero200@gmail.com>
Subject: [PATCH v3] drm/i915/gem: Fix relocation race and simplify VMA lookup
Date: Wed,  8 Apr 2026 23:01:45 +0100
Message-ID: <20260408220145.4428-1-sosohero200@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 09 Apr 2026 12:14:10 +0000
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:ville.syrjala@linux.intel.com,m:torvalds@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:sosohero200@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 7E9753CA3C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pin the object lifetime in eb_relocate_vma() using i915_gem_object_get()
and i915_gem_object_put() to prevent a Use-After-Free (UAF) if the
handle is closed concurrently during relocation.

Additionally, simplify eb_lookup_vma() by removing the redundant
vma->vm == vm check. As noted by Joonas, this check is unnecessary since
commit d4433c7600f7. Removing it also avoids the "insane" logic of
returning a VMA without a reference, satisfying the sanity requirements
requested by Linus.

Fixes: d4433c7600f7 ("drm/i915: Multi-vm support")
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Signed-off-by: Yassine Mounir <sosohero200@gmail.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 942f4eed8..65ce54b20 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -896,7 +896,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 
 		rcu_read_lock();
 		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
-		if (likely(vma && vma->vm == vm))
+		if (likely(vma))
 			vma = i915_vma_tryget(vma);
 		else
 			vma = NULL;
-- 
2.51.0

