Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F07293B5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657BC6E0E3;
	Fri, 24 May 2019 08:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22906E0D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:39 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id j12so13320218eds.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6wlvzPyopdMS/Vqi7fihj+Pgrsm5UtYg+GKB7zvM9Ww=;
 b=BD3L0Ba5Z4tX4naYBP1rcD79/wB9ZnkavZVv9e6RvZtQFpVE56zyZK8g7o9thHdMy6
 BEdkDhHcNESkoO1IyT0dz4WAXer+DHjBzYa77JY1xf+aYOGmw2tqHg2sPcnHP01d6w6R
 t+A6CMXMBIs5ts8XHcK3iCWtZCyB0HYei22nanQLnvT5ttR2fGQG67XcuuNmej08SJUM
 tAh5XIpePCbChesYiLX9/d2FXb4I6REc4UDAYp/u3cN+8bUmV42hueutYmf5HbcEjRs2
 jxPt2dteUFHIA+IwmSg/hEsUMop5V80rqcuUs4720Pb4QUxhgPjUg/QesvRZ0pzgKOpd
 Lp3w==
X-Gm-Message-State: APjAAAUwFKrIn7LEf5yY4pYUPo2pD7ygAtoA7ZCPJyAOWkJOCCfcSz0C
 Tj1vaKis4QxSwrXNVoLGdLy1dg==
X-Google-Smtp-Source: APXvYqw2aq2VDkx0vVgS+ThS5od8hiF+BIlIE1kSz2PY3WHsyf90xuR/T5niYrFxJJEPwniXENLz/w==
X-Received: by 2002:a50:c31a:: with SMTP id
 a26mr103918601edb.289.1558688076259; 
 Fri, 24 May 2019 01:54:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:35 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:47 +0200
Message-Id: <20190524085354.27411-27-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6wlvzPyopdMS/Vqi7fihj+Pgrsm5UtYg+GKB7zvM9Ww=;
 b=ebWf7hY9yJ6blUgMPShPsTw3/gxUhMPZxFy9KfHVvDIZ8jSIsvpx6Y8UEZ55sMqgu4
 WLg3Wix9vBZNuo7A4sGMPRSTsB0XR+rVBgxHhIGSCkqYfRtEtonlaYbqDNlnZfV43v3k
 1TCuNVlRlrlT/gzj/oIjC+5tKw2iW9+WcRFBU=
Subject: [Intel-gfx] [PATCH 26/33] fbdev: remove FBINFO_MISC_USEREVENT
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
 DRI Development <dri-devel@lists.freedesktop.org>,
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
ZGVvL2ZiZGV2L2NvcmUvZmJjb24uYwppbmRleCBkOWY1NDVmMWE4MWIuLjhhNjc1MDUxNjdhZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKKysrIGIvZHJpdmVy
cy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKQEAgLTIzODYsOSArMjM4Niw4IEBAIHN0YXRpYyBp
bnQgZmJjb25fYmxhbmsoc3RydWN0IHZjX2RhdGEgKnZjLCBpbnQgYmxhbmssIGludCBtb2RlX3N3
aXRjaCkKIAkJCWZiY29uX2N1cnNvcih2YywgYmxhbmsgPyBDTV9FUkFTRSA6IENNX0RSQVcpOwog
CQkJb3BzLT5jdXJzb3JfZmxhc2ggPSAoIWJsYW5rKTsKIAotCQkJaWYgKCEoaW5mby0+ZmxhZ3Mg
JiBGQklORk9fTUlTQ19VU0VSRVZFTlQpKQotCQkJCWlmIChmYl9ibGFuayhpbmZvLCBibGFuaykp
Ci0JCQkJCWZiY29uX2dlbmVyaWNfYmxhbmsodmMsIGluZm8sIGJsYW5rKTsKKwkJCWlmIChmYl9i
bGFuayhpbmZvLCBibGFuaykpCisJCQkJZmJjb25fZ2VuZXJpY19ibGFuayh2YywgaW5mbywgYmxh
bmspOwogCQl9CiAKIAkJaWYgKCFibGFuaykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJk
ZXYvY29yZS9mYm1lbS5jIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKaW5kZXgg
ZDY3MTNkY2U5ZTMxLi4yNWFlNDY2YmE1OTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJk
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
