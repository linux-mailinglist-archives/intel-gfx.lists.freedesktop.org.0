Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DDD22E89
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B18D892F2;
	Mon, 20 May 2019 08:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA88892CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:56 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id n17so22609362edb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DjcLsPlsjE209Q795HkarLAUj4qVY5QZ6l/8BCYUlrU=;
 b=tgrGML4mmqLP2aUOSvwQmM6+y2vyFi1rNekEWbvRX7t2PS4brvlKHVbhJhB97fgvaH
 VcsND7EPz9uUTMnHV8xEZa/4ER6j5S5czM3ofwV0/P5X9Fyx9tdv7VoJl5f0J7ARvzzT
 PMotkqONX8X7U5r7lviTRhOE60yX3xWOmuCua0IpusFvdOvJ9kcQhwRKIBUTMe41ImZS
 Vg5ul7bHwnvkK54mh6Vz3N2qCE8OcePq+zaYAd8tpBx8jPiPCz5KNgFXzOwCsoEb5W2x
 SXDoJFbz/LFtQNlzXBVQwLmAC2LLu9MRIX9tV6BZeG2Hzq4cA09TFFDVSAlgXuvm3H7R
 Lm+w==
X-Gm-Message-State: APjAAAXte0n6eUK9zxtM0RIg2RyBmjcdSchCaHqocDO6co7PXhvhq7q6
 QkMKEIZpwQXiGSJ2843wOhBiE/YZ3kc=
X-Google-Smtp-Source: APXvYqz6gMGaKw7InNRAYh/FfyGrrZIJCiKRyHBCsxnsADOp8agSMiMyM3ffksqbZU0sp3KMCISA6Q==
X-Received: by 2002:a50:a485:: with SMTP id w5mr28701154edb.78.1558340573984; 
 Mon, 20 May 2019 01:22:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:22:10 +0200
Message-Id: <20190520082216.26273-28-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DjcLsPlsjE209Q795HkarLAUj4qVY5QZ6l/8BCYUlrU=;
 b=F8LgFcDyNEbgtqr09gmvby+A70IlXFhvdKJQGuQU76/bnBUMWD33WhmzV8anIfkPi0
 mD3mM5zUjNuB3gBIUmxNtzHTrHn1ZPQphxPlYuP0ARRH9XNaNMlrnJClFCLSGQcOWL0g
 Q7q+eBvuuOnPjNkfowVtPdLB0l/WbtympM+P0=
Subject: [Intel-gfx] [PATCH 27/33] fbdev: remove FBINFO_MISC_USEREVENT
 around fb_blank
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
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Yisheng Xie <ysxie@foxmail.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGUgcmVjdXJzaW9uIGJyb2tlbiBpbiB0aGUgcHJldmlvdXMgcGF0Y2ggd2UgY2FuIGRy
b3AgdGhlCkZCSU5GT19NSVNDX1VTRVJFVkVOVCBmbGFnIGFyb3VuZCBjYWxscyB0byBmYl9ibGFu
ayAtIHJlY3Vyc2lvbgpwcmV2ZW50aW9uIHdhcyBpdCdzIG9ubHkgam9iLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogQmFydGxvbWllaiBab2xuaWVya2lld2lj
eiA8Yi56b2xuaWVya2llQHNhbXN1bmcuY29tPgpDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVA
cmVkaGF0LmNvbT4KQ2M6IFlpc2hlbmcgWGllIDx5c3hpZUBmb3htYWlsLmNvbT4KQ2M6ICJNaWNo
YcWCIE1pcm9zxYJhdyIgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgpDYzogUGV0ZXIgUm9zaW4g
PHBlZGFAYXhlbnRpYS5zZT4KQ2M6IE1pa3VsYXMgUGF0b2NrYSA8bXBhdG9ja2FAcmVkaGF0LmNv
bT4KQ2M6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3ZpZGVv
L2ZiZGV2L2NvcmUvZmJjb24uYyAgIHwgNSArKy0tLQogZHJpdmVycy92aWRlby9mYmRldi9jb3Jl
L2ZibWVtLmMgICB8IDMgLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJzeXNmcy5jIHwg
MiAtLQogMyBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMgYi9kcml2ZXJzL3Zp
ZGVvL2ZiZGV2L2NvcmUvZmJjb24uYwppbmRleCBmODVkNzk0YTNiZWUuLmMxYTc0NzZlOTgwZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKKysrIGIvZHJpdmVy
cy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKQEAgLTIzODIsOSArMjM4Miw4IEBAIHN0YXRpYyBp
bnQgZmJjb25fYmxhbmsoc3RydWN0IHZjX2RhdGEgKnZjLCBpbnQgYmxhbmssIGludCBtb2RlX3N3
aXRjaCkKIAkJCWZiY29uX2N1cnNvcih2YywgYmxhbmsgPyBDTV9FUkFTRSA6IENNX0RSQVcpOwog
CQkJb3BzLT5jdXJzb3JfZmxhc2ggPSAoIWJsYW5rKTsKIAotCQkJaWYgKCEoaW5mby0+ZmxhZ3Mg
JiBGQklORk9fTUlTQ19VU0VSRVZFTlQpKQotCQkJCWlmIChmYl9ibGFuayhpbmZvLCBibGFuaykp
Ci0JCQkJCWZiY29uX2dlbmVyaWNfYmxhbmsodmMsIGluZm8sIGJsYW5rKTsKKwkJCWlmIChmYl9i
bGFuayhpbmZvLCBibGFuaykpCisJCQkJZmJjb25fZ2VuZXJpY19ibGFuayh2YywgaW5mbywgYmxh
bmspOwogCQl9CiAKIAkJaWYgKCFibGFuaykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJk
ZXYvY29yZS9mYm1lbS5jIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKaW5kZXgg
N2Y5NWM3ZTgwMTU1Li42NWEwNzVjY2FjNGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJk
ZXYvY29yZS9mYm1lbS5jCisrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCkBA
IC0xMTk0LDEwICsxMTk0LDcgQEAgc3RhdGljIGxvbmcgZG9fZmJfaW9jdGwoc3RydWN0IGZiX2lu
Zm8gKmluZm8sIHVuc2lnbmVkIGludCBjbWQsCiAJY2FzZSBGQklPQkxBTks6CiAJCWNvbnNvbGVf
bG9jaygpOwogCQlsb2NrX2ZiX2luZm8oaW5mbyk7Ci0JCWluZm8tPmZsYWdzIHw9IEZCSU5GT19N
SVNDX1VTRVJFVkVOVDsKIAkJcmV0ID0gZmJfYmxhbmsoaW5mbywgYXJnKTsKLQkJaW5mby0+Zmxh
Z3MgJj0gfkZCSU5GT19NSVNDX1VTRVJFVkVOVDsKLQogCQkvKiBtaWdodCBhZ2FpbiBjYWxsIGlu
dG8gZmJfYmxhbmsgKi8KIAkJZmJjb25fZmJfYmxhbmtlZChpbmZvLCBhcmcpOwogCQl1bmxvY2tf
ZmJfaW5mbyhpbmZvKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYnN5
c2ZzLmMgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJzeXNmcy5jCmluZGV4IDI1MmQ0ZjUy
ZDJhNS4uODgyYjQ3MWQ2MTllIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUv
ZmJzeXNmcy5jCisrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYnN5c2ZzLmMKQEAgLTMx
MCw5ICszMTAsNyBAQCBzdGF0aWMgc3NpemVfdCBzdG9yZV9ibGFuayhzdHJ1Y3QgZGV2aWNlICpk
ZXZpY2UsCiAKIAlhcmcgPSBzaW1wbGVfc3RydG91bChidWYsICZsYXN0LCAwKTsKIAljb25zb2xl
X2xvY2soKTsKLQlmYl9pbmZvLT5mbGFncyB8PSBGQklORk9fTUlTQ19VU0VSRVZFTlQ7CiAJZXJy
ID0gZmJfYmxhbmsoZmJfaW5mbywgYXJnKTsKLQlmYl9pbmZvLT5mbGFncyAmPSB+RkJJTkZPX01J
U0NfVVNFUkVWRU5UOwogCS8qIG1pZ2h0IGFnYWluIGNhbGwgaW50byBmYl9ibGFuayAqLwogCWZi
Y29uX2ZiX2JsYW5rZWQoZmJfaW5mbywgYXJnKTsKIAljb25zb2xlX3VubG9jaygpOwotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
