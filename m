Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAB7F7501
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 14:32:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A129E6E910;
	Mon, 11 Nov 2019 13:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4826C6E233
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 13:32:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19159920-1500050 
 for multiple; Mon, 11 Nov 2019 13:32:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 13:32:05 +0000
Message-Id: <20191111133205.11590-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111133205.11590-1-chris@chris-wilson.co.uk>
References: <20191111133205.11590-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [FIXES 3/3] drm/i915/execlists: Move reset_active()
 from schedule-out to schedule-in
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

VGhlIGdlbV9jdHhfcGVyc2lzdGVuY2Uvc21va2V0ZXN0IHdhcyBkZXRlY3RpbmcgYW4gb2RkIGNv
aGVyZW5jeSBpc3N1ZQppbnNpZGUgdGhlIExSQyBjb250ZXh0IGltYWdlOyB0aGF0IHRoZSBhZGRy
ZXNzIG9mIHRoZSByaW5nIGJ1ZmZlciBkaWQKbm90IG1hdGNoIG91ciBhc3NvY2lhdGVkIHN0cnVj
dCBpbnRlbF9yaW5nLiBBcyB3ZSBzZXQgdGhlIGFkZHJlc3MgaW50bwp0aGUgY29udGV4dCBpbWFn
ZSB3aGVuIHdlIHBpbiB0aGUgcmluZyBidWZmZXIgaW50byBwbGFjZSBiZWZvcmUgdGhlCmNvbnRl
eHQgaXMgYWN0aXZlLCB0aGF0IGxlYXZlcyB0aGUgcXVlc3Rpb24gb2Ygd2hlcmUgZGlkIGl0IGdl
dApvdmVyd3JpdHRlbi4gRWl0aGVyIHRoZSBIVyBjb250ZXh0IHNhdmUgb2NjdXJyZWQgYWZ0ZXIg
b3VyIHBpbiB3aGljaAp3b3VsZCBpbXBseSB0aGF0IG91ciBpZGxlIGJhcnJpZXJzIGFyZSBicm9r
ZW4sIG9yIHdlIG92ZXJ3cm90ZSB0aGUKY29udGV4dCBpbWFnZSBvdXJzZWx2ZXMuIEl0IGlzIG9u
bHkgaW4gcmVzZXRfYWN0aXZlKCkgd2hlcmUgd2UgZGFiYmxlCmluc2lkZSB0aGUgY29udGV4dCBp
bWFnZSBvdXRzaWRlIG9mIGEgc2VyaWFsaXNlZCBwYXRoIGZyb20gc2NoZWR1bGUtb3V0OwpidXQg
d2UgY291bGQgZXF1YWxseSBwZXJmb3JtIHRoZSBvcGVyYXRpb24gaW5zaWRlIHNjaGVkdWxlLWlu
IHdoaWNoIGlzCnRoZW4gZnVsbHkgc2VyaWFsaXNlZCB3aXRoIHRoZSBjb250ZXh0IHBpbiAtLSBh
bmQgcmVtYWlucyBzZXJpYWxpc2VkIGJ5CnRoZSBlbmdpbmUgcHVsc2Ugd2l0aCBraWxsX2NvbnRl
eHQoKS4gKFRoZSBvbmx5IGRvd25zaWRlLCBhc2lkZSBmcm9tCmRvaW5nIG1vcmUgd29yayBpbnNp
ZGUgdGhlIGVuZ2luZS0+YWN0aXZlLmxvY2ssIHdhcyB0aGUgcGxhbiB0byBtZXJnZQphbGwgdGhl
IHJlc2V0IHBhdGhzIGludG8gZG9pbmcgdGhlaXIgY29udGV4dCBzY3J1YmJpbmcgb24gc2NoZWR1
bGUtb3V0Cm5lZWRzIG1vcmUgdGhvdWdodC4pCgpGaXhlczogZDEyYWNlZTg0ZmZiICgiZHJtL2k5
MTUvZXhlY2xpc3RzOiBDYW5jZWwgYmFubmVkIGNvbnRleHRzIG9uIHNjaGVkdWxlLW91dCIpClRl
c3RjYXNlOiBpZ3QvZ2VtX2N0eF9wZXJzaXN0ZW5jZS9zbW9rZXRlc3QKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jIHwgMTE0ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCA1NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IGU1NzM0NTc5NWMwOC4uNGI2ZDllNmIxYmZkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTA0Miw2ICsxMDQyLDU5IEBAIGV4
ZWNsaXN0c19jaGVja19jb250ZXh0KGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAlX
QVJOX09OQ0UoIXZhbGlkLCAiSW52YWxpZCBscmMgc3RhdGUgZm91bmQgYmVmb3JlIHN1Ym1pc3Np
b25cbiIpOwogfQogCitzdGF0aWMgdm9pZCByZXN0b3JlX2RlZmF1bHRfc3RhdGUoc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlLAorCQkJCSAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQor
eworCXUzMiAqcmVncyA9IGNlLT5scmNfcmVnX3N0YXRlOworCisJaWYgKGVuZ2luZS0+cGlubmVk
X2RlZmF1bHRfc3RhdGUpCisJCW1lbWNweShyZWdzLCAvKiBza2lwIHJlc3RvcmluZyB0aGUgdmFu
aWxsYSBQUEhXU1AgKi8KKwkJICAgICAgIGVuZ2luZS0+cGlubmVkX2RlZmF1bHRfc3RhdGUgKyBM
UkNfU1RBVEVfUE4gKiBQQUdFX1NJWkUsCisJCSAgICAgICBlbmdpbmUtPmNvbnRleHRfc2l6ZSAt
IFBBR0VfU0laRSk7CisKKwlleGVjbGlzdHNfaW5pdF9yZWdfc3RhdGUocmVncywgY2UsIGVuZ2lu
ZSwgY2UtPnJpbmcsIGZhbHNlKTsKK30KKworc3RhdGljIHZvaWQgcmVzZXRfYWN0aXZlKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxLAorCQkJIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
K3sKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqIGNvbnN0IGNlID0gcnEtPmh3X2NvbnRleHQ7CisJ
dTMyIGhlYWQ7CisKKwkvKgorCSAqIFRoZSBleGVjdXRpbmcgY29udGV4dCBoYXMgYmVlbiBjYW5j
ZWxsZWQuIFdlIHdhbnQgdG8gcHJldmVudAorCSAqIGZ1cnRoZXIgZXhlY3V0aW9uIGFsb25nIHRo
aXMgY29udGV4dCBhbmQgcHJvcGFnYXRlIHRoZSBlcnJvciBvbgorCSAqIHRvIGFueXRoaW5nIGRl
cGVuZGluZyBvbiBpdHMgcmVzdWx0cy4KKwkgKgorCSAqIEluIF9faTkxNV9yZXF1ZXN0X3N1Ym1p
dCgpLCB3ZSBhcHBseSB0aGUgLUVJTyBhbmQgcmVtb3ZlIHRoZQorCSAqIHJlcXVlc3RzJyBwYXls
b2FkcyBmb3IgYW55IGJhbm5lZCByZXF1ZXN0cy4gQnV0IGZpcnN0LCB3ZSBtdXN0CisJICogcmV3
aW5kIHRoZSBjb250ZXh0IGJhY2sgdG8gdGhlIHN0YXJ0IG9mIHRoZSBpbmNvbXBsZXRlIHJlcXVl
c3Qgc28KKwkgKiB0aGF0IHdlIGRvIG5vdCBqdW1wIGJhY2sgaW50byB0aGUgbWlkZGxlIG9mIHRo
ZSBiYXRjaC4KKwkgKgorCSAqIFdlIHByZXNlcnZlIHRoZSBicmVhZGNydW1icyBhbmQgc2VtYXBo
b3JlcyBvZiB0aGUgaW5jb21wbGV0ZQorCSAqIHJlcXVlc3RzIHNvIHRoYXQgaW50ZXItdGltZWxp
bmUgZGVwZW5kZW5jaWVzIChpLmUgb3RoZXIgdGltZWxpbmVzKQorCSAqIHJlbWFpbiBjb3JyZWN0
bHkgb3JkZXJlZC4gQW5kIHdlIGRlZmVyIHRvIF9faTkxNV9yZXF1ZXN0X3N1Ym1pdCgpCisJICog
c28gdGhhdCBhbGwgYXN5bmNocm9ub3VzIHdhaXRzIGFyZSBjb3JyZWN0bHkgaGFuZGxlZC4KKwkg
Ki8KKwlHRU1fVFJBQ0UoIiVzKCVzKTogeyBycT0lbGx4OiVsbGQgfVxuIiwKKwkJICBfX2Z1bmNf
XywgZW5naW5lLT5uYW1lLCBycS0+ZmVuY2UuY29udGV4dCwgcnEtPmZlbmNlLnNlcW5vKTsKKwor
CS8qIE9uIHJlc3VibWlzc2lvbiBvZiB0aGUgYWN0aXZlIHJlcXVlc3QsIHBheWxvYWQgd2lsbCBi
ZSBzY3J1YmJlZCAqLworCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKKwkJaGVhZCA9
IHJxLT50YWlsOworCWVsc2UKKwkJaGVhZCA9IGFjdGl2ZV9yZXF1ZXN0KGNlLT50aW1lbGluZSwg
cnEpLT5oZWFkOworCWNlLT5yaW5nLT5oZWFkID0gaW50ZWxfcmluZ193cmFwKGNlLT5yaW5nLCBo
ZWFkKTsKKwlpbnRlbF9yaW5nX3VwZGF0ZV9zcGFjZShjZS0+cmluZyk7CisKKwkvKiBTY3J1YiB0
aGUgY29udGV4dCBpbWFnZSB0byBwcmV2ZW50IHJlcGxheWluZyB0aGUgcHJldmlvdXMgYmF0Y2gg
Ki8KKwlyZXN0b3JlX2RlZmF1bHRfc3RhdGUoY2UsIGVuZ2luZSk7CisJX19leGVjbGlzdHNfdXBk
YXRlX3JlZ19zdGF0ZShjZSwgZW5naW5lKTsKKworCS8qIFdlJ3ZlIHN3aXRjaGVkIGF3YXksIHNv
IHRoaXMgc2hvdWxkIGJlIGEgbm8tb3AsIGJ1dCBpbnRlbnQgbWF0dGVycyAqLworCWNlLT5scmNf
ZGVzYyB8PSBDVFhfREVTQ19GT1JDRV9SRVNUT1JFOworfQorCiBzdGF0aWMgaW5saW5lIHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKgogX19leGVjbGlzdHNfc2NoZWR1bGVfaW4oc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEpCiB7CkBAIC0xMDUwLDggKzExMDMsMTEgQEAgX19leGVjbGlzdHNfc2NoZWR1
bGVfaW4oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAKIAlpbnRlbF9jb250ZXh0X2dldChjZSk7
CiAKKwlpZiAodW5saWtlbHkoaTkxNV9nZW1fY29udGV4dF9pc19iYW5uZWQoY2UtPmdlbV9jb250
ZXh0KSkpCisJCXJlc2V0X2FjdGl2ZShycSwgZW5naW5lKTsKKwogCWlmIChJU19FTkFCTEVEKENP
TkZJR19EUk1fSTkxNV9ERUJVR19HRU0pKQotCQlleGVjbGlzdHNfY2hlY2tfY29udGV4dChjZSwg
cnEtPmVuZ2luZSk7CisJCWV4ZWNsaXN0c19jaGVja19jb250ZXh0KGNlLCBlbmdpbmUpOwogCiAJ
aWYgKGNlLT50YWcpIHsKIAkJLyogVXNlIGEgZml4ZWQgdGFnIGZvciBPQSBhbmQgZnJpZW5kcyAq
LwpAQCAtMTEwMiw1OSArMTE1OCw2IEBAIHN0YXRpYyB2b2lkIGtpY2tfc2libGluZ3Moc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEsIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAkJdGFza2xldF9z
Y2hlZHVsZSgmdmUtPmJhc2UuZXhlY2xpc3RzLnRhc2tsZXQpOwogfQogCi1zdGF0aWMgdm9pZCBy
ZXN0b3JlX2RlZmF1bHRfc3RhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAotCQkJCSAgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotewotCXUzMiAqcmVncyA9IGNlLT5scmNfcmVn
X3N0YXRlOwotCi0JaWYgKGVuZ2luZS0+cGlubmVkX2RlZmF1bHRfc3RhdGUpCi0JCW1lbWNweShy
ZWdzLCAvKiBza2lwIHJlc3RvcmluZyB0aGUgdmFuaWxsYSBQUEhXU1AgKi8KLQkJICAgICAgIGVu
Z2luZS0+cGlubmVkX2RlZmF1bHRfc3RhdGUgKyBMUkNfU1RBVEVfUE4gKiBQQUdFX1NJWkUsCi0J
CSAgICAgICBlbmdpbmUtPmNvbnRleHRfc2l6ZSAtIFBBR0VfU0laRSk7Ci0KLQlleGVjbGlzdHNf
aW5pdF9yZWdfc3RhdGUocmVncywgY2UsIGVuZ2luZSwgY2UtPnJpbmcsIGZhbHNlKTsKLX0KLQot
c3RhdGljIHZvaWQgcmVzZXRfYWN0aXZlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAotCQkJIHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLXsKLQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
IGNvbnN0IGNlID0gcnEtPmh3X2NvbnRleHQ7Ci0JdTMyIGhlYWQ7Ci0KLQkvKgotCSAqIFRoZSBl
eGVjdXRpbmcgY29udGV4dCBoYXMgYmVlbiBjYW5jZWxsZWQuIFdlIHdhbnQgdG8gcHJldmVudAot
CSAqIGZ1cnRoZXIgZXhlY3V0aW9uIGFsb25nIHRoaXMgY29udGV4dCBhbmQgcHJvcGFnYXRlIHRo
ZSBlcnJvciBvbgotCSAqIHRvIGFueXRoaW5nIGRlcGVuZGluZyBvbiBpdHMgcmVzdWx0cy4KLQkg
KgotCSAqIEluIF9faTkxNV9yZXF1ZXN0X3N1Ym1pdCgpLCB3ZSBhcHBseSB0aGUgLUVJTyBhbmQg
cmVtb3ZlIHRoZQotCSAqIHJlcXVlc3RzJyBwYXlsb2FkcyBmb3IgYW55IGJhbm5lZCByZXF1ZXN0
cy4gQnV0IGZpcnN0LCB3ZSBtdXN0Ci0JICogcmV3aW5kIHRoZSBjb250ZXh0IGJhY2sgdG8gdGhl
IHN0YXJ0IG9mIHRoZSBpbmNvbXBsZXRlIHJlcXVlc3Qgc28KLQkgKiB0aGF0IHdlIGRvIG5vdCBq
dW1wIGJhY2sgaW50byB0aGUgbWlkZGxlIG9mIHRoZSBiYXRjaC4KLQkgKgotCSAqIFdlIHByZXNl
cnZlIHRoZSBicmVhZGNydW1icyBhbmQgc2VtYXBob3JlcyBvZiB0aGUgaW5jb21wbGV0ZQotCSAq
IHJlcXVlc3RzIHNvIHRoYXQgaW50ZXItdGltZWxpbmUgZGVwZW5kZW5jaWVzIChpLmUgb3RoZXIg
dGltZWxpbmVzKQotCSAqIHJlbWFpbiBjb3JyZWN0bHkgb3JkZXJlZC4gQW5kIHdlIGRlZmVyIHRv
IF9faTkxNV9yZXF1ZXN0X3N1Ym1pdCgpCi0JICogc28gdGhhdCBhbGwgYXN5bmNocm9ub3VzIHdh
aXRzIGFyZSBjb3JyZWN0bHkgaGFuZGxlZC4KLQkgKi8KLQlHRU1fVFJBQ0UoIiVzKCVzKTogeyBy
cT0lbGx4OiVsbGQgfVxuIiwKLQkJICBfX2Z1bmNfXywgZW5naW5lLT5uYW1lLCBycS0+ZmVuY2Uu
Y29udGV4dCwgcnEtPmZlbmNlLnNlcW5vKTsKLQotCS8qIE9uIHJlc3VibWlzc2lvbiBvZiB0aGUg
YWN0aXZlIHJlcXVlc3QsIHBheWxvYWQgd2lsbCBiZSBzY3J1YmJlZCAqLwotCWlmIChpOTE1X3Jl
cXVlc3RfY29tcGxldGVkKHJxKSkKLQkJaGVhZCA9IHJxLT50YWlsOwotCWVsc2UKLQkJaGVhZCA9
IGFjdGl2ZV9yZXF1ZXN0KGNlLT50aW1lbGluZSwgcnEpLT5oZWFkOwotCWNlLT5yaW5nLT5oZWFk
ID0gaW50ZWxfcmluZ193cmFwKGNlLT5yaW5nLCBoZWFkKTsKLQlpbnRlbF9yaW5nX3VwZGF0ZV9z
cGFjZShjZS0+cmluZyk7Ci0KLQkvKiBTY3J1YiB0aGUgY29udGV4dCBpbWFnZSB0byBwcmV2ZW50
IHJlcGxheWluZyB0aGUgcHJldmlvdXMgYmF0Y2ggKi8KLQlyZXN0b3JlX2RlZmF1bHRfc3RhdGUo
Y2UsIGVuZ2luZSk7Ci0JX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjZSwgZW5naW5lKTsK
LQotCS8qIFdlJ3ZlIHN3aXRjaGVkIGF3YXksIHNvIHRoaXMgc2hvdWxkIGJlIGEgbm8tb3AsIGJ1
dCBpbnRlbnQgbWF0dGVycyAqLwotCWNlLT5scmNfZGVzYyB8PSBDVFhfREVTQ19GT1JDRV9SRVNU
T1JFOwotfQotCiBzdGF0aWMgaW5saW5lIHZvaWQKIF9fZXhlY2xpc3RzX3NjaGVkdWxlX291dChz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKIAkJCSBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICogY29u
c3QgZW5naW5lKQpAQCAtMTE2NSw5ICsxMTY4LDYgQEAgX19leGVjbGlzdHNfc2NoZWR1bGVfb3V0
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCWV4ZWNsaXN0c19jb250ZXh0X3N0YXR1c19jaGFu
Z2UocnEsIElOVEVMX0NPTlRFWFRfU0NIRURVTEVfT1VUKTsKIAlpbnRlbF9ndF9wbV9wdXQoZW5n
aW5lLT5ndCk7CiAKLQlpZiAodW5saWtlbHkoaTkxNV9nZW1fY29udGV4dF9pc19iYW5uZWQoY2Ut
PmdlbV9jb250ZXh0KSkpCi0JCXJlc2V0X2FjdGl2ZShycSwgZW5naW5lKTsKLQogCS8qCiAJICog
SWYgdGhpcyBpcyBwYXJ0IG9mIGEgdmlydHVhbCBlbmdpbmUsIGl0cyBuZXh0IHJlcXVlc3QgbWF5
CiAJICogaGF2ZSBiZWVuIGJsb2NrZWQgd2FpdGluZyBmb3IgYWNjZXNzIHRvIHRoZSBhY3RpdmUg
Y29udGV4dC4KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
