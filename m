Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B1A179803
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 19:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A8B6E0D6;
	Wed,  4 Mar 2020 18:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63D1C6E0D6
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 18:36:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20445664-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Mar 2020 18:36:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Mar 2020 18:36:31 +0000
Message-Id: <20200304183632.2493637-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915: Add mechanism to submit a context WA
 on ring submission
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpUaGlz
IHBhdGNoIGFkZHMgZnJhbWV3b3JrIHRvIHN1Ym1pdCBhbiBhcmJpdHJhcnkgYmF0Y2hidWZmZXIg
b24gZWFjaApjb250ZXh0IHN3aXRjaCB0byBjbGVhciByZXNpZHVhbCBzdGF0ZSBmb3IgcmVuZGVy
IGVuZ2luZSBvbiBHZW43LzcuNQpkZXZpY2VzLgoKVGhlIGlkZWEgb2YgYWx3YXlzIGVtaXR0aW5n
IHRoZSBjb250ZXh0IGFuZCB2bSBzZXR1cCBhcm91bmQgZWFjaCByZXF1ZXN0CmlzIHByaW1hcnkg
dG8gbWFrZSByZXNldCByZWNvdmVyeSBlYXN5LCBhbmQgbm90IHJlcXVpcmUgcmV3cml0aW5nIHRo
ZQpyaW5nYnVmZmVyLiBBcyBlYWNoIHJlcXVlc3Qgd291bGQgc2V0IHVwIGl0cyBvd24gY29udGV4
dCwgbGVhdmluZyBpdCB0bwp0aGUgSFcgdG8gbm90aWNlIGFuZCBlbGlkZSBuby1vcCBjb250ZXh0
IHN3aXRjaGVzLCB3ZSBjb3VsZCByZXN0YXJ0IHRoZQpyaW5nIGF0IGFueSBwb2ludCwgYW5kIHJl
b3JkZXIgdGhlIHJlcXVlc3RzIGZyZWVseS4KCkhvd2V2ZXIsIHRvIGF2b2lkIGVtaXR0aW5nIGNs
ZWFyX3Jlc2lkdWFscygpIGJldHdlZW4gY29uc2VjdXRpdmUgcmVxdWVzdHMKaW4gdGhlIHJpbmdi
dWZmZXIgb2YgdGhlIHNhbWUgY29udGV4dCwgd2UgZG8gd2FudCB0byB0cmFjayB0aGUgY3VycmVu
dApjb250ZXh0IGluIHRoZSByaW5nLiBJbiBkb2luZyBzbywgd2UgbmVlZCB0byBiZSBjYXJlZnVs
IHRvIG9ubHkgcmVjb3JkIGEKY29udGV4dCBzd2l0Y2ggd2hlbiB3ZSBhcmUgc3VyZSB0aGUgbmV4
dCByZXF1ZXN0IHdpbGwgYmUgZW1pdHRlZC4KClRoaXMgc2VjdXJpdHkgbWl0aWdhdGlvbiBjaGFu
Z2UgZG9lcyBub3QgdHJpZ2dlciBhbnkgcGVyZm9ybWFuY2UKcmVncmVzc2lvbi4gUGVyZm9ybWFu
Y2UgaXMgb24gcGFyIHdpdGggY3VycmVudCBtYWlubGluZS9kcm0tdGlwLgoKdjI6IFVwZGF0ZSB2
bV9hbGlhcyBwYXJhbXMgdG8gcG9pbnQgdG8gY29ycmVjdCBhZGRyZXNzIHNwYWNlICJ2bSIgZHVl
IHRvCmNoYW5nZXMgbWFkZSBpbiB0aGUgcGF0Y2ggImYyMTYxMzc5N2JhZTk4NzczIgoKdjMtdjQ6
IG5vbmUKClNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBQcmF0aGFwIEt1bWFyIFZhbHNhbiA8cHJhdGhhcC5r
dW1hci52YWxzYW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBa2VlbSBHIEFib2R1bnJpbiA8
YWtlZW0uZy5hYm9kdW5yaW5AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBCYWxlc3RyaWVyaSBGcmFuY2VzY28gPGZyYW5jZXNjby5iYWxl
c3RyaWVyaUBpbnRlbC5jb20+CkNjOiBCbG9vbWZpZWxkIEpvbiA8am9uLmJsb29tZmllbGRAaW50
ZWwuY29tPgpDYzogRHV0dCBTdWRlZXAgPHN1ZGVlcC5kdXR0QGludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AaW50ZWwuY29tPgpMaW5rOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMDAzMDQxMzAzNTMuMjQ0
ODQxNy0xLWNocmlzQGNocmlzLXdpbHNvbi5jby51awotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgICB8IDEzOCArKysrKysrKy0KIC4uLi9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9yaW5nX3N1Ym1pc3Npb24uYyAgICB8IDI4NSArKysrKysrKysrKysrKysrKysK
IC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oICB8ICAgMSArCiAz
IGZpbGVzIGNoYW5nZWQsIDQyMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jpbmdfc3VibWlz
c2lvbi5jCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19z
dWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Np
b24uYwppbmRleCBlZTI0MWI3ZWFhM2IuLmYwY2U3MDg2MWU5MyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKQEAgLTEzNTYsNyArMTM1Niw5
IEBAIHN0YXRpYyBpbnQgbG9hZF9wZF9kaXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAJcmV0
dXJuIHJxLT5lbmdpbmUtPmVtaXRfZmx1c2gocnEsIEVNSVRfRkxVU0gpOwogfQogCi1zdGF0aWMg
aW5saW5lIGludCBtaV9zZXRfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdTMyIGZs
YWdzKQorc3RhdGljIGlubGluZSBpbnQgbWlfc2V0X2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsCisJCQkJIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCQkgdTMyIGZsYWdzKQog
ewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gcnEtPmk5MTU7CiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lID0gcnEtPmVuZ2luZTsKQEAgLTE0MzEsNyArMTQzMyw3IEBA
IHN0YXRpYyBpbmxpbmUgaW50IG1pX3NldF9jb250ZXh0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
LCB1MzIgZmxhZ3MpCiAKIAkqY3MrKyA9IE1JX05PT1A7CiAJKmNzKysgPSBNSV9TRVRfQ09OVEVY
VDsKLQkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQocnEtPmNvbnRleHQtPnN0YXRlKSB8IGZsYWdz
OworCSpjcysrID0gaTkxNV9nZ3R0X29mZnNldChjZS0+c3RhdGUpIHwgZmxhZ3M7CiAJLyoKIAkg
KiB3L2E6IE1JX1NFVF9DT05URVhUIG11c3QgYWx3YXlzIGJlIGZvbGxvd2VkIGJ5IE1JX05PT1AK
IAkgKiBXYU1pU2V0Q29udGV4dF9IYW5nOnNuYixpdmIsdmx2CkBAIC0xNTQ2LDEzICsxNTQ4LDU2
IEBAIHN0YXRpYyBpbnQgc3dpdGNoX21tKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAlyZXR1cm4gcnEtPmVuZ2luZS0+ZW1pdF9mbHVzaChy
cSwgRU1JVF9JTlZBTElEQVRFKTsKIH0KIAorc3RhdGljIGludCBjbGVhcl9yZXNpZHVhbHMoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
ID0gcnEtPmVuZ2luZTsKKwlpbnQgcmV0OworCisJcmV0ID0gc3dpdGNoX21tKHJxLCB2bV9hbGlh
cyhlbmdpbmUtPmtlcm5lbF9jb250ZXh0LT52bSkpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7
CisKKwlpZiAoZW5naW5lLT5rZXJuZWxfY29udGV4dC0+c3RhdGUpIHsKKwkJcmV0ID0gbWlfc2V0
X2NvbnRleHQocnEsCisJCQkJICAgICBlbmdpbmUtPmtlcm5lbF9jb250ZXh0LAorCQkJCSAgICAg
TUlfTU1fU1BBQ0VfR1RUIHwgTUlfUkVTVE9SRV9JTkhJQklUKTsKKwkJaWYgKHJldCkKKwkJCXJl
dHVybiByZXQ7CisJfQorCisJcmV0ID0gZW5naW5lLT5lbWl0X2JiX3N0YXJ0KHJxLAorCQkJCSAg
ICBlbmdpbmUtPndhX2N0eC52bWEtPm5vZGUuc3RhcnQsIDAsCisJCQkJICAgIDApOworCWlmIChy
ZXQpCisJCXJldHVybiByZXQ7CisKKwlyZXQgPSBlbmdpbmUtPmVtaXRfZmx1c2gocnEsIEVNSVRf
RkxVU0gpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwkvKiBBbHdheXMgaW52YWxpZGF0
ZSBiZWZvcmUgdGhlIG5leHQgc3dpdGNoX21tKCkgKi8KKwlyZXR1cm4gZW5naW5lLT5lbWl0X2Zs
dXNoKHJxLCBFTUlUX0lOVkFMSURBVEUpOworfQorCiBzdGF0aWMgaW50IHN3aXRjaF9jb250ZXh0
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogeworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSA9IHJxLT5lbmdpbmU7CiAJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gcnEtPmNvbnRl
eHQ7CisJdm9pZCAqKnJlc2lkdWFscyA9IE5VTEw7CiAJaW50IHJldDsKIAogCUdFTV9CVUdfT04o
SEFTX0VYRUNMSVNUUyhycS0+aTkxNSkpOwogCisJaWYgKGVuZ2luZS0+d2FfY3R4LnZtYSAmJiBj
ZSAhPSBlbmdpbmUtPmtlcm5lbF9jb250ZXh0KSB7CisJCWlmIChlbmdpbmUtPndhX2N0eC52bWEt
PnByaXZhdGUgIT0gY2UpIHsKKwkJCXJldCA9IGNsZWFyX3Jlc2lkdWFscyhycSk7CisJCQlpZiAo
cmV0KQorCQkJCXJldHVybiByZXQ7CisKKwkJCXJlc2lkdWFscyA9ICZlbmdpbmUtPndhX2N0eC52
bWEtPnByaXZhdGU7CisJCX0KKwl9CisKIAlyZXQgPSBzd2l0Y2hfbW0ocnEsIHZtX2FsaWFzKGNl
LT52bSkpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CkBAIC0xNTYwLDcgKzE2MDUsNyBAQCBz
dGF0aWMgaW50IHN3aXRjaF9jb250ZXh0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCWlmIChj
ZS0+c3RhdGUpIHsKIAkJdTMyIGZsYWdzOwogCi0JCUdFTV9CVUdfT04ocnEtPmVuZ2luZS0+aWQg
IT0gUkNTMCk7CisJCUdFTV9CVUdfT04oZW5naW5lLT5pZCAhPSBSQ1MwKTsKIAogCQkvKiBGb3Ig
cmVzb3VyY2Ugc3RyZWFtZXIgb24gSFNXKyBhbmQgcG93ZXIgY29udGV4dCBlbHNld2hlcmUgKi8K
IAkJQlVJTERfQlVHX09OKEhTV19NSV9SU19TQVZFX1NUQVRFX0VOICE9IE1JX1NBVkVfRVhUX1NU
QVRFX0VOKTsKQEAgLTE1NzIsNyArMTYxNyw3IEBAIHN0YXRpYyBpbnQgc3dpdGNoX2NvbnRleHQo
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCWVsc2UKIAkJCWZsYWdzIHw9IE1JX1JFU1RPUkVf
SU5ISUJJVDsKIAotCQlyZXQgPSBtaV9zZXRfY29udGV4dChycSwgZmxhZ3MpOworCQlyZXQgPSBt
aV9zZXRfY29udGV4dChycSwgY2UsIGZsYWdzKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7
CiAJfQpAQCAtMTU4MSw2ICsxNjI2LDIwIEBAIHN0YXRpYyBpbnQgc3dpdGNoX2NvbnRleHQoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAorCS8qCisJ
ICogTm93IHBhc3QgdGhlIHBvaW50IG9mIG5vIHJldHVybiwgdGhpcyByZXF1ZXN0IF93aWxsXyBi
ZSBlbWl0dGVkLgorCSAqCisJICogT3IgYXQgbGVhc3QgdGhpcyBwcmVhbWJsZSB3aWxsIGJlIGVt
aXR0ZWQsIHRoZSByZXF1ZXN0IG1heSBiZQorCSAqIGludGVycnVwdGVkIHByaW9yIHRvIHN1Ym1p
dHRpbmcgdGhlIHVzZXIgcGF5bG9hZC4gSWYgc28sIHdlCisJICogc3RpbGwgc3VibWl0IHRoZSAi
ZW1wdHkiIHJlcXVlc3QgaW4gb3JkZXIgdG8gcHJlc2VydmUgZ2xvYmFsCisJICogc3RhdGUgdHJh
Y2tpbmcgc3VjaCBhcyB0aGlzLCBvdXIgdHJhY2tpbmcgb2YgdGhlIGN1cnJlbnQKKwkgKiBkaXJ0
eSBjb250ZXh0LgorCSAqLworCWlmIChyZXNpZHVhbHMpIHsKKwkJaW50ZWxfY29udGV4dF9wdXQo
KnJlc2lkdWFscyk7CisJCSpyZXNpZHVhbHMgPSBpbnRlbF9jb250ZXh0X2dldChjZSk7CisJfQor
CiAJcmV0dXJuIDA7CiB9CiAKQEAgLTE3NjUsNiArMTgyNCwxMSBAQCBzdGF0aWMgdm9pZCByaW5n
X3JlbGVhc2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJaW50ZWxfZW5naW5l
X2NsZWFudXBfY29tbW9uKGVuZ2luZSk7CiAKKwlpZiAoZW5naW5lLT53YV9jdHgudm1hKSB7CisJ
CWludGVsX2NvbnRleHRfcHV0KGVuZ2luZS0+d2FfY3R4LnZtYS0+cHJpdmF0ZSk7CisJCWk5MTVf
dm1hX3VucGluX2FuZF9yZWxlYXNlKCZlbmdpbmUtPndhX2N0eC52bWEsIDApOworCX0KKwogCWlu
dGVsX3JpbmdfdW5waW4oZW5naW5lLT5sZWdhY3kucmluZyk7CiAJaW50ZWxfcmluZ19wdXQoZW5n
aW5lLT5sZWdhY3kucmluZyk7CiAKQEAgLTE5MTIsNiArMTk3Niw2MCBAQCBzdGF0aWMgdm9pZCBz
ZXR1cF92ZWNzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAllbmdpbmUtPmVtaXRf
ZmluaV9icmVhZGNydW1iID0gZ2VuN194Y3NfZW1pdF9icmVhZGNydW1iOwogfQogCitzdGF0aWMg
aW50IGdlbjdfY3R4X3N3aXRjaF9iYl9zZXR1cChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICogY29u
c3QgZW5naW5lLAorCQkJCSAgICBzdHJ1Y3QgaTkxNV92bWEgKiBjb25zdCB2bWEpCit7CisJcmV0
dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZ2VuN19jdHhfc3dpdGNoX2JiX2luaXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
Ymo7CisJc3RydWN0IGk5MTVfdm1hICp2bWE7CisJaW50IHNpemU7CisJaW50IGVycjsKKworCXNp
emUgPSBnZW43X2N0eF9zd2l0Y2hfYmJfc2V0dXAoZW5naW5lLCBOVUxMIC8qIHByb2JlIHNpemUg
Ki8pOworCWlmIChzaXplIDw9IDApCisJCXJldHVybiBzaXplOworCisJc2l6ZSA9IEFMSUdOKHNp
emUsIFBBR0VfU0laRSk7CisJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChl
bmdpbmUtPmk5MTUsIHNpemUpOworCWlmIChJU19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIo
b2JqKTsKKworCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgZW5naW5lLT5ndC0+dm0sIE5V
TEwpOworCWlmIChJU19FUlIodm1hKSkgeworCQllcnIgPSBQVFJfRVJSKHZtYSk7CisJCWdvdG8g
ZXJyX29iajsKKwl9CisKKwl2bWEtPnByaXZhdGUgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZShlbmdp
bmUpOyAvKiBkdW1teSByZXNpZHVhbHMgKi8KKwlpZiAoSVNfRVJSKHZtYS0+cHJpdmF0ZSkpIHsK
KwkJZXJyID0gUFRSX0VSUih2bWEtPnByaXZhdGUpOworCQlnb3RvIGVycl9vYmo7CisJfQorCisJ
ZXJyID0gaTkxNV92bWFfcGluKHZtYSwgMCwgMCwgUElOX1VTRVIgfCBQSU5fSElHSCk7CisJaWYg
KGVycikKKwkJZ290byBlcnJfcHJpdmF0ZTsKKworCWVyciA9IGdlbjdfY3R4X3N3aXRjaF9iYl9z
ZXR1cChlbmdpbmUsIHZtYSk7CisJaWYgKGVycikKKwkJZ290byBlcnJfdW5waW47CisKKwllbmdp
bmUtPndhX2N0eC52bWEgPSB2bWE7CisJcmV0dXJuIDA7CisKK2Vycl91bnBpbjoKKwlpOTE1X3Zt
YV91bnBpbih2bWEpOworZXJyX3ByaXZhdGU6CisJaW50ZWxfY29udGV4dF9wdXQodm1hLT5wcml2
YXRlKTsKK2Vycl9vYmo6CisJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCXJldHVybiBlcnI7
Cit9CisKIGludCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogewogCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGltZWxpbmU7CkBAIC0x
OTY1LDExICsyMDgzLDE5IEBAIGludCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJR0VNX0JVR19PTih0aW1lbGluZS0+aHdzcF9n
Z3R0ICE9IGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hKTsKIAorCWlmIChJU19HRU4oZW5naW5lLT5p
OTE1LCA3KSAmJiBlbmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFTUykgeworCQllcnIgPSBnZW43
X2N0eF9zd2l0Y2hfYmJfaW5pdChlbmdpbmUpOworCQlpZiAoZXJyKQorCQkJZ290byBlcnJfcmlu
Z191bnBpbjsKKwl9CisKIAkvKiBGaW5hbGx5LCB0YWtlIG93bmVyc2hpcCBhbmQgcmVzcG9uc2li
aWxpdHkgZm9yIGNsZWFudXAhICovCiAJZW5naW5lLT5yZWxlYXNlID0gcmluZ19yZWxlYXNlOwog
CiAJcmV0dXJuIDA7CiAKK2Vycl9yaW5nX3VucGluOgorCWludGVsX3JpbmdfdW5waW4ocmluZyk7
CiBlcnJfcmluZzoKIAlpbnRlbF9yaW5nX3B1dChyaW5nKTsKIGVycl90aW1lbGluZV91bnBpbjoK
QEAgLTE5ODAsMyArMjEwNiw3IEBAIGludCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fc2V0dXAoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWludGVsX2VuZ2luZV9jbGVhbnVwX2NvbW1v
bihlbmdpbmUpOwogCXJldHVybiBlcnI7CiB9CisKKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1f
STkxNV9TRUxGVEVTVCkKKyNpbmNsdWRlICJzZWxmdGVzdF9yaW5nX3N1Ym1pc3Npb24uYyIKKyNl
bmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmluZ19z
dWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yaW5nX3N1Ym1p
c3Npb24uYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjhmZDgxNjVm
Yjg2OAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X3Jpbmdfc3VibWlzc2lvbi5jCkBAIC0wLDAgKzEsMjg1IEBACisvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24K
KyAqLworCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCisjaW5jbHVkZSAic2VsZnRlc3Rz
L2lndF9mbHVzaF90ZXN0LmgiCisKK3N0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV93YWxs
eShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iajsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwl1MzIgKmNzOworCWludCBl
cnI7CisKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGVuZ2luZS0+aTkx
NSwgNDA5Nik7CisJaWYgKElTX0VSUihvYmopKQorCQlyZXR1cm4gRVJSX0NBU1Qob2JqKTsKKwor
CXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgZW5naW5lLT5ndC0+dm0sIE5VTEwpOworCWlm
IChJU19FUlIodm1hKSkgeworCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJCXJldHVybiB2
bWE7CisJfQorCisJZXJyID0gaTkxNV92bWFfcGluKHZtYSwgMCwgMCwgUElOX1VTRVIgfCBQSU5f
SElHSCk7CisJaWYgKGVycikgeworCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJCXJldHVy
biBFUlJfUFRSKGVycik7CisJfQorCisJY3MgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChvYmos
IEk5MTVfTUFQX1dDKTsKKwlpZiAoSVNfRVJSKGNzKSkgeworCQlpOTE1X2dlbV9vYmplY3RfcHV0
KG9iaik7CisJCXJldHVybiBFUlJfQ0FTVChjcyk7CisJfQorCisJaWYgKElOVEVMX0dFTihlbmdp
bmUtPmk5MTUpID49IDYpIHsKKwkJKmNzKysgPSBNSV9TVE9SRV9EV09SRF9JTU1fR0VONDsKKwkJ
KmNzKysgPSAwOworCX0gZWxzZSBpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gNCkgewor
CQkqY3MrKyA9IE1JX1NUT1JFX0RXT1JEX0lNTV9HRU40IHwgTUlfVVNFX0dHVFQ7CisJCSpjcysr
ID0gMDsKKwl9IGVsc2UgeworCQkqY3MrKyA9IE1JX1NUT1JFX0RXT1JEX0lNTSB8IE1JX01FTV9W
SVJUVUFMOworCX0KKwkqY3MrKyA9IHZtYS0+bm9kZS5zdGFydCArIDQwMDA7CisJKmNzKysgPSBT
VEFDS19NQUdJQzsKKworCSpjcysrID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKKwlpOTE1X2dlbV9v
YmplY3RfdW5waW5fbWFwKG9iaik7CisKKwl2bWEtPnByaXZhdGUgPSBpbnRlbF9jb250ZXh0X2Ny
ZWF0ZShlbmdpbmUpOyAvKiBkdW1teSByZXNpZHVhbHMgKi8KKwlpZiAoSVNfRVJSKHZtYS0+cHJp
dmF0ZSkpIHsKKwkJdm1hID0gRVJSX0NBU1Qodm1hLT5wcml2YXRlKTsKKwkJaTkxNV9nZW1fb2Jq
ZWN0X3B1dChvYmopOworCX0KKworCXJldHVybiB2bWE7Cit9CisKK3N0YXRpYyBpbnQgY29udGV4
dF9zeW5jKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycTsKKwlpbnQgZXJyID0gMDsKKworCXJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVz
dChjZSk7CisJaWYgKElTX0VSUihycSkpCisJCXJldHVybiBQVFJfRVJSKHJxKTsKKworCWk5MTVf
cmVxdWVzdF9nZXQocnEpOworCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCisJaWYgKGk5MTVfcmVx
dWVzdF93YWl0KHJxLCAwLCBIWiAvIDUpIDwgMCkKKwkJZXJyID0gLUVUSU1FOworCWk5MTVfcmVx
dWVzdF9wdXQocnEpOworCisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCBuZXdfY29udGV4
dF9zeW5jKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2U7CisJaW50IGVycjsKKworCWNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoZW5n
aW5lKTsKKwlpZiAoSVNfRVJSKGNlKSkKKwkJcmV0dXJuIFBUUl9FUlIoY2UpOworCisJZXJyID0g
Y29udGV4dF9zeW5jKGNlKTsKKwlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisKKwlyZXR1cm4gZXJy
OworfQorCitzdGF0aWMgaW50IG1peGVkX2NvbnRleHRzX3N5bmMoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLCB1MzIgKnJlc3VsdCkKK3sKKwlpbnQgcGFzczsKKwlpbnQgZXJyOworCisJ
Zm9yIChwYXNzID0gMDsgcGFzcyA8IDI7IHBhc3MrKykgeworCQlXUklURV9PTkNFKCpyZXN1bHQs
IDApOworCQllcnIgPSBjb250ZXh0X3N5bmMoZW5naW5lLT5rZXJuZWxfY29udGV4dCk7CisJCWlm
IChlcnIgfHwgUkVBRF9PTkNFKCpyZXN1bHQpKSB7CisJCQlpZiAoIWVycikgeworCQkJCXByX2Vy
cigicGFzc1slZF0gd2FfYmIgZW1pdHRlZCBmb3IgdGhlIGtlcm5lbCBjb250ZXh0XG4iLAorCQkJ
CQkJcGFzcyk7CisJCQkJZXJyID0gLUVJTlZBTDsKKwkJCX0KKwkJCXJldHVybiBlcnI7CisJCX0K
KworCQlXUklURV9PTkNFKCpyZXN1bHQsIDApOworCQllcnIgPSBuZXdfY29udGV4dF9zeW5jKGVu
Z2luZSk7CisJCWlmIChSRUFEX09OQ0UoKnJlc3VsdCkgIT0gU1RBQ0tfTUFHSUMpIHsKKwkJCWlm
ICghZXJyKSB7CisJCQkJcHJfZXJyKCJwYXNzWyVkXSB3YV9iYiAqTk9UKiBlbWl0dGVkIGFmdGVy
IHRoZSBrZXJuZWwgY29udGV4dFxuIiwKKwkJCQkJCXBhc3MpOworCQkJCWVyciA9IC1FSU5WQUw7
CisJCQl9CisJCQlyZXR1cm4gZXJyOworCQl9CisKKwkJV1JJVEVfT05DRSgqcmVzdWx0LCAwKTsK
KwkJZXJyID0gbmV3X2NvbnRleHRfc3luYyhlbmdpbmUpOworCQlpZiAoUkVBRF9PTkNFKCpyZXN1
bHQpICE9IFNUQUNLX01BR0lDKSB7CisJCQlpZiAoIWVycikgeworCQkJCXByX2VycigicGFzc1sl
ZF0gd2FfYmIgKk5PVCogZW1pdHRlZCBmb3IgdGhlIHVzZXIgY29udGV4dCBzd2l0Y2hcbiIsCisJ
CQkJCQlwYXNzKTsKKwkJCQllcnIgPSAtRUlOVkFMOworCQkJfQorCQkJcmV0dXJuIGVycjsKKwkJ
fQorCX0KKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRvdWJsZV9jb250ZXh0X3N5bmNf
MDAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCB1MzIgKnJlc3VsdCkKK3sKKwlzdHJ1
Y3QgaW50ZWxfY29udGV4dCAqY2U7CisJaW50IGVyciwgaTsKKworCWNlID0gaW50ZWxfY29udGV4
dF9jcmVhdGUoZW5naW5lKTsKKwlpZiAoSVNfRVJSKGNlKSkKKwkJcmV0dXJuIFBUUl9FUlIoY2Up
OworCisJZm9yIChpID0gMDsgaSA8IDI7IGkrKykgeworCQlXUklURV9PTkNFKCpyZXN1bHQsIDAp
OworCQllcnIgPSBjb250ZXh0X3N5bmMoY2UpOworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisJfQor
CWludGVsX2NvbnRleHRfcHV0KGNlKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCisJaWYg
KFJFQURfT05DRSgqcmVzdWx0KSkgeworCQlwcl9lcnIoIndhX2JiIGVtaXR0ZWQgYmV0d2VlbiB0
aGUgc2FtZSB1c2VyIGNvbnRleHRcbiIpOworCQlyZXR1cm4gLUVJTlZBTDsKKwl9CisKKwlyZXR1
cm4gMDsKK30KKworc3RhdGljIGludCBrZXJuZWxfY29udGV4dF9zeW5jXzAwKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwgdTMyICpyZXN1bHQpCit7CisJc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlOworCWludCBlcnIsIGk7CisKKwljZSA9IGludGVsX2NvbnRleHRfY3JlYXRlKGVuZ2lu
ZSk7CisJaWYgKElTX0VSUihjZSkpCisJCXJldHVybiBQVFJfRVJSKGNlKTsKKworCWZvciAoaSA9
IDA7IGkgPCAyOyBpKyspIHsKKwkJV1JJVEVfT05DRSgqcmVzdWx0LCAwKTsKKwkJZXJyID0gY29u
dGV4dF9zeW5jKGNlKTsKKwkJaWYgKGVycikKKwkJCWJyZWFrOworCisJCWVyciA9IGNvbnRleHRf
c3luYyhlbmdpbmUtPmtlcm5lbF9jb250ZXh0KTsKKwkJaWYgKGVycikKKwkJCWJyZWFrOworCX0K
KwlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKworCWlm
IChSRUFEX09OQ0UoKnJlc3VsdCkpIHsKKwkJcHJfZXJyKCJ3YV9iYiBlbWl0dGVkIGJldHdlZW4g
dGhlIHNhbWUgdXNlciBjb250ZXh0IFt3aXRoIGludGVydmVuaW5nIGtlcm5lbF1cbiIpOworCQly
ZXR1cm4gLUVJTlZBTDsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBfX2xpdmVf
Y3R4X3N3aXRjaF93YShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJc3RydWN0
IGk5MTVfdm1hICpiYjsKKwl1MzIgKnJlc3VsdDsKKwlpbnQgZXJyOworCisJYmIgPSBjcmVhdGVf
d2FsbHkoZW5naW5lKTsKKwlpZiAoSVNfRVJSKGJiKSkKKwkJcmV0dXJuIFBUUl9FUlIoYmIpOwor
CisJcmVzdWx0ID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoYmItPm9iaiwgSTkxNV9NQVBfV0Mp
OworCWlmIChJU19FUlIocmVzdWx0KSkgeworCQlpbnRlbF9jb250ZXh0X3B1dChiYi0+cHJpdmF0
ZSk7CisJCWk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZiYiwgMCk7CisJCXJldHVybiBQVFJf
RVJSKHJlc3VsdCk7CisJfQorCXJlc3VsdCArPSAxMDAwOworCisJZW5naW5lLT53YV9jdHgudm1h
ID0gYmI7CisKKwllcnIgPSBtaXhlZF9jb250ZXh0c19zeW5jKGVuZ2luZSwgcmVzdWx0KTsKKwlp
ZiAoZXJyKQorCQlnb3RvIG91dDsKKworCWVyciA9IGRvdWJsZV9jb250ZXh0X3N5bmNfMDAoZW5n
aW5lLCByZXN1bHQpOworCWlmIChlcnIpCisJCWdvdG8gb3V0OworCisJZXJyID0ga2VybmVsX2Nv
bnRleHRfc3luY18wMChlbmdpbmUsIHJlc3VsdCk7CisJaWYgKGVycikKKwkJZ290byBvdXQ7CisK
K291dDoKKwlpbnRlbF9jb250ZXh0X3B1dChlbmdpbmUtPndhX2N0eC52bWEtPnByaXZhdGUpOwor
CWk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZlbmdpbmUtPndhX2N0eC52bWEsIEk5MTVfVk1B
X1JFTEVBU0VfTUFQKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IGxpdmVfY3R4X3N3
aXRjaF93YSh2b2lkICphcmcpCit7CisJc3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKKwlzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisK
KwkvKgorCSAqIEV4ZXJjaXNlIHRoZSBpbnRlci1jb250ZXh0IHdhIGJhdGNoLgorCSAqCisJICog
QmV0d2VlbiBlYWNoIHVzZXIgY29udGV4dCB3ZSBydW4gYSB3YSBiYXRjaCwgYW5kIHNpbmNlIGl0
IG1heQorCSAqIGhhdmUgaW1wbGljYXRpb25zIGZvciB1c2VyIHZpc2libGUgc3RhdGUsIHdlIGhh
dmUgdG8gY2hlY2sgdGhhdAorCSAqIHdlIGRvIGFjdHVhbGx5IGV4ZWN1dGUgaXQuCisJICoKKwkg
KiBUaGUgdHJpY2sgd2UgdXNlIGlzIHRvIHJlcGxhY2UgdGhlIG5vcm1hbCB3YSBiYXRjaCB3aXRo
IGEgY3VzdG9tCisJICogb25lIHRoYXQgd3JpdGVzIHRvIGEgbWFya2VyIHdpdGhpbiBpdCwgYW5k
IHdlIGNhbiB0aGVuIGxvb2sgZm9yCisJICogdGhhdCBtYXJrZXIgdG8gY29uZmlybSBpZiB0aGUg
YmF0Y2ggd2FzIHJ1biB3aGVuIHdlIGV4cGVjdCBpdCwKKwkgKiBhbmQgZXF1YWxseSBpbXBvcnRh
bnQgaXQgd2FzIHdhc24ndCBydW4gd2hlbiB3ZSBkb24ndCEKKwkgKi8KKworCWZvcl9lYWNoX2Vu
Z2luZShlbmdpbmUsIGd0LCBpZCkgeworCQlzdHJ1Y3QgaTkxNV92bWEgKnNhdmVkX3dhID0gZmV0
Y2hfYW5kX3plcm8oJmVuZ2luZS0+d2FfY3R4LnZtYSk7CisJCWludCBlcnI7CisKKwkJaWYgKGlu
dGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoZW5naW5lKSkKKwkJCWNvbnRpbnVlOworCisJCWlu
dGVsX2VuZ2luZV9wbV9nZXQoZW5naW5lKTsKKwkJZXJyID0gX19saXZlX2N0eF9zd2l0Y2hfd2Eo
ZW5naW5lKTsKKwkJaW50ZWxfZW5naW5lX3BtX3B1dChlbmdpbmUpOworCisJCWVuZ2luZS0+d2Ff
Y3R4LnZtYSA9IHNhdmVkX3dhOworCQlpZiAoaWd0X2ZsdXNoX3Rlc3QoZ3QtPmk5MTUpKQorCQkJ
ZXJyID0gLUVJTzsKKwkJaWYgKGVycikKKwkJCXJldHVybiBlcnI7CisJfQorCisJcmV0dXJuIDA7
Cit9CisKK2ludCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRl
c3QgdGVzdHNbXSA9IHsKKwkJU1VCVEVTVChsaXZlX2N0eF9zd2l0Y2hfd2EpLAorCX07CisKKwlp
ZiAoSEFTX0VYRUNMSVNUUyhpOTE1KSkKKwkJcmV0dXJuIDA7CisKKwlyZXR1cm4gaW50ZWxfZ3Rf
bGl2ZV9zdWJ0ZXN0cyh0ZXN0cywgJmk5MTUtPmd0KTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCmluZGV4IDM0MTM4Yzdi
ZGQxNS4uMGE5NTNiZmMwNTg1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgKQEAgLTQzLDYgKzQzLDcgQEAgc2VsZnRlc3Qo
cmVzZXQsIGludGVsX3Jlc2V0X2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QobWVtb3J5X3JlZ2lv
biwgaW50ZWxfbWVtb3J5X3JlZ2lvbl9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGhhbmdjaGVj
aywgaW50ZWxfaGFuZ2NoZWNrX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoZXhlY2xpc3RzLCBp
bnRlbF9leGVjbGlzdHNfbGl2ZV9zZWxmdGVzdHMpCitzZWxmdGVzdChyaW5nX3N1Ym1pc3Npb24s
IGludGVsX3Jpbmdfc3VibWlzc2lvbl9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KHBlcmYsIGk5
MTVfcGVyZl9saXZlX3NlbGZ0ZXN0cykKIC8qIEhlcmUgYmUgZHJhZ29uczoga2VlcCBsYXN0IHRv
IHJ1biBsYXN0ISAqLwogc2VsZnRlc3QobGF0ZV9ndF9wbSwgaW50ZWxfZ3RfcG1fbGF0ZV9zZWxm
dGVzdHMpCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
