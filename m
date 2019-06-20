Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9FC4C7CD
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 09:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E627A6E4F4;
	Thu, 20 Jun 2019 07:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B61A56E4F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 07:03:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16961262-1500050 
 for multiple; Thu, 20 Jun 2019 08:03:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 08:03:18 +0100
Message-Id: <20190620070319.27729-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620070319.27729-1-chris@chris-wilson.co.uk>
References: <20190620070319.27729-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gtt: Defer address space cleanup
 to an RCU worker
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

RW5hYmxlIFJDVSBwcm90ZWN0aW9uIG9mIGk5MTVfYWRkcmVzc19zcGFjZSBhbmQgaXRzIHBwZ3R0
IHN1cGVyY2xhc3NlcywKYW5kIGRlZmVyIGl0cyBjbGVhbnVwIGludG8gYSB3b3JrZXIgZXhlY3V0
ZWQgYWZ0ZXIgYW4gUkNVIGdyYWNlIHBlcmlvZC4KCkluIHRoZSBmdXR1cmUgd2Ugd2lsbCBiZSBh
YmxlIHRvIHVzZSB0aGUgUkNVIHByb3RlY3Rpb24gdG8gcmVkdWNlIHRoZQpsb2NraW5nIGFyb3Vu
ZCBWTSBsb29rdXBzLCBidXQgdGhlIGltbWVkaWF0ZSBiZW5lZml0IGlzIGJlaW5nIGFibGUgdG8K
ZGVmZXIgdGhlIHJlbGVhc2UgaW50byBhIGt3b3JrZXIgKHByb2Nlc3MgY29udGV4dCkuIFRoaXMg
aXMgcmVxdWlyZWQgYXMKd2UgbWF5IG5lZWQgdG8gc2xlZXAgdG8gcmVhcCB0aGUgV0MgcGFnZXMg
c3Rhc2hlZCBhd2F5IGluc2lkZSB0aGUgcHBndHQuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTM0ClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlLmhlYWRlci10ZXN0ICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyAgICAgICAgICAgfCAxMDkgKysrKysrKysrKy0tLS0tLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCAgICAgICAgICAgfCAgIDUgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jIHwgICAyIC0KIDQgZmlsZXMg
Y2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgNTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAppbmRleCBlNmJhNjZmNzg3ZjkuLmNiNzQyNDJm
OWMzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRl
c3QKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKQEAgLTYs
NiArNiw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKIAlpOTE1X2FjdGl2ZV90eXBlcy5oIFwKIAlpOTE1
X2RlYnVnZnMuaCBcCiAJaTkxNV9kcnYuaCBcCisJaTkxNV9nZW1fZ3R0LmggXAogCWk5MTVfaXJx
LmggXAogCWk5MTVfcGFyYW1zLmggXAogCWk5MTVfcHJpb2xpc3RfdHlwZXMuaCBcCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDhhYjgyMDE0NWVhNi4uYzMyYTU2NTJjNDkzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtNDgyLDkgKzQ4Miw2OSBAQCBzdGF0
aWMgdm9pZCB2bV9mcmVlX3BhZ2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sIHN0cnVj
dCBwYWdlICpwYWdlKQogCXNwaW5fdW5sb2NrKCZ2bS0+ZnJlZV9wYWdlcy5sb2NrKTsKIH0KIAor
c3RhdGljIHZvaWQgaTkxNV9hZGRyZXNzX3NwYWNlX2Zpbmkoc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0pCit7CisJc3Bpbl9sb2NrKCZ2bS0+ZnJlZV9wYWdlcy5sb2NrKTsKKwlpZiAocGFn
ZXZlY19jb3VudCgmdm0tPmZyZWVfcGFnZXMucHZlYykpCisJCXZtX2ZyZWVfcGFnZXNfcmVsZWFz
ZSh2bSwgdHJ1ZSk7CisJR0VNX0JVR19PTihwYWdldmVjX2NvdW50KCZ2bS0+ZnJlZV9wYWdlcy5w
dmVjKSk7CisJc3Bpbl91bmxvY2soJnZtLT5mcmVlX3BhZ2VzLmxvY2spOworCisJZHJtX21tX3Rh
a2Vkb3duKCZ2bS0+bW0pOworCisJbXV0ZXhfZGVzdHJveSgmdm0tPm11dGV4KTsKK30KKworc3Rh
dGljIHZvaWQgcHBndHRfZGVzdHJveV92bWEoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0p
Cit7CisJc3RydWN0IGxpc3RfaGVhZCAqcGhhc2VzW10gPSB7CisJCSZ2bS0+Ym91bmRfbGlzdCwK
KwkJJnZtLT51bmJvdW5kX2xpc3QsCisJCU5VTEwsCisJfSwgKipwaGFzZTsKKworCW11dGV4X2xv
Y2soJnZtLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwlmb3IgKHBoYXNlID0gcGhhc2VzOyAq
cGhhc2U7IHBoYXNlKyspIHsKKwkJc3RydWN0IGk5MTVfdm1hICp2bWEsICp2bjsKKworCQlsaXN0
X2Zvcl9lYWNoX2VudHJ5X3NhZmUodm1hLCB2biwgKnBoYXNlLCB2bV9saW5rKQorCQkJaTkxNV92
bWFfZGVzdHJveSh2bWEpOworCX0KKwltdXRleF91bmxvY2soJnZtLT5pOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKK30KKworc3RhdGljIHZvaWQgX19pOTE1X3ZtX3JlbGVhc2Uoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKQoreworCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0KKwkJY29u
dGFpbmVyX29mKHdvcmssIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UsIHJjdS53b3JrKTsKKwor
CXBwZ3R0X2Rlc3Ryb3lfdm1hKHZtKTsKKworCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJnZtLT5i
b3VuZF9saXN0KSk7CisJR0VNX0JVR19PTighbGlzdF9lbXB0eSgmdm0tPnVuYm91bmRfbGlzdCkp
OworCisJdm0tPmNsZWFudXAodm0pOworCWk5MTVfYWRkcmVzc19zcGFjZV9maW5pKHZtKTsKKwor
CWtmcmVlKHZtKTsKK30KKwordm9pZCBpOTE1X3ZtX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYp
Cit7CisJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPQorCQljb250YWluZXJfb2Yoa3Jl
Ziwgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSwgcmVmKTsKKworCUdFTV9CVUdfT04oaTkxNV9p
c19nZ3R0KHZtKSk7CisJdHJhY2VfaTkxNV9wcGd0dF9yZWxlYXNlKHZtKTsKKworCXZtLT5jbG9z
ZWQgPSB0cnVlOworCXF1ZXVlX3JjdV93b3JrKHZtLT5pOTE1LT53cSwgJnZtLT5yY3UpOworfQor
CiBzdGF0aWMgdm9pZCBpOTE1X2FkZHJlc3Nfc3BhY2VfaW5pdChzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSwgaW50IHN1YmNsYXNzKQogewogCWtyZWZfaW5pdCgmdm0tPnJlZik7CisJSU5J
VF9SQ1VfV09SSygmdm0tPnJjdSwgX19pOTE1X3ZtX3JlbGVhc2UpOwogCiAJLyoKIAkgKiBUaGUg
dm0tPm11dGV4IG11c3QgYmUgcmVjbGFpbSBzYWZlIChmb3IgdXNlIGluIHRoZSBzaHJpbmtlciku
CkBAIC01MDUsMTkgKzU2NSw2IEBAIHN0YXRpYyB2b2lkIGk5MTVfYWRkcmVzc19zcGFjZV9pbml0
KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBpbnQgc3ViY2xhc3MpCiAJSU5JVF9MSVNU
X0hFQUQoJnZtLT5ib3VuZF9saXN0KTsKIH0KIAotc3RhdGljIHZvaWQgaTkxNV9hZGRyZXNzX3Nw
YWNlX2Zpbmkoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCi17Ci0Jc3Bpbl9sb2NrKCZ2
bS0+ZnJlZV9wYWdlcy5sb2NrKTsKLQlpZiAocGFnZXZlY19jb3VudCgmdm0tPmZyZWVfcGFnZXMu
cHZlYykpCi0JCXZtX2ZyZWVfcGFnZXNfcmVsZWFzZSh2bSwgdHJ1ZSk7Ci0JR0VNX0JVR19PTihw
YWdldmVjX2NvdW50KCZ2bS0+ZnJlZV9wYWdlcy5wdmVjKSk7Ci0Jc3Bpbl91bmxvY2soJnZtLT5m
cmVlX3BhZ2VzLmxvY2spOwotCi0JZHJtX21tX3Rha2Vkb3duKCZ2bS0+bW0pOwotCi0JbXV0ZXhf
ZGVzdHJveSgmdm0tPm11dGV4KTsKLX0KLQogc3RhdGljIGludCBfX3NldHVwX3BhZ2VfZG1hKHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCQkJICAgIHN0cnVjdCBpOTE1X3BhZ2VfZG1h
ICpwLAogCQkJICAgIGdmcF90IGdmcCkKQEAgLTIyNTAsNDIgKzIyOTcsNiBAQCBpOTE1X3BwZ3R0
X2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlyZXR1cm4gcHBndHQ7CiB9
CiAKLXN0YXRpYyB2b2lkIHBwZ3R0X2Rlc3Ryb3lfdm1hKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtKQotewotCXN0cnVjdCBsaXN0X2hlYWQgKnBoYXNlc1tdID0gewotCQkmdm0tPmJvdW5k
X2xpc3QsCi0JCSZ2bS0+dW5ib3VuZF9saXN0LAotCQlOVUxMLAotCX0sICoqcGhhc2U7Ci0KLQl2
bS0+Y2xvc2VkID0gdHJ1ZTsKLQlmb3IgKHBoYXNlID0gcGhhc2VzOyAqcGhhc2U7IHBoYXNlKysp
IHsKLQkJc3RydWN0IGk5MTVfdm1hICp2bWEsICp2bjsKLQotCQlsaXN0X2Zvcl9lYWNoX2VudHJ5
X3NhZmUodm1hLCB2biwgKnBoYXNlLCB2bV9saW5rKQotCQkJaTkxNV92bWFfZGVzdHJveSh2bWEp
OwotCX0KLX0KLQotdm9pZCBpOTE1X3ZtX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYpCi17Ci0J
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPQotCQljb250YWluZXJfb2Yoa3JlZiwgc3Ry
dWN0IGk5MTVfYWRkcmVzc19zcGFjZSwgcmVmKTsKLQotCUdFTV9CVUdfT04oaTkxNV9pc19nZ3R0
KHZtKSk7Ci0JdHJhY2VfaTkxNV9wcGd0dF9yZWxlYXNlKHZtKTsKLQotCXBwZ3R0X2Rlc3Ryb3lf
dm1hKHZtKTsKLQotCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJnZtLT5ib3VuZF9saXN0KSk7Ci0J
R0VNX0JVR19PTighbGlzdF9lbXB0eSgmdm0tPnVuYm91bmRfbGlzdCkpOwotCi0Jdm0tPmNsZWFu
dXAodm0pOwotCWk5MTVfYWRkcmVzc19zcGFjZV9maW5pKHZtKTsKLQotCWtmcmVlKHZtKTsKLX0K
LQogLyogQ2VydGFpbiBHZW41IGNoaXBzZXRzIHJlcXVpcmUgcmVxdWlyZSBpZGxpbmcgdGhlIEdQ
VSBiZWZvcmUKICAqIHVubWFwcGluZyBhbnl0aGluZyBmcm9tIHRoZSBHVFQgd2hlbiBWVC1kIGlz
IGVuYWJsZWQuCiAgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKaW5kZXggODEyNzE3
Y2NjNjliLi44ZGU1N2Y2N2E5MTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCkBA
IC0zNSw4ICszNSwxMiBAQAogI2RlZmluZSBfX0k5MTVfR0VNX0dUVF9IX18KIAogI2luY2x1ZGUg
PGxpbnV4L2lvLW1hcHBpbmcuaD4KKyNpbmNsdWRlIDxsaW51eC9rcmVmLmg+CiAjaW5jbHVkZSA8
bGludXgvbW0uaD4KICNpbmNsdWRlIDxsaW51eC9wYWdldmVjLmg+CisjaW5jbHVkZSA8bGludXgv
d29ya3F1ZXVlLmg+CisKKyNpbmNsdWRlIDxkcm0vZHJtX21tLmg+CiAKICNpbmNsdWRlICJndC9p
bnRlbF9yZXNldC5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX2ZlbmNlX3JlZy5oIgpAQCAtMjgwLDYg
KzI4NCw3IEBAIHN0cnVjdCBwYWdlc3Rhc2ggewogCiBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl
IHsKIAlzdHJ1Y3Qga3JlZiByZWY7CisJc3RydWN0IHJjdV93b3JrIHJjdTsKIAogCXN0cnVjdCBk
cm1fbW0gbW07CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMKaW5kZXggMWE2MGI5ZmU4MjIxLi4w
YzQ3Mjc2ZWQ1ZGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9n
ZW1fZ3R0LmMKQEAgLTIwOCw5ICsyMDgsNyBAQCBzdGF0aWMgaW50IGlndF9wcGd0dF9hbGxvYyh2
b2lkICphcmcpCiAJfQogCiBlcnJfcHBndHRfY2xlYW51cDoKLQltdXRleF9sb2NrKCZkZXZfcHJp
di0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJaTkxNV92bV9wdXQoJnBwZ3R0LT52bSk7Ci0JbXV0ZXhf
dW5sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJcmV0dXJuIGVycjsKIH0KIAot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
