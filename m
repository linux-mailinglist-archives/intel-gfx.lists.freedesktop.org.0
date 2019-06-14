Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D796E46A6E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D8EC894DD;
	Fri, 14 Jun 2019 20:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E7989561
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:54 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id r12so3057944edo.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kl11cqZLKNVIoCSLq1T4z6E1blt5ws6QSMJdYDP8rFo=;
 b=sYnbtD6N8q0FjyRKOocm11p34aTCy0Z8nY82k8UQCwVf7ZETM7KDCbW8BwwGyr4pXZ
 b8Irvg4RgABs03eubIAq0CdS3daK81zOQP1XmLgZXZ9bMOMYBEo+OCODO/1NVK6riHWC
 yErnN+XkfXv1Pl6xAvcB8ftbprxE5lHtks18pFdXVwBvrbJewJ4cU5aBOdJOQDnjKma2
 ofNr7pNR0t3tRbhjPV/Y4GXw3VJF2WgaYdk3SUCGCOsGKSFcDBopiYF9U90pqdMlEw9q
 evAxT4maqfQtYhCUnrgH3DlKhdrlOC2+m+Q5pK6D7nBbYYit5YPNQ4M+j+GIAuKCnmit
 QMKA==
X-Gm-Message-State: APjAAAWZR8dJVCRu1L9KGEOrITCtkHqZTBZ0aTPDJQmLCQrzFkmFuyMp
 FpNsq2nE3bNIrJOeEgOGuHvxtF5Yb0s=
X-Google-Smtp-Source: APXvYqyJW7ZRxZMoGehzMOedZE2lv3ftKEGPQee9wy7+mZct/Ovqo2OEcePWE2F8tImwMp8lBLHMKg==
X-Received: by 2002:a50:9947:: with SMTP id l7mr42157954edb.305.1560544612213; 
 Fri, 14 Jun 2019 13:36:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:42 +0200
Message-Id: <20190614203615.12639-27-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kl11cqZLKNVIoCSLq1T4z6E1blt5ws6QSMJdYDP8rFo=;
 b=NBcJIjf80TmUrTBIegjVHoFUGOlF/D8hw4ZE1QzyfrNv4QUQSHJXcT4JgHdO5xcZro
 NLzWWX32r13XWQAzC0XG7bq3Doc8Gs8gxkA6cqi5kAygbpTfDsLdrgao0gyQZssMLAkH
 WiMM4BtCJgsTlpwioTUr4Eke+8mBw8PO6WHZc=
Subject: [Intel-gfx] [PATCH 26/59] drm/rcar-du: Drop
 drm_gem_prime_export/import
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBMYXVyZW50IFBp
bmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+CkNjOiBLaWVyYW4gQmlu
Z2hhbSA8a2llcmFuLmJpbmdoYW0rcmVuZXNhc0BpZGVhc29uYm9hcmQuY29tPgpDYzogbGludXgt
cmVuZXNhcy1zb2NAdmdlci5rZXJuZWwub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JjYXItZHUv
cmNhcl9kdV9kcnYuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yY2FyLWR1L3JjYXJfZHVfZHJ2LmMgYi9kcml2ZXJz
L2dwdS9kcm0vcmNhci1kdS9yY2FyX2R1X2Rydi5jCmluZGV4IDgzNjg1MjUwMzE5ZC4uOWM5M2Vi
NGZhZDhiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmNhci1kdS9yY2FyX2R1X2Rydi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yY2FyLWR1L3JjYXJfZHVfZHJ2LmMKQEAgLTQ0Niw4ICs0
NDYsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgcmNhcl9kdV9kcml2ZXIgPSB7CiAJLmdl
bV92bV9vcHMJCT0gJmRybV9nZW1fY21hX3ZtX29wcywKIAkucHJpbWVfaGFuZGxlX3RvX2ZkCT0g
ZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQsCiAJLnByaW1lX2ZkX3RvX2hhbmRsZQk9IGRybV9n
ZW1fcHJpbWVfZmRfdG9faGFuZGxlLAotCS5nZW1fcHJpbWVfaW1wb3J0CT0gZHJtX2dlbV9wcmlt
ZV9pbXBvcnQsCi0JLmdlbV9wcmltZV9leHBvcnQJPSBkcm1fZ2VtX3ByaW1lX2V4cG9ydCwKIAku
Z2VtX3ByaW1lX2dldF9zZ190YWJsZQk9IGRybV9nZW1fY21hX3ByaW1lX2dldF9zZ190YWJsZSwK
IAkuZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZSA9IGRybV9nZW1fY21hX3ByaW1lX2ltcG9ydF9z
Z190YWJsZSwKIAkuZ2VtX3ByaW1lX3ZtYXAJCT0gZHJtX2dlbV9jbWFfcHJpbWVfdm1hcCwKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
