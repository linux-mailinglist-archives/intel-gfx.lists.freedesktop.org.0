Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gM+JNcnNw2lKuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DF3324510
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAEF710E83E;
	Wed, 25 Mar 2026 11:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rJmBc0EJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58FB510E6F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 15:21:01 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-486fd5360d4so15936005e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 08:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774365660; x=1774970460; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7OzgNpqU6eet2fbRMq8dZ2mybCRMoXFURk4qYo16yQU=;
 b=rJmBc0EJ73YA1/5VLG3SOvQtu7UtEmkigf5XCgQ2GbpbPNgTzdP30BPIxxNKO/jPmb
 7C0EJe2+baKaF51hK9oZy4CDKTULplc43mOBKv9TZTVhH1yRbRbL0R0QbW/VeoqmwcL5
 ILKbInuPT497q8mnZI6DIDhAyBW9HZuc0NyX9cccfq9Oyv0hJJDr3tQFh8XXCBzNLI01
 h19FTkjoOQSfwyzqf+vuu35NIEuXPEkcLxNZiDPwtNMM6ecuN/77jjTpoUu983aUsoE1
 szJC/YRwEJfqzKgjztXpW+1L/vsol1MbBdlNB0i0PlfiQ8W1HJbW82oBMxw9K2nDlnlD
 9n5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774365660; x=1774970460;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7OzgNpqU6eet2fbRMq8dZ2mybCRMoXFURk4qYo16yQU=;
 b=Lhr/vEhZ9BoydpNaG2iUXLSxUC7c6+/olNGdw5QsvMxJuB6ANA71Z7gC6KmoGLbdZP
 K/6LOF6LU7z9kdczTRW3NPNAgISG0Cc5qH0/dTl9iyAgoXCZihnL1r61UJcPyFRLszOr
 dfceGyqzXiLKoMk9YXBfxpdYSuyQmF0zkeZ+BAZbC8g+DlgwdB5i3fJJZSntkL6RG61u
 Ohs97LiFijgTp86fpfcWmfZbUJUagrfLI2yPxE1g5cykA5QhI4aLopJTL8pdK1byFj7+
 GYXVPzo/LtTni32vQl40YksyqQTsuregnX3T3s8jMn432zrSR9Ou+DuiBf5qs+Wfl/7r
 Vc+A==
X-Gm-Message-State: AOJu0YxuHFixJEiQ8FABxOc9JP7jkb0vDwN44mTqoHFs0id1Ua6/Hbyf
 Clyvwxnl8jiTDEFEuKraUjQyehnD0YIIMl2aU1vLGksT9UQqkzpwH60w
X-Gm-Gg: ATEYQzx+8AKNUiKRJO4QW6ccOQ2/D/TZCR4Z+l9in3GJ1080QM9D5Nkonp3fttJ4Yp1
 Ld4SAAwu9emmYJ+PuVgA1RdxI9uSnYT37OsxGwNFGcZiGQRQHvU/RmZeEMY821YWqgV2vgU6eUZ
 SM4TLGMOstBzj26tMLCxFCPfWsbXEI5eFBjuY/kHpV7cDUHlhYGgAhdEpLJEkgbQ+zWY06l9Y3+
 wJV9vc9C8fQTFeMPe/hhkp+GRUCB1mRVC4FEWczZXxwumEA8ULmvTeWgfaF5d3irM7SrtFlhGXb
 y0NYsJPoPAiuz/RRNM1VuXi6L6JGlyaK5pF2OQFCh3u8X52rJgQgWRxgzdZKDx8zzjBoJ/OhAS+
 Rc4jxk8IV3otx1rynXdIuHREpYD4F9C2P8y20eaRpy4RwWLOgP9QfMMktm0QQ0PTgx34yEpcJe4
 ttBbpOd62tQcIFz6NzZtk0Hx9/oNXR5w==
X-Received: by 2002:a05:600c:3b22:b0:485:3e19:9e01 with SMTP id
 5b1f17b1804b1-4871608460fmr2201525e9.28.1774365659521; 
 Tue, 24 Mar 2026 08:20:59 -0700 (PDT)
Received: from zinco04.TojiM4 ([197.146.60.227])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48710fa0e35sm53968565e9.3.2026.03.24.08.20.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2026 08:20:59 -0700 (PDT)
From: Yassine Mounir <sosohero200@gmail.com>
To: gregkh@linuxfoundation.org
Cc: intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, security@kernel.org,
 Yassine Mounir <sosohero200@gmail.com>
Subject: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
Date: Tue, 24 Mar 2026 11:17:41 -0400
Message-ID: <20260324151741.29338-1-sosohero200@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 25 Mar 2026 11:57:58 +0000
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:security@kernel.org,m:sosohero200@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,linux.intel.com,intel.com,kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 65DF3324510
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix a race condition in Linux 7.0-rc2 where a GEM object could be freed
during relocation if userspace closes the handle concurrently.

The fix involves pinning the object lifetime using i915_gem_object_get()
before the relocation loop and releasing it via i915_gem_object_put()
in the common exit path (out label), ensuring symmetry in both success
and error paths.

This v2 rebases the change to the new 'gem/' directory structure in
the current mainline tree and addresses potential memory leaks in
early error returns.

Signed-off-by: Yassine Mounir <sosohero200@gmail.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e7918f896..0468c0551 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1528,6 +1528,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
 		return -EFAULT;
 
+	i915_gem_object_get(ev->vma->obj);
 	do {
 		struct drm_i915_gem_relocation_entry *r = stack;
 		unsigned int count =
@@ -1588,6 +1589,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		urelocs += ARRAY_SIZE(stack);
 	} while (remain);
 out:
+	i915_gem_object_put(ev->vma->obj);
 	reloc_cache_reset(&eb->reloc_cache, eb);
 	return remain;
 }
-- 
2.53.0

