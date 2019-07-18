Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6363D6D1B4
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 18:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8506E445;
	Thu, 18 Jul 2019 16:15:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B836E431;
 Thu, 18 Jul 2019 16:15:37 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id h10so27962942ljg.0;
 Thu, 18 Jul 2019 09:15:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=5iHBuVq6OVoL5g2SO+kAMAMUgwsbAup21Am8Hz+Y/h8=;
 b=qdApYe9yx7FqIV7Ip39Ol4c+2y8G0bHeS4pDT6DHnmXCCES+RPE8RT0TlJWFlgV6zl
 1/lJQcczpC6YYePpyJFGgtqo60tysg3QJMBDPvqf0LyDsST5aJHFQJkYW7E+Ef85RwmS
 c2xpjucEDW0YPR4vuaYfYMrlzT5nGB3eZcGMrI7Z1G3k3lJdwEJMUPZ1rvlNdf6A1O+N
 WzkrQ4HNziEjq5SfF1hAu8P4/iVrThPSqFe94ZX1xP7oAosOq4PY68bmPYGyZqb0T8tP
 mOQ7cWRfD4HBho0D4sxu62Iqp442WbuWkB3vFkIs7MY4O73MSix+SCtVEGs/R9ddP8Fx
 AR+Q==
X-Gm-Message-State: APjAAAVCG8M2g8o72BpBd6Kyoo+NHiVo91aqKb0r2dEyBqzCYZgq8YsS
 RjkWDk2fSoa+caGXS9rkajOKj/RAWJT9PA==
X-Google-Smtp-Source: APXvYqygrJMJtCucev6Ri5vM6W9Y/vQi+gWsKgWZ7kWFT2xIA7iXrlP3B0wYUJ6SqdZxmRzieBQObA==
X-Received: by 2002:a2e:8007:: with SMTP id j7mr24880722ljg.191.1563466535069; 
 Thu, 18 Jul 2019 09:15:35 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:34 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 18 Jul 2019 18:15:03 +0200
Message-Id: <20190718161507.2047-8-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5iHBuVq6OVoL5g2SO+kAMAMUgwsbAup21Am8Hz+Y/h8=;
 b=E9gugjjWV1jLxjI45/LuVHSYg55YE91n6oSkaD3jd6eUsNv0C8K0Ovk+0vwwvx8+YS
 TVeVeVXEseK36WOlEQy2UyV0qhuvVuaCKZ5csLO4yo2jQav5j7MLXWtBPYRRatgSignP
 b6gJwXiHGR2s/H3eZtzhw/bRUeunyxT8PKYFacKSnaERK9T2ymCVsdtyVNT6hGHm2aYB
 Z/D6scPpvrdeZaops4w5/6dMz2egQ1NvbbE99eqmGAPFKqLmzXdm4FvRsF3cIfCgFXGE
 r2qFAAsP6tqaqWO6zU9IsDJX08BwWCLbg6nvlb8NWDlR0oVoxQ6UFBofC1PtR7Vq8cuW
 MYyg==
Subject: [Intel-gfx] [PATCH v1 07/11] drm: direct include of drm.h in
 drm_gem_shmem_helper.c
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
Cc: David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG8gbm90IHJlbHkgb24gaW5jbHVkaW5nIGRybS5oIGZyb20gZHJtX2ZpbGUuaCwKYXMgdGhlIGlu
Y2x1ZGUgaW4gZHJtX2ZpbGUuaCB3aWxsIGJlIGRyb3BwZWQuCgpTaWduZWQtb2ZmLWJ5OiBTYW0g
UmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJp
cGFyZEBib290bGluLmNvbT4KQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogRGF2
aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPgpDYzogRXJpYyBBbmhvbHQgPGVyaWNAYW5ob2x0Lm5ldD4KQ2M6IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyB8IDEgKwog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1l
bV9oZWxwZXIuYwppbmRleCA0NzJlYTVkODFmODIuLjJmNjQ2NjdhYzgwNSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKQEAgLTEwLDYgKzEwLDcgQEAKICNpbmNsdWRlIDxs
aW51eC9zbGFiLmg+CiAjaW5jbHVkZSA8bGludXgvdm1hbGxvYy5oPgogCisjaW5jbHVkZSA8ZHJt
L2RybS5oPgogI2luY2x1ZGUgPGRybS9kcm1fZGV2aWNlLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9k
cnYuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuaD4KLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
