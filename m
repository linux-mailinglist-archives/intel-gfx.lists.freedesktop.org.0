Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC77330A3B4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B576C6E514;
	Mon,  1 Feb 2021 08:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826F76E4A1
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757787-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:57:12 +0000
Message-Id: <20210201085715.27435-54-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 54/57] drm/i915/gt: Infrastructure for ring
 scheduling
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QnVpbGQgYSBiYXJlIGJvbmVzIHNjaGVkdWxlciB0byBzaXQgb24gdG9wIHRoZSBnbG9iYWwgbGVn
YWN5IHJpbmdidWZmZXIKc3VibWlzc2lvbi4gVGhpcyB2aXJ0dWFsIGV4ZWNsaXN0cyBzY2hlbWUg
c2hvdWxkIGJlIGFwcGxpY2FibGUgdG8gYWxsCm9sZGVyIHBsYXRmb3Jtcy4KCkEga2V5IHByb2Js
ZW0gd2UgaGF2ZSB3aXRoIHRoZSBsZWdhY3kgcmluZyBidWZmZXIgc3VibWlzc2lvbiBpcyB0aGF0
IGl0Cm9ubHkgYWxsb3dzIGZvciBGSUZPIHF1ZXVpbmcuIEFsbCBjbGllbnRzIHNoYXJlIHRoZSBn
bG9iYWwgcmVxdWVzdCBxdWV1ZQphbmQgbXVzdCBjb250ZW5kIGZvciBpdHMgbG9jayB3aGVuIHN1
Ym1pdHRpbmcuIEFzIGFueSBjbGllbnQgbWF5IG5lZWQgdG8Kd2FpdCBmb3IgZXh0ZXJuYWwgZXZl
bnRzLCBhbGwgY2xpZW50cyBtdXN0IHRoZW4gd2FpdC4gSG93ZXZlciwgaWYgd2UKc3RhZ2UgZWFj
aCBjbGllbnQgaW50byB0aGVpciBvd24gdmlydHVhbCByaW5nYnVmZmVyIHdpdGggdGhlaXIgb3du
CnRpbWVsaW5lcywgd2UgY2FuIGNvcHkgdGhlIGNsaWVudCByZXF1ZXN0cyBpbnRvIHRoZSBnbG9i
YWwgcmluZ2J1ZmZlcgpvbmx5IHdoZW4gdGhleSBhcmUgcmVhZHksIHJlb3JkZXJpbmcgdGhlIHN1
Ym1pc3Npb24gYXJvdW5kIHN0YWxscy4KRnVydGhlcm1vcmUsIHRoZSBhYmlsaXR5IHRvIHJlb3Jk
ZXIgZ2l2ZXMgdXMgcnVkaW1lbnRhcmlseSBwcmlvcml0eQpzb3J0aW5nIC0tIGFsdGhvdWdoIHdp
dGhvdXQgcHJlZW1wdGlvbiBzdXBwb3J0LCBvbmNlIHNvbWV0aGluZyBpcyBvbiB0aGUKR1BVIGl0
IHN0YXlzIG9uIHRoZSBHUFUsIGFuZCBzbyBpdCBpcyBzdGlsbCBwb3NzaWJsZSBmb3IgYSBob2cg
dG8gZGVsYXkKYSBoaWdoIHByaW9yaXR5IHJlcXVlc3QgKHN1Y2ggYXMgdXBkYXRpbmcgdGhlIGRp
c3BsYXkpLiBIb3dldmVyLCBpdCBkb2VzCm1lYW5zIHRoYXQgaW4ga2VlcGluZyBhIHNob3J0IHN1
Ym1pc3Npb24gcXVldWUsIHRoZSBoaWdoIHByaW9yaXR5CnJlcXVlc3Qgd2lsbCBiZSBuZXh0LiBU
aGlzIGRlc2lnbiByZXNlbWJsZXMgdGhlIG9sZCBndWMgc3VibWlzc2lvbgpzY2hlZHVsZXIsIGZv
ciByZW9yZGVyaW5nIHJlcXVlc3RzIG9udG8gYSBnbG9iYWwgd29ya3F1ZXVlLgoKVGhlIGltcGxl
bWVudGF0aW9uIHVzZXMgdGhlIE1JX1VTRVJfSU5URVJSVVBUIGF0IHRoZSBlbmQgb2YgZXZlcnkK
cmVxdWVzdCB0byB0cmFjayBjb21wbGV0aW9uLCBzbyBpcyBtb3JlIGludGVycnVwdCBoYXBweSB0
aGFuIGV4ZWNsaXN0cwpbd2hpY2ggaGFzIGFuIGludGVycnVwdCBmb3IgZWFjaCBjb250ZXh0IGV2
ZW50LCBhbGJlaXQgdHdvXS4gT3VyCmludGVycnVwdHMgb24gdGhlc2Ugc3lzdGVtIGFyZSByZWxh
dGl2ZWx5IGhlYXZ5LCBhbmQgaW4gdGhlIHBhc3Qgd2UgaGF2ZQpiZWVuIGFibGUgdG8gY29tcGxl
dGVseSBzdGFydmUgU2FuZHlicmlnZSBieSB0aGUgaW50ZXJydXB0IHRyYWZmaWMuIE91cgppbnRl
cnJ1cHQgaGFuZGxlcnMgYXJlIGJlaW5nIG11Y2ggYmV0dGVyIChpbiBwYXJ0IG9mZmxvYWRpbmcg
dGhlIHdvcmsgdG8KYm90dG9tIGhhbHZlcyBsZWF2aW5nIHRoZSBpbnRlcnJ1cHQgaXRzZWxmIG9u
bHkgZGVhbGluZyB3aXRoIGFja2luZyB0aGUKcmVnaXN0ZXJzKSBidXQgd2UgY2FuIHN0aWxsIHNl
ZSB0aGUgaW1wYWN0IG9mIHN0YXJ2YXRpb24gaW4gdGhlIHVuZXZlbgpzdWJtaXNzaW9uIGxhdGVu
Y3kgb24gYSBzYXR1cmF0ZWQgc3lzdGVtLgoKT3ZlcmFsbCB0aG91Z2gsIHRoZSBzaG9ydCBzdW1p
c3Npb24gcXVldWVzIGFuZCBleHRyYSBpbnRlcnJ1cHRzIGRvIG5vdAphcHBlYXIgdG8gYmUgYWZm
ZWN0aW5nIHRocm91Z2hwdXQgKCstMTAlLCBzb21lIHRhc2tzIGV2ZW4gaW1wcm92ZSB0byB0aGUK
cmVkdWNlZCByZXF1ZXN0IG92ZXJoZWFkcykgYW5kIGltcHJvdmUgbGF0ZW5jeS4gW1doaWNoIGlz
IGEgbWFzc2l2ZQppbXByb3ZlbWVudCBzaW5jZSB0aGUgaW50cm9kdWN0aW9uIG9mIFNhbmR5YnJp
ZGdlIV0KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8
ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCAgICAgICAgfCAg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggIHwgICAx
ICsKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zY2hlZHVsZXIuYyAgICB8IDc4MyAr
KysrKysrKysrKysrKysrKysKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNz
aW9uLmMgICB8ICAxNyArLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Np
b24uaCAgIHwgIDE3ICsKIDYgZmlsZXMgY2hhbmdlZCwgODEyIGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZ19zY2hlZHVsZXIuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCBj
ZTAxNjM0ZDRlYTcuLjFmOWM5OGVhZTYwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTExNSw2
ICsxMTUsNyBAQCBndC15ICs9IFwKIAlndC9pbnRlbF9yZW5kZXJzdGF0ZS5vIFwKIAlndC9pbnRl
bF9yZXNldC5vIFwKIAlndC9pbnRlbF9yaW5nLm8gXAorCWd0L2ludGVsX3Jpbmdfc2NoZWR1bGVy
Lm8gXAogCWd0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5vIFwKIAlndC9pbnRlbF9ycHMubyBcCiAJ
Z3QvaW50ZWxfc3NldS5vIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKaW5k
ZXggMzNhMjk2MjM1NzFkLi5iYzA3Yzk2YWI0OGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZS5oCkBAIC0xOTMsNiArMTkzLDcgQEAgdm9pZCBpbnRlbF9lbmdpbmVfY2xlYW51
cF9jb21tb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIGludCBpbnRlbF9lbmdp
bmVfcmVzdW1lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiAKIGludCBpbnRlbF9y
aW5nX3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKK2lu
dCBpbnRlbF9yaW5nX3NjaGVkdWxlcl9zZXR1cChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpOwogCiBpbnQgaW50ZWxfZW5naW5lX3N0b3BfY3Moc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKTsKIHZvaWQgaW50ZWxfZW5naW5lX2NhbmNlbF9zdG9wX2NzKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV90eXBlcy5oCmluZGV4IGU5NGM5OWRlZTVjYi4uOWYxNGNjNjMxMjg3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaApAQCAtMzE4LDYgKzMxOCw3IEBA
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgewogCXN0cnVjdCB7CiAJCXN0cnVjdCBpbnRlbF9yaW5n
ICpyaW5nOwogCQlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lOworCQlzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY29udGV4dDsKIAl9IGxlZ2FjeTsKIAogCS8qCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zY2hlZHVsZXIuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAwMDAuLmI2ZmNiMThlZjBhNgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc2NoZWR1bGVyLmMKQEAgLTAsMCArMSw3ODMg
QEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkg
MjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlIDxsaW51eC9sb2cyLmg+CisK
KyNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KKworI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5j
bHVkZSAiaW50ZWxfYnJlYWRjcnVtYnMuaCIKKyNpbmNsdWRlICJpbnRlbF9jb250ZXh0LmgiCisj
aW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3N0YXRz
LmgiCisjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKKyNpbmNsdWRlICJpbnRlbF9ndF9wbS5oIgorI2lu
Y2x1ZGUgImludGVsX2d0X3JlcXVlc3RzLmgiCisjaW5jbHVkZSAiaW50ZWxfcmVzZXQuaCIKKyNp
bmNsdWRlICJpbnRlbF9yaW5nLmgiCisjaW5jbHVkZSAiaW50ZWxfcmluZ19zdWJtaXNzaW9uLmgi
CisjaW5jbHVkZSAic2htZW1fdXRpbHMuaCIKKworLyoKKyAqIFJvdWdoIGVzdGltYXRlIG9mIHRo
ZSB0eXBpY2FsIHJlcXVlc3Qgc2l6ZSwgcGVyZm9ybWluZyBhIGZsdXNoLAorICogc2V0LWNvbnRl
eHQgYW5kIHRoZW4gZW1pdHRpbmcgdGhlIGJhdGNoLgorICovCisjZGVmaW5lIExFR0FDWV9SRVFV
RVNUX1NJWkUgMjAwCisKK3N0YXRpYyB2b2lkCitzZXRfY3VycmVudF9jb250ZXh0KHN0cnVjdCBp
bnRlbF9jb250ZXh0ICoqcHRyLCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJaWYgKGNl
KQorCQlpbnRlbF9jb250ZXh0X2dldChjZSk7CisKKwljZSA9IHhjaGcocHRyLCBjZSk7CisKKwlp
ZiAoY2UpCisJCWludGVsX2NvbnRleHRfcHV0KGNlKTsKK30KKworc3RhdGljIGlubGluZSB2b2lk
IHJ1bnRpbWVfc3RhcnQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCXN0cnVjdCBpbnRl
bF9jb250ZXh0X3N0YXRzICpzdGF0cyA9ICZjZS0+c3RhdHM7CisKKwlpZiAoaW50ZWxfY29udGV4
dF9pc19iYXJyaWVyKGNlKSkKKwkJcmV0dXJuOworCisJaWYgKHN0YXRzLT5hY3RpdmUpCisJCXJl
dHVybjsKKworCVdSSVRFX09OQ0Uoc3RhdHMtPmFjdGl2ZSwgaW50ZWxfY29udGV4dF9jbG9jaygp
KTsKK30KKworc3RhdGljIGlubGluZSB2b2lkIHJ1bnRpbWVfc3RvcChzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UpCit7CisJc3RydWN0IGludGVsX2NvbnRleHRfc3RhdHMgKnN0YXRzID0gJmNlLT5z
dGF0czsKKwlrdGltZV90IGR0OworCisJaWYgKCFzdGF0cy0+YWN0aXZlKQorCQlyZXR1cm47CisK
KwlkdCA9IGt0aW1lX3N1YihpbnRlbF9jb250ZXh0X2Nsb2NrKCksIHN0YXRzLT5hY3RpdmUpOwor
CWV3bWFfcnVudGltZV9hZGQoJnN0YXRzLT5ydW50aW1lLmF2ZywgZHQpOworCXN0YXRzLT5ydW50
aW1lLnRvdGFsICs9IGR0OworCisJV1JJVEVfT05DRShzdGF0cy0+YWN0aXZlLCAwKTsKK30KKwor
c3RhdGljIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKl9fc2NoZWR1bGVfaW4oc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEpCit7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gcnEtPmNvbnRleHQ7
CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gcnEtPmVuZ2luZTsKKworCWludGVs
X2NvbnRleHRfZ2V0KGNlKTsKKworCV9faW50ZWxfZ3RfcG1fZ2V0KGVuZ2luZS0+Z3QpOworCWlm
IChlbmdpbmUtPmZ3X2RvbWFpbiAmJiAhZW5naW5lLT5md19hY3RpdmUrKykKKwkJaW50ZWxfdW5j
b3JlX2ZvcmNld2FrZV9nZXQoZW5naW5lLT51bmNvcmUsIGVuZ2luZS0+ZndfZG9tYWluKTsKKwor
CWludGVsX2VuZ2luZV9jb250ZXh0X2luKGVuZ2luZSk7CisKKwlDRV9UUkFDRShjZSwgInNjaGVk
dWxlLWluXG4iKTsKKworCXJldHVybiBlbmdpbmU7Cit9CisKK3N0YXRpYyB2b2lkIHNjaGVkdWxl
X2luKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICog
Y29uc3QgY2UgPSBycS0+Y29udGV4dDsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpvbGQ7CisK
KwlHRU1fQlVHX09OKCFpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UocnEtPmVuZ2luZSkpOworCisJ
b2xkID0gY2UtPmluZmxpZ2h0OworCWlmICghb2xkKQorCQlvbGQgPSBfX3NjaGVkdWxlX2luKHJx
KTsKKwlXUklURV9PTkNFKGNlLT5pbmZsaWdodCwgcHRyX2luYyhvbGQpKTsKKworCUdFTV9CVUdf
T04oaW50ZWxfY29udGV4dF9pbmZsaWdodChjZSkgIT0gcnEtPmVuZ2luZSk7CisJR0VNX0JVR19P
TighaW50ZWxfY29udGV4dF9pbmZsaWdodF9jb3VudChjZSkpOworfQorCitzdGF0aWMgdm9pZCBf
X3NjaGVkdWxlX291dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3sKKwlzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2UgPSBycS0+Y29udGV4dDsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUgPSBycS0+ZW5naW5lOworCisJQ0VfVFJBQ0UoY2UsICJzY2hlZHVsZS1vdXRcbiIpOworCisJ
aWYgKGludGVsX3RpbWVsaW5lX2lzX2xhc3QoY2UtPnRpbWVsaW5lLCBycSkpCisJCWludGVsX2Vu
Z2luZV9hZGRfcmV0aXJlKGVuZ2luZSwgY2UtPnRpbWVsaW5lKTsKKwllbHNlCisJCWk5MTVfcmVx
dWVzdF91cGRhdGVfZGVhZGxpbmUobGlzdF9uZXh0X2VudHJ5KHJxLCBsaW5rKSk7CisKKwlpbnRl
bF9lbmdpbmVfY29udGV4dF9vdXQoZW5naW5lKTsKKworCWlmIChlbmdpbmUtPmZ3X2RvbWFpbiAm
JiAhLS1lbmdpbmUtPmZ3X2FjdGl2ZSkKKwkJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXQoZW5n
aW5lLT51bmNvcmUsIGVuZ2luZS0+ZndfZG9tYWluKTsKKwlpbnRlbF9ndF9wbV9wdXRfYXN5bmMo
ZW5naW5lLT5ndCk7Cit9CisKK3N0YXRpYyB2b2lkIHNjaGVkdWxlX291dChzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBycS0+Y29udGV4dDsK
KworCUdFTV9CVUdfT04oIWNlLT5pbmZsaWdodCk7CisJY2UtPmluZmxpZ2h0ID0gcHRyX2RlYyhj
ZS0+aW5mbGlnaHQpOworCWlmICghaW50ZWxfY29udGV4dF9pbmZsaWdodF9jb3VudChjZSkpIHsK
KwkJR0VNX0JVR19PTihjZS0+aW5mbGlnaHQgIT0gcnEtPmVuZ2luZSk7CisJCV9fc2NoZWR1bGVf
b3V0KHJxKTsKKwkJV1JJVEVfT05DRShjZS0+aW5mbGlnaHQsIE5VTEwpOworCQlpbnRlbF9jb250
ZXh0X3B1dChjZSk7CisJfQorCisJaTkxNV9yZXF1ZXN0X3B1dChycSk7Cit9CisKK3N0YXRpYyB1
MzIgKnJpbmdfbWFwKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLCB1MzIgbGVuKQoreworCXUzMiAq
dmE7CisKKwlpZiAodW5saWtlbHkocmluZy0+dGFpbCArIGxlbiA+IHJpbmctPmVmZmVjdGl2ZV9z
aXplKSkgeworCQltZW1zZXQocmluZy0+dmFkZHIgKyByaW5nLT50YWlsLCAwLCByaW5nLT5zaXpl
IC0gcmluZy0+dGFpbCk7CisJCXJpbmctPnRhaWwgPSAwOworCX0KKworCXZhID0gcmluZy0+dmFk
ZHIgKyByaW5nLT50YWlsOworCXJpbmctPnRhaWwgPSBpbnRlbF9yaW5nX3dyYXAocmluZywgcmlu
Zy0+dGFpbCArIGxlbik7CisKKwlyZXR1cm4gdmE7Cit9CisKK3N0YXRpYyBpbmxpbmUgdTMyICpy
aW5nX21hcF9kdyhzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZywgdTMyIGxlbikKK3sKKwlyZXR1cm4g
cmluZ19tYXAocmluZywgbGVuICogc2l6ZW9mKHUzMikpOworfQorCitzdGF0aWMgaW5saW5lIHZv
aWQgcmluZ19hZHZhbmNlKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLCB2b2lkICptYXApCit7CisJ
R0VNX0JVR19PTihpbnRlbF9yaW5nX3dyYXAocmluZywgbWFwIC0gcmluZy0+dmFkZHIpICE9IHJp
bmctPnRhaWwpOworfQorCitzdGF0aWMgdm9pZCByaW5nX2NvcHkoc3RydWN0IGludGVsX3Jpbmcg
KmRzdCwKKwkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX3JpbmcgKnNyYywKKwkJICAgICAgdTMy
IHN0YXJ0LCB1MzIgZW5kKQoreworCXVuc2lnbmVkIGludCBsZW47CisJdm9pZCAqb3V0OworCisJ
bGVuID0gZW5kIC0gc3RhcnQ7CisJaWYgKGVuZCA8IHN0YXJ0KQorCQlsZW4gKz0gc3JjLT5zaXpl
OworCW91dCA9IHJpbmdfbWFwKGRzdCwgbGVuKTsKKworCWlmIChlbmQgPCBzdGFydCkgeworCQls
ZW4gPSBzcmMtPnNpemUgLSBzdGFydDsKKwkJbWVtY3B5KG91dCwgc3JjLT52YWRkciArIHN0YXJ0
LCBsZW4pOworCQlvdXQgKz0gbGVuOworCQlzdGFydCA9IDA7CisJfQorCisJbWVtY3B5KG91dCwg
c3JjLT52YWRkciArIHN0YXJ0LCBlbmQgLSBzdGFydCk7Cit9CisKK3N0YXRpYyB2b2lkIHN3aXRj
aF9jb250ZXh0KHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSkKK3sKK30KKworc3RhdGljIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJpbmdfc3VibWl0KHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5nID0gcnEtPmVu
Z2luZS0+bGVnYWN5LnJpbmc7CisKKwlfX2k5MTVfcmVxdWVzdF9zdWJtaXQocnEpOworCisJaWYg
KHJxLT5lbmdpbmUtPmxlZ2FjeS5jb250ZXh0ICE9IHJxLT5jb250ZXh0KSB7CisJCXN3aXRjaF9j
b250ZXh0KHJpbmcsIHJxKTsKKwkJc2V0X2N1cnJlbnRfY29udGV4dCgmcnEtPmVuZ2luZS0+bGVn
YWN5LmNvbnRleHQsIHJxLT5jb250ZXh0KTsKKwl9CisKKwlyaW5nX2NvcHkocmluZywgcnEtPnJp
bmcsIHJxLT5oZWFkLCBycS0+dGFpbCk7CisJcmV0dXJuIHJxOworfQorCitzdGF0aWMgc3RydWN0
IGk5MTVfcmVxdWVzdCAqKgorY29weV9hY3RpdmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqKnBvcnQs
IHN0cnVjdCBpOTE1X3JlcXVlc3QgKiBjb25zdCAqYWN0aXZlKQoreworCXdoaWxlICgqYWN0aXZl
KQorCQkqcG9ydCsrID0gKmFjdGl2ZSsrOworCisJcmV0dXJuIHBvcnQ7Cit9CisKK3N0YXRpYyBp
bmxpbmUgdm9pZAorY29weV9wb3J0cyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqZHN0LCBzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICoqc3JjLCBpbnQgY291bnQpCit7CisJLyogQSBtZW1jcHlfcCgpIHdvdWxk
IGJlIHZlcnkgdXNlZnVsIGhlcmUhICovCisJd2hpbGUgKGNvdW50LS0pCisJCVdSSVRFX09OQ0Uo
KmRzdCsrLCAqc3JjKyspOyAvKiBhdm9pZCB3cml0ZSB0ZWFyaW5nICovCit9CisKK3N0YXRpYyBp
bmxpbmUgdm9pZCB3cml0ZV90YWlsKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKK3sKKwl3bWIoKTsgLyogcGFyYW5vaWQgZmx1c2ggb2YgV0NCIGJlZm9yZSBSSU5HX1RBSUwg
d3JpdGUgKi8KKwlFTkdJTkVfV1JJVEUoZW5naW5lLCBSSU5HX1RBSUwsIGVuZ2luZS0+bGVnYWN5
LnJpbmctPnRhaWwpOworfQorCitzdGF0aWMgdm9pZCBkZXF1ZXVlKHN0cnVjdCBpOTE1X3NjaGVk
ICpzZSwgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBpbnRlbF9l
bmdpbmVfZXhlY2xpc3RzICogY29uc3QgZWwgPSAmZW5naW5lLT5leGVjbGlzdHM7CisJc3RydWN0
IGk5MTVfcmVxdWVzdCAqKiBjb25zdCBsYXN0X3BvcnQgPSBlbC0+cGVuZGluZyArIGVsLT5wb3J0
X21hc2s7CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqKnBvcnQsICoqZmlyc3QsICpsYXN0OworCXN0
cnVjdCBpOTE1X3ByaW9saXN0ICpwOworCisJZmlyc3QgPSBjb3B5X2FjdGl2ZShlbC0+cGVuZGlu
ZywgZWwtPmFjdGl2ZSk7CisJaWYgKGZpcnN0ID4gbGFzdF9wb3J0KQorCQlyZXR1cm47CisKKwls
b2NhbF9pcnFfZGlzYWJsZSgpOworCisJbGFzdCA9IE5VTEw7CisJcG9ydCA9IGZpcnN0OworCXNw
aW5fbG9jaygmc2UtPmxvY2spOworCWZvcl9lYWNoX3ByaW9saXN0KHAsICZzZS0+cXVldWUpIHsK
KwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsICpybjsKKworCQlwcmlvbGlzdF9mb3JfZWFjaF9y
ZXF1ZXN0X3NhZmUocnEsIHJuLCBwKSB7CisJCQlHRU1fQlVHX09OKHJxID09IGxhc3QpOworCQkJ
aWYgKGxhc3QgJiYgcnEtPmNvbnRleHQgIT0gbGFzdC0+Y29udGV4dCkgeworCQkJCWlmIChwb3J0
ID09IGxhc3RfcG9ydCkKKwkJCQkJZ290byBkb25lOworCisJCQkJKnBvcnQrKyA9IGk5MTVfcmVx
dWVzdF9nZXQobGFzdCk7CisJCQl9CisKKwkJCWxhc3QgPSByaW5nX3N1Ym1pdChycSk7CisJCX0K
KworCQlpOTE1X3ByaW9saXN0X2FkdmFuY2UoJnNlLT5xdWV1ZSwgcCk7CisJfQorZG9uZToKKwlz
cGluX3VubG9jaygmc2UtPmxvY2spOworCisJaWYgKGxhc3QpIHsKKwkJKnBvcnQrKyA9IGk5MTVf
cmVxdWVzdF9nZXQobGFzdCk7CisJCSpwb3J0ID0gTlVMTDsKKworCQlpZiAoISplbC0+YWN0aXZl
KQorCQkJcnVudGltZV9zdGFydCgoKmVsLT5wZW5kaW5nKS0+Y29udGV4dCk7CisJCVdSSVRFX09O
Q0UoZWwtPmFjdGl2ZSwgZWwtPnBlbmRpbmcpOworCisJCWNvcHlfcG9ydHMoZWwtPmluZmxpZ2h0
LCBlbC0+cGVuZGluZywgcG9ydCAtIGVsLT5wZW5kaW5nICsgMSk7CisJCXdoaWxlIChwb3J0LS0g
IT0gZmlyc3QpCisJCQlzY2hlZHVsZV9pbigqcG9ydCk7CisKKwkJd3JpdGVfdGFpbChlbmdpbmUp
OworCisJCVdSSVRFX09OQ0UoZWwtPmFjdGl2ZSwgZWwtPmluZmxpZ2h0KTsKKwkJR0VNX0JVR19P
TighKmVsLT5hY3RpdmUpOworCX0KKworCVdSSVRFX09OQ0UoZWwtPnBlbmRpbmdbMF0sIE5VTEwp
OworCisJbG9jYWxfaXJxX2VuYWJsZSgpOyAvKiBmbHVzaCBpcnFfd29yayAqYWZ0ZXIqIFJJTkdf
VEFJTCB3cml0ZSAqLworfQorCitzdGF0aWMgdm9pZCBwb3N0X3Byb2Nlc3NfY3NiKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKipwb3J0LAorCQkJICAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqbGFzdCkK
K3sKKwl3aGlsZSAocG9ydCAhPSBsYXN0KQorCQlzY2hlZHVsZV9vdXQoKnBvcnQrKyk7Cit9CisK
K3N0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqCitwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2V4ZWNsaXN0cyAqZWwsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKippbmFjdGl2ZSkKK3sK
KwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKworCXdoaWxlICgocnEgPSAqZWwtPmFjdGl2ZSkp
IHsKKwkJaWYgKCFfX2k5MTVfcmVxdWVzdF9pc19jb21wbGV0ZShycSkpIHsKKwkJCXJ1bnRpbWVf
c3RhcnQocnEtPmNvbnRleHQpOworCQkJYnJlYWs7CisJCX0KKworCQkqaW5hY3RpdmUrKyA9IHJx
OworCQllbC0+YWN0aXZlKys7CisKKwkJcnVudGltZV9zdG9wKHJxLT5jb250ZXh0KTsKKwl9CisK
KwlyZXR1cm4gaW5hY3RpdmU7Cit9CisKK3N0YXRpYyB2b2lkIHN1Ym1pc3Npb25fdGFza2xldChz
dHJ1Y3QgdGFza2xldF9zdHJ1Y3QgKnQpCit7CisJc3RydWN0IGk5MTVfc2NoZWQgKnNlID0gZnJv
bV90YXNrbGV0KHNlLCB0LCB0YXNrbGV0KTsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICogY29u
c3QgZW5naW5lID0KKwkJY29udGFpbmVyX29mKHNlLCB0eXBlb2YoKmVuZ2luZSksIHNjaGVkKTsK
KwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpwb3N0WzIgKiBFWEVDTElTVF9NQVhfUE9SVFNdOworCXN0
cnVjdCBpOTE1X3JlcXVlc3QgKippbmFjdGl2ZTsKKworCXJjdV9yZWFkX2xvY2soKTsKKwlpbmFj
dGl2ZSA9IHByb2Nlc3NfY3NiKCZlbmdpbmUtPmV4ZWNsaXN0cywgcG9zdCk7CisJR0VNX0JVR19P
TihpbmFjdGl2ZSAtIHBvc3QgPiBBUlJBWV9TSVpFKHBvc3QpKTsKKworCWlmICghaTkxNV9zY2hl
ZF9pc19pZGxlKHNlKSkKKwkJZGVxdWV1ZShzZSwgZW5naW5lKTsKKworCXBvc3RfcHJvY2Vzc19j
c2IocG9zdCwgaW5hY3RpdmUpOworCXJjdV9yZWFkX3VubG9jaygpOworfQorCitzdGF0aWMgdm9p
ZCByZXNldF9wcmVwYXJlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlHRU1f
VFJBQ0UoIiVzXG4iLCBlbmdpbmUtPm5hbWUpOworCisJaTkxNV9zY2hlZF9kaXNhYmxlKGludGVs
X2VuZ2luZV9nZXRfc2NoZWR1bGVyKGVuZ2luZSkpOworCisJaW50ZWxfcmluZ19zdWJtaXNzaW9u
X3Jlc2V0X3ByZXBhcmUoZW5naW5lKTsKK30KKworc3RhdGljIGlubGluZSB2b2lkIGNsZWFyX3Bv
cnRzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKipwb3J0cywgaW50IGNvdW50KQoreworCW1lbXNldF9w
KCh2b2lkICoqKXBvcnRzLCBOVUxMLCBjb3VudCk7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICoqCitjYW5jZWxfcG9ydF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNs
aXN0cyAqIGNvbnN0IGVsLAorCQkgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKippbmFjdGl2ZSkK
K3sKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICogY29uc3QgKnBvcnQ7CisKKwljbGVhcl9wb3J0cyhl
bC0+cGVuZGluZywgQVJSQVlfU0laRShlbC0+cGVuZGluZykpOworCisJLyogTWFyayB0aGUgZW5k
IG9mIGFjdGl2ZSBiZWZvcmUgd2Ugb3ZlcndyaXRlICphY3RpdmUgKi8KKwlmb3IgKHBvcnQgPSB4
Y2hnKCZlbC0+YWN0aXZlLCBlbC0+cGVuZGluZyk7ICpwb3J0OyBwb3J0KyspCisJCSppbmFjdGl2
ZSsrID0gKnBvcnQ7CisJY2xlYXJfcG9ydHMoZWwtPmluZmxpZ2h0LCBBUlJBWV9TSVpFKGVsLT5p
bmZsaWdodCkpOworCisJc21wX3dtYigpOyAvKiBjb21wbGV0ZSB0aGUgc2VxbG9jayBmb3IgZXhl
Y2xpc3RzX2FjdGl2ZSgpICovCisJV1JJVEVfT05DRShlbC0+YWN0aXZlLCBlbC0+aW5mbGlnaHQp
OworCisJcmV0dXJuIGluYWN0aXZlOworfQorCitzdGF0aWMgdm9pZCBfX3JpbmdfcmV3aW5kKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQoreworCXN0cnVjdCBp
OTE1X3NjaGVkICpzZSA9IGludGVsX2VuZ2luZV9nZXRfc2NoZWR1bGVyKGVuZ2luZSk7CisJc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJdW5zaWduZWQgbG9uZyBmbGFnczsKKworCXJjdV9yZWFk
X2xvY2soKTsKKwlzcGluX2xvY2tfaXJxc2F2ZSgmc2UtPmxvY2ssIGZsYWdzKTsKKwlycSA9IF9f
aTkxNV9zY2hlZF9yZXdpbmRfcmVxdWVzdHMoZW5naW5lKTsKKwlzcGluX3VubG9ja19pcnFyZXN0
b3JlKCZzZS0+bG9jaywgZmxhZ3MpOworCWlmIChycSAmJiBfX2k5MTVfcmVxdWVzdF9oYXNfc3Rh
cnRlZChycSkpCisJCV9faTkxNV9yZXF1ZXN0X3Jlc2V0KHJxLCBzdGFsbGVkKTsKKwlyY3VfcmVh
ZF91bmxvY2soKTsKK30KKworc3RhdGljIHZvaWQgcmluZ19yZXNldF9jc2Ioc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICog
Y29uc3QgZWwgPSAmZW5naW5lLT5leGVjbGlzdHM7CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqcG9z
dFsyICogRVhFQ0xJU1RfTUFYX1BPUlRTXTsKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqaW5hY3Rp
dmU7CisKKwlyY3VfcmVhZF9sb2NrKCk7CisJaW5hY3RpdmUgPSBjYW5jZWxfcG9ydF9yZXF1ZXN0
cyhlbCwgcG9zdCk7CisKKwkvKiBDbGVhciB0aGUgZ2xvYmFsIHN1Ym1pc3Npb24gc3RhdGUsIHdl
IHdpbGwgc3VibWl0IGZyb20gc2NyYXRjaCAqLworCWludGVsX3JpbmdfcmVzZXQoZW5naW5lLT5s
ZWdhY3kucmluZywgMCk7CisJc2V0X2N1cnJlbnRfY29udGV4dCgmZW5naW5lLT5sZWdhY3kuY29u
dGV4dCwgTlVMTCk7CisKKwlwb3N0X3Byb2Nlc3NfY3NiKHBvc3QsIGluYWN0aXZlKTsKKwlyY3Vf
cmVhZF91bmxvY2soKTsKK30KKworc3RhdGljIHZvaWQgcmluZ19yZXNldF9yZXdpbmQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBib29sIHN0YWxsZWQpCit7CisJcmluZ19yZXNldF9j
c2IoZW5naW5lKTsKKwlfX3JpbmdfcmV3aW5kKGVuZ2luZSwgc3RhbGxlZCk7Cit9CisKK3N0YXRp
YyB2b2lkIHJpbmdfcmVzZXRfY2FuY2VsKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
K3sKKwlzdHJ1Y3QgaTkxNV9zY2hlZCAqc2UgPSBpbnRlbF9lbmdpbmVfZ2V0X3NjaGVkdWxlcihl
bmdpbmUpOworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCAqcm47CisJc3RydWN0IGk5MTVfcHJp
b2xpc3QgKnA7CisJdW5zaWduZWQgbG9uZyBmbGFnczsKKworCXJpbmdfcmVzZXRfY3NiKGVuZ2lu
ZSk7CisKKwlyY3VfcmVhZF9sb2NrKCk7CisJc3Bpbl9sb2NrX2lycXNhdmUoJnNlLT5sb2NrLCBm
bGFncyk7CisKKwkvKiBNYXJrIGFsbCBzdWJtaXR0ZWQgcmVxdWVzdHMgYXMgc2tpcHBlZC4gKi8K
KwlsaXN0X2Zvcl9lYWNoX2VudHJ5KHJxLCAmc2UtPnJlcXVlc3RzLCBzY2hlZC5saW5rKQorCQlp
OTE1X3JlcXVlc3RfbWFya19laW8ocnEpOworCWludGVsX2VuZ2luZV9zaWduYWxfYnJlYWRjcnVt
YnMoZW5naW5lKTsKKworCS8qIEZsdXNoIHRoZSBxdWV1ZWQgcmVxdWVzdHMgdG8gdGhlIHRpbWVs
aW5lIGxpc3QgKGZvciByZXRpcmluZykuICovCisJZm9yX2VhY2hfcHJpb2xpc3QocCwgJnNlLT5x
dWV1ZSkgeworCQlwcmlvbGlzdF9mb3JfZWFjaF9yZXF1ZXN0X3NhZmUocnEsIHJuLCBwKSB7CisJ
CQlpOTE1X3JlcXVlc3RfbWFya19laW8ocnEpOworCQkJX19pOTE1X3JlcXVlc3Rfc3VibWl0KHJx
KTsKKwkJfQorCQlpOTE1X3ByaW9saXN0X2FkdmFuY2UoJnNlLT5xdWV1ZSwgcCk7CisJfQorCUdF
TV9CVUdfT04oIWk5MTVfc2NoZWRfaXNfaWRsZShzZSkpOworCisJLyogUmVtYWluaW5nIF91bnJl
YWR5XyByZXF1ZXN0cyB3aWxsIGJlIG5vcCdlZCB3aGVuIHN1Ym1pdHRlZCAqLworCisJc3Bpbl91
bmxvY2tfaXJxcmVzdG9yZSgmc2UtPmxvY2ssIGZsYWdzKTsKKwlyY3VfcmVhZF91bmxvY2soKTsK
K30KKworc3RhdGljIHZvaWQgcmVzZXRfZmluaXNoKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKK3sKKwlpbnRlbF9yaW5nX3N1Ym1pc3Npb25fcmVzZXRfZmluaXNoKGVuZ2luZSk7CisJ
aTkxNV9zY2hlZF9lbmFibGUoaW50ZWxfZW5naW5lX2dldF9zY2hlZHVsZXIoZW5naW5lKSk7Cit9
CisKK3N0YXRpYyB2b2lkIHN1Ym1pc3Npb25fcGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCit7CisJLyogZHJhaW4gdGhlIHN1Ym1pdCBxdWV1ZSAqLworCWludGVsX2JyZWFkY3J1
bWJzX3VucGluX2lycShlbmdpbmUtPmJyZWFkY3J1bWJzKTsKKwlpbnRlbF9lbmdpbmVfa2lja19z
Y2hlZHVsZXIoZW5naW5lKTsKK30KKworc3RhdGljIHZvaWQgc3VibWlzc2lvbl91bnBhcmsoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCWludGVsX2JyZWFkY3J1bWJzX3Bpbl9p
cnEoZW5naW5lLT5icmVhZGNydW1icyk7Cit9CisKK3N0YXRpYyB2b2lkIHJpbmdfY29udGV4dF9k
ZXN0cm95KHN0cnVjdCBrcmVmICpyZWYpCit7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0g
Y29udGFpbmVyX29mKHJlZiwgdHlwZW9mKCpjZSksIHJlZik7CisKKwlHRU1fQlVHX09OKGludGVs
X2NvbnRleHRfaXNfcGlubmVkKGNlKSk7CisKKwlpZiAoY2UtPnN0YXRlKQorCQlpOTE1X3ZtYV9w
dXQoY2UtPnN0YXRlKTsKKwlpZiAodGVzdF9iaXQoQ09OVEVYVF9BTExPQ19CSVQsICZjZS0+Zmxh
Z3MpKQorCQlpbnRlbF9yaW5nX3B1dChjZS0+cmluZyk7CisKKwlpbnRlbF9jb250ZXh0X2Zpbmko
Y2UpOworCWludGVsX2NvbnRleHRfZnJlZShjZSk7Cit9CisKK3N0YXRpYyBpbnQgYWxsb2NfY29u
dGV4dF92bWEoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQorCit7CisJc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lID0gY2UtPmVuZ2luZTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqOworCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCWludCBlcnI7CisKKwlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGVuZ2luZS0+aTkxNSwgZW5naW5lLT5jb250ZXh0X3Np
emUpOworCWlmIChJU19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIob2JqKTsKKworCS8qCisJ
ICogVHJ5IHRvIG1ha2UgdGhlIGNvbnRleHQgdXRpbGl6ZSBMMyBhcyB3ZWxsIGFzIExMQy4KKwkg
KgorCSAqIE9uIFZMViB3ZSBkb24ndCBoYXZlIEwzIGNvbnRyb2xzIGluIHRoZSBQVEVzIHNvIHdl
CisJICogc2hvdWxkbid0IHRvdWNoIHRoZSBjYWNoZSBsZXZlbCwgZXNwZWNpYWxseSBhcyB0aGF0
CisJICogd291bGQgbWFrZSB0aGUgb2JqZWN0IHNub29wZWQgd2hpY2ggbWlnaHQgaGF2ZSBhCisJ
ICogbmVnYXRpdmUgcGVyZm9ybWFuY2UgaW1wYWN0LgorCSAqCisJICogU25vb3BpbmcgaXMgcmVx
dWlyZWQgb24gbm9uLWxsYyBwbGF0Zm9ybXMgaW4gZXhlY2xpc3QKKwkgKiBtb2RlLCBidXQgc2lu
Y2UgYWxsIEdHVFQgYWNjZXNzZXMgdXNlIFBBVCBlbnRyeSAwIHdlCisJICogZ2V0IHNub29waW5n
IGFueXdheSByZWdhcmRsZXNzIG9mIGNhY2hlX2xldmVsLgorCSAqCisJICogVGhpcyBpcyBvbmx5
IGFwcGxpY2FibGUgZm9yIEl2eSBCcmlkZ2UgZGV2aWNlcyBzaW5jZQorCSAqIGxhdGVyIHBsYXRm
b3JtcyBkb24ndCBoYXZlIEwzIGNvbnRyb2wgYml0cyBpbiB0aGUgUFRFLgorCSAqLworCWlmIChJ
U19JVllCUklER0UoZW5naW5lLT5pOTE1KSkKKwkJaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9j
b2hlcmVuY3kob2JqLCBJOTE1X0NBQ0hFX0wzX0xMQyk7CisKKwlpZiAoZW5naW5lLT5kZWZhdWx0
X3N0YXRlKSB7CisJCXZvaWQgKnZhZGRyOworCisJCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bp
bl9tYXAob2JqLCBJOTE1X01BUF9XQik7CisJCWlmIChJU19FUlIodmFkZHIpKSB7CisJCQllcnIg
PSBQVFJfRVJSKHZhZGRyKTsKKwkJCWdvdG8gZXJyX29iajsKKwkJfQorCisJCXNobWVtX3JlYWQo
ZW5naW5lLT5kZWZhdWx0X3N0YXRlLCAwLAorCQkJICAgdmFkZHIsIGVuZ2luZS0+Y29udGV4dF9z
aXplKTsKKwkJX19zZXRfYml0KENPTlRFWFRfVkFMSURfQklULCAmY2UtPmZsYWdzKTsKKworCQlp
OTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKG9iaik7CisJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9t
YXAob2JqKTsKKwl9CisKKwl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosICZlbmdpbmUtPmd0
LT5nZ3R0LT52bSwgTlVMTCk7CisJaWYgKElTX0VSUih2bWEpKSB7CisJCWVyciA9IFBUUl9FUlIo
dm1hKTsKKwkJZ290byBlcnJfb2JqOworCX0KKworCWNlLT5zdGF0ZSA9IHZtYTsKKwlyZXR1cm4g
MDsKKworZXJyX29iajoKKwlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJcmV0dXJuIGVycjsK
K30KKworc3RhdGljIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqcGlubmVkX3RpbWVsaW5lKHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsID0gZmV0
Y2hfYW5kX3plcm8oJmNlLT50aW1lbGluZSk7CisKKwlyZXR1cm4gaW50ZWxfdGltZWxpbmVfY3Jl
YXRlX2Zyb21fZW5naW5lKGNlLT5lbmdpbmUsCisJCQkJCQkgcGFnZV91bm1hc2tfYml0cyh0bCkp
OworfQorCitzdGF0aWMgaW50IGFsbG9jX3RpbWVsaW5lKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBjZS0+ZW5naW5lOworCXN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7CisKKwlpZiAodW5saWtlbHkoY2UtPnRpbWVsaW5lKSkK
KwkJdGwgPSBwaW5uZWRfdGltZWxpbmUoY2UpOworCWVsc2UKKwkJdGwgPSBpbnRlbF90aW1lbGlu
ZV9jcmVhdGUoZW5naW5lLT5ndCk7CisJaWYgKElTX0VSUih0bCkpCisJCXJldHVybiBQVFJfRVJS
KHRsKTsKKworCWNlLT50aW1lbGluZSA9IHRsOworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50
IHJpbmdfY29udGV4dF9hbGxvYyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gY2UtPmVuZ2luZTsKKwlzdHJ1Y3QgaW50ZWxfcmlu
ZyAqcmluZzsKKwlpbnQgZXJyOworCisJR0VNX0JVR19PTihjZS0+c3RhdGUpOworCWlmIChlbmdp
bmUtPmNvbnRleHRfc2l6ZSkgeworCQllcnIgPSBhbGxvY19jb250ZXh0X3ZtYShjZSk7CisJCWlm
IChlcnIpCisJCQlyZXR1cm4gZXJyOworCX0KKworCWlmICghcGFnZV9tYXNrX2JpdHMoY2UtPnRp
bWVsaW5lKSkgeworCQllcnIgPSBhbGxvY190aW1lbGluZShjZSk7CisJCWlmIChlcnIpCisJCQln
b3RvIGVycl92bWE7CisJfQorCisJcmluZyA9IGludGVsX2VuZ2luZV9jcmVhdGVfcmluZyhlbmdp
bmUsCisJCQkJCSh1bnNpZ25lZCBsb25nKWNlLT5yaW5nIHwKKwkJCQkJSU5URUxfUklOR19DUkVB
VEVfSU5URVJOQUwpOworCWlmIChJU19FUlIocmluZykpIHsKKwkJZXJyID0gUFRSX0VSUihyaW5n
KTsKKwkJZ290byBlcnJfdGltZWxpbmU7CisJfQorCWNlLT5yaW5nID0gcmluZzsKKworCXJldHVy
biAwOworCitlcnJfdGltZWxpbmU6CisJaW50ZWxfdGltZWxpbmVfcHV0KGNlLT50aW1lbGluZSk7
CitlcnJfdm1hOgorCWlmIChjZS0+c3RhdGUpIHsKKwkJaTkxNV92bWFfcHV0KGNlLT5zdGF0ZSk7
CisJCWNlLT5zdGF0ZSA9IE5VTEw7CisJfQorCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQg
cmluZ19jb250ZXh0X3ByZV9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAorCQkJCXN0cnVj
dCBpOTE1X2dlbV93d19jdHggKnd3LAorCQkJCXZvaWQgKip1bnVzZWQpCit7CisJcmV0dXJuIDA7
Cit9CisKK3N0YXRpYyBpbnQgcmluZ19jb250ZXh0X3BpbihzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsIHZvaWQgKnVudXNlZCkKK3sKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgcmluZ19j
b250ZXh0X3VucGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKK30KKworc3RhdGljIHZv
aWQgcmluZ19jb250ZXh0X3Bvc3RfdW5waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQorewor
fQorCitzdGF0aWMgdm9pZCByaW5nX2NvbnRleHRfcmVzZXQoc3RydWN0IGludGVsX2NvbnRleHQg
KmNlKQoreworCWludGVsX3JpbmdfcmVzZXQoY2UtPnJpbmcsIDApOworCWNsZWFyX2JpdChDT05U
RVhUX1ZBTElEX0JJVCwgJmNlLT5mbGFncyk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfY29udGV4dF9vcHMgcmluZ19jb250ZXh0X29wcyA9IHsKKwkuZmxhZ3MgPSBDT1BTX0hBU19J
TkZMSUdIVCwKKworCS5hbGxvYyA9IHJpbmdfY29udGV4dF9hbGxvYywKKworCS5wcmVfcGluID0g
cmluZ19jb250ZXh0X3ByZV9waW4sCisJLnBpbiA9IHJpbmdfY29udGV4dF9waW4sCisJLnVucGlu
ID0gcmluZ19jb250ZXh0X3VucGluLAorCS5wb3N0X3VucGluID0gcmluZ19jb250ZXh0X3Bvc3Rf
dW5waW4sCisKKwkuZW50ZXIgPSBpbnRlbF9jb250ZXh0X2VudGVyX2VuZ2luZSwKKwkuZXhpdCA9
IGludGVsX2NvbnRleHRfZXhpdF9lbmdpbmUsCisKKwkucmVzZXQgPSByaW5nX2NvbnRleHRfcmVz
ZXQsCisJLmRlc3Ryb3kgPSByaW5nX2NvbnRleHRfZGVzdHJveSwKK307CisKK3N0YXRpYyBpbnQg
cmluZ19yZXF1ZXN0X2FsbG9jKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCWludCByZXQ7
CisKKwlHRU1fQlVHX09OKCFpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChycS0+Y29udGV4dCkpOwor
CisJLyoKKwkgKiBGbHVzaCBlbm91Z2ggc3BhY2UgdG8gcmVkdWNlIHRoZSBsaWtlbGlob29kIG9m
IHdhaXRpbmcgYWZ0ZXIKKwkgKiB3ZSBzdGFydCBidWlsZGluZyB0aGUgcmVxdWVzdCAtIGluIHdo
aWNoIGNhc2Ugd2Ugd2lsbCBqdXN0CisJICogaGF2ZSB0byByZXBlYXQgd29yay4KKwkgKi8KKwly
cS0+cmVzZXJ2ZWRfc3BhY2UgKz0gTEVHQUNZX1JFUVVFU1RfU0laRTsKKworCS8qIFVuY29uZGl0
aW9uYWxseSBpbnZhbGlkYXRlIEdQVSBjYWNoZXMgYW5kIFRMQnMuICovCisJcmV0ID0gcnEtPmVu
Z2luZS0+ZW1pdF9mbHVzaChycSwgRU1JVF9JTlZBTElEQVRFKTsKKwlpZiAocmV0KQorCQlyZXR1
cm4gcmV0OworCisJcnEtPnJlc2VydmVkX3NwYWNlIC09IExFR0FDWV9SRVFVRVNUX1NJWkU7CisJ
cmV0dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkIHNldF9kZWZhdWx0X3N1Ym1pc3Npb24oc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCWVuZ2luZS0+c2NoZWQuc3VibWl0X3JlcXVl
c3QgPSBpOTE1X3JlcXVlc3RfZW5xdWV1ZTsKK30KKworc3RhdGljIHZvaWQgcmluZ19yZWxlYXNl
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlpbnRlbF9lbmdpbmVfY2xlYW51
cF9jb21tb24oZW5naW5lKTsKKworCXNldF9jdXJyZW50X2NvbnRleHQoJmVuZ2luZS0+bGVnYWN5
LmNvbnRleHQsIE5VTEwpOworCisJaW50ZWxfcmluZ191bnBpbihlbmdpbmUtPmxlZ2FjeS5yaW5n
KTsKKwlpbnRlbF9yaW5nX3B1dChlbmdpbmUtPmxlZ2FjeS5yaW5nKTsKK30KKworc3RhdGljIHZv
aWQgc2V0dXBfaXJxKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKK30KKworc3Rh
dGljIHZvaWQgc2V0dXBfY29tbW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sK
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsKKworCS8qIGdl
bjgrIGFyZSBvbmx5IHN1cHBvcnRlZCB3aXRoIGV4ZWNsaXN0cyAqLworCUdFTV9CVUdfT04oSU5U
RUxfR0VOKGk5MTUpID49IDgpOworCUdFTV9CVUdfT04oSU5URUxfR0VOKGk5MTUpIDwgOCk7CisK
KwlzZXR1cF9pcnEoZW5naW5lKTsKKworCWVuZ2luZS0+cGFyayA9IHN1Ym1pc3Npb25fcGFyazsK
KwllbmdpbmUtPnVucGFyayA9IHN1Ym1pc3Npb25fdW5wYXJrOworCisJZW5naW5lLT5yZXN1bWUg
PSBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fcmVzdW1lOworCWVuZ2luZS0+c2FuaXRpemUgPSBpbnRl
bF9yaW5nX3N1Ym1pc3Npb25fc2FuaXRpemU7CisKKwllbmdpbmUtPnJlc2V0LnByZXBhcmUgPSBy
ZXNldF9wcmVwYXJlOworCWVuZ2luZS0+cmVzZXQucmV3aW5kID0gcmluZ19yZXNldF9yZXdpbmQ7
CisJZW5naW5lLT5yZXNldC5jYW5jZWwgPSByaW5nX3Jlc2V0X2NhbmNlbDsKKwllbmdpbmUtPnJl
c2V0LmZpbmlzaCA9IHJlc2V0X2ZpbmlzaDsKKworCWVuZ2luZS0+Y29wcyA9ICZyaW5nX2NvbnRl
eHRfb3BzOworCWVuZ2luZS0+cmVxdWVzdF9hbGxvYyA9IHJpbmdfcmVxdWVzdF9hbGxvYzsKKwor
CWVuZ2luZS0+c2V0X2RlZmF1bHRfc3VibWlzc2lvbiA9IHNldF9kZWZhdWx0X3N1Ym1pc3Npb247
Cit9CisKK3N0YXRpYyB2b2lkIHNldHVwX3JjcyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCit7Cit9CisKK3N0YXRpYyB2b2lkIHNldHVwX3ZjcyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCit7Cit9CisKK3N0YXRpYyB2b2lkIHNldHVwX2JjcyhzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCit7Cit9CisKK3N0YXRpYyB2b2lkIHNldHVwX3ZlY3Moc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCUdFTV9CVUdfT04oIUlTX0hBU1dFTEwoZW5naW5l
LT5pOTE1KSk7Cit9CisKK3N0YXRpYyB1bnNpZ25lZCBpbnQgZ2xvYmFsX3Jpbmdfc2l6ZSh2b2lk
KQoreworCS8qIEVub3VnaCBzcGFjZSB0byBob2xkIDIgY2xpZW50cyBhbmQgdGhlIGNvbnRleHQg
c3dpdGNoICovCisJcmV0dXJuIHJvdW5kdXBfcG93X29mX3R3byhFWEVDTElTVF9NQVhfUE9SVFMg
KiBTWl8xNksgKyBTWl80Syk7Cit9CisKK2ludCBpbnRlbF9yaW5nX3NjaGVkdWxlcl9zZXR1cChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJc3RydWN0IGludGVsX3JpbmcgKnJp
bmc7CisJaW50IGVycjsKKworCUdFTV9CVUdfT04oSEFTX0VYRUNMSVNUUyhlbmdpbmUtPmk5MTUp
KTsKKworCXRhc2tsZXRfc2V0dXAoJmVuZ2luZS0+c2NoZWQudGFza2xldCwgc3VibWlzc2lvbl90
YXNrbGV0KTsKKwlfX3NldF9iaXQoSTkxNV9TQ0hFRF9BQ1RJVkVfQklULCAmZW5naW5lLT5zY2hl
ZC5mbGFncyk7CisJX19zZXRfYml0KEk5MTVfU0NIRURfTkVFRFNfQlJFQURDUlVNQl9CSVQsICZl
bmdpbmUtPnNjaGVkLmZsYWdzKTsKKworCXNldHVwX2NvbW1vbihlbmdpbmUpOworCisJc3dpdGNo
IChlbmdpbmUtPmNsYXNzKSB7CisJY2FzZSBSRU5ERVJfQ0xBU1M6CisJCXNldHVwX3Jjcyhlbmdp
bmUpOworCQlicmVhazsKKwljYXNlIFZJREVPX0RFQ09ERV9DTEFTUzoKKwkJc2V0dXBfdmNzKGVu
Z2luZSk7CisJCWJyZWFrOworCWNhc2UgQ09QWV9FTkdJTkVfQ0xBU1M6CisJCXNldHVwX2Jjcyhl
bmdpbmUpOworCQlicmVhazsKKwljYXNlIFZJREVPX0VOSEFOQ0VNRU5UX0NMQVNTOgorCQlzZXR1
cF92ZWNzKGVuZ2luZSk7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCU1JU1NJTkdfQ0FTRShlbmdp
bmUtPmNsYXNzKTsKKwkJcmV0dXJuIC1FTk9ERVY7CisJfQorCisJcmluZyA9IGludGVsX2VuZ2lu
ZV9jcmVhdGVfcmluZyhlbmdpbmUsIGdsb2JhbF9yaW5nX3NpemUoKSk7CisJaWYgKElTX0VSUihy
aW5nKSkgeworCQllcnIgPSBQVFJfRVJSKHJpbmcpOworCQlnb3RvIGVycjsKKwl9CisKKwllcnIg
PSBpbnRlbF9yaW5nX3BpbihyaW5nLCBOVUxMKTsKKwlpZiAoZXJyKQorCQlnb3RvIGVycl9yaW5n
OworCisJR0VNX0JVR19PTihlbmdpbmUtPmxlZ2FjeS5yaW5nKTsKKwllbmdpbmUtPmxlZ2FjeS5y
aW5nID0gcmluZzsKKworCWVuZ2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfU1VQUE9SVFNfU1RB
VFM7CisKKwkvKiBGaW5hbGx5LCB0YWtlIG93bmVyc2hpcCBhbmQgcmVzcG9uc2liaWxpdHkgZm9y
IGNsZWFudXAhICovCisJZW5naW5lLT5yZWxlYXNlID0gcmluZ19yZWxlYXNlOworCXJldHVybiAw
OworCitlcnJfcmluZzoKKwlpbnRlbF9yaW5nX3B1dChyaW5nKTsKK2VycjoKKwlpbnRlbF9lbmdp
bmVfY2xlYW51cF9jb21tb24oZW5naW5lKTsKKwlyZXR1cm4gZXJyOworfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwppbmRleCBlZjgwZjQ3ZjQ2
OGEuLmVkZTE0OGM3YjJiZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZ19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ19zdWJtaXNzaW9uLmMKQEAgLTE0LDYgKzE0LDcgQEAKICNpbmNsdWRlICJpbnRlbF9ndC5o
IgogI2luY2x1ZGUgImludGVsX3Jlc2V0LmgiCiAjaW5jbHVkZSAiaW50ZWxfcmluZy5oIgorI2lu
Y2x1ZGUgImludGVsX3Jpbmdfc3VibWlzc2lvbi5oIgogI2luY2x1ZGUgInNobWVtX3V0aWxzLmgi
CiAKIC8qIFJvdWdoIGVzdGltYXRlIG9mIHRoZSB0eXBpY2FsIHJlcXVlc3Qgc2l6ZSwgcGVyZm9y
bWluZyBhIGZsdXNoLApAQCAtMTc2LDcgKzE3Nyw3IEBAIHN0YXRpYyBib29sIHN0b3BfcmluZyhz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJcmV0dXJuIChFTkdJTkVfUkVBRF9GVyhl
bmdpbmUsIFJJTkdfSEVBRCkgJiBIRUFEX0FERFIpID09IDA7CiB9CiAKLXN0YXRpYyBpbnQgeGNz
X3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCitpbnQgaW50ZWxfcmluZ19z
dWJtaXNzaW9uX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3Ry
dWN0IGludGVsX3JpbmcgKnJpbmcgPSBlbmdpbmUtPmxlZ2FjeS5yaW5nOwogCkBAIC0yNjQsNyAr
MjY1LDcgQEAgc3RhdGljIHZvaWQgc2FuaXRpemVfaHdzcChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCiAJCWludGVsX3RpbWVsaW5lX3Jlc2V0X3NlcW5vKHRsKTsKIH0KIAotc3RhdGlj
IHZvaWQgeGNzX3Nhbml0aXplKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3ZvaWQg
aW50ZWxfcmluZ19zdWJtaXNzaW9uX3Nhbml0aXplKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKIHsKIAkvKgogCSAqIFBvaXNvbiByZXNpZHVhbCBzdGF0ZSBvbiByZXN1bWUsIGluIGNh
c2UgdGhlIHN1c3BlbmQgZGlkbid0IQpAQCAtMjg5LDcgKzI5MCw3IEBAIHN0YXRpYyB2b2lkIHhj
c19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJY2xmbHVzaF9jYWNo
ZV9yYW5nZShlbmdpbmUtPnN0YXR1c19wYWdlLmFkZHIsIFBBR0VfU0laRSk7CiB9CiAKLXN0YXRp
YyB2b2lkIHJlc2V0X3ByZXBhcmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQordm9p
ZCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fcmVzZXRfcHJlcGFyZShzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCiB7CiAJLyoKIAkgKiBXZSBzdG9wIGVuZ2luZXMsIG90aGVyd2lzZSB3ZSBt
aWdodCBnZXQgZmFpbGVkIHJlc2V0IGFuZCBhCkBAIC0zODgsNyArMzg5LDcgQEAgc3RhdGljIHZv
aWQgcmVzZXRfcmV3aW5kKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFs
bGVkKQogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnNlLT5sb2NrLCBmbGFncyk7CiB9CiAKLXN0
YXRpYyB2b2lkIHJlc2V0X2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit2
b2lkIGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXNldF9maW5pc2goc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogewogfQogCkBAIC0xMDI3LDEzICsxMDI4LDEzIEBAIHN0YXRpYyB2b2lk
IHNldHVwX2NvbW1vbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAKIAlzZXR1cF9p
cnEoZW5naW5lKTsKIAotCWVuZ2luZS0+cmVzdW1lID0geGNzX3Jlc3VtZTsKLQllbmdpbmUtPnNh
bml0aXplID0geGNzX3Nhbml0aXplOworCWVuZ2luZS0+cmVzdW1lID0gaW50ZWxfcmluZ19zdWJt
aXNzaW9uX3Jlc3VtZTsKKwllbmdpbmUtPnNhbml0aXplID0gaW50ZWxfcmluZ19zdWJtaXNzaW9u
X3Nhbml0aXplOwogCi0JZW5naW5lLT5yZXNldC5wcmVwYXJlID0gcmVzZXRfcHJlcGFyZTsKKwll
bmdpbmUtPnJlc2V0LnByZXBhcmUgPSBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fcmVzZXRfcHJlcGFy
ZTsKIAllbmdpbmUtPnJlc2V0LnJld2luZCA9IHJlc2V0X3Jld2luZDsKIAllbmdpbmUtPnJlc2V0
LmNhbmNlbCA9IHJlc2V0X2NhbmNlbDsKLQllbmdpbmUtPnJlc2V0LmZpbmlzaCA9IHJlc2V0X2Zp
bmlzaDsKKwllbmdpbmUtPnJlc2V0LmZpbmlzaCA9IGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXNl
dF9maW5pc2g7CiAKIAllbmdpbmUtPmNvcHMgPSAmcmluZ19jb250ZXh0X29wczsKIAllbmdpbmUt
PnJlcXVlc3RfYWxsb2MgPSByaW5nX3JlcXVlc3RfYWxsb2M7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uNTlhNDNjMjIxNzQ4Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmgKQEAgLTAsMCArMSwxNyBA
QAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDC
qSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX1JJTkdfU1VC
TUlTU0lPTl9IX18KKyNkZWZpbmUgX19JTlRFTF9SSU5HX1NVQk1JU1NJT05fSF9fCisKK3N0cnVj
dCBpbnRlbF9lbmdpbmVfY3M7CisKK3ZvaWQgaW50ZWxfcmluZ19zdWJtaXNzaW9uX3Jlc2V0X3By
ZXBhcmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKK3ZvaWQgaW50ZWxfcmluZ19z
dWJtaXNzaW9uX3Jlc2V0X2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwor
CitpbnQgaW50ZWxfcmluZ19zdWJtaXNzaW9uX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpOwordm9pZCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fc2FuaXRpemUoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKKworI2VuZGlmIC8qIF9fSU5URUxfUklOR19TVUJNSVNT
SU9OX0hfXyAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
