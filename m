Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3876645EEE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915D9898CC;
	Fri, 14 Jun 2019 13:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D647898E1;
 Fri, 14 Jun 2019 13:48:09 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYg-0005D2-H3; Fri, 14 Jun 2019 13:47:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:18 +0200
Message-Id: <20190614134726.3827-9-hch@lst.de>
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
 bh=WrqEw/kh06rUcYlXeZlC7gMu2XY6dy0Gg8ARfs+ZAOQ=; b=D9E3AJHJkUDDZwGDrICOo8xwSr
 Vfy2Y+1OPPXLUbN3S6PHwsqy/cmVJE6bpXLngdX6RBjQJ/8loJlNzq/VgpjqMsVb1OYqTqcJSfd/w
 ZTqwdyKvGBMYP+UdZr0PKY3UL+ICZo9n3syFkXle/QjrUYo22kN1OHsSkJTQETCKs6U3FbdS8UCIf
 15Qj3v6xgo6FD+k3Nt1TmpLZAWT2c/I9/ZkVi1twL1+1sce+5xjQNfVhNk5NtWjFrcrhDuua7gZwL
 8uwyLJmwGpEV23Kpn/3zN/KpBzDqAa5QVnZBlqDFG7exUujjmNHagTqiWfvxlzNuK2Z5Pu6tCggvd
 mp08sq1Q==;
Subject: [Intel-gfx] [PATCH 08/16] IB/qib: stop passing bogus gfp flags
 arguments to dma_alloc_coherent
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

ZG1hX2FsbG9jX2NvaGVyZW50IGlzIG5vdCBqdXN0IHRoZSBwYWdlIGFsbG9jYXRvci4gIFRoZSBv
bmx5IHZhbGlkCmFyZ3VtZW50cyB0byBwYXNzIGFyZSBlaXRoZXIgR0ZQX0FUT01JQyBvciBHRlBf
QVRPTUlDIHdpdGggcG9zc2libGUKbW9kaWZpZXJzIG9mIF9fR0ZQX05PUkVUUlkgb3IgX19HRlBf
Tk9XQVJOLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0t
LQogZHJpdmVycy9pbmZpbmliYW5kL2h3L3FpYi9xaWJfaWJhNjEyMC5jIHwgIDIgKy0KIGRyaXZl
cnMvaW5maW5pYmFuZC9ody9xaWIvcWliX2luaXQuYyAgICB8IDIwICsrKy0tLS0tLS0tLS0tLS0t
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L3FpYi9xaWJfaWJhNjEyMC5jIGIvZHJp
dmVycy9pbmZpbmliYW5kL2h3L3FpYi9xaWJfaWJhNjEyMC5jCmluZGV4IDUzMWQ4YTFkYjJjMy4u
ZDhhMGI4OTkzZDIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2luZmluaWJhbmQvaHcvcWliL3FpYl9p
YmE2MTIwLmMKKysrIGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L3FpYi9xaWJfaWJhNjEyMC5jCkBA
IC0yMDc2LDcgKzIwNzYsNyBAQCBzdGF0aWMgdm9pZCBhbGxvY19kdW1teV9oZHJxKHN0cnVjdCBx
aWJfZGV2ZGF0YSAqZGQpCiAJZGQtPmNzcGVjLT5kdW1teV9oZHJxID0gZG1hX2FsbG9jX2NvaGVy
ZW50KCZkZC0+cGNpZGV2LT5kZXYsCiAJCQkJCWRkLT5yY2RbMF0tPnJjdmhkcnFfc2l6ZSwKIAkJ
CQkJJmRkLT5jc3BlYy0+ZHVtbXlfaGRycV9waHlzLAotCQkJCQlHRlBfQVRPTUlDIHwgX19HRlBf
Q09NUCk7CisJCQkJCUdGUF9BVE9NSUMpOwogCWlmICghZGQtPmNzcGVjLT5kdW1teV9oZHJxKSB7
CiAJCXFpYl9kZXZpbmZvKGRkLT5wY2lkZXYsICJDb3VsZG4ndCBhbGxvY2F0ZSBkdW1teSBoZHJx
XG4iKTsKIAkJLyogZmFsbGJhY2sgdG8ganVzdCAwJ2luZyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pbmZpbmliYW5kL2h3L3FpYi9xaWJfaW5pdC5jIGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L3Fp
Yi9xaWJfaW5pdC5jCmluZGV4IGQ0ZmQ4YTZjZmY3Yi4uMDcyODg1YTY2ODRkIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2luZmluaWJhbmQvaHcvcWliL3FpYl9pbml0LmMKKysrIGIvZHJpdmVycy9pbmZp
bmliYW5kL2h3L3FpYi9xaWJfaW5pdC5jCkBAIC0xNTQ3LDE4ICsxNTQ3LDEzIEBAIGludCBxaWJf
Y3JlYXRlX3JjdmhkcnEoc3RydWN0IHFpYl9kZXZkYXRhICpkZCwgc3RydWN0IHFpYl9jdHh0ZGF0
YSAqcmNkKQogCiAJaWYgKCFyY2QtPnJjdmhkcnEpIHsKIAkJZG1hX2FkZHJfdCBwaHlzX2hkcnF0
YWlsOwotCQlnZnBfdCBnZnBfZmxhZ3M7Ci0KIAkJYW10ID0gQUxJR04oZGQtPnJjdmhkcmNudCAq
IGRkLT5yY3ZoZHJlbnRzaXplICoKIAkJCSAgICBzaXplb2YodTMyKSwgUEFHRV9TSVpFKTsKLQkJ
Z2ZwX2ZsYWdzID0gKHJjZC0+Y3R4dCA+PSBkZC0+Zmlyc3RfdXNlcl9jdHh0KSA/Ci0JCQlHRlBf
VVNFUiA6IEdGUF9LRVJORUw7CiAKIAkJb2xkX25vZGVfaWQgPSBkZXZfdG9fbm9kZSgmZGQtPnBj
aWRldi0+ZGV2KTsKIAkJc2V0X2Rldl9ub2RlKCZkZC0+cGNpZGV2LT5kZXYsIHJjZC0+bm9kZV9p
ZCk7CiAJCXJjZC0+cmN2aGRycSA9IGRtYV9hbGxvY19jb2hlcmVudCgKLQkJCSZkZC0+cGNpZGV2
LT5kZXYsIGFtdCwgJnJjZC0+cmN2aGRycV9waHlzLAotCQkJZ2ZwX2ZsYWdzIHwgX19HRlBfQ09N
UCk7CisJCQkmZGQtPnBjaWRldi0+ZGV2LCBhbXQsICZyY2QtPnJjdmhkcnFfcGh5cywgR0ZQX0tF
Uk5FTCk7CiAJCXNldF9kZXZfbm9kZSgmZGQtPnBjaWRldi0+ZGV2LCBvbGRfbm9kZV9pZCk7CiAK
IAkJaWYgKCFyY2QtPnJjdmhkcnEpIHsKQEAgLTE1NzgsNyArMTU3Myw3IEBAIGludCBxaWJfY3Jl
YXRlX3JjdmhkcnEoc3RydWN0IHFpYl9kZXZkYXRhICpkZCwgc3RydWN0IHFpYl9jdHh0ZGF0YSAq
cmNkKQogCQkJc2V0X2Rldl9ub2RlKCZkZC0+cGNpZGV2LT5kZXYsIHJjZC0+bm9kZV9pZCk7CiAJ
CQlyY2QtPnJjdmhkcnRhaWxfa3ZhZGRyID0gZG1hX2FsbG9jX2NvaGVyZW50KAogCQkJCSZkZC0+
cGNpZGV2LT5kZXYsIFBBR0VfU0laRSwgJnBoeXNfaGRycXRhaWwsCi0JCQkJZ2ZwX2ZsYWdzKTsK
KwkJCQlHRlBfS0VSTkVMKTsKIAkJCXNldF9kZXZfbm9kZSgmZGQtPnBjaWRldi0+ZGV2LCBvbGRf
bm9kZV9pZCk7CiAJCQlpZiAoIXJjZC0+cmN2aGRydGFpbF9rdmFkZHIpCiAJCQkJZ290byBiYWls
X2ZyZWU7CkBAIC0xNjIyLDE3ICsxNjE3LDggQEAgaW50IHFpYl9zZXR1cF9lYWdlcmJ1ZnMoc3Ry
dWN0IHFpYl9jdHh0ZGF0YSAqcmNkKQogCXN0cnVjdCBxaWJfZGV2ZGF0YSAqZGQgPSByY2QtPmRk
OwogCXVuc2lnbmVkIGUsIGVncmNudCwgZWdycGVyY2h1bmssIGNodW5rLCBlZ3JzaXplLCBlZ3Jv
ZmY7CiAJc2l6ZV90IHNpemU7Ci0JZ2ZwX3QgZ2ZwX2ZsYWdzOwogCWludCBvbGRfbm9kZV9pZDsK
IAotCS8qCi0JICogR0ZQX1VTRVIsIGJ1dCB3aXRob3V0IEdGUF9GUywgc28gYnVmZmVyIGNhY2hl
IGNhbiBiZQotCSAqIGNvYWxlc2NlZCAod2UgaG9wZSk7IG90aGVyd2lzZSwgZXZlbiBhdCBvcmRl
ciA0LAotCSAqIGhlYXZ5IGZpbGVzeXN0ZW0gYWN0aXZpdHkgbWFrZXMgdGhlc2UgZmFpbCwgYW5k
IHdlIGNhbgotCSAqIHVzZSBjb21wb3VuZCBwYWdlcy4KLQkgKi8KLQlnZnBfZmxhZ3MgPSBfX0dG
UF9SRUNMQUlNIHwgX19HRlBfSU8gfCBfX0dGUF9DT01QOwotCiAJZWdyY250ID0gcmNkLT5yY3Zl
Z3JjbnQ7CiAJZWdyb2ZmID0gcmNkLT5yY3ZlZ3JfdGlkX2Jhc2U7CiAJZWdyc2l6ZSA9IGRkLT5y
Y3ZlZ3JidWZzaXplOwpAQCAtMTY2NCw3ICsxNjUwLDcgQEAgaW50IHFpYl9zZXR1cF9lYWdlcmJ1
ZnMoc3RydWN0IHFpYl9jdHh0ZGF0YSAqcmNkKQogCQlyY2QtPnJjdmVncmJ1ZltlXSA9CiAJCQlk
bWFfYWxsb2NfY29oZXJlbnQoJmRkLT5wY2lkZXYtPmRldiwgc2l6ZSwKIAkJCQkJICAgJnJjZC0+
cmN2ZWdyYnVmX3BoeXNbZV0sCi0JCQkJCSAgIGdmcF9mbGFncyk7CisJCQkJCSAgIEdGUF9LRVJO
RUwpOwogCQlzZXRfZGV2X25vZGUoJmRkLT5wY2lkZXYtPmRldiwgb2xkX25vZGVfaWQpOwogCQlp
ZiAoIXJjZC0+cmN2ZWdyYnVmW2VdKQogCQkJZ290byBiYWlsX3JjdmVncmJ1Zl9waHlzOwotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
