Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B8D4554D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 09:10:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E51D89110;
	Fri, 14 Jun 2019 07:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7016288FFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 07:10:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16897513-1500050 
 for multiple; Fri, 14 Jun 2019 08:10:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 08:09:54 +0100
Message-Id: <20190614071023.17929-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614071023.17929-1-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/39] drm/i915/execlists: Minimalistic
 timeslicing
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

SWYgd2UgaGF2ZSBtdWx0aXBsZSBjb250ZXh0cyBvZiBlcXVhbCBwcmlvcml0eSBwZW5kaW5nIGV4
ZWN1dGlvbiwKYWN0aXZhdGUgYSB0aW1lciB0byBkZW1vdGUgdGhlIGN1cnJlbnRseSBleGVjdXRp
bmcgY29udGV4dCBpbiBmYXZvdXIgb2YKdGhlIG5leHQgaW4gdGhlIHF1ZXVlIHdoZW4gdGhhdCB0
aW1lc2xpY2UgZXhwaXJlcy4gVGhpcyBlbmZvcmNlcwpmYWlybmVzcyBiZXR3ZWVuIGNvbnRleHRz
IChzbyBsb25nIGFzIHRoZXkgYWxsb3cgcHJlZW1wdGlvbiAtLSBmb3JjZWQKcHJlZW1wdGlvbiwg
aW4gdGhlIGZ1dHVyZSwgd2lsbCBraWNrIHRob3NlIHdobyBkbyBub3Qgb2JleSkgYW5kIGFsbG93
cwp1cyB0byBhdm9pZCB1c2Vyc3BhY2UgYmxvY2tpbmcgZm9yd2FyZCBwcm9ncmVzcyB3aXRoIGUu
Zy4gdW5ib3VuZGVkCk1JX1NFTUFQSE9SRV9XQUlULgoKRm9yIHRoZSBzdGFydGluZyBwb2ludCBo
ZXJlLCB3ZSB1c2UgdGhlIGppZmZpZSBhcyBvdXIgdGltZXNsaWNlIHNvIHRoYXQKd2Ugc2hvdWxk
IGJlIHJlYXNvbmFibHkgZWZmaWNpZW50IHdydCBmcmVxdWVudCBDUFUgd2FrZXVwcy4KClRlc3Rj
YXNlOiBpZ3QvZ2VtX2V4ZWNfc2NoZWR1bGVyL3NlbWFwaG9yZS1yZXNvbHZlClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgICA2ICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgIHwgMTExICsrKysrKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgICAgICAgfCAyMjMgKysrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYyAgICAgICAgfCAg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXJfdHlwZXMuaCAgfCAgIDEg
KwogNSBmaWxlcyBjaGFuZ2VkLCAzNDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKaW5kZXggZGQwMDgyZGY0MmNjLi4xMWEyNWYw
NjBmZWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90
eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5o
CkBAIC0xMiw2ICsxMiw3IEBACiAjaW5jbHVkZSA8bGludXgva3JlZi5oPgogI2luY2x1ZGUgPGxp
bnV4L2xpc3QuaD4KICNpbmNsdWRlIDxsaW51eC9sbGlzdC5oPgorI2luY2x1ZGUgPGxpbnV4L3Rp
bWVyLmg+CiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KIAogI2luY2x1ZGUgImk5MTVfZ2VtLmgi
CkBAIC0xMzcsNiArMTM4LDExIEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzIHsKIAkg
Ki8KIAlzdHJ1Y3QgdGFza2xldF9zdHJ1Y3QgdGFza2xldDsKIAorCS8qKgorCSAqIEB0aW1lcjog
a2ljayB0aGUgY3VycmVudCBjb250ZXh0IGlmIGl0cyB0aW1lc2xpY2UgZXhwaXJlcworCSAqLwor
CXN0cnVjdCB0aW1lcl9saXN0IHRpbWVyOworCiAJLyoqCiAJICogQGRlZmF1bHRfcHJpb2xpc3Q6
IHByaW9yaXR5IGxpc3QgZm9yIEk5MTVfUFJJT1JJVFlfTk9STUFMCiAJICovCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDY1YzkxYjdkYjU5ZC4uY2VhMDhkNjY1ZWY1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjU1LDYgKzI1NSw3IEBAIHN0YXRpYyBp
bnQgZWZmZWN0aXZlX3ByaW8oY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCXByaW8g
fD0gSTkxNV9QUklPUklUWV9OT1NFTUFQSE9SRTsKIAogCS8qIFJlc3RyaWN0IG1lcmUgV0FJVCBi
b29zdHMgZnJvbSB0cmlnZ2VyaW5nIHByZWVtcHRpb24gKi8KKwlCVUlMRF9CVUdfT04oX19OT19Q
UkVFTVBUSU9OICYgfkk5MTVfUFJJT1JJVFlfTUFTSyk7IC8qIG9ubHkgaW50ZXJuYWwgKi8KIAly
ZXR1cm4gcHJpbyB8IF9fTk9fUFJFRU1QVElPTjsKIH0KIApAQCAtODExLDYgKzgxMiw4MSBAQCBs
YXN0X2FjdGl2ZShjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3Rz
KQogCXJldHVybiAqbGFzdDsKIH0KIAorc3RhdGljIHZvaWQKK2RlZmVyX3JlcXVlc3Qoc3RydWN0
IGk5MTVfcmVxdWVzdCAqIGNvbnN0IHJxLCBzdHJ1Y3QgbGlzdF9oZWFkICogY29uc3QgcGwpCit7
CisJc3RydWN0IGk5MTVfZGVwZW5kZW5jeSAqcDsKKworCS8qCisJICogV2Ugd2FudCB0byBtb3Zl
IHRoZSBpbnRlcnJ1cHRlZCByZXF1ZXN0IHRvIHRoZSBiYWNrIG9mCisJICogdGhlIHJvdW5kLXJv
YmluIGxpc3QgKGkuZS4gaXRzIHByaW9yaXR5IGxldmVsKSwgYnV0CisJICogaW4gZG9pbmcgc28s
IHdlIG11c3QgdGhlbiBtb3ZlIGFsbCByZXF1ZXN0cyB0aGF0IHdlcmUgaW4KKwkgKiBmbGlnaHQg
YW5kIHdlcmUgd2FpdGluZyBmb3IgdGhlIGludGVycnVwdGVkIHJlcXVlc3QgdG8KKwkgKiBiZSBy
dW4gYWZ0ZXIgaXQgYWdhaW4uCisJICovCisJbGlzdF9tb3ZlX3RhaWwoJnJxLT5zY2hlZC5saW5r
LCBwbCk7CisKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KHAsICZycS0+c2NoZWQud2FpdGVyc19saXN0
LCB3YWl0X2xpbmspIHsKKwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqdyA9CisJCQljb250YWluZXJf
b2YocC0+d2FpdGVyLCB0eXBlb2YoKncpLCBzY2hlZCk7CisKKwkJLyogTGVhdmUgc2VtYXBob3Jl
cyBzcGlubmluZyBvbiB0aGUgb3RoZXIgZW5naW5lcyAqLworCQlpZiAody0+ZW5naW5lICE9IHJx
LT5lbmdpbmUpCisJCQljb250aW51ZTsKKworCQkvKiBObyB3YWl0ZXIgc2hvdWxkIHN0YXJ0IGJl
Zm9yZSB0aGUgYWN0aXZlIHJlcXVlc3QgY29tcGxldGVkICovCisJCUdFTV9CVUdfT04oaTkxNV9y
ZXF1ZXN0X3N0YXJ0ZWQodykpOworCisJCUdFTV9CVUdfT04ocnFfcHJpbyh3KSA+IHJxX3ByaW8o
cnEpKTsKKwkJaWYgKHJxX3ByaW8odykgPCBycV9wcmlvKHJxKSkKKwkJCWNvbnRpbnVlOworCisJ
CWlmIChsaXN0X2VtcHR5KCZ3LT5zY2hlZC5saW5rKSkKKwkJCWNvbnRpbnVlOyAvKiBOb3QgeWV0
IHN1Ym1pdHRlZDsgdW5yZWFkeSAqLworCisJCS8qCisJCSAqIFRoaXMgc2hvdWxkIGJlIHZlcnkg
c2hhbGxvdyBhcyBpdCBpcyBsaW1pdGVkIGJ5IHRoZQorCQkgKiBudW1iZXIgb2YgcmVxdWVzdHMg
dGhhdCBjYW4gZml0IGluIGEgcmluZyAoPDY0KSBhbmQKKwkJICogdGhlIG51bWJlciBvZiBjb250
ZXh0cyB0aGF0IGNhbiBiZSBpbiBmbGlnaHQgb24gdGhpcworCQkgKiBlbmdpbmUuCisJCSAqLwor
CQlkZWZlcl9yZXF1ZXN0KHcsIHBsKTsKKwl9Cit9CisKK3N0YXRpYyB2b2lkIGRlZmVyX2FjdGl2
ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnE7CisKKwlycSA9IF9fdW53aW5kX2luY29tcGxldGVfcmVxdWVzdHMoZW5naW5lKTsKKwlp
ZiAoIXJxKQorCQlyZXR1cm47CisKKwlkZWZlcl9yZXF1ZXN0KHJxLCBpOTE1X3NjaGVkX2xvb2t1
cF9wcmlvbGlzdChlbmdpbmUsIHJxX3ByaW8ocnEpKSk7Cit9CisKK3N0YXRpYyBib29sCituZWVk
X3RpbWVzbGljZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGNvbnN0IHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxKQoreworCWludCBoaW50OworCisJaWYgKGxpc3RfaXNfbGFzdCgmcnEt
PnNjaGVkLmxpbmssICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cykpCisJCXJldHVybiBmYWxzZTsK
KworCWhpbnQgPSBtYXgocnFfcHJpbyhsaXN0X25leHRfZW50cnkocnEsIHNjaGVkLmxpbmspKSwK
KwkJICAgZW5naW5lLT5leGVjbGlzdHMucXVldWVfcHJpb3JpdHlfaGludCk7CisKKwlyZXR1cm4g
aGludCA+PSBycV9wcmlvKHJxKTsKK30KKworc3RhdGljIGJvb2wKK2VuYWJsZV90aW1lc2xpY2Uo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBpOTE1X3JlcXVlc3Qg
Kmxhc3QgPSBsYXN0X2FjdGl2ZSgmZW5naW5lLT5leGVjbGlzdHMpOworCisJcmV0dXJuIGxhc3Qg
JiYgbmVlZF90aW1lc2xpY2UoZW5naW5lLCBsYXN0KTsKK30KKwogc3RhdGljIHZvaWQgZXhlY2xp
c3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCXN0cnVjdCBp
bnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3QgZXhlY2xpc3RzID0gJmVuZ2luZS0+ZXhlY2xp
c3RzOwpAQCAtOTA0LDYgKzk4MCwyNyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfZGVxdWV1ZShz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQkgKi8KIAkJCWxhc3QtPmh3X2NvbnRl
eHQtPmxyY19kZXNjIHw9IENUWF9ERVNDX0ZPUkNFX1JFU1RPUkU7CiAJCQlsYXN0ID0gTlVMTDsK
KwkJfSBlbHNlIGlmIChuZWVkX3RpbWVzbGljZShlbmdpbmUsIGxhc3QpICYmCisJCQkgICAhdGlt
ZXJfcGVuZGluZygmZW5naW5lLT5leGVjbGlzdHMudGltZXIpKSB7CisJCQlHRU1fVFJBQ0UoIiVz
OiBleHBpcmVkIGxhc3Q9JWxseDolbGxkLCBwcmlvPSVkLCBoaW50PSVkXG4iLAorCQkJCSAgZW5n
aW5lLT5uYW1lLAorCQkJCSAgbGFzdC0+ZmVuY2UuY29udGV4dCwKKwkJCQkgIGxhc3QtPmZlbmNl
LnNlcW5vLAorCQkJCSAgbGFzdC0+c2NoZWQuYXR0ci5wcmlvcml0eSwKKwkJCQkgIGV4ZWNsaXN0
cy0+cXVldWVfcHJpb3JpdHlfaGludCk7CisKKwkJCXJpbmdfcGF1c2UoZW5naW5lKSA9IDE7CisJ
CQlkZWZlcl9hY3RpdmUoZW5naW5lKTsKKworCQkJLyoKKwkJCSAqIFVubGlrZSBmb3IgcHJlZW1w
dGlvbiwgaWYgd2UgcmV3aW5kIGFuZCBjb250aW51ZQorCQkJICogZXhlY3V0aW5nIHRoZSBzYW1l
IGNvbnRleHQgYXMgcHJldmlvdXNseSBhY3RpdmUsCisJCQkgKiB0aGUgb3JkZXIgb2YgZXhlY3V0
aW9uIHdpbGwgcmVtYWluIHRoZSBzYW1lIGFuZAorCQkJICogdGhlIHRhaWwgd2lsbCBvbmx5IGFk
dmFuY2UuIFdlIGRvIG5vdCBuZWVkIHRvCisJCQkgKiBmb3JjZSBhIGZ1bGwgY29udGV4dCByZXN0
b3JlLCBhcyBhIGxpdGUtcmVzdG9yZQorCQkJICogaXMgc3VmZmljaWVudCB0byByZXNhbXBsZSB0
aGUgbW9ub3RvbmljIFRBSUwuCisJCQkgKi8KKwkJCWxhc3QgPSBOVUxMOwogCQl9IGVsc2Ugewog
CQkJLyoKIAkJCSAqIE90aGVyd2lzZSBpZiB3ZSBhbHJlYWR5IGhhdmUgYSByZXF1ZXN0IHBlbmRp
bmcKQEAgLTEyMjYsNiArMTMyMyw5IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCQkgICAgICAgc2l6ZW9mKCpleGVjbGlzdHMtPnBl
bmRpbmcpKTsKIAkJCWV4ZWNsaXN0cy0+cGVuZGluZ1swXSA9IE5VTEw7CiAKKwkJCWlmIChlbmFi
bGVfdGltZXNsaWNlKGVuZ2luZSkpCisJCQkJbW9kX3RpbWVyKCZleGVjbGlzdHMtPnRpbWVyLCBq
aWZmaWVzICsgMSk7CisKIAkJCWlmICghaW5qZWN0X3ByZWVtcHRfaGFuZyhleGVjbGlzdHMpKQog
CQkJCXJpbmdfcGF1c2UoZW5naW5lKSA9IDA7CiAJCX0gZWxzZSBpZiAoc3RhdHVzICYgR0VOOF9D
VFhfU1RBVFVTX1BSRUVNUFRFRCkgewpAQCAtMTI5Niw2ICsxMzk2LDE1IEBAIHN0YXRpYyB2b2lk
IGV4ZWNsaXN0c19zdWJtaXNzaW9uX3Rhc2tsZXQodW5zaWduZWQgbG9uZyBkYXRhKQogCXNwaW5f
dW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+YWN0aXZlLmxvY2ssIGZsYWdzKTsKIH0KIAorc3Rh
dGljIHZvaWQgZXhlY2xpc3RzX3N1Ym1pc3Npb25fdGltZXIoc3RydWN0IHRpbWVyX2xpc3QgKnRp
bWVyKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9CisJCWZyb21fdGltZXIo
ZW5naW5lLCB0aW1lciwgZXhlY2xpc3RzLnRpbWVyKTsKKworCS8qIEtpY2sgdGhlIHRhc2tsZXQg
Zm9yIHNvbWUgaW50ZXJydXB0IGNvYWxlc2NpbmcgYW5kIHJlc2V0IGhhbmRsaW5nICovCisJdGFz
a2xldF9oaV9zY2hlZHVsZSgmZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7Cit9CisKIHN0YXRp
YyB2b2lkIHF1ZXVlX3JlcXVlc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJ
ICBzdHJ1Y3QgaTkxNV9zY2hlZF9ub2RlICpub2RlLAogCQkJICBpbnQgcHJpbykKQEAgLTI1MjUs
NiArMjYzNCw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9pbml0X3Jjc19jb250ZXh0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQogCiBzdGF0aWMgdm9pZCBleGVjbGlzdHNfcGFyayhzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCiB7CisJZGVsX3RpbWVyX3N5bmMoJmVuZ2luZS0+ZXhlY2xpc3Rz
LnRpbWVyKTsKIAlpbnRlbF9lbmdpbmVfcGFyayhlbmdpbmUpOwogfQogCkBAIC0yNjIyLDYgKzI3
MzIsNyBAQCBpbnQgaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQogCiAJdGFza2xldF9pbml0KCZlbmdpbmUtPmV4ZWNsaXN0cy50
YXNrbGV0LAogCQkgICAgIGV4ZWNsaXN0c19zdWJtaXNzaW9uX3Rhc2tsZXQsICh1bnNpZ25lZCBs
b25nKWVuZ2luZSk7CisJdGltZXJfc2V0dXAoJmVuZ2luZS0+ZXhlY2xpc3RzLnRpbWVyLCBleGVj
bGlzdHNfc3VibWlzc2lvbl90aW1lciwgMCk7CiAKIAlsb2dpY2FsX3JpbmdfZGVmYXVsdF92ZnVu
Y3MoZW5naW5lKTsKIAlsb2dpY2FsX3JpbmdfZGVmYXVsdF9pcnFzKGVuZ2luZSk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCmluZGV4IGYwY2EyYTA5ZGFiZC4uOWJhNmJmZmZm
M2UzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwpAQCAtNzksNiArNzks
MjI1IEBAIHN0YXRpYyBpbnQgbGl2ZV9zYW5pdHljaGVjayh2b2lkICphcmcpCiAJcmV0dXJuIGVy
cjsKIH0KIAorc3RhdGljIGludAorZW1pdF9zZW1hcGhvcmVfY2hhaW4oc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEsIHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCBpbnQgaWR4KQoreworCXUzMiAqY3M7CisK
KwljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEsIDEwKTsKKwlpZiAoSVNfRVJSKGNzKSkKKwkJcmV0
dXJuIFBUUl9FUlIoY3MpOworCisJKmNzKysgPSBNSV9BUkJfT05fT0ZGIHwgTUlfQVJCX0VOQUJM
RTsKKworCSpjcysrID0gTUlfU0VNQVBIT1JFX1dBSVQgfAorCQlNSV9TRU1BUEhPUkVfR0xPQkFM
X0dUVCB8CisJCU1JX1NFTUFQSE9SRV9QT0xMIHwKKwkJTUlfU0VNQVBIT1JFX1NBRF9ORVFfU0RE
OworCSpjcysrID0gMDsKKwkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQodm1hKSArIDQgKiBpZHg7
CisJKmNzKysgPSAwOworCisJaWYgKGlkeCA+IDApIHsKKwkJKmNzKysgPSBNSV9TVE9SRV9EV09S
RF9JTU1fR0VONCB8IE1JX1VTRV9HR1RUOworCQkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQodm1h
KSArIDQgKiAoaWR4IC0gMSk7CisJCSpjcysrID0gMDsKKwkJKmNzKysgPSAxOworCX0gZWxzZSB7
CisJCSpjcysrID0gTUlfTk9PUDsKKwkJKmNzKysgPSBNSV9OT09QOworCQkqY3MrKyA9IE1JX05P
T1A7CisJCSpjcysrID0gTUlfTk9PUDsKKwl9CisKKwkqY3MrKyA9IE1JX0FSQl9PTl9PRkYgfCBN
SV9BUkJfRElTQUJMRTsKKworCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOworCXJldHVybiAw
OworfQorCitzdGF0aWMgc3RydWN0IGk5MTVfcmVxdWVzdCAqCitzZW1hcGhvcmVfcXVldWUoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgaW50IGlk
eCkKK3sKKwlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4OworCXN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxOworCWludCBlcnI7CisKKwljdHggPSBrZXJuZWxfY29udGV4dChlbmdpbmUtPmk5MTUp
OworCWlmICghY3R4KQorCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKKworCXJxID0gaWd0X3Jl
cXVlc3RfYWxsb2MoY3R4LCBlbmdpbmUpOworCWlmIChJU19FUlIocnEpKQorCQlnb3RvIG91dF9j
dHg7CisKKwllcnIgPSBlbWl0X3NlbWFwaG9yZV9jaGFpbihycSwgdm1hLCBpZHgpOworCWk5MTVf
cmVxdWVzdF9hZGQocnEpOworCWlmIChlcnIpCisJCXJxID0gRVJSX1BUUihlcnIpOworCitvdXRf
Y3R4OgorCWtlcm5lbF9jb250ZXh0X2Nsb3NlKGN0eCk7CisJcmV0dXJuIHJxOworfQorCitzdGF0
aWMgaW50CityZWxlYXNlX3F1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkg
ICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKKwkgICAgICBpbnQgaWR4KQoreworCXN0cnVjdCBp
OTE1X3NjaGVkX2F0dHIgYXR0ciA9IHsKKwkJLnByaW9yaXR5ID0gSTkxNV9VU0VSX1BSSU9SSVRZ
KEk5MTVfUFJJT1JJVFlfTUFYKSwKKwl9OworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOworCXUz
MiAqY3M7CisKKwlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoZW5naW5lLT5rZXJuZWxfY29udGV4
dCk7CisJaWYgKElTX0VSUihycSkpCisJCXJldHVybiBQVFJfRVJSKHJxKTsKKworCWNzID0gaW50
ZWxfcmluZ19iZWdpbihycSwgNCk7CisJaWYgKElTX0VSUihjcykpIHsKKwkJaTkxNV9yZXF1ZXN0
X2FkZChycSk7CisJCXJldHVybiBQVFJfRVJSKGNzKTsKKwl9CisKKwkqY3MrKyA9IE1JX1NUT1JF
X0RXT1JEX0lNTV9HRU40IHwgTUlfVVNFX0dHVFQ7CisJKmNzKysgPSBpOTE1X2dndHRfb2Zmc2V0
KHZtYSkgKyA0ICogKGlkeCAtIDEpOworCSpjcysrID0gMDsKKwkqY3MrKyA9IDE7CisKKwlpbnRl
bF9yaW5nX2FkdmFuY2UocnEsIGNzKTsKKwlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKKworCWVuZ2lu
ZS0+c2NoZWR1bGUocnEsICZhdHRyKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50Citz
bGljZV9zZW1hcGhvcmVfcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqb3V0ZXIsCisJCSAg
ICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAorCQkgICAgICBpbnQgY291bnQpCit7CisJc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKmhlYWQ7CisJ
ZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJaW50IGVyciwgaSwgbiA9IDA7CisKKwloZWFkID0g
c2VtYXBob3JlX3F1ZXVlKG91dGVyLCB2bWEsIG4rKyk7CisJaWYgKElTX0VSUihoZWFkKSkKKwkJ
cmV0dXJuIFBUUl9FUlIoaGVhZCk7CisKKwlpOTE1X3JlcXVlc3RfZ2V0KGhlYWQpOworCWZvcl9l
YWNoX2VuZ2luZShlbmdpbmUsIG91dGVyLT5pOTE1LCBpZCkgeworCQlmb3IgKGkgPSAwOyBpIDwg
Y291bnQ7IGkrKykgeworCQkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisKKwkJCXJxID0gc2Vt
YXBob3JlX3F1ZXVlKGVuZ2luZSwgdm1hLCBuKyspOworCQkJaWYgKElTX0VSUihycSkpIHsKKwkJ
CQllcnIgPSBQVFJfRVJSKHJxKTsKKwkJCQlnb3RvIG91dDsKKwkJCX0KKwkJfQorCX0KKworCWVy
ciA9IHJlbGVhc2VfcXVldWUob3V0ZXIsIHZtYSwgbik7CisJaWYgKGVycikKKwkJZ290byBvdXQ7
CisKKwlpZiAoaTkxNV9yZXF1ZXN0X3dhaXQoaGVhZCwKKwkJCSAgICAgIEk5MTVfV0FJVF9MT0NL
RUQsCisJCQkgICAgICAyICogUlVOVElNRV9JTkZPKG91dGVyLT5pOTE1KS0+bnVtX2VuZ2luZXMg
KiAoY291bnQgKyAyKSAqIChjb3VudCArIDMpKSA8IDApIHsKKwkJcHJfZXJyKCJGYWlsZWQgdG8g
c2xpY2UgYWxvbmcgc2VtYXBob3JlIGNoYWluIG9mIGxlbmd0aCAoJWQsICVkKSFcbiIsCisJCSAg
ICAgICBjb3VudCwgbik7CisJCUdFTV9UUkFDRV9EVU1QKCk7CisJCWk5MTVfZ2VtX3NldF93ZWRn
ZWQob3V0ZXItPmk5MTUpOworCQllcnIgPSAtRUlPOworCX0KKworb3V0OgorCWk5MTVfcmVxdWVz
dF9wdXQoaGVhZCk7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCBsaXZlX3RpbWVzbGlj
ZV9wcmVlbXB0KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGFyZzsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCWludGVsX3dha2VyZWZf
dCB3YWtlcmVmOworCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCXZvaWQgKnZhZGRyOworCWludCBl
cnIgPSAwOworCWludCBjb3VudDsKKworCS8qCisJICogSWYgYSByZXF1ZXN0IHRha2VzIHRvbyBs
b25nLCB3ZSB3b3VsZCBsaWtlIHRvIGdpdmUgb3RoZXIgdXNlcnMKKwkgKiBhIGZhaXIgZ28gb24g
dGhlIEdQVS4gSW4gcGFydGljdWxhciwgdXNlcnMgbWF5IGNyZWF0ZSBiYXRjaGVzCisJICogdGhh
dCB3YWl0IHVwb24gZXh0ZXJuYWwgaW5wdXQsIHdoZXJlIHRoYXQgaW5wdXQgbWF5IGV2ZW4gYmUK
KwkgKiBzdXBwbGllZCBieSBhbm90aGVyIEdQVSBqb2IuIFRvIGF2b2lkIGJsb2NraW5nIGZvcmV2
ZXIsIHdlCisJICogbmVlZCB0byBwcmVlbXB0IHRoZSBjdXJyZW50IHRhc2sgYW5kIHJlcGxhY2Ug
aXQgd2l0aCBhbm90aGVyCisJICogcmVhZHkgdGFzay4KKwkgKi8KKworCW11dGV4X2xvY2soJmk5
MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldChp
OTE1KTsKKworCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgUEFH
RV9TSVpFKTsKKwlpZiAoSVNfRVJSKG9iaikpIHsKKwkJZXJyID0gUFRSX0VSUihvYmopOworCQln
b3RvIGVycl91bmxvY2s7CisJfQorCisJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCAmaTkx
NS0+Z2d0dC52bSwgTlVMTCk7CisJaWYgKElTX0VSUih2bWEpKSB7CisJCWVyciA9IFBUUl9FUlIo
dm1hKTsKKwkJZ290byBlcnJfb2JqOworCX0KKworCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bp
bl9tYXAob2JqLCBJOTE1X01BUF9XQyk7CisJaWYgKElTX0VSUih2YWRkcikpIHsKKwkJZXJyID0g
UFRSX0VSUih2YWRkcik7CisJCWdvdG8gZXJyX29iajsKKwl9CisKKwllcnIgPSBpOTE1X3ZtYV9w
aW4odm1hLCAwLCAwLCBQSU5fR0xPQkFMKTsKKwlpZiAoZXJyKQorCQlnb3RvIGVycl9tYXA7CisK
Kwlmb3JfZWFjaF9wcmltZV9udW1iZXJfZnJvbShjb3VudCwgMSwgMTYpIHsKKwkJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lOworCQllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKKworCQlm
b3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgeworCQkJbWVtc2V0KHZhZGRyLCAwLCBQ
QUdFX1NJWkUpOworCisJCQllcnIgPSBzbGljZV9zZW1hcGhvcmVfcXVldWUoZW5naW5lLCB2bWEs
IGNvdW50KTsKKwkJCWlmIChlcnIpCisJCQkJZ290byBlcnJfcGluOworCisJCQlpZiAoaWd0X2Zs
dXNoX3Rlc3QoaTkxNSwgSTkxNV9XQUlUX0xPQ0tFRCkpIHsKKwkJCQllcnIgPSAtRUlPOworCQkJ
CWdvdG8gZXJyX3BpbjsKKwkJCX0KKwkJfQorCX0KKworZXJyX3BpbjoKKwlpOTE1X3ZtYV91bnBp
bih2bWEpOworZXJyX21hcDoKKwlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7CitlcnJf
b2JqOgorCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKK2Vycl91bmxvY2s6CisJaWYgKGlndF9m
bHVzaF90ZXN0KGk5MTUsIEk5MTVfV0FJVF9MT0NLRUQpKQorCQllcnIgPSAtRUlPOworCWludGVs
X3J1bnRpbWVfcG1fcHV0KGk5MTUsIHdha2VyZWYpOworCW11dGV4X3VubG9jaygmaTkxNS0+ZHJt
LnN0cnVjdF9tdXRleCk7CisKKwlyZXR1cm4gZXJyOworfQorCiBzdGF0aWMgaW50IGxpdmVfYnVz
eXdhaXRfcHJlZW1wdCh2b2lkICphcmcpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBhcmc7CkBAIC0zOTgsNiArNjE3LDkgQEAgc3RhdGljIGludCBsaXZlX2xhdGVfcHJlZW1w
dCh2b2lkICphcmcpCiAJaWYgKCFjdHhfbG8pCiAJCWdvdG8gZXJyX2N0eF9oaTsKIAorCS8qIE1h
a2Ugc3VyZSBjdHhfbG8gc3RheXMgYmVmb3JlIGN0eF9oaSB1bnRpbCB3ZSB0cmlnZ2VyIHByZWVt
cHRpb24uICovCisJY3R4X2xvLT5zY2hlZC5wcmlvcml0eSA9IEk5MTVfVVNFUl9QUklPUklUWSgx
KTsKKwogCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7CiAJCXN0cnVjdCBpZ3Rf
bGl2ZV90ZXN0IHQ7CiAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwpAQCAtMTgxOCw2ICsyMDQw
LDcgQEAgaW50IGludGVsX2V4ZWNsaXN0c19saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIHsKIAlzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0
c1tdID0gewogCQlTVUJURVNUKGxpdmVfc2FuaXR5Y2hlY2spLAorCQlTVUJURVNUKGxpdmVfdGlt
ZXNsaWNlX3ByZWVtcHQpLAogCQlTVUJURVNUKGxpdmVfYnVzeXdhaXRfcHJlZW1wdCksCiAJCVNV
QlRFU1QobGl2ZV9wcmVlbXB0KSwKIAkJU1VCVEVTVChsaXZlX2xhdGVfcHJlZW1wdCksCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwppbmRleCBiMWJhM2U2NWNkNTIuLjBiZDQ1MmU4
NTFkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCkBAIC0zOTQsNiArMzk0
LDcgQEAgYm9vbCBfX2k5MTVfc2NoZWRfbm9kZV9hZGRfZGVwZW5kZW5jeShzdHJ1Y3QgaTkxNV9z
Y2hlZF9ub2RlICpub2RlLAogCQlsaXN0X2FkZCgmZGVwLT53YWl0X2xpbmssICZzaWduYWwtPndh
aXRlcnNfbGlzdCk7CiAJCWxpc3RfYWRkKCZkZXAtPnNpZ25hbF9saW5rLCAmbm9kZS0+c2lnbmFs
ZXJzX2xpc3QpOwogCQlkZXAtPnNpZ25hbGVyID0gc2lnbmFsOworCQlkZXAtPndhaXRlciA9IG5v
ZGU7CiAJCWRlcC0+ZmxhZ3MgPSBmbGFnczsKIAogCQkvKiBLZWVwIHRyYWNrIG9mIHdoZXRoZXIg
YW55b25lIG9uIHRoaXMgY2hhaW4gaGFzIGEgc2VtYXBob3JlICovCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlcl90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9zY2hlZHVsZXJfdHlwZXMuaAppbmRleCAzZTMwOTYzMWJkMGIuLmFhZDgxYWNi
YTlkYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXJfdHlw
ZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlcl90eXBlcy5oCkBA
IC02Miw2ICs2Miw3IEBAIHN0cnVjdCBpOTE1X3NjaGVkX25vZGUgewogCiBzdHJ1Y3QgaTkxNV9k
ZXBlbmRlbmN5IHsKIAlzdHJ1Y3QgaTkxNV9zY2hlZF9ub2RlICpzaWduYWxlcjsKKwlzdHJ1Y3Qg
aTkxNV9zY2hlZF9ub2RlICp3YWl0ZXI7CiAJc3RydWN0IGxpc3RfaGVhZCBzaWduYWxfbGluazsK
IAlzdHJ1Y3QgbGlzdF9oZWFkIHdhaXRfbGluazsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGRmc19saW5r
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
