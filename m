Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACC62FB630
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 14:03:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509CC6E25B;
	Tue, 19 Jan 2021 13:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C86336E25B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 13:03:25 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id c12so1126548wrc.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 05:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6eQxUJyYjcpNGooFF9KRs2Vh+KrO03OdwmCtwKSfd84=;
 b=MU7h5plTlVYOi/yfhjJTaNzyweuruZca1u8+HHloNOKuF8gBNLzBusXXLTe2d15BEQ
 8KOVUb41KS0I/1q1kAg21ioRKUIW/xsWyVo7lhctUOq7CeRA2dfjRz6kQbwRtn4x8FSA
 zJtV6eUcitlWHfHPCg/q0aLKywUZL9D0FGIoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6eQxUJyYjcpNGooFF9KRs2Vh+KrO03OdwmCtwKSfd84=;
 b=LZnrGOUI5voh01we4zmgasc2GenqcCmGfn04FWXfbcNOus+7zXYccFK5MwJtXiRj75
 EvY87NYrBFZMi/JOUzwm6CZRArI9e+HA0SdiEyHGiawvawLsA8IdXcVVX9QPaYAdEVwG
 PnNXcwxmQ0aP819h5QMxWYZIGpzjlGUrViFNkA/bzlhoLm3eIOr1u1whpBZG40p3mF65
 Z2XYn/4vkZnZadS5JCzMCzA3u8hIvNgewBMhf8bN+SMINHh/8H8voBqlCKelw2A08s0I
 SYU+WQyIra5gDIBMb1VDL/2htMdBB1Xemeb0tq/fHNU46NaS8VwQtrzq9o0Xpt1ngu1H
 B7fw==
X-Gm-Message-State: AOAM531O+Stsm4zOMowMoPDu17/jfWQuWTJwcv0lBeShG/F9CKdoKN3G
 mqucLur2KVcyKMeNIwoXO+M9Ww==
X-Google-Smtp-Source: ABdhPJxqEPlIGfDQZaX8UsE/8nzHzaavKyzbXjfCRpikMKlcA1u5hp+8qeTjF7c6ulNmawxfxXraxA==
X-Received: by 2002:adf:90e3:: with SMTP id i90mr4510035wri.248.1611061404477; 
 Tue, 19 Jan 2021 05:03:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d199sm3546715wmd.1.2021.01.19.05.03.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Jan 2021 05:03:23 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 19 Jan 2021 14:03:18 +0100
Message-Id: <20210119130318.615145-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/syncobj: Fix use-after-free
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, stable@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpbGUgcmV2aWV3aW5nIENocmlzdGlhbidzIGFubm90YXRpb24gcGF0Y2ggSSBub3RpY2VkIHRo
YXQgd2UgaGF2ZSBhCnVzZXItYWZ0ZXItZnJlZSBmb3IgdGhlIFdBSVRfRk9SX1NVQk1JVCBjYXNl
OiBXZSBkcm9wIHRoZSBzeW5jb2JqCnJlZmVyZW5jZSBiZWZvcmUgd2UndmUgY29tcGxldGVkIHRo
ZSB3YWl0aW5nLgoKT2YgY291cnNlIHVzdWFsbHkgdGhlcmUncyBub3RoaW5nIGJhZCBoYXBwZW5p
bmcgaGVyZSBzaW5jZSB1c2Vyc3BhY2UKa2VlcHMgdGhlIHJlZmVyZW5jZSwgYnV0IHdlIGNhbid0
IHJlbHkgb24gdXNlcnNwYWNlIHRvIHBsYXkgbmljZSBoZXJlIQoKU2lnbmVkLW9mZi1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkZpeGVzOiBiYzljODBmZTAxYTIg
KCJkcm0vc3luY29iajogdXNlIHRoZSB0aW1lbGluZSBwb2ludCBpbiBkcm1fc3luY29ial9maW5k
X2ZlbmNlIHY0IikKQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4K
Q2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
CkNjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CkNjOiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51
eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjIr
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgfCA4ICsrKysrLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2Jq
LmMKaW5kZXggNmU3NGU2NzQ1ZWNhLi4zNDkxNDYwNDk4NDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fc3luY29iai5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5j
CkBAIC0zODgsMTkgKzM4OCwxOCBAQCBpbnQgZHJtX3N5bmNvYmpfZmluZF9mZW5jZShzdHJ1Y3Qg
ZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwKIAkJcmV0dXJuIC1FTk9FTlQ7CiAKIAkqZmVuY2UgPSBk
cm1fc3luY29ial9mZW5jZV9nZXQoc3luY29iaik7Ci0JZHJtX3N5bmNvYmpfcHV0KHN5bmNvYmop
OwogCiAJaWYgKCpmZW5jZSkgewogCQlyZXQgPSBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubyhm
ZW5jZSwgcG9pbnQpOwogCQlpZiAoIXJldCkKLQkJCXJldHVybiAwOworCQkJZ290byBvdXQ7CiAJ
CWRtYV9mZW5jZV9wdXQoKmZlbmNlKTsKIAl9IGVsc2UgewogCQlyZXQgPSAtRUlOVkFMOwogCX0K
IAogCWlmICghKGZsYWdzICYgRFJNX1NZTkNPQkpfV0FJVF9GTEFHU19XQUlUX0ZPUl9TVUJNSVQp
KQotCQlyZXR1cm4gcmV0OworCQlnb3RvIG91dDsKIAogCW1lbXNldCgmd2FpdCwgMCwgc2l6ZW9m
KHdhaXQpKTsKIAl3YWl0LnRhc2sgPSBjdXJyZW50OwpAQCAtNDMyLDYgKzQzMSw5IEBAIGludCBk
cm1fc3luY29ial9maW5kX2ZlbmNlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLAogCWlm
ICh3YWl0Lm5vZGUubmV4dCkKIAkJZHJtX3N5bmNvYmpfcmVtb3ZlX3dhaXQoc3luY29iaiwgJndh
aXQpOwogCitvdXQ6CisJZHJtX3N5bmNvYmpfcHV0KHN5bmNvYmopOworCiAJcmV0dXJuIHJldDsK
IH0KIEVYUE9SVF9TWU1CT0woZHJtX3N5bmNvYmpfZmluZF9mZW5jZSk7Ci0tIAoyLjMwLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
