Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A8A22E72
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F150F892AE;
	Mon, 20 May 2019 08:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D5A8929F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:43 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id w11so22520666edl.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4HMcA3TizyI3bWUSVLBg8JyaO8Kn3WkToKLrAKg7Usk=;
 b=sMcw9D/Fad+hkz4QVJ/spsAo6zDiRN8gqWd1cxCG7iSI5awPMydIXBVQrY8Z/OdlBo
 6lJkqNli/AAD6Cmb5TSUeE837ymTMvB8aEL+5qMs4FcsoCOX9iN3bH+o9NcbXbHfAvoU
 FMIrsnoUV6c7KJCJ1orhYY6hOU1G5heZ8w8ng3bWJhfXINaq0dVGda78n7WS9vfQh/ji
 24OfdFKyKdv8zoG6XgEoA4bkLPXIziwCpl0LiEzMbFVskAO948BjWIH49UBHMhooLVrL
 HeRhmkQJ2C5t67gxkTPf+TqmLIvG3m8frkv0LZhakyOZfzvrfGmTVAIWot0RvFQskvKM
 wf1w==
X-Gm-Message-State: APjAAAWtlwW5I6iwmyIrwFbg9vJGihdhcvMJOa8dt3OcUMhgpsa3KbrZ
 URMf/6Bn0OxqvHCVwxUAhuFNNdh8mzw=
X-Google-Smtp-Source: APXvYqztBstF/tIB3bAMhgRXMwDXlyAWS/2voV6GhfjJj0iuZ1QgSz/H5oFI1a+XUwblbYV8Hld5kA==
X-Received: by 2002:aa7:c0d3:: with SMTP id j19mr42944311edp.179.1558340562531; 
 Mon, 20 May 2019 01:22:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:22:00 +0200
Message-Id: <20190520082216.26273-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4HMcA3TizyI3bWUSVLBg8JyaO8Kn3WkToKLrAKg7Usk=;
 b=THvANnfiO+VPHwaLX6hiMosNMlh77yzzpABl0zUCBAwFGZFkWtfXpItjMshjBvd+9Y
 TSR+YSLxco2R1iX54BhQpW8L/9/jKRtw1BnFFMU+5Pm6DbeGs2/0r/8c/l6wzTLB4Irh
 S8mtbFCJOx2hi2/3V4qV8WjoGmvO93yPtZj3o=
Subject: [Intel-gfx] [PATCH 17/33] fbcon: call fbcon_fb_bind directly
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
Cc: linux-fbdev@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Yisheng Xie <ysxie@foxmail.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Peter Rosin <peda@axentia.se>,
 Konstantin Khorenko <khorenko@virtuozzo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxzbyByZW1vdmUgdGhlIGVycm9yIHJldHVybiB2YWx1ZS4gVGhhdCdzIGFsbCBlcnJvcnMgZm9y
IGVpdGhlcgpkcml2ZXIgYnVncyAodHJ5aW5nIHRvIHVuYmluZCBzb21ldGhpbmcgdGhhdCBpc24n
dCBib3VuZCksIG9yIGVycm9ycwpvZiB0aGUgbmV3IGRyaXZlciB0aGF0IHdpbGwgdGFrZSBvdmVy
LgoKVGhlcmUncyBub3RoaW5nIHRoZSBvdXRnb2luZyBkcml2ZXIgY2FuIGRvIGFib3V0IHRoaXMg
YW55d2F5LCBzbwpzd2l0Y2ggb3ZlciB0byB2b2lkLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBCYXJ0bG9taWVqIFpvbG5pZXJraWV3
aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGZmd2xsLmNoPgpDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4K
Q2M6IFNlcmdleSBTZW5vemhhdHNreSA8c2VyZ2V5LnNlbm96aGF0c2t5QGdtYWlsLmNvbT4KQ2M6
IFBldGVyIFJvc2luIDxwZWRhQGF4ZW50aWEuc2U+CkNjOiBLZWVzIENvb2sgPGtlZXNjb29rQGNo
cm9taXVtLm9yZz4KQ2M6IEtvbnN0YW50aW4gS2hvcmVua28gPGtob3JlbmtvQHZpcnR1b3p6by5j
b20+CkNjOiBZaXNoZW5nIFhpZSA8eXN4aWVAZm94bWFpbC5jb20+CkNjOiAiTWljaGHFgiBNaXJv
c8WCYXciIDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KQ2M6IE1pa3VsYXMgUGF0b2NrYSA8bXBh
dG9ja2FAcmVkaGF0LmNvbT4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNl
LmRlPgpDYzogbGludXgtZmJkZXZAdmdlci5rZXJuZWwub3JnCi0tLQogZHJpdmVycy92aWRlby9m
YmRldi9jb3JlL2ZiY29uLmMgfCAyNCArKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMv
dmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jIHwgIDcgKystLS0tLQogaW5jbHVkZS9saW51eC9mYi5o
ICAgICAgICAgICAgICAgfCAgMiAtLQogaW5jbHVkZS9saW51eC9mYmNvbi5oICAgICAgICAgICAg
fCAgMiArKwogNCBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uYyBiL2RyaXZl
cnMvdmlkZW8vZmJkZXYvY29yZS9mYmNvbi5jCmluZGV4IDM1NDQzYWRkN2Y3ZS4uYThkMTI5MTRi
NTU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uYworKysgYi9k
cml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uYwpAQCAtMzA0Miw3ICszMDQyLDcgQEAgc3Rh
dGljIGludCBmYmNvbl9tb2RlX2RlbGV0ZWQoc3RydWN0IGZiX2luZm8gKmluZm8sCiB9CiAKICNp
ZmRlZiBDT05GSUdfVlRfSFdfQ09OU09MRV9CSU5ESU5HCi1zdGF0aWMgaW50IGZiY29uX3VuYmlu
ZCh2b2lkKQorc3RhdGljIHZvaWQgZmJjb25fdW5iaW5kKHZvaWQpCiB7CiAJaW50IHJldDsKIApA
QCAtMzA1MSwyNSArMzA1MSwyMSBAQCBzdGF0aWMgaW50IGZiY29uX3VuYmluZCh2b2lkKQogCiAJ
aWYgKCFyZXQpCiAJCWZiY29uX2hhc19jb25zb2xlX2JpbmQgPSAwOwotCi0JcmV0dXJuIHJldDsK
IH0KICNlbHNlCi1zdGF0aWMgaW5saW5lIGludCBmYmNvbl91bmJpbmQodm9pZCkKLXsKLQlyZXR1
cm4gLUVJTlZBTDsKLX0KK3N0YXRpYyBpbmxpbmUgdm9pZCBmYmNvbl91bmJpbmQodm9pZCkge30K
ICNlbmRpZiAvKiBDT05GSUdfVlRfSFdfQ09OU09MRV9CSU5ESU5HICovCiAKIC8qIGNhbGxlZCB3
aXRoIGNvbnNvbGVfbG9jayBoZWxkICovCi1zdGF0aWMgaW50IGZiY29uX2ZiX3VuYmluZChpbnQg
aWR4KQordm9pZCBmYmNvbl9mYl91bmJpbmQoc3RydWN0IGZiX2luZm8gKmluZm8pCiB7CiAJaW50
IGksIG5ld19pZHggPSAtMSwgcmV0ID0gMDsKKwlpbnQgaWR4ID0gaW5mby0+bm9kZTsKIAogCVdB
Uk5fQ09OU09MRV9VTkxPQ0tFRCgpOwogCiAJaWYgKCFmYmNvbl9oYXNfY29uc29sZV9iaW5kKQot
CQlyZXR1cm4gMDsKKwkJcmV0dXJuOwogCiAJZm9yIChpID0gZmlyc3RfZmJfdmM7IGkgPD0gbGFz
dF9mYl92YzsgaSsrKSB7CiAJCWlmIChjb24yZmJfbWFwW2ldICE9IGlkeCAmJgpAQCAtMzEwMiwx
NSArMzA5OCwxMyBAQCBzdGF0aWMgaW50IGZiY29uX2ZiX3VuYmluZChpbnQgaWR4KQogCQkJCQkJ
CQkgICAgIGlkeCwgMCk7CiAJCQkJCWlmIChyZXQpIHsKIAkJCQkJCWNvbjJmYl9tYXBbaV0gPSBp
ZHg7Ci0JCQkJCQlyZXR1cm4gcmV0OworCQkJCQkJcmV0dXJuOwogCQkJCQl9CiAJCQkJfQogCQkJ
fQogCQl9Ci0JCXJldCA9IGZiY29uX3VuYmluZCgpOworCQlmYmNvbl91bmJpbmQoKTsKIAl9Ci0K
LQlyZXR1cm4gcmV0OwogfQogCiAvKiBjYWxsZWQgd2l0aCBjb25zb2xlX2xvY2sgaGVsZCAqLwpA
QCAtMzM0OCwxMCArMzM0Miw2IEBAIHN0YXRpYyBpbnQgZmJjb25fZXZlbnRfbm90aWZ5KHN0cnVj
dCBub3RpZmllcl9ibG9jayAqc2VsZiwKIAkJbW9kZSA9IGV2ZW50LT5kYXRhOwogCQlyZXQgPSBm
YmNvbl9tb2RlX2RlbGV0ZWQoaW5mbywgbW9kZSk7CiAJCWJyZWFrOwotCWNhc2UgRkJfRVZFTlRf
RkJfVU5CSU5EOgotCQlpZHggPSBpbmZvLT5ub2RlOwotCQlyZXQgPSBmYmNvbl9mYl91bmJpbmQo
aWR4KTsKLQkJYnJlYWs7CiAJY2FzZSBGQl9FVkVOVF9TRVRfQ09OU09MRV9NQVA6CiAJCS8qIGNh
bGxlZCB3aXRoIGNvbnNvbGUgbG9jayBoZWxkICovCiAJCWNvbjJmYiA9IGV2ZW50LT5kYXRhOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMgYi9kcml2ZXJzL3Zp
ZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYwppbmRleCAxOTg3YWJhNGY1YTIuLjE1NjUyM2NjNDhiZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKKysrIGIvZHJpdmVy
cy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKQEAgLTE3MDgsOCArMTcwOCw2IEBAIHN0YXRpYyBp
bnQgZG9fcmVnaXN0ZXJfZnJhbWVidWZmZXIoc3RydWN0IGZiX2luZm8gKmZiX2luZm8pCiAKIHN0
YXRpYyBpbnQgdW5iaW5kX2NvbnNvbGUoc3RydWN0IGZiX2luZm8gKmZiX2luZm8pCiB7Ci0Jc3Ry
dWN0IGZiX2V2ZW50IGV2ZW50OwotCWludCByZXQ7CiAJaW50IGkgPSBmYl9pbmZvLT5ub2RlOwog
CiAJaWYgKGkgPCAwIHx8IGkgPj0gRkJfTUFYIHx8IHJlZ2lzdGVyZWRfZmJbaV0gIT0gZmJfaW5m
bykKQEAgLTE3MTcsMTIgKzE3MTUsMTEgQEAgc3RhdGljIGludCB1bmJpbmRfY29uc29sZShzdHJ1
Y3QgZmJfaW5mbyAqZmJfaW5mbykKIAogCWNvbnNvbGVfbG9jaygpOwogCWxvY2tfZmJfaW5mbyhm
Yl9pbmZvKTsKLQlldmVudC5pbmZvID0gZmJfaW5mbzsKLQlyZXQgPSBmYl9ub3RpZmllcl9jYWxs
X2NoYWluKEZCX0VWRU5UX0ZCX1VOQklORCwgJmV2ZW50KTsKKwlmYmNvbl9mYl91bmJpbmQoZmJf
aW5mbyk7CiAJdW5sb2NrX2ZiX2luZm8oZmJfaW5mbyk7CiAJY29uc29sZV91bmxvY2soKTsKIAot
CXJldHVybiByZXQ7CisJcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgX191bmxpbmtfZnJhbWVi
dWZmZXIoc3RydWN0IGZiX2luZm8gKmZiX2luZm8pOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9mYi5oIGIvaW5jbHVkZS9saW51eC9mYi5oCmluZGV4IGZkNjAyMDdjMDY4NS4uMzhmYWUxNjc4
OTM5IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2ZiLmgKKysrIGIvaW5jbHVkZS9saW51eC9m
Yi5oCkBAIC0xNTEsOCArMTUxLDYgQEAgc3RydWN0IGZiX2N1cnNvcl91c2VyIHsKICNkZWZpbmUg
RkJfRVZFTlRfQ09OQkxBTksgICAgICAgICAgICAgICAweDBDCiAvKiAgICAgIEdldCBkcmF3aW5n
IHJlcXVpcmVtZW50cyAgICAgICAgKi8KICNkZWZpbmUgRkJfRVZFTlRfR0VUX1JFUSAgICAgICAg
ICAgICAgICAweDBECi0vKiAgICAgIFVuYmluZCBmcm9tIHRoZSBjb25zb2xlIGlmIHBvc3NpYmxl
ICovCi0jZGVmaW5lIEZCX0VWRU5UX0ZCX1VOQklORCAgICAgICAgICAgICAgMHgwRQogLyogICAg
ICBDT05TT0xFLVNQRUNJRklDOiByZW1hcCBhbGwgY29uc29sZXMgdG8gbmV3IGZiIC0gZm9yIHZn
YV9zd2l0Y2hlcm9vICovCiAjZGVmaW5lIEZCX0VWRU5UX1JFTUFQX0FMTF9DT05TT0xFICAgICAg
MHgwRgogLyogICAgICBBIGhhcmR3YXJlIGRpc3BsYXkgYmxhbmsgZWFybHkgY2hhbmdlIG9jY3Vy
cmVkICovCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2ZiY29uLmggYi9pbmNsdWRlL2xpbnV4
L2ZiY29uLmgKaW5kZXggOTRhNzFlOWUxMjU3Li4zOGQ0NGZkYjZkMTQgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvbGludXgvZmJjb24uaAorKysgYi9pbmNsdWRlL2xpbnV4L2ZiY29uLmgKQEAgLTYsMTEg
KzYsMTMgQEAgdm9pZCBfX2luaXQgZmJfY29uc29sZV9pbml0KHZvaWQpOwogdm9pZCBfX2V4aXQg
ZmJfY29uc29sZV9leGl0KHZvaWQpOwogaW50IGZiY29uX2ZiX3JlZ2lzdGVyZWQoc3RydWN0IGZi
X2luZm8gKmluZm8pOwogdm9pZCBmYmNvbl9mYl91bnJlZ2lzdGVyZWQoc3RydWN0IGZiX2luZm8g
KmluZm8pOwordm9pZCBmYmNvbl9mYl91bmJpbmQoc3RydWN0IGZiX2luZm8gKmluZm8pOwogI2Vs
c2UKIHN0YXRpYyBpbmxpbmUgdm9pZCBmYl9jb25zb2xlX2luaXQodm9pZCkge30KIHN0YXRpYyBp
bmxpbmUgdm9pZCBmYl9jb25zb2xlX2V4aXQodm9pZCkge30KIHN0YXRpYyBpbmxpbmUgaW50IGZi
Y29uX2ZiX3JlZ2lzdGVyZWQoc3RydWN0IGZiX2luZm8gKmluZm8pIHsgcmV0dXJuIDA7IH0KIHN0
YXRpYyBpbmxpbmUgdm9pZCBmYmNvbl9mYl91bnJlZ2lzdGVyZWQoc3RydWN0IGZiX2luZm8gKmlu
Zm8pIHt9CitzdGF0aWMgaW5saW5lIHZvaWQgZmJjb25fZmJfdW5iaW5kKHN0cnVjdCBmYl9pbmZv
ICppbmZvKSB7fQogI2VuZGlmCiAKICNlbmRpZiAvKiBfTElOVVhfRkJDT05fSCAqLwotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
