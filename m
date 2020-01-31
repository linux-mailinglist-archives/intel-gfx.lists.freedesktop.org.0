Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B95FE14EB3D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 11:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188E46FAEB;
	Fri, 31 Jan 2020 10:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53AF96E961
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 10:46:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20070423-1500050 
 for multiple; Fri, 31 Jan 2020 10:45:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 10:45:47 +0000
Message-Id: <20200131104548.2451485-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
References: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: Allow userspace to specify
 ringsize on construction
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

Tm8gZ29vZCByZWFzb24gd2h5IHdlIG11c3QgYWx3YXlzIHVzZSBhIHN0YXRpYyByaW5nc2l6ZSwg
c28gbGV0CnVzZXJzcGFjZSBzZWxlY3Qgb25lIGR1cmluZyBjb25zdHJ1Y3Rpb24uCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFN0ZXZlIENh
cmJvbmFyaSA8c3RldmVuLmNhcmJvbmFyaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKYW51c3og
S3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgICB8IDExMCArKysrKysrKysr
KysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfcGFyYW0uYyB8
ICA2MyArKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3Bh
cmFtLmggfCAgMTQgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAg
ICAgICAgfCAgIDEgKwogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oICAgICAgICAgICAgICAg
ICAgIHwgIDIxICsrKysKIDYgZmlsZXMgY2hhbmdlZCwgMjAyIGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfY29udGV4dF9wYXJhbS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfY29udGV4dF9wYXJhbS5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCAxMmQ1
M2U5YTAyNmEuLmI1MTA1ZjM4ZjhjZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
TWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTgyLDYgKzgy
LDcgQEAgZ3QteSArPSBcCiAJZ3QvZ2VuOF9wcGd0dC5vIFwKIAlndC9pbnRlbF9icmVhZGNydW1i
cy5vIFwKIAlndC9pbnRlbF9jb250ZXh0Lm8gXAorCWd0L2ludGVsX2NvbnRleHRfcGFyYW0ubyBc
CiAJZ3QvaW50ZWxfY29udGV4dF9zc2V1Lm8gXAogCWd0L2ludGVsX2VuZ2luZV9jcy5vIFwKIAln
dC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0Lm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMKaW5kZXggY2JjMWNlYzk5ODhkLi44MTc2YWQxMjFmMTAgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtNzEsNiArNzEs
NyBAQAogCiAjaW5jbHVkZSAiZ3QvZ2VuNl9wcGd0dC5oIgogI2luY2x1ZGUgImd0L2ludGVsX2Nv
bnRleHQuaCIKKyNpbmNsdWRlICJndC9pbnRlbF9jb250ZXh0X3BhcmFtLmgiCiAjaW5jbHVkZSAi
Z3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oIgogI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91
c2VyLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24uaCIgLyogdmly
dHVhbF9lbmdpbmUgKi8KQEAgLTYyNCwyMyArNjI1LDMwIEBAIF9fY3JlYXRlX2NvbnRleHQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJcmV0dXJuIEVSUl9QVFIoZXJyKTsKIH0KIAot
c3RhdGljIHZvaWQKK3N0YXRpYyBpbnQKIGNvbnRleHRfYXBwbHlfYWxsKHN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpjdHgsCi0JCSAgdm9pZCAoKmZuKShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
IHZvaWQgKmRhdGEpLAorCQkgIGludCAoKmZuKShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHZv
aWQgKmRhdGEpLAogCQkgIHZvaWQgKmRhdGEpCiB7CiAJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNf
aXRlciBpdDsKIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CisJaW50IGVyciA9IDA7CiAKLQlm
b3JfZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgp
LCBpdCkKLQkJZm4oY2UsIGRhdGEpOworCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2Vt
X2NvbnRleHRfbG9ja19lbmdpbmVzKGN0eCksIGl0KSB7CisJCWVyciA9IGZuKGNlLCBkYXRhKTsK
KwkJaWYgKGVycikKKwkJCWJyZWFrOworCX0KIAlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdp
bmVzKGN0eCk7CisKKwlyZXR1cm4gZXJyOwogfQogCi1zdGF0aWMgdm9pZCBfX2FwcGx5X3BwZ3R0
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqdm0pCitzdGF0aWMgaW50IF9fYXBwbHlf
cHBndHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp2bSkKIHsKIAlpOTE1X3ZtX3B1
dChjZS0+dm0pOwogCWNlLT52bSA9IGk5MTVfdm1fZ2V0KHZtKTsKKwlyZXR1cm4gMDsKIH0KIAog
c3RhdGljIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKgpAQCAtNjc4LDkgKzY4NiwxMCBAQCBz
dGF0aWMgdm9pZCBfX3NldF90aW1lbGluZShzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKipkc3QsCiAJ
CWludGVsX3RpbWVsaW5lX3B1dChvbGQpOwogfQogCi1zdGF0aWMgdm9pZCBfX2FwcGx5X3RpbWVs
aW5lKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqdGltZWxpbmUpCitzdGF0aWMgaW50
IF9fYXBwbHlfdGltZWxpbmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp0aW1lbGlu
ZSkKIHsKIAlfX3NldF90aW1lbGluZSgmY2UtPnRpbWVsaW5lLCB0aW1lbGluZSk7CisJcmV0dXJu
IDA7CiB9CiAKIHN0YXRpYyB2b2lkIF9fYXNzaWduX3RpbWVsaW5lKHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCkBAIC0xMTcxLDYgKzExODAsNjMgQEAgc3RhdGljIGludCBzZXRfcHBndHQo
c3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9wcml2LAogCXJldHVybiBlcnI7CiB9
CiAKK3N0YXRpYyBpbnQgX19hcHBseV9yaW5nc2l6ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
IHZvaWQgKnN6KQoreworCXJldHVybiBpbnRlbF9jb250ZXh0X3NldF9yaW5nX3NpemUoY2UsICh1
bnNpZ25lZCBsb25nKXN6KTsKK30KKworc3RhdGljIGludCBzZXRfcmluZ3NpemUoc3RydWN0IGk5
MTVfZ2VtX2NvbnRleHQgKmN0eCwKKwkJCXN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJh
bSAqYXJncykKK3sKKwlpZiAoIUhBU19MT0dJQ0FMX1JJTkdfQ09OVEVYVFMoY3R4LT5pOTE1KSkK
KwkJcmV0dXJuIC1FTk9ERVY7CisKKwlpZiAoYXJncy0+c2l6ZSkKKwkJcmV0dXJuIC1FSU5WQUw7
CisKKwlpZiAoIUlTX0FMSUdORUQoYXJncy0+dmFsdWUsIEk5MTVfR1RUX1BBR0VfU0laRSkpCisJ
CXJldHVybiAtRUlOVkFMOworCisJaWYgKGFyZ3MtPnZhbHVlIDwgSTkxNV9HVFRfUEFHRV9TSVpF
KQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmIChhcmdzLT52YWx1ZSA+IDEyOCAqIEk5MTVfR1RU
X1BBR0VfU0laRSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlyZXR1cm4gY29udGV4dF9hcHBseV9h
bGwoY3R4LAorCQkJCSBfX2FwcGx5X3JpbmdzaXplLAorCQkJCSBfX2ludGVsX2NvbnRleHRfcmlu
Z19zaXplKGFyZ3MtPnZhbHVlKSk7Cit9CisKK3N0YXRpYyBpbnQgX19nZXRfcmluZ3NpemUoc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICphcmcpCit7CisJbG9uZyBzejsKKworCXN6ID0g
aW50ZWxfY29udGV4dF9nZXRfcmluZ19zaXplKGNlKTsKKwlHRU1fQlVHX09OKHN6ID4gSU5UX01B
WCk7CisKKwlyZXR1cm4gc3o7IC8qIHN0b3Agb24gZmlyc3QgZW5naW5lICovCit9CisKK3N0YXRp
YyBpbnQgZ2V0X3JpbmdzaXplKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCisJCQlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFyYW0gKmFyZ3MpCit7CisJaW50IHN6OworCisJaWYg
KCFIQVNfTE9HSUNBTF9SSU5HX0NPTlRFWFRTKGN0eC0+aTkxNSkpCisJCXJldHVybiAtRU5PREVW
OworCisJaWYgKGFyZ3MtPnNpemUpCisJCXJldHVybiAtRUlOVkFMOworCisJc3ogPSBjb250ZXh0
X2FwcGx5X2FsbChjdHgsIF9fZ2V0X3JpbmdzaXplLCBOVUxMKTsKKwlpZiAoc3ogPCAwKQorCQly
ZXR1cm4gc3o7CisKKwlhcmdzLT52YWx1ZSA9IHN6OworCXJldHVybiAwOworfQorCiBzdGF0aWMg
aW50CiB1c2VyX3RvX2NvbnRleHRfc3NldShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
IAkJICAgICBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFyYW1fc3NldSAqdXNl
ciwKQEAgLTE3MzYsMTcgKzE4MDIsMTkgQEAgc2V0X3BlcnNpc3RlbmNlKHN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpjdHgsCiAJcmV0dXJuIF9fY29udGV4dF9zZXRfcGVyc2lzdGVuY2UoY3R4LCBh
cmdzLT52YWx1ZSk7CiB9CiAKLXN0YXRpYyB2b2lkIF9fYXBwbHlfcHJpb3JpdHkoc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlLCB2b2lkICphcmcpCitzdGF0aWMgaW50IF9fYXBwbHlfcHJpb3JpdHko
c3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICphcmcpCiB7CiAJc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmN0eCA9IGFyZzsKIAogCWlmICghaW50ZWxfZW5naW5lX2hhc19zZW1hcGhvcmVz
KGNlLT5lbmdpbmUpKQotCQlyZXR1cm47CisJCXJldHVybiAwOwogCiAJaWYgKGN0eC0+c2NoZWQu
cHJpb3JpdHkgPj0gSTkxNV9QUklPUklUWV9OT1JNQUwpCiAJCWludGVsX2NvbnRleHRfc2V0X3Vz
ZV9zZW1hcGhvcmVzKGNlKTsKIAllbHNlCiAJCWludGVsX2NvbnRleHRfY2xlYXJfdXNlX3NlbWFw
aG9yZXMoY2UpOworCisJcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgc2V0X3ByaW9yaXR5KHN0
cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCkBAIC0xODM5LDYgKzE5MDcsMTAgQEAgc3RhdGlj
IGludCBjdHhfc2V0cGFyYW0oc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZnByaXYsCiAJ
CXJldCA9IHNldF9wZXJzaXN0ZW5jZShjdHgsIGFyZ3MpOwogCQlicmVhazsKIAorCWNhc2UgSTkx
NV9DT05URVhUX1BBUkFNX1JJTkdTSVpFOgorCQlyZXQgPSBzZXRfcmluZ3NpemUoY3R4LCBhcmdz
KTsKKwkJYnJlYWs7CisKIAljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9CQU5fUEVSSU9EOgogCWRl
ZmF1bHQ6CiAJCXJldCA9IC1FSU5WQUw7CkBAIC0xODY3LDYgKzE5MzksMTggQEAgc3RhdGljIGlu
dCBjcmVhdGVfc2V0cGFyYW0oc3RydWN0IGk5MTVfdXNlcl9leHRlbnNpb24gX191c2VyICpleHQs
IHZvaWQgKmRhdGEpCiAJcmV0dXJuIGN0eF9zZXRwYXJhbShhcmctPmZwcml2LCBhcmctPmN0eCwg
JmxvY2FsLnBhcmFtKTsKIH0KIAorc3RhdGljIGludCBjb3B5X3Jpbmdfc2l6ZShzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqZHN0LAorCQkJICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqc3JjKQoreworCWxv
bmcgc3o7CisKKwlzeiA9IGludGVsX2NvbnRleHRfZ2V0X3Jpbmdfc2l6ZShzcmMpOworCWlmIChz
eiA8IDApCisJCXJldHVybiBzejsKKworCXJldHVybiBpbnRlbF9jb250ZXh0X3NldF9yaW5nX3Np
emUoZHN0LCBzeik7Cit9CisKIHN0YXRpYyBpbnQgY2xvbmVfZW5naW5lcyhzdHJ1Y3QgaTkxNV9n
ZW1fY29udGV4dCAqZHN0LAogCQkJIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpzcmMpCiB7CkBA
IC0xOTA5LDYgKzE5OTMsMTIgQEAgc3RhdGljIGludCBjbG9uZV9lbmdpbmVzKHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICpkc3QsCiAJCX0KIAogCQlpbnRlbF9jb250ZXh0X3NldF9nZW0oY2xvbmUt
PmVuZ2luZXNbbl0sIGRzdCk7CisKKwkJLyogQ29weSBhY3Jvc3MgdGhlIHByZWZlcnJlZCByaW5n
c2l6ZSAqLworCQlpZiAoY29weV9yaW5nX3NpemUoY2xvbmUtPmVuZ2luZXNbbl0sIGUtPmVuZ2lu
ZXNbbl0pKSB7CisJCQlfX2ZyZWVfZW5naW5lcyhjbG9uZSwgbiArIDEpOworCQkJZ290byBlcnJf
dW5sb2NrOworCQl9CiAJfQogCWNsb25lLT5udW1fZW5naW5lcyA9IG47CiAKQEAgLTIyNzEsNiAr
MjM2MSwxMCBAQCBpbnQgaTkxNV9nZW1fY29udGV4dF9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCQlhcmdzLT52YWx1ZSA9IGk5MTVfZ2VtX2NvbnRl
eHRfaXNfcGVyc2lzdGVudChjdHgpOwogCQlicmVhazsKIAorCWNhc2UgSTkxNV9DT05URVhUX1BB
UkFNX1JJTkdTSVpFOgorCQlyZXQgPSBnZXRfcmluZ3NpemUoY3R4LCBhcmdzKTsKKwkJYnJlYWs7
CisKIAljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9CQU5fUEVSSU9EOgogCWRlZmF1bHQ6CiAJCXJl
dCA9IC1FSU5WQUw7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9j
b250ZXh0X3BhcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3Bh
cmFtLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi42NWRjZDA5MDI0
NWQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250
ZXh0X3BhcmFtLmMKQEAgLTAsMCArMSw2MyBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKi8KKwor
I2luY2x1ZGUgImk5MTVfYWN0aXZlLmgiCisjaW5jbHVkZSAiaW50ZWxfY29udGV4dC5oIgorI2lu
Y2x1ZGUgImludGVsX2NvbnRleHRfcGFyYW0uaCIKKyNpbmNsdWRlICJpbnRlbF9yaW5nLmgiCisK
K2ludCBpbnRlbF9jb250ZXh0X3NldF9yaW5nX3NpemUoc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LCBsb25nIHN6KQoreworCWludCBlcnI7CisKKwlpZiAoaW50ZWxfY29udGV4dF9sb2NrX3Bpbm5l
ZChjZSkpCisJCXJldHVybiAtRUlOVFI7CisKKwllcnIgPSBpOTE1X2FjdGl2ZV93YWl0KCZjZS0+
YWN0aXZlKTsKKwlpZiAoZXJyIDwgMCkKKwkJZ290byB1bmxvY2s7CisKKwlpZiAoaW50ZWxfY29u
dGV4dF9pc19waW5uZWQoY2UpKSB7CisJCWVyciA9IC1FQlVTWTsgLyogSW4gYWN0aXZlIHVzZSwg
Y29tZSBiYWNrIGxhdGVyISAqLworCQlnb3RvIHVubG9jazsKKwl9CisKKwlpZiAodGVzdF9iaXQo
Q09OVEVYVF9BTExPQ19CSVQsICZjZS0+ZmxhZ3MpKSB7CisJCXN0cnVjdCBpbnRlbF9yaW5nICpy
aW5nOworCisJCS8qIFJlcGxhY2UgdGhlIGV4aXN0aW5nIHJpbmdidWZmZXIgKi8KKwkJcmluZyA9
IGludGVsX2VuZ2luZV9jcmVhdGVfcmluZyhjZS0+ZW5naW5lLCBzeik7CisJCWlmIChJU19FUlIo
cmluZykpIHsKKwkJCWVyciA9IFBUUl9FUlIocmluZyk7CisJCQlnb3RvIHVubG9jazsKKwkJfQor
CisJCWludGVsX3JpbmdfcHV0KGNlLT5yaW5nKTsKKwkJY2UtPnJpbmcgPSByaW5nOworCisJCS8q
IENvbnRleHQgaW1hZ2Ugd2lsbCBiZSB1cGRhdGVkIG9uIG5leHQgcGluICovCisJfSBlbHNlIHsK
KwkJY2UtPnJpbmcgPSBfX2ludGVsX2NvbnRleHRfcmluZ19zaXplKHN6KTsKKwl9CisKK3VubG9j
azoKKwlpbnRlbF9jb250ZXh0X3VubG9ja19waW5uZWQoY2UpOworCXJldHVybiBlcnI7Cit9CisK
K2xvbmcgaW50ZWxfY29udGV4dF9nZXRfcmluZ19zaXplKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSkKK3sKKwlsb25nIHN6ID0gKHVuc2lnbmVkIGxvbmcpUkVBRF9PTkNFKGNlLT5yaW5nKTsKKwor
CWlmICh0ZXN0X2JpdChDT05URVhUX0FMTE9DX0JJVCwgJmNlLT5mbGFncykpIHsKKwkJaWYgKGlu
dGVsX2NvbnRleHRfbG9ja19waW5uZWQoY2UpKQorCQkJcmV0dXJuIC1FSU5UUjsKKworCQlzeiA9
IGNlLT5yaW5nLT5zaXplOworCQlpbnRlbF9jb250ZXh0X3VubG9ja19waW5uZWQoY2UpOworCX0K
KworCXJldHVybiBzejsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2NvbnRleHRfcGFyYW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHRfcGFyYW0uaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmYwNTNk
ODYzM2ZlMgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2NvbnRleHRfcGFyYW0uaApAQCAtMCwwICsxLDE0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogTUlUICovCisvKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24K
KyAqLworCisjaWZuZGVmIElOVEVMX0NPTlRFWFRfUEFSQU1fSAorI2RlZmluZSBJTlRFTF9DT05U
RVhUX1BBUkFNX0gKKworc3RydWN0IGludGVsX2NvbnRleHQ7CisKK2ludCBpbnRlbF9jb250ZXh0
X3NldF9yaW5nX3NpemUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBsb25nIHN6KTsKK2xvbmcg
aW50ZWxfY29udGV4dF9nZXRfcmluZ19zaXplKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSk7CisK
KyNlbmRpZiAvKiBJTlRFTF9DT05URVhUX1BBUkFNX0ggKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKaW5kZXggZmExMmQ3MWExOTllLi4wMjlkNjczMzQ2ZGEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCkBAIC03NDUsNiArNzQ1LDcgQEAgdm9pZCBpbnRlbF9scmNfdXBk
YXRlX3JlZ19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJcmVnc1tDVFhf
UklOR19TVEFSVF0gPSBpOTE1X2dndHRfb2Zmc2V0KHJpbmctPnZtYSk7CiAJcmVnc1tDVFhfUklO
R19IRUFEXSA9IHJpbmctPmhlYWQ7CiAJcmVnc1tDVFhfUklOR19UQUlMXSA9IHJpbmctPnRhaWw7
CisJcmVnc1tDVFhfUklOR19DVExdID0gUklOR19DVExfU0laRShyaW5nLT5zaXplKSB8IFJJTkdf
VkFMSUQ7CiAKIAkvKiBSUENTICovCiAJaWYgKGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNT
KSB7CmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3Vh
cGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggODI5YzBhNDg1NzdmLi4yODEzZTU3OWI0ODAgMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysgYi9pbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmgKQEAgLTE2MTksNiArMTYxOSwyNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2Nv
bnRleHRfcGFyYW0gewogICogQnkgZGVmYXVsdCwgbmV3IGNvbnRleHRzIGFsbG93IHBlcnNpc3Rl
bmNlLgogICovCiAjZGVmaW5lIEk5MTVfQ09OVEVYVF9QQVJBTV9QRVJTSVNURU5DRQkweGIKKwor
LyoKKyAqIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRToKKyAqCisgKiBTZXRzIHRoZSBzaXpl
IG9mIHRoZSBDUyByaW5nYnVmZmVyIHRvIHVzZSBmb3IgbG9naWNhbCByaW5nIGNvbnRleHRzLiBU
aGlzCisgKiBhcHBsaWVzIGEgbGltaXQgb2YgaG93IG1hbnkgYmF0Y2hlcyBjYW4gYmUgcXVldWVk
IHRvIEhXIGJlZm9yZSB0aGUgY2FsbGVyCisgKiBpcyBibG9ja2VkIGR1ZSB0byBsYWNrIG9mIHNw
YWNlIGZvciBtb3JlIGNvbW1hbmRzLgorICoKKyAqIE9ubHkgcmVsaWFibHkgcG9zc2libGUgdG8g
YmUgc2V0IHByaW9yIHRvIGZpcnN0IHVzZSwgaS5lLiBkdXJpbmcKKyAqIGNvbnN0cnVjdGlvbi4g
QXQgYW55IGxhdGVyIHBvaW50LCB0aGUgY3VycmVudCBleGVjdXRpb24gbXVzdCBiZSBmbHVzaGVk
IGFzCisgKiB0aGUgcmluZyBjYW4gb25seSBiZSBjaGFuZ2VkIHdoaWxlIHRoZSBjb250ZXh0IGlz
IGlkbGUuIE5vdGUsIHRoZSByaW5nc2l6ZQorICogY2FuIGJlIHNwZWNpZmllZCBhcyBhIGNvbnN0
cnVjdG9yIHByb3BlcnR5LCBzZWUKKyAqIEk5MTVfQ09OVEVYVF9DUkVBVEVfRVhUX1NFVFBBUkFN
LCBidXQgY2FuIGFsc28gYmUgc2V0IGxhdGVyIGlmIHJlcXVpcmVkLgorICoKKyAqIE9ubHkgYXBw
bGllcyB0byB0aGUgY3VycmVudCBzZXQgb2YgZW5naW5lIGFuZCBsb3N0IHdoZW4gdGhvc2UgZW5n
aW5lcworICogYXJlIHJlcGxhY2VkIGJ5IGEgbmV3IG1hcHBpbmcgKHNlZSBJOTE1X0NPTlRFWFRf
UEFSQU1fRU5HSU5FUykuCisgKgorICogTXVzdCBiZSBiZXR3ZWVuIDQgLSA1MTIgS2lCLCBpbiBp
bnRlcnZhbHMgb2YgcGFnZSBzaXplIFs0IEtpQl0uCisgKiBEZWZhdWx0IGlzIDE2IEtpQi4KKyAq
LworI2RlZmluZSBJOTE1X0NPTlRFWFRfUEFSQU1fUklOR1NJWkUJMHhjCiAvKiBNdXN0IGJlIGtl
cHQgY29tcGFjdCAtLSBubyBob2xlcyBhbmQgd2VsbCBkb2N1bWVudGVkICovCiAKIAlfX3U2NCB2
YWx1ZTsKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
