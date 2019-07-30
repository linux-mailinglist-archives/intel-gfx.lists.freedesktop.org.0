Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 411A07AA12
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 15:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1098C6E51C;
	Tue, 30 Jul 2019 13:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796196E51C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 13:48:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17730650-1500050 
 for multiple; Tue, 30 Jul 2019 14:30:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 14:30:33 +0100
Message-Id: <20190730133035.1977-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730133035.1977-1-chris@chris-wilson.co.uk>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/17] drm/i915: Flush the freed object list on
 file close
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIHwgMzggKysrLS0t
LS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAg
ICAgIHwgIDMgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICB8
ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICB8ICAxIC0K
IDQgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5kZXggNGVhOTdmY2E5YzM1
Li4xOWQ1NTExNTc0N2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMKQEAgLTIxMSw0OCArMjExLDE4IEBAIHN0YXRpYyB2b2lkIF9faTkxNV9nZW1fZnJlZV9v
YmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCiB2b2lkIGk5MTVfZ2VtX2Zs
dXNoX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKLQlzdHJ1
Y3QgbGxpc3Rfbm9kZSAqZnJlZWQ7Ci0KLQkvKiBGcmVlIHRoZSBvbGRlc3QsIG1vc3Qgc3RhbGUg
b2JqZWN0IHRvIGtlZXAgdGhlIGZyZWVfbGlzdCBzaG9ydCAqLwotCWZyZWVkID0gTlVMTDsKLQlp
ZiAoIWxsaXN0X2VtcHR5KCZpOTE1LT5tbS5mcmVlX2xpc3QpKSB7IC8qIHF1aWNrIHRlc3QgZm9y
IGhvdHBhdGggKi8KLQkJLyogT25seSBvbmUgY29uc3VtZXIgb2YgbGxpc3RfZGVsX2ZpcnN0KCkg
YWxsb3dlZCAqLwotCQlzcGluX2xvY2soJmk5MTUtPm1tLmZyZWVfbG9jayk7Ci0JCWZyZWVkID0g
bGxpc3RfZGVsX2ZpcnN0KCZpOTE1LT5tbS5mcmVlX2xpc3QpOwotCQlzcGluX3VubG9jaygmaTkx
NS0+bW0uZnJlZV9sb2NrKTsKLQl9Ci0JaWYgKHVubGlrZWx5KGZyZWVkKSkgewotCQlmcmVlZC0+
bmV4dCA9IE5VTEw7CisJc3RydWN0IGxsaXN0X25vZGUgKmZyZWVkID0gbGxpc3RfZGVsX2FsbCgm
aTkxNS0+bW0uZnJlZV9saXN0KTsKKworCWlmICh1bmxpa2VseShmcmVlZCkpCiAJCV9faTkxNV9n
ZW1fZnJlZV9vYmplY3RzKGk5MTUsIGZyZWVkKTsKLQl9CiB9CiAKIHN0YXRpYyB2b2lkIF9faTkx
NV9nZW1fZnJlZV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIHsKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9CiAJCWNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSwgbW0uZnJlZV93b3JrKTsKLQlzdHJ1Y3QgbGxpc3Rfbm9kZSAqZnJlZWQ7Ci0K
LQkvKgotCSAqIEFsbCBmaWxlLW93bmVkIFZNQSBzaG91bGQgaGF2ZSBiZWVuIHJlbGVhc2VkIGJ5
IHRoaXMgcG9pbnQgdGhyb3VnaAotCSAqIGk5MTVfZ2VtX2Nsb3NlX29iamVjdCgpLCBvciBlYXJs
aWVyIGJ5IGk5MTVfZ2VtX2NvbnRleHRfY2xvc2UoKS4KLQkgKiBIb3dldmVyLCB0aGUgb2JqZWN0
IG1heSBhbHNvIGJlIGJvdW5kIGludG8gdGhlIGdsb2JhbCBHVFQgKGUuZy4KLQkgKiBvbGRlciBH
UFVzIHdpdGhvdXQgcGVyLXByb2Nlc3Mgc3VwcG9ydCwgb3IgZm9yIGRpcmVjdCBhY2Nlc3MgdGhy
b3VnaAotCSAqIHRoZSBHVFQgZWl0aGVyIGZvciB0aGUgdXNlciBvciBmb3Igc2Nhbm91dCkuIFRo
b3NlIFZNQSBzdGlsbCBuZWVkIHRvCi0JICogdW5ib3VuZCBub3cuCi0JICovCi0KLQlzcGluX2xv
Y2soJmk5MTUtPm1tLmZyZWVfbG9jayk7Ci0Jd2hpbGUgKChmcmVlZCA9IGxsaXN0X2RlbF9hbGwo
Jmk5MTUtPm1tLmZyZWVfbGlzdCkpKSB7Ci0JCXNwaW5fdW5sb2NrKCZpOTE1LT5tbS5mcmVlX2xv
Y2spOwogCi0JCV9faTkxNV9nZW1fZnJlZV9vYmplY3RzKGk5MTUsIGZyZWVkKTsKLQkJaWYgKG5l
ZWRfcmVzY2hlZCgpKQotCQkJcmV0dXJuOwotCi0JCXNwaW5fbG9jaygmaTkxNS0+bW0uZnJlZV9s
b2NrKTsKLQl9Ci0Jc3Bpbl91bmxvY2soJmk5MTUtPm1tLmZyZWVfbG9jayk7CisJaTkxNV9nZW1f
Zmx1c2hfZnJlZV9vYmplY3RzKGk5MTUpOwogfQogCiB2b2lkIGk5MTVfZ2VtX2ZyZWVfb2JqZWN0
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ2VtX29iaikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmlu
ZGV4IGEwZTQ4NDc2MDMyOS4uY2I0MmQ0NGNhMzI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
QEAgLTE4OTMsNiArMTg5Myw5IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3Bvc3RjbG9zZShz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCiAJbXV0ZXhfdW5s
b2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7CiAKIAlrZnJlZShmaWxlX3ByaXYpOworCisJLyogQ2F0
Y2ggdXAgd2l0aCBhbGwgdGhlIGRlZmVycmVkIGZyZWVzIGZyb20gInRoaXMiIGNsaWVudCAqLwor
CWk5MTVfZ2VtX2ZsdXNoX2ZyZWVfb2JqZWN0cyh0b19pOTE1KGRldikpOwogfQogCiBzdGF0aWMg
dm9pZCBpbnRlbF9zdXNwZW5kX2VuY29kZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGQ0MjBiMGZhMGQwNC4uMzI2OTA4YTRi
ZGIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTc2Nyw3ICs3NjcsNiBAQCBzdHJ1Y3Qg
aTkxNV9nZW1fbW0gewogCSAqLwogCXN0cnVjdCBsbGlzdF9oZWFkIGZyZWVfbGlzdDsKIAlzdHJ1
Y3Qgd29ya19zdHJ1Y3QgZnJlZV93b3JrOwotCXNwaW5sb2NrX3QgZnJlZV9sb2NrOwogCS8qKgog
CSAqIENvdW50IG9mIG9iamVjdHMgcGVuZGluZyBkZXN0cnVjdGlvbnMuIFVzZWQgdG8gc2tpcCBu
ZWVkbGVzc2x5CiAJICogd2FpdGluZyBvbiBhbiBSQ1UgYmFycmllciBpZiBubyBvYmplY3RzIGFy
ZSB3YWl0aW5nIHRvIGJlIGZyZWVkLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggNWVlYjc0
MDRhMzYyLi4wZTBiNTRhYmRlNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTY1Myw3
ICsxNjUzLDYgQEAgdm9pZCBpOTE1X2dlbV9pbml0X21taW8oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiBzdGF0aWMgdm9pZCBpOTE1X2dlbV9pbml0X19tbShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIHsKIAlzcGluX2xvY2tfaW5pdCgmaTkxNS0+bW0ub2JqX2xvY2spOwot
CXNwaW5fbG9ja19pbml0KCZpOTE1LT5tbS5mcmVlX2xvY2spOwogCiAJaW5pdF9sbGlzdF9oZWFk
KCZpOTE1LT5tbS5mcmVlX2xpc3QpOwogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
