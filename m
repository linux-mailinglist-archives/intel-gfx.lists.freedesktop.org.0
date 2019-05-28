Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2CC2C25A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D354689F19;
	Tue, 28 May 2019 09:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6642789E9E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:49 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e24so30647416edq.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DzlOvTHyKR8X8+iBqAU0JNunUmi7G22ipv63hi4doZE=;
 b=KgOgwKN3CSU/QlnN1oQlIBEhFQqGybGwMQkl0uJcoCbb7G2M5GuTbLSylVQ4GN9PwG
 7xDdEqZYjxxLv0AEK/2i03mvtsJ2w5+blIMfwbUzYC6gjaFIXDtSyCU5cksZtSOLnf+a
 C+inrpUZ+5uPBB3EzYe13OrvbEs9JfpYfkLZYgph2o0htfFaogZjPjMDbDdy1iX20qOl
 gX/7JAECrXLwvNewgK4/yCkPYMPsMbyUbYncJKh8oe8lqGR7jZr++j2qWbfZuUhboaX6
 Gf86qSWe9uwfTcytz2mClL48UsqevZdbEQLMIc20U6cxxvDGxQsPXMOgquf3Ip8K3keN
 5Ueg==
X-Gm-Message-State: APjAAAWGaqOXYJJIIsY/LlgEsJE4FSahcUqTRn2MIWzUHJy3NM0kHWUM
 3jNDl5MLnJYvAVEsis2c+phhRQ==
X-Google-Smtp-Source: APXvYqxR9rzUeVIfHotbm5CmrJdDR2kkb2EUOxTpdDMxUJEdxcWzu6TDjgW9oBowUrDB8sqrB+FIDw==
X-Received: by 2002:a50:a5f1:: with SMTP id
 b46mr126780110edc.167.1559034227646; 
 Tue, 28 May 2019 02:03:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:56 +0200
Message-Id: <20190528090304.9388-26-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DzlOvTHyKR8X8+iBqAU0JNunUmi7G22ipv63hi4doZE=;
 b=Ot/iReF0+zGL2ux5khVmaDK70Uagz7In4B2rbxJXjuNP8F6SbXFIAjSqOfAdZolZb2
 Y/CAyNTVeJp3rkNo2d/NWhBV91roYEwu0xRWSDB8Tr7Uh5l7hmQ2p8f0CK2uPx6NBg4H
 dEd9pUT5bwd3PM1mf54qS2N1sUJMXiZ1VAf6s=
Subject: [Intel-gfx] [PATCH 25/33] fbmem: pull fbcon_fb_blanked out of
 fb_blank
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Mikulas Patocka <mpatocka@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBhIGNhbGxjaGFpbiBvZjoKCmZiY29uX2ZiX2JsYW5rZWQgLT4gZG9fKHVuKWJsYW5r
X3NjcmVlbiAtPiBjb25zdy0+Y29uX2JsYW5rCgktPiBmYmNvbl9ibGFuayAtPiBmYl9ibGFuawoK
VGhpbmdzIGRvbid0IGdvIGhvcnJpYmx5IHdyb25nIGJlY2F1c2UgdGhlIEJLTCBjb25zb2xlX2xv
Y2sgc2FmZXMgdGhlCmRheSwgYnV0IHRoYXQncyBhYm91dCBpdC4gQW5kIHRoZSBzZWVtaW5nIHJl
Y3Vyc2lvbiBpcyBicm9rZW4gaW4gMgp3YXlzOgotIFN0YXJ0aW5nIGZyb20gdGhlIGZiZGV2IGlv
Y3RsIHdlIHNldCBGQklORk9fTUlTQ19VU0VSRVZFTlQsIHdoaWNoCiAgdGVsbHMgdGhlIGZiY29u
X2JsYW5rIGNvZGUgdG8gbm90IGNhbGwgZmJfYmxhbmsuIFRoaXMgd2FzIHJlcXVpcmVkCiAgdG8g
bm90IGRlYWRsb2NrIHdoZW4gcmVjdXJzaW5nIG9uIHRoZSBmYl9ub3RpZmllcl9jaGFpbiBtdXRl
eC4KLSBTdGFydGluZyBmcm9tIHRoZSBjb25fYmxhbmsgaG9vayB3ZSdyZSBnZXR0aW5nIHNhdmVk
IGJ5IHRoZQogIGNvbnNvbGVfYmxhbmtlZCBjaGVja3MgaW4gZG9fYmxhbmsvdW5ibGFua19zY3Jl
ZW4uIE9yIGF0IGxlYXN0CiAgdGhhdCdzIG15IHRoZW9yeS4KCkFueXdheSwgcmVjdXJzaW9uIGlz
bid0IGF3ZXNvbWUsIHNvIGxldCdzIHN0b3AgaXQuIEJyZWFraW5nIHRoZQpyZWN1cnNpb24gYXZv
aWRzIHRoZSBuZWVkIHRvIGJlIGluIHRoZSBGQklORk9fTUlTQ19VU0VSRVZFTlQgY3JpdGljYWwK
c2VjdGlvbiwgc28gbGV0cyBtb3ZlIGl0IG91dCBvZiB0aGF0IHRvby4KClRoZSBhc3R1dGUgcmVh
ZGVyIHdpbGwgbm90aWNlIHRoYXQgZmJfYmxhbmsgc2VlbXMgdG8gcmVxdWlyZQpsb2NrX2ZiX2lu
Zm8oKSwgd2hpY2ggdGhlIGZiY29uIGNvZGUgc2VlbXMgdG8gaWdub3JlLiBJIGhhdmUgbm8gaWRl
YQpob3cgdG8gZml4IHRoYXQgcHJvYmxlbSwgc28gbGV0J3Mga2VlcCBpZ25vcmluZyBpdC4KCnYy
OiBJIGZvcmdvdCB0aGUgc3lzZnMgYmxhbmtpbmcgY29kZS4KCnYzOiBGaXggdHlwbyBpbiBjYWxs
Y2hhaW4gaW4gdGhlIGNvbW1taXQgbWVzc2FnZSAoU2FtKS4KClNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogU2FtIFJhdm5i
b3JnIDxzYW1AcmF2bmJvcmcub3JnPgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJh
dm5ib3JnLm9yZz4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNj
OiBCYXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+CkNj
OiAiTWljaGHFgiBNaXJvc8WCYXciIDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KQ2M6IFBldGVy
IFJvc2luIDxwZWRhQGF4ZW50aWEuc2U+CkNjOiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRo
YXQuY29tPgpDYzogTWlrdWxhcyBQYXRvY2thIDxtcGF0b2NrYUByZWRoYXQuY29tPgpDYzogUm9i
IENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29y
ZS9mYm1lbS5jICAgfCA0ICsrKy0KIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYnN5c2ZzLmMg
fCA4ICsrKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYyBiL2Ry
aXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCmluZGV4IDkzNjZmYmU5OWE1OC4uZDY3MTNk
Y2U5ZTMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYworKysg
Yi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYwpAQCAtMTA2OCw3ICsxMDY4LDYgQEAg
ZmJfYmxhbmsoc3RydWN0IGZiX2luZm8gKmluZm8sIGludCBibGFuaykKIAlldmVudC5kYXRhID0g
JmJsYW5rOwogCiAJZWFybHlfcmV0ID0gZmJfbm90aWZpZXJfY2FsbF9jaGFpbihGQl9FQVJMWV9F
VkVOVF9CTEFOSywgJmV2ZW50KTsKLQlmYmNvbl9mYl9ibGFua2VkKGluZm8sIGJsYW5rKTsKIAog
CWlmIChpbmZvLT5mYm9wcy0+ZmJfYmxhbmspCiAgCQlyZXQgPSBpbmZvLT5mYm9wcy0+ZmJfYmxh
bmsoYmxhbmssIGluZm8pOwpAQCAtMTE5OCw2ICsxMTk3LDkgQEAgc3RhdGljIGxvbmcgZG9fZmJf
aW9jdGwoc3RydWN0IGZiX2luZm8gKmluZm8sIHVuc2lnbmVkIGludCBjbWQsCiAJCWluZm8tPmZs
YWdzIHw9IEZCSU5GT19NSVNDX1VTRVJFVkVOVDsKIAkJcmV0ID0gZmJfYmxhbmsoaW5mbywgYXJn
KTsKIAkJaW5mby0+ZmxhZ3MgJj0gfkZCSU5GT19NSVNDX1VTRVJFVkVOVDsKKworCQkvKiBtaWdo
dCBhZ2FpbiBjYWxsIGludG8gZmJfYmxhbmsgKi8KKwkJZmJjb25fZmJfYmxhbmtlZChpbmZvLCBh
cmcpOwogCQl1bmxvY2tfZmJfaW5mbyhpbmZvKTsKIAkJY29uc29sZV91bmxvY2soKTsKIAkJYnJl
YWs7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJzeXNmcy5jIGIvZHJp
dmVycy92aWRlby9mYmRldi9jb3JlL2Zic3lzZnMuYwppbmRleCA1ZjMyOTI3OGU1NWYuLjI1MmQ0
ZjUyZDJhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2Zic3lzZnMuYwor
KysgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJzeXNmcy5jCkBAIC0xOCw2ICsxOCw3IEBA
CiAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+CiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2ZiLmg+CisjaW5jbHVkZSA8bGludXgvZmJjb24uaD4KICNpbmNsdWRlIDxs
aW51eC9jb25zb2xlLmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CiAKQEAgLTMwNSwxMiAr
MzA2LDE1IEBAIHN0YXRpYyBzc2l6ZV90IHN0b3JlX2JsYW5rKHN0cnVjdCBkZXZpY2UgKmRldmlj
ZSwKIHsKIAlzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbyA9IGRldl9nZXRfZHJ2ZGF0YShkZXZpY2Up
OwogCWNoYXIgKmxhc3QgPSBOVUxMOwotCWludCBlcnI7CisJaW50IGVyciwgYXJnOwogCisJYXJn
ID0gc2ltcGxlX3N0cnRvdWwoYnVmLCAmbGFzdCwgMCk7CiAJY29uc29sZV9sb2NrKCk7CiAJZmJf
aW5mby0+ZmxhZ3MgfD0gRkJJTkZPX01JU0NfVVNFUkVWRU5UOwotCWVyciA9IGZiX2JsYW5rKGZi
X2luZm8sIHNpbXBsZV9zdHJ0b3VsKGJ1ZiwgJmxhc3QsIDApKTsKKwllcnIgPSBmYl9ibGFuayhm
Yl9pbmZvLCBhcmcpOwogCWZiX2luZm8tPmZsYWdzICY9IH5GQklORk9fTUlTQ19VU0VSRVZFTlQ7
CisJLyogbWlnaHQgYWdhaW4gY2FsbCBpbnRvIGZiX2JsYW5rICovCisJZmJjb25fZmJfYmxhbmtl
ZChmYl9pbmZvLCBhcmcpOwogCWNvbnNvbGVfdW5sb2NrKCk7CiAJaWYgKGVyciA8IDApCiAJCXJl
dHVybiBlcnI7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
