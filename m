Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 151FE46A59
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43D8894C0;
	Fri, 14 Jun 2019 20:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A85C1894B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:37 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id s49so5286776edb.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H/SIrekKkviqzwzNmrhZu0nI8EUiqWHO6XK0ewDmKhw=;
 b=a13/gZiuY88wPxN2MarTZnMezjT7grNoxr3c3KpcxNWgaUxQEVTa9dmHhD70l025Zx
 gw1F6Q9m3i1gQJrOplV7K1AsBnmx+kvPJlSrenwF8bcTT1mGmTGnr07x+sr9TcD7SOef
 A2qMFKQTccwp+jvKQceypcs6gjMrce8lmgaceLZwyW/HvsFjqkpxxKe5CS2BJNqUInLw
 CcpD3NloU+HhscpKyajLSfN91x8jEG04pjHfVCNJ51ohWvv1gp/l0+ZU3tJlNxX6Ri43
 Xb3z9Vjr3iPIbDpk7OOevlrlDpW+cbufE4HQ0YE1Xs/5THV3ObyCd23qvOkTOzmvrPg4
 lwuw==
X-Gm-Message-State: APjAAAWYk4Gp43B4+QRkQ3PdrXJLUGd7aKFlJN4OtupO5JCtAYfohg3q
 0St2AUzp0PYUUfDVjy38OTyd7A==
X-Google-Smtp-Source: APXvYqydlYj3QJs+jZGKKIF1AyMIbBdyXHGsykVKMRLyG92uLkBjMU5J2mRm/43OOCfgXT2VXPS86w==
X-Received: by 2002:a50:86ea:: with SMTP id 39mr79305343edu.184.1560544596384; 
 Fri, 14 Jun 2019 13:36:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:35 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:28 +0200
Message-Id: <20190614203615.12639-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H/SIrekKkviqzwzNmrhZu0nI8EUiqWHO6XK0ewDmKhw=;
 b=AVoF//4bZRexo4bsRHPehnNdjk1xLtTBl+5I5PxPfK0/wP5lDDLnvLsjwECDaVI1ts
 cqDFvga5hczHO5Z87t1URyfd1ARHnxU/lzSlIUcwbNeNEOUPW0wSND7XopZvBmv5CGYi
 MZ5sk3QAxUHJgS4MWK8NJoY6RyGmR3a8/Id+w=
Subject: [Intel-gfx] [PATCH 12/59] drm/atmel: Drop
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBCb3JpcyBCcmV6
aWxsb24gPGJicmV6aWxsb25Aa2VybmVsLm9yZz4KQ2M6IE5pY29sYXMgRmVycmUgPG5pY29sYXMu
ZmVycmVAbWljcm9jaGlwLmNvbT4KQ2M6IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVs
bG9uaUBib290bGluLmNvbT4KQ2M6IEx1ZG92aWMgRGVzcm9jaGVzIDxsdWRvdmljLmRlc3JvY2hl
c0BtaWNyb2NoaXAuY29tPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2F0bWVsLWhsY2RjL2F0bWVsX2hsY2RjX2RjLmMgfCAyIC0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNfZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9hdG1l
bC1obGNkYy9hdG1lbF9obGNkY19kYy5jCmluZGV4IDI3NGZkZjE4Y2RlOC4uMmI3OTRhNTBlN2Fi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNfZGMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNfZGMuYwpAQCAt
ODQzLDggKzg0Myw2IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBhdG1lbF9obGNkY19kY19k
cml2ZXIgPSB7CiAJLmdlbV92bV9vcHMgPSAmZHJtX2dlbV9jbWFfdm1fb3BzLAogCS5wcmltZV9o
YW5kbGVfdG9fZmQgPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCwKIAkucHJpbWVfZmRfdG9f
aGFuZGxlID0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUsCi0JLmdlbV9wcmltZV9pbXBvcnQg
PSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKLQkuZ2VtX3ByaW1lX2V4cG9ydCA9IGRybV9nZW1fcHJp
bWVfZXhwb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlID0gZHJtX2dlbV9jbWFfcHJpbWVf
Z2V0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlID0gZHJtX2dlbV9jbWFf
cHJpbWVfaW1wb3J0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfdm1hcCA9IGRybV9nZW1fY21hX3By
aW1lX3ZtYXAsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
