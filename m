Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9851D81E90
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 16:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF6B16E51C;
	Mon,  5 Aug 2019 14:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1AC6E472;
 Mon,  5 Aug 2019 14:01:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5FD9C300CB8C;
 Mon,  5 Aug 2019 14:01:26 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-81.ams2.redhat.com
 [10.36.116.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A46DE64036;
 Mon,  5 Aug 2019 14:01:25 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id D52739D20; Mon,  5 Aug 2019 16:01:23 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 16:01:18 +0200
Message-Id: <20190805140119.7337-17-kraxel@redhat.com>
In-Reply-To: <20190805140119.7337-1-kraxel@redhat.com>
References: <20190805140119.7337-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 05 Aug 2019 14:01:26 +0000 (UTC)
Subject: [Intel-gfx] [PATCH v6 16/17] drm/virtio: switch driver from
 bo->resv to bo->base.resv
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
Cc: thomas@shipmail.org, David Airlie <airlied@linux.ie>,
 ckoenig.leichtzumerken@gmail.com, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>,
 "open list:VIRTIO GPU DRIVER" <virtualization@lists.linux-foundation.org>,
 bskeggs@redhat.com, tzimmermann@suse.de, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+CkFja2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2lvY3RsLmMgfCA0ICsrLS0KIGRyaXZlcnMvZ3B1L2Ry
bS92aXJ0aW8vdmlydGdwdV9wbGFuZS5jIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Zp
cnRpby92aXJ0Z3B1X2lvY3RsLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfaW9j
dGwuYwppbmRleCBkMzc5ZDJlN2UzZWYuLjNjNDMwZGQ2NWY2NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2lvY3RsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3Zp
cnRpby92aXJ0Z3B1X2lvY3RsLmMKQEAgLTM5Niw3ICszOTYsNyBAQCBzdGF0aWMgaW50IHZpcnRp
b19ncHVfdHJhbnNmZXJfZnJvbV9ob3N0X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJ
CSh2Z2RldiwgcW9iai0+aHdfcmVzX2hhbmRsZSwKIAkJIHZmcHJpdi0+Y3R4X2lkLCBvZmZzZXQs
IGFyZ3MtPmxldmVsLAogCQkgJmJveCwgZmVuY2UpOwotCXJlc2VydmF0aW9uX29iamVjdF9hZGRf
ZXhjbF9mZW5jZShxb2JqLT50Ym8ucmVzdiwKKwlyZXNlcnZhdGlvbl9vYmplY3RfYWRkX2V4Y2xf
ZmVuY2UocW9iai0+dGJvLmJhc2UucmVzdiwKIAkJCQkJICAmZmVuY2UtPmYpOwogCiAJZG1hX2Zl
bmNlX3B1dCgmZmVuY2UtPmYpOwpAQCAtNDUwLDcgKzQ1MCw3IEBAIHN0YXRpYyBpbnQgdmlydGlv
X2dwdV90cmFuc2Zlcl90b19ob3N0X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsCiAJCQkodmdkZXYsIHFvYmosCiAJCQkgdmZwcml2ID8gdmZwcml2LT5jdHhfaWQgOiAw
LCBvZmZzZXQsCiAJCQkgYXJncy0+bGV2ZWwsICZib3gsIGZlbmNlKTsKLQkJcmVzZXJ2YXRpb25f
b2JqZWN0X2FkZF9leGNsX2ZlbmNlKHFvYmotPnRiby5yZXN2LAorCQlyZXNlcnZhdGlvbl9vYmpl
Y3RfYWRkX2V4Y2xfZmVuY2UocW9iai0+dGJvLmJhc2UucmVzdiwKIAkJCQkJCSAgJmZlbmNlLT5m
KTsKIAkJZG1hX2ZlbmNlX3B1dCgmZmVuY2UtPmYpOwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS92aXJ0aW8vdmlydGdwdV9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92
aXJ0Z3B1X3BsYW5lLmMKaW5kZXggZjk2YzgyOTYzMDdlLi4zZGMwOGY5OTFhOGQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wbGFuZS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS92aXJ0aW8vdmlydGdwdV9wbGFuZS5jCkBAIC0yMTIsNyArMjEyLDcgQEAgc3RhdGlj
IHZvaWQgdmlydGlvX2dwdV9jdXJzb3JfcGxhbmVfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBs
YW5lLAogCQkJIDAsIDAsIHZnZmItPmZlbmNlKTsKIAkJcmV0ID0gdmlydGlvX2dwdV9vYmplY3Rf
cmVzZXJ2ZShibywgZmFsc2UpOwogCQlpZiAoIXJldCkgewotCQkJcmVzZXJ2YXRpb25fb2JqZWN0
X2FkZF9leGNsX2ZlbmNlKGJvLT50Ym8ucmVzdiwKKwkJCXJlc2VydmF0aW9uX29iamVjdF9hZGRf
ZXhjbF9mZW5jZShiby0+dGJvLmJhc2UucmVzdiwKIAkJCQkJCQkgICZ2Z2ZiLT5mZW5jZS0+Zik7
CiAJCQlkbWFfZmVuY2VfcHV0KCZ2Z2ZiLT5mZW5jZS0+Zik7CiAJCQl2Z2ZiLT5mZW5jZSA9IE5V
TEw7Ci0tIAoyLjE4LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
