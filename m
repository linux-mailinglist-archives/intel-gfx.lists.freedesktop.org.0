Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A161312F8B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6B96E872;
	Mon,  8 Feb 2021 10:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607F86E864
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809234-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:32 +0000
Message-Id: <20210208105236.28498-27-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/31] drm/i915/gt: Infrastructure for ring
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
ICsKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zY2hlZHVsZXIuYyAgICB8IDc1MCAr
KysrKysrKysrKysrKysrKysKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNz
aW9uLmMgICB8ICAxNyArLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Np
b24uaCAgIHwgIDE3ICsKIDYgZmlsZXMgY2hhbmdlZCwgNzc5IGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZ19zY2hlZHVsZXIuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCAy
MzU2Nzk2MzdkMWMuLjgyZDVlNGQyYmQwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTExNSw2
ICsxMTUsNyBAQCBndC15ICs9IFwKIAlndC9pbnRlbF9yZW5kZXJzdGF0ZS5vIFwKIAlndC9pbnRl
bF9yZXNldC5vIFwKIAlndC9pbnRlbF9yaW5nLm8gXAorCWd0L2ludGVsX3Jpbmdfc2NoZWR1bGVy
Lm8gXAogCWd0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5vIFwKIAlndC9pbnRlbF9ycHMubyBcCiAJ
Z3QvaW50ZWxfc3NldS5vIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKaW5k
ZXggZTRmMzkwYmJhMDA5Li45MTU1MTE3MTRhYzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
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
ZV90eXBlcy5oCmluZGV4IDlmMTQ2MzFiODEzMi4uYzQ4MDc4ZjE0ZGZkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaApAQCAtMzE5LDYgKzMxOSw3IEBA
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgewogCXN0cnVjdCB7CiAJCXN0cnVjdCBpbnRlbF9yaW5n
ICpyaW5nOwogCQlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lOworCQlzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY29udGV4dDsKIAl9IGxlZ2FjeTsKIAogCS8qCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zY2hlZHVsZXIuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAwMDAuLmQ3ZDZkYjllNjczNQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc2NoZWR1bGVyLmMKQEAgLTAsMCArMSw3NTAg
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
cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCAqcm47CisJc3RydWN0IGk5MTVfcHJpb2xpc3QgKnBsOwor
CisJZmlyc3QgPSBjb3B5X2FjdGl2ZShlbC0+cGVuZGluZywgZWwtPmFjdGl2ZSk7CisJaWYgKGZp
cnN0ID4gbGFzdF9wb3J0KQorCQlyZXR1cm47CisKKwlsb2NhbF9pcnFfZGlzYWJsZSgpOworCisJ
bGFzdCA9IE5VTEw7CisJcG9ydCA9IGZpcnN0OworCXNwaW5fbG9jaygmc2UtPmxvY2spOworCWk5
MTVfc2NoZWRfZGVxdWV1ZShzZSwgcGwsIHJxLCBybikgeworCQlpZiAobGFzdCAmJiBycS0+Y29u
dGV4dCAhPSBsYXN0LT5jb250ZXh0KSB7CisJCQlpZiAocG9ydCA9PSBsYXN0X3BvcnQpCisJCQkJ
Z290byBkb25lOworCisJCQkqcG9ydCsrID0gaTkxNV9yZXF1ZXN0X2dldChsYXN0KTsKKwkJfQor
CisJCWxhc3QgPSByaW5nX3N1Ym1pdChycSk7CisJfQorZG9uZToKKwlzcGluX3VubG9jaygmc2Ut
PmxvY2spOworCisJaWYgKGxhc3QpIHsKKwkJKnBvcnQrKyA9IGk5MTVfcmVxdWVzdF9nZXQobGFz
dCk7CisJCSpwb3J0ID0gTlVMTDsKKworCQlpZiAoISplbC0+YWN0aXZlKQorCQkJcnVudGltZV9z
dGFydCgoKmVsLT5wZW5kaW5nKS0+Y29udGV4dCk7CisJCVdSSVRFX09OQ0UoZWwtPmFjdGl2ZSwg
ZWwtPnBlbmRpbmcpOworCisJCWNvcHlfcG9ydHMoZWwtPmluZmxpZ2h0LCBlbC0+cGVuZGluZywg
cG9ydCAtIGVsLT5wZW5kaW5nICsgMSk7CisJCXdoaWxlIChwb3J0LS0gIT0gZmlyc3QpCisJCQlz
Y2hlZHVsZV9pbigqcG9ydCk7CisKKwkJd3JpdGVfdGFpbChlbmdpbmUpOworCisJCVdSSVRFX09O
Q0UoZWwtPmFjdGl2ZSwgZWwtPmluZmxpZ2h0KTsKKwkJR0VNX0JVR19PTighKmVsLT5hY3RpdmUp
OworCX0KKworCVdSSVRFX09OQ0UoZWwtPnBlbmRpbmdbMF0sIE5VTEwpOworCisJbG9jYWxfaXJx
X2VuYWJsZSgpOyAvKiBmbHVzaCBpcnFfd29yayAqYWZ0ZXIqIFJJTkdfVEFJTCB3cml0ZSAqLwor
fQorCitzdGF0aWMgdm9pZCBwb3N0X3Byb2Nlc3NfY3NiKHN0cnVjdCBpOTE1X3JlcXVlc3QgKipw
b3J0LAorCQkJICAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqbGFzdCkKK3sKKwl3aGlsZSAocG9y
dCAhPSBsYXN0KQorCQlzY2hlZHVsZV9vdXQoKnBvcnQrKyk7Cit9CisKK3N0YXRpYyBzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICoqCitwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0
cyAqZWwsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKippbmFjdGl2ZSkKK3sKKwlzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycTsKKworCXdoaWxlICgocnEgPSAqZWwtPmFjdGl2ZSkpIHsKKwkJaWYgKCFfX2k5
MTVfcmVxdWVzdF9pc19jb21wbGV0ZShycSkpIHsKKwkJCXJ1bnRpbWVfc3RhcnQocnEtPmNvbnRl
eHQpOworCQkJYnJlYWs7CisJCX0KKworCQkqaW5hY3RpdmUrKyA9IHJxOworCQllbC0+YWN0aXZl
Kys7CisKKwkJcnVudGltZV9zdG9wKHJxLT5jb250ZXh0KTsKKwl9CisKKwlyZXR1cm4gaW5hY3Rp
dmU7Cit9CisKK3N0YXRpYyB2b2lkIHN1Ym1pc3Npb25fdGFza2xldChzdHJ1Y3QgdGFza2xldF9z
dHJ1Y3QgKnQpCit7CisJc3RydWN0IGk5MTVfc2NoZWQgKnNlID0gZnJvbV90YXNrbGV0KHNlLCB0
LCB0YXNrbGV0KTsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICogY29uc3QgZW5naW5lID0KKwkJ
Y29udGFpbmVyX29mKHNlLCB0eXBlb2YoKmVuZ2luZSksIHNjaGVkKTsKKwlzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpwb3N0WzIgKiBFWEVDTElTVF9NQVhfUE9SVFNdOworCXN0cnVjdCBpOTE1X3JlcXVl
c3QgKippbmFjdGl2ZTsKKworCXJjdV9yZWFkX2xvY2soKTsKKwlpbmFjdGl2ZSA9IHByb2Nlc3Nf
Y3NiKCZlbmdpbmUtPmV4ZWNsaXN0cywgcG9zdCk7CisJR0VNX0JVR19PTihpbmFjdGl2ZSAtIHBv
c3QgPiBBUlJBWV9TSVpFKHBvc3QpKTsKKworCWlmICghaTkxNV9zY2hlZF9pc19pZGxlKHNlKSkK
KwkJZGVxdWV1ZShzZSwgZW5naW5lKTsKKworCXBvc3RfcHJvY2Vzc19jc2IocG9zdCwgaW5hY3Rp
dmUpOworCXJjdV9yZWFkX3VubG9jaygpOworfQorCitzdGF0aWMgdm9pZCBpcnFfaGFuZGxlcihz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHUxNiBpaXIpCit7CisJaW50ZWxfZW5naW5l
X2tpY2tfc2NoZWR1bGVyKGVuZ2luZSk7CisJaW50ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNydW1i
cyhlbmdpbmUpOworfQorCitzdGF0aWMgaW5saW5lIHZvaWQgY2xlYXJfcG9ydHMoc3RydWN0IGk5
MTVfcmVxdWVzdCAqKnBvcnRzLCBpbnQgY291bnQpCit7CisJbWVtc2V0X3AoKHZvaWQgKiopcG9y
dHMsIE5VTEwsIGNvdW50KTsKK30KKworc3RhdGljIHN0cnVjdCBpOTE1X3JlcXVlc3QgKioKK2Nh
bmNlbF9wb3J0X3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3Qg
ZWwsCisJCSAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqKmluYWN0aXZlKQoreworCXN0cnVjdCBp
OTE1X3JlcXVlc3QgKiBjb25zdCAqcG9ydDsKKworCWNsZWFyX3BvcnRzKGVsLT5wZW5kaW5nLCBB
UlJBWV9TSVpFKGVsLT5wZW5kaW5nKSk7CisKKwkvKiBNYXJrIHRoZSBlbmQgb2YgYWN0aXZlIGJl
Zm9yZSB3ZSBvdmVyd3JpdGUgKmFjdGl2ZSAqLworCWZvciAocG9ydCA9IHhjaGcoJmVsLT5hY3Rp
dmUsIGVsLT5wZW5kaW5nKTsgKnBvcnQ7IHBvcnQrKykKKwkJKmluYWN0aXZlKysgPSAqcG9ydDsK
KwljbGVhcl9wb3J0cyhlbC0+aW5mbGlnaHQsIEFSUkFZX1NJWkUoZWwtPmluZmxpZ2h0KSk7CisK
KwlzbXBfd21iKCk7IC8qIGNvbXBsZXRlIHRoZSBzZXFsb2NrIGZvciBleGVjbGlzdHNfYWN0aXZl
KCkgKi8KKwlXUklURV9PTkNFKGVsLT5hY3RpdmUsIGVsLT5pbmZsaWdodCk7CisKKwlyZXR1cm4g
aW5hY3RpdmU7Cit9CisKK3N0YXRpYyB2b2lkIF9fcmluZ19yZXdpbmQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCBib29sIHN0YWxsZWQpCit7CisJc3RydWN0IGk5MTVfc2NoZWQgKnNl
ID0gaW50ZWxfZW5naW5lX2dldF9zY2hlZHVsZXIoZW5naW5lKTsKKwlzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycTsKKwl1bnNpZ25lZCBsb25nIGZsYWdzOworCisJcmN1X3JlYWRfbG9jaygpOworCXNw
aW5fbG9ja19pcnFzYXZlKCZzZS0+bG9jaywgZmxhZ3MpOworCXJxID0gX19pOTE1X3NjaGVkX3Jl
d2luZF9yZXF1ZXN0cyhlbmdpbmUpOworCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnNlLT5sb2Nr
LCBmbGFncyk7CisJaWYgKHJxICYmIF9faTkxNV9yZXF1ZXN0X2hhc19zdGFydGVkKHJxKSkKKwkJ
X19pOTE1X3JlcXVlc3RfcmVzZXQocnEsIHN0YWxsZWQpOworCXJjdV9yZWFkX3VubG9jaygpOwor
fQorCitzdGF0aWMgdm9pZCByaW5nX3Jlc2V0X2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKiBjb25zdCBlbCA9ICZl
bmdpbmUtPmV4ZWNsaXN0czsKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpwb3N0WzIgKiBFWEVDTElT
VF9NQVhfUE9SVFNdOworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKippbmFjdGl2ZTsKKworCXJjdV9y
ZWFkX2xvY2soKTsKKwlpbmFjdGl2ZSA9IGNhbmNlbF9wb3J0X3JlcXVlc3RzKGVsLCBwb3N0KTsK
KworCS8qIENsZWFyIHRoZSBnbG9iYWwgc3VibWlzc2lvbiBzdGF0ZSwgd2Ugd2lsbCBzdWJtaXQg
ZnJvbSBzY3JhdGNoICovCisJaW50ZWxfcmluZ19yZXNldChlbmdpbmUtPmxlZ2FjeS5yaW5nLCAw
KTsKKwlzZXRfY3VycmVudF9jb250ZXh0KCZlbmdpbmUtPmxlZ2FjeS5jb250ZXh0LCBOVUxMKTsK
KworCXBvc3RfcHJvY2Vzc19jc2IocG9zdCwgaW5hY3RpdmUpOworCXJjdV9yZWFkX3VubG9jaygp
OworfQorCitzdGF0aWMgdm9pZCByaW5nX3Jlc2V0X3Jld2luZChzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKK3sKKwlyaW5nX3Jlc2V0X2NzYihlbmdpbmUpOwor
CV9fcmluZ19yZXdpbmQoZW5naW5lLCBzdGFsbGVkKTsKK30KKworc3RhdGljIHZvaWQgcmluZ19y
ZXNldF9jYW5jZWwoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBp
OTE1X3NjaGVkICpzZSA9IGludGVsX2VuZ2luZV9nZXRfc2NoZWR1bGVyKGVuZ2luZSk7CisJdW5z
aWduZWQgbG9uZyBmbGFnczsKKworCXJpbmdfcmVzZXRfY3NiKGVuZ2luZSk7CisKKwlzcGluX2xv
Y2tfaXJxc2F2ZSgmc2UtPmxvY2ssIGZsYWdzKTsKKwlfX2k5MTVfc2NoZWRfY2FuY2VsX3F1ZXVl
KHNlKTsKKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZzZS0+bG9jaywgZmxhZ3MpOworCisJaW50
ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNydW1icyhlbmdpbmUpOworfQorCitzdGF0aWMgdm9pZCBz
dWJtaXNzaW9uX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCS8qIGRy
YWluIHRoZSBzdWJtaXQgcXVldWUgKi8KKwlpbnRlbF9icmVhZGNydW1ic191bnBpbl9pcnEoZW5n
aW5lLT5icmVhZGNydW1icyk7CisJaW50ZWxfZW5naW5lX2tpY2tfc2NoZWR1bGVyKGVuZ2luZSk7
Cit9CisKK3N0YXRpYyB2b2lkIHN1Ym1pc3Npb25fdW5wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKK3sKKwlpbnRlbF9icmVhZGNydW1ic19waW5faXJxKGVuZ2luZS0+YnJlYWRj
cnVtYnMpOworfQorCitzdGF0aWMgdm9pZCByaW5nX2NvbnRleHRfZGVzdHJveShzdHJ1Y3Qga3Jl
ZiAqcmVmKQoreworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGNvbnRhaW5lcl9vZihyZWYs
IHR5cGVvZigqY2UpLCByZWYpOworCisJR0VNX0JVR19PTihpbnRlbF9jb250ZXh0X2lzX3Bpbm5l
ZChjZSkpOworCisJaWYgKGNlLT5zdGF0ZSkKKwkJaTkxNV92bWFfcHV0KGNlLT5zdGF0ZSk7CisJ
aWYgKHRlc3RfYml0KENPTlRFWFRfQUxMT0NfQklULCAmY2UtPmZsYWdzKSkKKwkJaW50ZWxfcmlu
Z19wdXQoY2UtPnJpbmcpOworCisJaW50ZWxfY29udGV4dF9maW5pKGNlKTsKKwlpbnRlbF9jb250
ZXh0X2ZyZWUoY2UpOworfQorCitzdGF0aWMgaW50IGFsbG9jX2NvbnRleHRfdm1hKHN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSkKKworeworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9
IGNlLT5lbmdpbmU7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwlzdHJ1Y3Qg
aTkxNV92bWEgKnZtYTsKKwlpbnQgZXJyOworCisJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0
ZV9zaG1lbShlbmdpbmUtPmk5MTUsIGVuZ2luZS0+Y29udGV4dF9zaXplKTsKKwlpZiAoSVNfRVJS
KG9iaikpCisJCXJldHVybiBQVFJfRVJSKG9iaik7CisKKwkvKgorCSAqIFRyeSB0byBtYWtlIHRo
ZSBjb250ZXh0IHV0aWxpemUgTDMgYXMgd2VsbCBhcyBMTEMuCisJICoKKwkgKiBPbiBWTFYgd2Ug
ZG9uJ3QgaGF2ZSBMMyBjb250cm9scyBpbiB0aGUgUFRFcyBzbyB3ZQorCSAqIHNob3VsZG4ndCB0
b3VjaCB0aGUgY2FjaGUgbGV2ZWwsIGVzcGVjaWFsbHkgYXMgdGhhdAorCSAqIHdvdWxkIG1ha2Ug
dGhlIG9iamVjdCBzbm9vcGVkIHdoaWNoIG1pZ2h0IGhhdmUgYQorCSAqIG5lZ2F0aXZlIHBlcmZv
cm1hbmNlIGltcGFjdC4KKwkgKgorCSAqIFNub29waW5nIGlzIHJlcXVpcmVkIG9uIG5vbi1sbGMg
cGxhdGZvcm1zIGluIGV4ZWNsaXN0CisJICogbW9kZSwgYnV0IHNpbmNlIGFsbCBHR1RUIGFjY2Vz
c2VzIHVzZSBQQVQgZW50cnkgMCB3ZQorCSAqIGdldCBzbm9vcGluZyBhbnl3YXkgcmVnYXJkbGVz
cyBvZiBjYWNoZV9sZXZlbC4KKwkgKgorCSAqIFRoaXMgaXMgb25seSBhcHBsaWNhYmxlIGZvciBJ
dnkgQnJpZGdlIGRldmljZXMgc2luY2UKKwkgKiBsYXRlciBwbGF0Zm9ybXMgZG9uJ3QgaGF2ZSBM
MyBjb250cm9sIGJpdHMgaW4gdGhlIFBURS4KKwkgKi8KKwlpZiAoSVNfSVZZQlJJREdFKGVuZ2lu
ZS0+aTkxNSkpCisJCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwgSTkx
NV9DQUNIRV9MM19MTEMpOworCisJaWYgKGVuZ2luZS0+ZGVmYXVsdF9zdGF0ZSkgeworCQl2b2lk
ICp2YWRkcjsKKworCQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwgSTkxNV9N
QVBfV0IpOworCQlpZiAoSVNfRVJSKHZhZGRyKSkgeworCQkJZXJyID0gUFRSX0VSUih2YWRkcik7
CisJCQlnb3RvIGVycl9vYmo7CisJCX0KKworCQlzaG1lbV9yZWFkKGVuZ2luZS0+ZGVmYXVsdF9z
dGF0ZSwgMCwKKwkJCSAgIHZhZGRyLCBlbmdpbmUtPmNvbnRleHRfc2l6ZSk7CisJCV9fc2V0X2Jp
dChDT05URVhUX1ZBTElEX0JJVCwgJmNlLT5mbGFncyk7CisKKwkJaTkxNV9nZW1fb2JqZWN0X2Zs
dXNoX21hcChvYmopOworCQlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7CisJfQorCisJ
dm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCAmZW5naW5lLT5ndC0+Z2d0dC0+dm0sIE5VTEwp
OworCWlmIChJU19FUlIodm1hKSkgeworCQllcnIgPSBQVFJfRVJSKHZtYSk7CisJCWdvdG8gZXJy
X29iajsKKwl9CisKKwljZS0+c3RhdGUgPSB2bWE7CisJcmV0dXJuIDA7CisKK2Vycl9vYmo6CisJ
aTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnBpbm5lZF90aW1lbGluZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCit7CisJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCA9IGZldGNoX2FuZF96ZXJvKCZjZS0+
dGltZWxpbmUpOworCisJcmV0dXJuIGludGVsX3RpbWVsaW5lX2NyZWF0ZV9mcm9tX2VuZ2luZShj
ZS0+ZW5naW5lLAorCQkJCQkJIHBhZ2VfdW5tYXNrX2JpdHModGwpKTsKK30KKworc3RhdGljIGlu
dCBhbGxvY190aW1lbGluZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lID0gY2UtPmVuZ2luZTsKKwlzdHJ1Y3QgaW50ZWxfdGltZWxp
bmUgKnRsOworCisJaWYgKHVubGlrZWx5KGNlLT50aW1lbGluZSkpCisJCXRsID0gcGlubmVkX3Rp
bWVsaW5lKGNlKTsKKwllbHNlCisJCXRsID0gaW50ZWxfdGltZWxpbmVfY3JlYXRlKGVuZ2luZS0+
Z3QpOworCWlmIChJU19FUlIodGwpKQorCQlyZXR1cm4gUFRSX0VSUih0bCk7CisKKwljZS0+dGlt
ZWxpbmUgPSB0bDsKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCByaW5nX2NvbnRleHRfYWxs
b2Moc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSA9IGNlLT5lbmdpbmU7CisJc3RydWN0IGludGVsX3JpbmcgKnJpbmc7CisJaW50IGVy
cjsKKworCUdFTV9CVUdfT04oY2UtPnN0YXRlKTsKKwlpZiAoZW5naW5lLT5jb250ZXh0X3NpemUp
IHsKKwkJZXJyID0gYWxsb2NfY29udGV4dF92bWEoY2UpOworCQlpZiAoZXJyKQorCQkJcmV0dXJu
IGVycjsKKwl9CisKKwlpZiAoIXBhZ2VfbWFza19iaXRzKGNlLT50aW1lbGluZSkpIHsKKwkJZXJy
ID0gYWxsb2NfdGltZWxpbmUoY2UpOworCQlpZiAoZXJyKQorCQkJZ290byBlcnJfdm1hOworCX0K
KworCXJpbmcgPSBpbnRlbF9lbmdpbmVfY3JlYXRlX3JpbmcoZW5naW5lLAorCQkJCQkodW5zaWdu
ZWQgbG9uZyljZS0+cmluZyB8CisJCQkJCUlOVEVMX1JJTkdfQ1JFQVRFX0lOVEVSTkFMKTsKKwlp
ZiAoSVNfRVJSKHJpbmcpKSB7CisJCWVyciA9IFBUUl9FUlIocmluZyk7CisJCWdvdG8gZXJyX3Rp
bWVsaW5lOworCX0KKwljZS0+cmluZyA9IHJpbmc7CisKKwlyZXR1cm4gMDsKKworZXJyX3RpbWVs
aW5lOgorCWludGVsX3RpbWVsaW5lX3B1dChjZS0+dGltZWxpbmUpOworZXJyX3ZtYToKKwlpZiAo
Y2UtPnN0YXRlKSB7CisJCWk5MTVfdm1hX3B1dChjZS0+c3RhdGUpOworCQljZS0+c3RhdGUgPSBO
VUxMOworCX0KKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IHJpbmdfY29udGV4dF9wcmVf
cGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCQlzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4
ICp3dywKKwkJCQl2b2lkICoqdW51c2VkKQoreworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50
IHJpbmdfY29udGV4dF9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp1bnVzZWQp
Cit7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkIHJpbmdfY29udGV4dF91bnBpbihzdHJ1
Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7Cit9CisKK3N0YXRpYyB2b2lkIHJpbmdfY29udGV4dF9w
b3N0X3VucGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKK30KKworc3RhdGljIHZvaWQg
cmluZ19jb250ZXh0X3Jlc2V0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwlpbnRlbF9y
aW5nX3Jlc2V0KGNlLT5yaW5nLCAwKTsKKwljbGVhcl9iaXQoQ09OVEVYVF9WQUxJRF9CSVQsICZj
ZS0+ZmxhZ3MpOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHRfb3BzIHJp
bmdfY29udGV4dF9vcHMgPSB7CisJLmZsYWdzID0gQ09QU19IQVNfSU5GTElHSFQsCisKKwkuYWxs
b2MgPSByaW5nX2NvbnRleHRfYWxsb2MsCisKKwkucHJlX3BpbiA9IHJpbmdfY29udGV4dF9wcmVf
cGluLAorCS5waW4gPSByaW5nX2NvbnRleHRfcGluLAorCS51bnBpbiA9IHJpbmdfY29udGV4dF91
bnBpbiwKKwkucG9zdF91bnBpbiA9IHJpbmdfY29udGV4dF9wb3N0X3VucGluLAorCisJLmVudGVy
ID0gaW50ZWxfY29udGV4dF9lbnRlcl9lbmdpbmUsCisJLmV4aXQgPSBpbnRlbF9jb250ZXh0X2V4
aXRfZW5naW5lLAorCisJLnJlc2V0ID0gcmluZ19jb250ZXh0X3Jlc2V0LAorCS5kZXN0cm95ID0g
cmluZ19jb250ZXh0X2Rlc3Ryb3ksCit9OworCitzdGF0aWMgaW50IHJpbmdfcmVxdWVzdF9hbGxv
YyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3sKKwlpbnQgcmV0OworCisJR0VNX0JVR19PTigh
aW50ZWxfY29udGV4dF9pc19waW5uZWQocnEtPmNvbnRleHQpKTsKKworCS8qCisJICogRmx1c2gg
ZW5vdWdoIHNwYWNlIHRvIHJlZHVjZSB0aGUgbGlrZWxpaG9vZCBvZiB3YWl0aW5nIGFmdGVyCisJ
ICogd2Ugc3RhcnQgYnVpbGRpbmcgdGhlIHJlcXVlc3QgLSBpbiB3aGljaCBjYXNlIHdlIHdpbGwg
anVzdAorCSAqIGhhdmUgdG8gcmVwZWF0IHdvcmsuCisJICovCisJcnEtPnJlc2VydmVkX3NwYWNl
ICs9IExFR0FDWV9SRVFVRVNUX1NJWkU7CisKKwkvKiBVbmNvbmRpdGlvbmFsbHkgaW52YWxpZGF0
ZSBHUFUgY2FjaGVzIGFuZCBUTEJzLiAqLworCXJldCA9IHJxLT5lbmdpbmUtPmVtaXRfZmx1c2go
cnEsIEVNSVRfSU5WQUxJREFURSk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCXJxLT5y
ZXNlcnZlZF9zcGFjZSAtPSBMRUdBQ1lfUkVRVUVTVF9TSVpFOworCXJldHVybiAwOworfQorCitz
dGF0aWMgdm9pZCBzZXRfZGVmYXVsdF9zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKK3sKKwllbmdpbmUtPnNjaGVkLnN1Ym1pdF9yZXF1ZXN0ID0gaTkxNV9yZXF1ZXN0
X2VucXVldWU7Cit9CisKK3N0YXRpYyB2b2lkIHJpbmdfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCit7CisJaW50ZWxfZW5naW5lX2NsZWFudXBfY29tbW9uKGVuZ2luZSk7
CisKKwlzZXRfY3VycmVudF9jb250ZXh0KCZlbmdpbmUtPmxlZ2FjeS5jb250ZXh0LCBOVUxMKTsK
KworCWludGVsX3JpbmdfdW5waW4oZW5naW5lLT5sZWdhY3kucmluZyk7CisJaW50ZWxfcmluZ19w
dXQoZW5naW5lLT5sZWdhY3kucmluZyk7Cit9CisKK3N0YXRpYyB2b2lkIHNldHVwX2lycShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJZW5naW5lLT5pcnFfaGFuZGxlciA9IGly
cV9oYW5kbGVyOworfQorCitzdGF0aWMgdm9pZCBzZXR1cF9jb21tb24oc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5n
aW5lLT5pOTE1OworCisJLyogZ2VuOCsgYXJlIG9ubHkgc3VwcG9ydGVkIHdpdGggZXhlY2xpc3Rz
ICovCisJR0VNX0JVR19PTihJTlRFTF9HRU4oaTkxNSkgPj0gOCk7CisJR0VNX0JVR19PTihJTlRF
TF9HRU4oaTkxNSkgPCA4KTsKKworCXNldHVwX2lycShlbmdpbmUpOworCisJZW5naW5lLT5wYXJr
ID0gc3VibWlzc2lvbl9wYXJrOworCWVuZ2luZS0+dW5wYXJrID0gc3VibWlzc2lvbl91bnBhcms7
CisKKwllbmdpbmUtPnJlc3VtZSA9IGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXN1bWU7CisJZW5n
aW5lLT5zYW5pdGl6ZSA9IGludGVsX3Jpbmdfc3VibWlzc2lvbl9zYW5pdGl6ZTsKKworCWVuZ2lu
ZS0+cmVzZXQucHJlcGFyZSA9IGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXNldF9wcmVwYXJlOwor
CWVuZ2luZS0+cmVzZXQucmV3aW5kID0gcmluZ19yZXNldF9yZXdpbmQ7CisJZW5naW5lLT5yZXNl
dC5jYW5jZWwgPSByaW5nX3Jlc2V0X2NhbmNlbDsKKwllbmdpbmUtPnJlc2V0LmZpbmlzaCA9IGlu
dGVsX3Jpbmdfc3VibWlzc2lvbl9yZXNldF9maW5pc2g7CisKKwllbmdpbmUtPmNvcHMgPSAmcmlu
Z19jb250ZXh0X29wczsKKwllbmdpbmUtPnJlcXVlc3RfYWxsb2MgPSByaW5nX3JlcXVlc3RfYWxs
b2M7CisKKwllbmdpbmUtPnNldF9kZWZhdWx0X3N1Ym1pc3Npb24gPSBzZXRfZGVmYXVsdF9zdWJt
aXNzaW9uOworfQorCitzdGF0aWMgdm9pZCBzZXR1cF9yY3Moc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQoreworfQorCitzdGF0aWMgdm9pZCBzZXR1cF92Y3Moc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQoreworfQorCitzdGF0aWMgdm9pZCBzZXR1cF9iY3Moc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworfQorCitzdGF0aWMgdm9pZCBzZXR1cF92ZWNzKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlHRU1fQlVHX09OKCFJU19IQVNXRUxM
KGVuZ2luZS0+aTkxNSkpOworfQorCitzdGF0aWMgdW5zaWduZWQgaW50IGdsb2JhbF9yaW5nX3Np
emUodm9pZCkKK3sKKwkvKiBFbm91Z2ggc3BhY2UgdG8gaG9sZCAyIGNsaWVudHMgYW5kIHRoZSBj
b250ZXh0IHN3aXRjaCAqLworCXJldHVybiByb3VuZHVwX3Bvd19vZl90d28oRVhFQ0xJU1RfTUFY
X1BPUlRTICogU1pfMTZLICsgU1pfNEspOworfQorCitpbnQgaW50ZWxfcmluZ19zY2hlZHVsZXJf
c2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBpbnRlbF9y
aW5nICpyaW5nOworCWludCBlcnI7CisKKwlHRU1fQlVHX09OKEhBU19FWEVDTElTVFMoZW5naW5l
LT5pOTE1KSk7CisKKwl0YXNrbGV0X3NldHVwKCZlbmdpbmUtPnNjaGVkLnRhc2tsZXQsIHN1Ym1p
c3Npb25fdGFza2xldCk7CisKKwlpOTE1X3NjaGVkX3NlbGVjdF9tb2RlKCZlbmdpbmUtPnNjaGVk
LCBJOTE1X1NDSEVEX01PREVfREVBRExJTkUpOworCisJc2V0dXBfY29tbW9uKGVuZ2luZSk7CisK
Kwlzd2l0Y2ggKGVuZ2luZS0+Y2xhc3MpIHsKKwljYXNlIFJFTkRFUl9DTEFTUzoKKwkJc2V0dXBf
cmNzKGVuZ2luZSk7CisJCWJyZWFrOworCWNhc2UgVklERU9fREVDT0RFX0NMQVNTOgorCQlzZXR1
cF92Y3MoZW5naW5lKTsKKwkJYnJlYWs7CisJY2FzZSBDT1BZX0VOR0lORV9DTEFTUzoKKwkJc2V0
dXBfYmNzKGVuZ2luZSk7CisJCWJyZWFrOworCWNhc2UgVklERU9fRU5IQU5DRU1FTlRfQ0xBU1M6
CisJCXNldHVwX3ZlY3MoZW5naW5lKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJTUlTU0lOR19D
QVNFKGVuZ2luZS0+Y2xhc3MpOworCQlyZXR1cm4gLUVOT0RFVjsKKwl9CisKKwlyaW5nID0gaW50
ZWxfZW5naW5lX2NyZWF0ZV9yaW5nKGVuZ2luZSwgZ2xvYmFsX3Jpbmdfc2l6ZSgpKTsKKwlpZiAo
SVNfRVJSKHJpbmcpKSB7CisJCWVyciA9IFBUUl9FUlIocmluZyk7CisJCWdvdG8gZXJyOworCX0K
KworCWVyciA9IGludGVsX3JpbmdfcGluKHJpbmcsIE5VTEwpOworCWlmIChlcnIpCisJCWdvdG8g
ZXJyX3Jpbmc7CisKKwlHRU1fQlVHX09OKGVuZ2luZS0+bGVnYWN5LnJpbmcpOworCWVuZ2luZS0+
bGVnYWN5LnJpbmcgPSByaW5nOworCisJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9TVVBQ
T1JUU19TVEFUUzsKKworCS8qIEZpbmFsbHksIHRha2Ugb3duZXJzaGlwIGFuZCByZXNwb25zaWJp
bGl0eSBmb3IgY2xlYW51cCEgKi8KKwllbmdpbmUtPnJlbGVhc2UgPSByaW5nX3JlbGVhc2U7CisJ
cmV0dXJuIDA7CisKK2Vycl9yaW5nOgorCWludGVsX3JpbmdfcHV0KHJpbmcpOworZXJyOgorCWlu
dGVsX2VuZ2luZV9jbGVhbnVwX2NvbW1vbihlbmdpbmUpOworCXJldHVybiBlcnI7Cit9CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jCmluZGV4IDRi
ZGRlMjhjMmMwOS4uYmUxZmU3OTE1YWY5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwpAQCAtMTUsNiArMTUsNyBAQAogI2luY2x1ZGUgImlu
dGVsX2d0X2lycS5oIgogI2luY2x1ZGUgImludGVsX3Jlc2V0LmgiCiAjaW5jbHVkZSAiaW50ZWxf
cmluZy5oIgorI2luY2x1ZGUgImludGVsX3Jpbmdfc3VibWlzc2lvbi5oIgogI2luY2x1ZGUgInNo
bWVtX3V0aWxzLmgiCiAKIC8qIFJvdWdoIGVzdGltYXRlIG9mIHRoZSB0eXBpY2FsIHJlcXVlc3Qg
c2l6ZSwgcGVyZm9ybWluZyBhIGZsdXNoLApAQCAtMTc3LDcgKzE3OCw3IEBAIHN0YXRpYyBib29s
IHN0b3BfcmluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJcmV0dXJuIChFTkdJ
TkVfUkVBRF9GVyhlbmdpbmUsIFJJTkdfSEVBRCkgJiBIRUFEX0FERFIpID09IDA7CiB9CiAKLXN0
YXRpYyBpbnQgeGNzX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCitpbnQg
aW50ZWxfcmluZ19zdWJtaXNzaW9uX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCiB7CiAJc3RydWN0IGludGVsX3JpbmcgKnJpbmcgPSBlbmdpbmUtPmxlZ2FjeS5yaW5nOwog
CkBAIC0yNjUsNyArMjY2LDcgQEAgc3RhdGljIHZvaWQgc2FuaXRpemVfaHdzcChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCWludGVsX3RpbWVsaW5lX3Jlc2V0X3NlcW5vKHRsKTsK
IH0KIAotc3RhdGljIHZvaWQgeGNzX3Nhbml0aXplKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKK3ZvaWQgaW50ZWxfcmluZ19zdWJtaXNzaW9uX3Nhbml0aXplKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKIHsKIAkvKgogCSAqIFBvaXNvbiByZXNpZHVhbCBzdGF0ZSBvbiBy
ZXN1bWUsIGluIGNhc2UgdGhlIHN1c3BlbmQgZGlkbid0IQpAQCAtMjkwLDcgKzI5MSw3IEBAIHN0
YXRpYyB2b2lkIHhjc19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJ
Y2xmbHVzaF9jYWNoZV9yYW5nZShlbmdpbmUtPnN0YXR1c19wYWdlLmFkZHIsIFBBR0VfU0laRSk7
CiB9CiAKLXN0YXRpYyB2b2lkIHJlc2V0X3ByZXBhcmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQordm9pZCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fcmVzZXRfcHJlcGFyZShzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJLyoKIAkgKiBXZSBzdG9wIGVuZ2luZXMsIG90
aGVyd2lzZSB3ZSBtaWdodCBnZXQgZmFpbGVkIHJlc2V0IGFuZCBhCkBAIC0zOTQsNyArMzk1LDcg
QEAgc3RhdGljIHZvaWQgcmVzZXRfcmV3aW5kKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwgYm9vbCBzdGFsbGVkKQogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnNlLT5sb2NrLCBmbGFn
cyk7CiB9CiAKLXN0YXRpYyB2b2lkIHJlc2V0X2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCit2b2lkIGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXNldF9maW5pc2goc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCWk5MTVfc2NoZWRfZW5hYmxlX3Rhc2tsZXQo
aW50ZWxfZW5naW5lX2dldF9zY2hlZHVsZXIoZW5naW5lKSk7CiB9CkBAIC05ODMsMTMgKzk4NCwx
MyBAQCBzdGF0aWMgdm9pZCBzZXR1cF9jb21tb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQogCiAJc2V0dXBfaXJxKGVuZ2luZSk7CiAKLQllbmdpbmUtPnJlc3VtZSA9IHhjc19yZXN1
bWU7Ci0JZW5naW5lLT5zYW5pdGl6ZSA9IHhjc19zYW5pdGl6ZTsKKwllbmdpbmUtPnJlc3VtZSA9
IGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXN1bWU7CisJZW5naW5lLT5zYW5pdGl6ZSA9IGludGVs
X3Jpbmdfc3VibWlzc2lvbl9zYW5pdGl6ZTsKIAotCWVuZ2luZS0+cmVzZXQucHJlcGFyZSA9IHJl
c2V0X3ByZXBhcmU7CisJZW5naW5lLT5yZXNldC5wcmVwYXJlID0gaW50ZWxfcmluZ19zdWJtaXNz
aW9uX3Jlc2V0X3ByZXBhcmU7CiAJZW5naW5lLT5yZXNldC5yZXdpbmQgPSByZXNldF9yZXdpbmQ7
CiAJZW5naW5lLT5yZXNldC5jYW5jZWwgPSByZXNldF9jYW5jZWw7Ci0JZW5naW5lLT5yZXNldC5m
aW5pc2ggPSByZXNldF9maW5pc2g7CisJZW5naW5lLT5yZXNldC5maW5pc2ggPSBpbnRlbF9yaW5n
X3N1Ym1pc3Npb25fcmVzZXRfZmluaXNoOwogCiAJZW5naW5lLT5jb3BzID0gJnJpbmdfY29udGV4
dF9vcHM7CiAJZW5naW5lLT5yZXF1ZXN0X2FsbG9jID0gcmluZ19yZXF1ZXN0X2FsbG9jOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uaApuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjU5YTQzYzIyMTc0OAotLS0gL2Rldi9u
dWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5o
CkBAIC0wLDAgKzEsMTcgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8q
CisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYg
X19JTlRFTF9SSU5HX1NVQk1JU1NJT05fSF9fCisjZGVmaW5lIF9fSU5URUxfUklOR19TVUJNSVNT
SU9OX0hfXworCitzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzOworCit2b2lkIGludGVsX3Jpbmdfc3Vi
bWlzc2lvbl9yZXNldF9wcmVwYXJlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7Cit2
b2lkIGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXNldF9maW5pc2goc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKTsKKworaW50IGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXN1bWUoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKK3ZvaWQgaW50ZWxfcmluZ19zdWJtaXNzaW9uX3Nh
bml0aXplKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CisKKyNlbmRpZiAvKiBfX0lO
VEVMX1JJTkdfU1VCTUlTU0lPTl9IX18gKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
