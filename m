Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D60045EE1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2AA4898EE;
	Fri, 14 Jun 2019 13:48:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A629898CC;
 Fri, 14 Jun 2019 13:48:03 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYW-0004tD-Fb; Fri, 14 Jun 2019 13:47:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:15 +0200
Message-Id: <20190614134726.3827-6-hch@lst.de>
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
 bh=/4FoCDBLnzPb2XMaauyatStM9o0VD0yD5rKIYuMBQ0E=; b=CunEZYdzj1zjPFvQ9vuv6tDtLy
 vk2B+7o+RESYX/Uj9YE1WPSM8gIuTAZ9+l9/VP7ellxJPLL3OCZwLpPkkg4YXW6iAK1W1D1NsQkRe
 R9/3wcIyp1y1J0ATOjHMugtXv7Iico5Aonf2oieKVDzXwypDKvx97YYahLtJLN0gNdbS9nFF40L8G
 5KFWLhTktOcQms4JvV3KcOo/4hbUdJHHZjKi58NphDT1sJOTHGcRUAlsD9UdoyaNfz245j984aH/g
 Vo2b1kxQcOlsnjlGFpHDFC20bvIYQtaIn5fpgbXQD6ANRo9p6tKP0Uc1+axVpGGcAW40+eMu8FIaS
 wqAUuf8Q==;
Subject: [Intel-gfx] [PATCH 05/16] drm: don't mark pages returned from
 drm_pci_alloc reserved
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

V2UgYXJlIG5vdCBhbGxvd2VkIHRvIGNhbGwgdmlydF90b19wYWdlIG9uIHBhZ2VzIHJldHVybmVk
IGZyb20KZG1hX2FsbG9jX2NvaGVyZW50LCBhcyBpbiBtYW55IGNhc2VzIHRoZSB2aXJ0dWFsIGFk
ZHJlc3MgcmV0dXJuZWQKaXMgYWFjdHVhbGx5IGEga2VybmVsIGRpcmVjdCBtYXBwaW5nLiAgQWxz
byB0aGVyZSBnZW5lcmFsbHkgaXMgbm8KbmVlZCB0byBtYXJrIGRtYSBtZW1vcnkgYXMgcmVzZXJ2
ZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vZHJtX2J1ZnMuYyB8IDE2ICstLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2RybV9idWZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2J1ZnMuYwppbmRl
eCA3NDE4ODcyZDg3YzYuLmI2NDA0MzdjZTkwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9idWZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9idWZzLmMKQEAgLTc3LDEzICs3
Nyw2IEBAIGRybV9kbWFfaGFuZGxlX3QgKmRybV9wY2lfYWxsb2Moc3RydWN0IGRybV9kZXZpY2Ug
KiBkZXYsIHNpemVfdCBzaXplLCBzaXplX3QgYWxpCiAJCXJldHVybiBOVUxMOwogCX0KIAotCS8q
IFhYWCAtIElzIHZpcnRfdG9fcGFnZSgpIGxlZ2FsIGZvciBjb25zaXN0ZW50IG1lbT8gKi8KLQkv
KiBSZXNlcnZlICovCi0JZm9yIChhZGRyID0gKHVuc2lnbmVkIGxvbmcpZG1haC0+dmFkZHIsIHN6
ID0gc2l6ZTsKLQkgICAgIHN6ID4gMDsgYWRkciArPSBQQUdFX1NJWkUsIHN6IC09IFBBR0VfU0la
RSkgewotCQlTZXRQYWdlUmVzZXJ2ZWQodmlydF90b19wYWdlKCh2b2lkICopYWRkcikpOwotCX0K
LQogCXJldHVybiBkbWFoOwogfQogCkBAIC05NywxNiArOTAsOSBAQCB2b2lkIF9fZHJtX2xlZ2Fj
eV9wY2lfZnJlZShzdHJ1Y3QgZHJtX2RldmljZSAqIGRldiwgZHJtX2RtYV9oYW5kbGVfdCAqIGRt
YWgpCiAJdW5zaWduZWQgbG9uZyBhZGRyOwogCXNpemVfdCBzejsKIAotCWlmIChkbWFoLT52YWRk
cikgewotCQkvKiBYWFggLSBJcyB2aXJ0X3RvX3BhZ2UoKSBsZWdhbCBmb3IgY29uc2lzdGVudCBt
ZW0/ICovCi0JCS8qIFVucmVzZXJ2ZSAqLwotCQlmb3IgKGFkZHIgPSAodW5zaWduZWQgbG9uZylk
bWFoLT52YWRkciwgc3ogPSBkbWFoLT5zaXplOwotCQkgICAgIHN6ID4gMDsgYWRkciArPSBQQUdF
X1NJWkUsIHN6IC09IFBBR0VfU0laRSkgewotCQkJQ2xlYXJQYWdlUmVzZXJ2ZWQodmlydF90b19w
YWdlKCh2b2lkICopYWRkcikpOwotCQl9CisJaWYgKGRtYWgtPnZhZGRyKQogCQlkbWFfZnJlZV9j
b2hlcmVudCgmZGV2LT5wZGV2LT5kZXYsIGRtYWgtPnNpemUsIGRtYWgtPnZhZGRyLAogCQkJCSAg
ZG1haC0+YnVzYWRkcik7Ci0JfQogfQogCiAvKioKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
