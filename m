Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A9122E92
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85978892BD;
	Mon, 20 May 2019 08:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60502892F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:23:03 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id p27so22587220eda.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:23:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FCOGJKruV68PCMlFcu0Jcdh8P9H2/Ftv0Ji3KZWmbUo=;
 b=gdmzNVT5qdVnFbswoNvVqF/Ox+LL6xXAPrRq6EDYZaVNFU/94KYVvXYEZZszyPxQGx
 D+VRC4yLHsvrnBGuNeUFWCxsmdzE5Yput4IunBTuM0FL/GWjoMdlf8NCAz0LMmdE0DnB
 5gh5Gf82en8PyYHFNLSu57/LXieTVIh8eOlo4EvPQshLngyQyBVcVkcRqOXVChvir9VU
 5u+hnuCJOiIFW5m9uRtEwJ2xLtIl8GnIY8fh1FrKMcuWLuGprMbPzjx5Vz4SL4sdss0X
 9yM3GLeDM9zvLlkOo7VBU37d017ctaRIPVk59GDBevo5w2LU5uDxnnziiI/dDFw2s+Vz
 3eGQ==
X-Gm-Message-State: APjAAAX91CHaH9O/cbIKlz3m2fUPrE+uaUxWHcQ1FAHPrEkb+HiCxE/2
 V7txPN8AeDd7r5fXV6XKv5fAUw==
X-Google-Smtp-Source: APXvYqz+JhrLTRZhNTc3DaIv8DkUxRltlxdyj4OAkPrhoscMsBVYEJlPpazmYVAIf3UpLblLmQV4AQ==
X-Received: by 2002:a17:906:7d50:: with SMTP id
 l16mr57720102ejp.84.1558340579630; 
 Mon, 20 May 2019 01:22:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:22:15 +0200
Message-Id: <20190520082216.26273-33-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FCOGJKruV68PCMlFcu0Jcdh8P9H2/Ftv0Ji3KZWmbUo=;
 b=Rbh03cPzhJBRqu9N582ybR/hmSNxX1iWpRzgNhumzuQbtDBL/jZRwtE6ZiEMqds9e5
 nCEi/0ReTps2K5chpBg2DyfeG8uZ0uMJ48T7NmIfs/PZqn8j6RZVAiv4FMoOYEF4THte
 f9YBRVbl9RZXkjWKtYSH8orRr9dQVQY+ptY/M=
Subject: [Intel-gfx] [PATCH 32/33] fbcon: Document what I learned about
 fbcon locking
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Yisheng Xie <ysxie@foxmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBub3QgcHJldHR5LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PgpDYzogQmFydGxvbWllaiBab2xuaWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1bmcuY29t
PgpDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KQ2M6IFlpc2hlbmcgWGll
IDx5c3hpZUBmb3htYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24u
YyB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMgYi9kcml2
ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uYwppbmRleCBiNDBiNTY3MDJjNjEuLmNiYmNmN2E3
OTVmMiAxMDA2NDQKLS0tIGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKKysrIGIv
ZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKQEAgLTg3LDYgKzg3LDI1IEBACiAjICBk
ZWZpbmUgRFBSSU5USyhmbXQsIGFyZ3MuLi4pCiAjZW5kaWYKIAorLyoKKyAqIEZJWE1FOiBMb2Nr
aW5nCisgKgorICogLSBmYmNvbiBzdGF0ZSBpdHNlbGYgaXMgcHJvdGVjdGVkIGJ5IHRoZSBjb25z
b2xlX2xvY2ssIGFuZCB0aGUgY29kZSBkb2VzIGEKKyAqICAgcHJldHR5IGdvb2Qgam9iIGF0IG1h
a2luZyBzdXJlIHRoYXQgbG9jayBpcyBoZWxkIGV2ZXJ5d2hlcmUgaXQncyBuZWVkZWQuCisgKgor
ICogLSBhY2Nlc3MgdG8gdGhlIHJlZ2lzdGVyZWRfZmIgYXJyYXkgaXMgZW50aXJlbHkgdW5wcm90
ZWN0ZWQuIFRoaXMgc2hvdWxkIHVzZQorICogICBwcm9wZXIgb2JqZWN0IGxpZmV0aW1lIGhhbmRs
aW5nLCBpLmUuIGdldC9wdXRfZmJfaW5mby4gVGhpcyBhbHNvIG1lYW5zCisgKiAgIHN3aXRjaGlu
ZyBmcm9tIGluZGljZXMgdG8gcHJvcGVyIHBvaW50ZXJzIGZvciBmYl9pbmZvIGV2ZXJ5d2hlcmUu
CisgKgorICogLSBmYmNvbiBkb2Vzbid0IGJvdGhlciB3aXRoIGZiX2xvY2svdW5sb2NrIGF0IGFs
bC4gVGhpcyBpcyBidWdneSwgc2luY2UgaXQKKyAqICAgbWVhbnMgY29uY3VycmVudCBhY2Nlc3Mg
dG8gdGhlIHNhbWUgZmJkZXYgZnJvbSBib3RoIGZiY29uIGFuZCB1c2Vyc3BhY2UKKyAqICAgd2ls
bCBibG93IHVwLiBUbyBmaXggdGhpcyBhbGwgZmJjb24gY2FsbHMgZnJvbSBmYm1lbS5jIG5lZWQg
dG8gYmUgbW92ZWQgb3V0CisgKiAgIG9mIGZiX2xvY2svdW5sb2NrIHByb3RlY3RlZCBzZWN0aW9u
cywgc2luY2Ugb3RoZXJ3aXNlIHdlJ2xsIHJlY3Vyc2UgYW5kCisgKiAgIGRlYWRsb2NrIGV2ZW50
dWFsbHkuIEFzaWRlOiBEdWUgdG8gdGhlc2UgZGVhZGxvY2sgaXNzdWVzIHRoZSBmYmRldiBjb2Rl
IGluCisgKiAgIGZibWVtLmMgY2Fubm90IHVzZSBsb2NraW5nIGFzc2VydHMsIGFuZCB0aGVyZSdz
IGxvdHMgb2YgY2FsbGVycyB3aGljaCBnZXQKKyAqICAgdGhlIHJ1bGVzIHdyb25nLCBlLmcuIGZi
c3lzZnMuYyBlbnRpcmVseSBtaXNzZWQgZmJfbG9jay91bmxvY2sgY2FsbHMgdG9vLgorICovCisK
IGVudW0gewogCUZCQ09OX0xPR09fQ0FOU0hPVwk9IC0xLAkvKiB0aGUgbG9nbyBjYW4gYmUgc2hv
d24gKi8KIAlGQkNPTl9MT0dPX0RSQVcJCT0gLTIsCS8qIGRyYXcgdGhlIGxvZ28gdG8gYSBjb25z
b2xlICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
