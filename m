Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C463545ED9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DD6898B7;
	Fri, 14 Jun 2019 13:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC51898C4;
 Fri, 14 Jun 2019 13:47:47 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYM-0004a2-N5; Fri, 14 Jun 2019 13:47:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:12 +0200
Message-Id: <20190614134726.3827-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dFkeNCOjf/ZFyy3Yeij5x73pEQRUAveqwZi3TB+kN+8=; b=VbVxXB1x19VOko6tXcNmrk4Pyv
 SjUlfFCbw880+ikTCwEk6mC/KDydaMvSEovCcvs6F89NEqr15LLWJk4bPUUc5iIovBb+hY4GQzxDn
 A3nJYlB8l2SFIliuv9suZO4k9LxSid81J8gFZw2kEy67edfSbgvl1E1NL1llWCCGeD1lk2YnA7IMi
 DoyWUeRh9rXzQjzFAiM60S0ugdShe2YsChaMS6mNwJReLOulnpRnn7LylOoHd3K2E4aXSmo49bU+c
 tB2WaXRC8Uz6JNO0tiPTpByXc9BqAwWpSMjT4oTuINM5VSJ76ZEmbcuOxR6yA7jeo6IUae9c7flZ2
 9rkZNqlg==;
Subject: [Intel-gfx] [PATCH 02/16] drm/ati_pcigart: stop using drm_pci_alloc
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVtb3ZlIHVzYWdlIG9mIHRoZSBsZWdhY3kgZHJtIFBDSSBETUEgd3JhcHBlcnMsIGFuZCB3aXRo
IHRoYXQgdGhlCmluY29ycmVjdCB1c2FnZSBjb2NrdGFpbCBvZiBfX0dGUF9DT01QLCB2aXJ0X3Rv
X3BhZ2Ugb24gRE1BIGFsbG9jYXRpb24KYW5kIFNldFBhZ2VSZXNlcnZlZC4KClNpZ25lZC1vZmYt
Ynk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9h
dGlfcGNpZ2FydC5jIHwgMjcgKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCiBpbmNsdWRlL2Ry
bS9hdGlfcGNpZ2FydC5oICAgICB8ICA1ICsrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
dGlfcGNpZ2FydC5jIGIvZHJpdmVycy9ncHUvZHJtL2F0aV9wY2lnYXJ0LmMKaW5kZXggMjM2MmYw
N2ZlMWZjLi5mNjZkNGZjY2Q4MTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hdGlfcGNp
Z2FydC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hdGlfcGNpZ2FydC5jCkBAIC00MSwyMSArNDEs
MTQgQEAKIHN0YXRpYyBpbnQgZHJtX2F0aV9hbGxvY19wY2lnYXJ0X3RhYmxlKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsCiAJCQkJICAgICAgIHN0cnVjdCBkcm1fYXRpX3BjaWdhcnRfaW5mbyAqZ2Fy
dF9pbmZvKQogewotCWdhcnRfaW5mby0+dGFibGVfaGFuZGxlID0gZHJtX3BjaV9hbGxvYyhkZXYs
IGdhcnRfaW5mby0+dGFibGVfc2l6ZSwKLQkJCQkJCVBBR0VfU0laRSk7Ci0JaWYgKGdhcnRfaW5m
by0+dGFibGVfaGFuZGxlID09IE5VTEwpCisJZ2FydF9pbmZvLT50YWJsZV92YWRkciA9IGRtYV9h
bGxvY19jb2hlcmVudCgmZGV2LT5wZGV2LT5kZXYsCisJCQlnYXJ0X2luZm8tPnRhYmxlX3NpemUs
ICZnYXJ0X2luZm8tPnRhYmxlX2hhbmRsZSwKKwkJCUdGUF9LRVJORUwpOworCWlmICghZ2FydF9p
bmZvLT50YWJsZV92YWRkcikKIAkJcmV0dXJuIC1FTk9NRU07Ci0KIAlyZXR1cm4gMDsKIH0KIAot
c3RhdGljIHZvaWQgZHJtX2F0aV9mcmVlX3BjaWdhcnRfdGFibGUoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwKLQkJCQkgICAgICAgc3RydWN0IGRybV9hdGlfcGNpZ2FydF9pbmZvICpnYXJ0X2luZm8p
Ci17Ci0JZHJtX3BjaV9mcmVlKGRldiwgZ2FydF9pbmZvLT50YWJsZV9oYW5kbGUpOwotCWdhcnRf
aW5mby0+dGFibGVfaGFuZGxlID0gTlVMTDsKLX0KLQogaW50IGRybV9hdGlfcGNpZ2FydF9jbGVh
bnVwKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fYXRpX3BjaWdhcnRfaW5mbyAq
Z2FydF9pbmZvKQogewogCXN0cnVjdCBkcm1fc2dfbWVtICplbnRyeSA9IGRldi0+c2c7CkBAIC04
Nyw4ICs4MCwxMCBAQCBpbnQgZHJtX2F0aV9wY2lnYXJ0X2NsZWFudXAoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgc3RydWN0IGRybV9hdGlfcGNpZ2FydF9pbmZvCiAJfQogCiAJaWYgKGdhcnRfaW5m
by0+Z2FydF90YWJsZV9sb2NhdGlvbiA9PSBEUk1fQVRJX0dBUlRfTUFJTiAmJgotCSAgICBnYXJ0
X2luZm8tPnRhYmxlX2hhbmRsZSkgewotCQlkcm1fYXRpX2ZyZWVfcGNpZ2FydF90YWJsZShkZXYs
IGdhcnRfaW5mbyk7CisJICAgIGdhcnRfaW5mby0+dGFibGVfdmFkZHIpIHsKKwkJZG1hX2ZyZWVf
Y29oZXJlbnQoJmRldi0+cGRldi0+ZGV2LCBnYXJ0X2luZm8tPnRhYmxlX3NpemUsCisJCQkJZ2Fy
dF9pbmZvLT50YWJsZV92YWRkciwgZ2FydF9pbmZvLT50YWJsZV9oYW5kbGUpOworCQlnYXJ0X2lu
Zm8tPnRhYmxlX3ZhZGRyID0gTlVMTDsKIAl9CiAKIAlyZXR1cm4gMTsKQEAgLTEyNyw5ICsxMjIs
OSBAQCBpbnQgZHJtX2F0aV9wY2lnYXJ0X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3Ry
dWN0IGRybV9hdGlfcGNpZ2FydF9pbmZvICpnYQogCQkJZ290byBkb25lOwogCQl9CiAKLQkJcGNp
X2dhcnQgPSBnYXJ0X2luZm8tPnRhYmxlX2hhbmRsZS0+dmFkZHI7Ci0JCWFkZHJlc3MgPSBnYXJ0
X2luZm8tPnRhYmxlX2hhbmRsZS0+dmFkZHI7Ci0JCWJ1c19hZGRyZXNzID0gZ2FydF9pbmZvLT50
YWJsZV9oYW5kbGUtPmJ1c2FkZHI7CisJCXBjaV9nYXJ0ID0gZ2FydF9pbmZvLT50YWJsZV92YWRk
cjsKKwkJYWRkcmVzcyA9IGdhcnRfaW5mby0+dGFibGVfdmFkZHI7CisJCWJ1c19hZGRyZXNzID0g
Z2FydF9pbmZvLT50YWJsZV9oYW5kbGU7CiAJfSBlbHNlIHsKIAkJYWRkcmVzcyA9IGdhcnRfaW5m
by0+YWRkcjsKIAkJYnVzX2FkZHJlc3MgPSBnYXJ0X2luZm8tPmJ1c19hZGRyOwpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vYXRpX3BjaWdhcnQuaCBiL2luY2x1ZGUvZHJtL2F0aV9wY2lnYXJ0LmgK
aW5kZXggYTcyOGExMzY0ZTY2Li4yZmZlMjc4YmEzYjMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJt
L2F0aV9wY2lnYXJ0LmgKKysrIGIvaW5jbHVkZS9kcm0vYXRpX3BjaWdhcnQuaApAQCAtMTgsNyAr
MTgsMTAgQEAgc3RydWN0IGRybV9hdGlfcGNpZ2FydF9pbmZvIHsKIAl2b2lkICphZGRyOwogCWRt
YV9hZGRyX3QgYnVzX2FkZHI7CiAJZG1hX2FkZHJfdCB0YWJsZV9tYXNrOwotCXN0cnVjdCBkcm1f
ZG1hX2hhbmRsZSAqdGFibGVfaGFuZGxlOworCisJZG1hX2FkZHJfdCB0YWJsZV9oYW5kbGU7CisJ
dm9pZCAqdGFibGVfdmFkZHI7CisKIAlzdHJ1Y3QgZHJtX2xvY2FsX21hcCBtYXBwaW5nOwogCWlu
dCB0YWJsZV9zaXplOwogfTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
