Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCDF220C43
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962386EADD;
	Wed, 15 Jul 2020 11:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5990D6EACF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826171-1500050 
 for multiple; Wed, 15 Jul 2020 12:52:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:44 +0100
Message-Id: <20200715115147.11866-63-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 63/66] drm/i915/gt: Infrastructure for ring
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
ICsKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zY2hlZHVsZXIuYyAgICB8IDc2MiAr
KysrKysrKysrKysrKysrKysKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNz
aW9uLmMgICB8ICAxMyArLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Np
b24uaCAgIHwgIDE2ICsKIDYgZmlsZXMgY2hhbmdlZCwgNzg4IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZ19zY2hlZHVsZXIuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCAy
Y2Y1NGRiOGI4NDcuLmU0ZWVhNDk4MDEyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTExMCw2
ICsxMTAsNyBAQCBndC15ICs9IFwKIAlndC9pbnRlbF9yZW5kZXJzdGF0ZS5vIFwKIAlndC9pbnRl
bF9yZXNldC5vIFwKIAlndC9pbnRlbF9yaW5nLm8gXAorCWd0L2ludGVsX3Jpbmdfc2NoZWR1bGVy
Lm8gXAogCWd0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5vIFwKIAlndC9pbnRlbF9ycHMubyBcCiAJ
Z3QvaW50ZWxfc3NldS5vIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKaW5k
ZXggZGNjMmZjMjJlYTM3Li5iODE2NTgxYjk1ZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZS5oCkBAIC0yMDksNiArMjA5LDcgQEAgdm9pZCBpbnRlbF9lbmdpbmVfY2xlYW51
cF9jb21tb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIGludCBpbnRlbF9lbmdp
bmVfcmVzdW1lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiAKIGludCBpbnRlbF9y
aW5nX3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKK2lu
dCBpbnRlbF9yaW5nX3NjaGVkdWxlcl9zZXR1cChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpOwogCiBpbnQgaW50ZWxfZW5naW5lX3N0b3BfY3Moc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKTsKIHZvaWQgaW50ZWxfZW5naW5lX2NhbmNlbF9zdG9wX2NzKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV90eXBlcy5oCmluZGV4IDhjNTAyY2YzNGRlNy4uNzhhNTc4NzlhZWY4IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaApAQCAtMzM5LDYgKzMzOSw3IEBA
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgewogCXN0cnVjdCB7CiAJCXN0cnVjdCBpbnRlbF9yaW5n
ICpyaW5nOwogCQlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lOworCQlzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY29udGV4dDsKIAl9IGxlZ2FjeTsKIAogCS8qCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zY2hlZHVsZXIuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAwMDAuLmQzYzIyMDM3ZjE3ZAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc2NoZWR1bGVyLmMKQEAgLTAsMCArMSw3NjIg
QEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkg
MjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlIDxsaW51eC9sb2cyLmg+CisK
KyNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KKworI2luY2x1ZGUgIm1tL2k5MTVfYWNxdWlyZV9j
dHguaCIKKworI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAiaW50ZWxfY29udGV4dC5o
IgorI2luY2x1ZGUgImludGVsX2VuZ2luZV9zdGF0cy5oIgorI2luY2x1ZGUgImludGVsX2d0Lmgi
CisjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKKyNpbmNsdWRlICJpbnRlbF9ndF9yZXF1ZXN0cy5o
IgorI2luY2x1ZGUgImludGVsX3Jlc2V0LmgiCisjaW5jbHVkZSAiaW50ZWxfcmluZy5oIgorI2lu
Y2x1ZGUgImludGVsX3Jpbmdfc3VibWlzc2lvbi5oIgorI2luY2x1ZGUgInNobWVtX3V0aWxzLmgi
CisKKy8qCisgKiBSb3VnaCBlc3RpbWF0ZSBvZiB0aGUgdHlwaWNhbCByZXF1ZXN0IHNpemUsIHBl
cmZvcm1pbmcgYSBmbHVzaCwKKyAqIHNldC1jb250ZXh0IGFuZCB0aGVuIGVtaXR0aW5nIHRoZSBi
YXRjaC4KKyAqLworI2RlZmluZSBMRUdBQ1lfUkVRVUVTVF9TSVpFIDIwMAorCitzdGF0aWMgaW5s
aW5lIGludCBycV9wcmlvKGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXJldHVy
biBycS0+c2NoZWQuYXR0ci5wcmlvcml0eTsKK30KKworc3RhdGljIGlubGluZSB1NjQgcnFfZGVh
ZGxpbmUoY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCit7CisJcmV0dXJuIHJxLT5zY2hl
ZC5kZWFkbGluZTsKK30KKworc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9wcmlvbGlzdCAqdG9f
cHJpb2xpc3Qoc3RydWN0IHJiX25vZGUgKnJiKQoreworCXJldHVybiByYl9lbnRyeShyYiwgc3Ry
dWN0IGk5MTVfcHJpb2xpc3QsIG5vZGUpOworfQorCitzdGF0aWMgaW5saW5lIGJvb2wgcmVzZXRf
aW5fcHJvZ3Jlc3MoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmVsKQorewor
CXJldHVybiB1bmxpa2VseSghX190YXNrbGV0X2lzX2VuYWJsZWQoJmVsLT50YXNrbGV0KSk7Cit9
CisKK3N0YXRpYyB2b2lkCitzZXRfY3VycmVudF9jb250ZXh0KHN0cnVjdCBpbnRlbF9jb250ZXh0
ICoqcHRyLCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJaWYgKGNlKQorCQlpbnRlbF9j
b250ZXh0X2dldChjZSk7CisKKwljZSA9IHhjaGcocHRyLCBjZSk7CisKKwlpZiAoY2UpCisJCWlu
dGVsX2NvbnRleHRfcHV0KGNlKTsKK30KKworc3RhdGljIHZvaWQgc2NoZWR1bGVfaW4oc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3sKKwlf
X2ludGVsX2d0X3BtX2dldChlbmdpbmUtPmd0KTsKKwlpbnRlbF9lbmdpbmVfY29udGV4dF9pbihl
bmdpbmUpOworCWk5MTVfcmVxdWVzdF9nZXQocnEpOworfQorCitzdGF0aWMgdm9pZCBzY2hlZHVs
ZV9pbl9uZXcoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCQkJICAgIHN0cnVjdCBp
OTE1X3JlcXVlc3QgKipwb3J0KQoreworCXdoaWxlICgqcG9ydCkKKwkJc2NoZWR1bGVfaW4oZW5n
aW5lLCAqcG9ydCsrKTsKK30KKworc3RhdGljIHZvaWQgc2NoZWR1bGVfb3V0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IHJxLT5l
bmdpbmU7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gcnEtPmNvbnRleHQ7CisKKwlpZiAo
aTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpIHsKKwkJaWYgKCFsaXN0X2lzX2xhc3RfcmN1KCZy
cS0+bGluaywgJmNlLT50aW1lbGluZS0+cmVxdWVzdHMpKQorCQkJaTkxNV9yZXF1ZXN0X3VwZGF0
ZV9kZWFkbGluZShsaXN0X25leHRfZW50cnkocnEsIGxpbmspKTsKKwkJZWxzZQorCQkJaW50ZWxf
ZW5naW5lX2FkZF9yZXRpcmUoZW5naW5lLCBjZS0+dGltZWxpbmUpOworCX0KKworCWk5MTVfcmVx
dWVzdF9wdXQocnEpOworCWludGVsX2VuZ2luZV9jb250ZXh0X291dChlbmdpbmUpOworCWludGVs
X2d0X3BtX3B1dF9hc3luYyhlbmdpbmUtPmd0KTsKK30KKworc3RhdGljIGlubGluZSB2b2lkICpj
bGVhcl9wb3J0cyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqcG9ydHMsIGludCBjb3VudCkKK3sKKwly
ZXR1cm4gbWVtc2V0X3AoKHZvaWQgKiopcG9ydHMsIE5VTEwsIGNvdW50KTsKK30KKworc3RhdGlj
IHUzMiAqcmluZ19tYXAoc3RydWN0IGludGVsX3JpbmcgKnJpbmcsIHUzMiBsZW4pCit7CisJdTMy
ICp2YTsKKworCWlmICh1bmxpa2VseShyaW5nLT50YWlsICsgbGVuID4gcmluZy0+ZWZmZWN0aXZl
X3NpemUpKSB7CisJCW1lbXNldChyaW5nLT52YWRkciArIHJpbmctPnRhaWwsIDAsIHJpbmctPnNp
emUgLSByaW5nLT50YWlsKTsKKwkJcmluZy0+dGFpbCA9IDA7CisJfQorCisJdmEgPSByaW5nLT52
YWRkciArIHJpbmctPnRhaWw7CisJcmluZy0+dGFpbCA9IGludGVsX3Jpbmdfd3JhcChyaW5nLCBy
aW5nLT50YWlsICsgbGVuKTsKKworCXJldHVybiB2YTsKK30KKworc3RhdGljIGlubGluZSB1MzIg
KnJpbmdfbWFwX2R3KHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLCB1MzIgbGVuKQoreworCXJldHVy
biByaW5nX21hcChyaW5nLCBsZW4gKiBzaXplb2YodTMyKSk7Cit9CisKK3N0YXRpYyB2b2lkIHJp
bmdfY29weShzdHJ1Y3QgaW50ZWxfcmluZyAqZHN0LAorCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfcmluZyAqc3JjLAorCQkgICAgICB1MzIgc3RhcnQsIHUzMiBlbmQpCit7CisJdW5zaWduZWQg
aW50IGxlbjsKKwl2b2lkICpvdXQ7CisKKwlsZW4gPSBlbmQgLSBzdGFydDsKKwlpZiAoZW5kIDwg
c3RhcnQpCisJCWxlbiArPSBzcmMtPnNpemU7CisJb3V0ID0gcmluZ19tYXAoZHN0LCBsZW4pOwor
CisJaWYgKGVuZCA8IHN0YXJ0KSB7CisJCWxlbiA9IHNyYy0+c2l6ZSAtIHN0YXJ0OworCQltZW1j
cHkob3V0LCBzcmMtPnZhZGRyICsgc3RhcnQsIGxlbik7CisJCW91dCArPSBsZW47CisJCXN0YXJ0
ID0gMDsKKwl9CisKKwltZW1jcHkob3V0LCBzcmMtPnZhZGRyICsgc3RhcnQsIGVuZCAtIHN0YXJ0
KTsKK30KKworc3RhdGljIHZvaWQgc3dpdGNoX2NvbnRleHQoc3RydWN0IGludGVsX3JpbmcgKnJp
bmcsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworfQorCitzdGF0aWMgc3RydWN0IGk5MTVf
cmVxdWVzdCAqcmluZ19zdWJtaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCit7CisJc3RydWN0
IGludGVsX3JpbmcgKnJpbmcgPSBycS0+ZW5naW5lLT5sZWdhY3kucmluZzsKKworCV9faTkxNV9y
ZXF1ZXN0X3N1Ym1pdChycSk7CisKKwlpZiAocnEtPmVuZ2luZS0+bGVnYWN5LmNvbnRleHQgIT0g
cnEtPmNvbnRleHQpIHsKKwkJc3dpdGNoX2NvbnRleHQocmluZywgcnEpOworCQlzZXRfY3VycmVu
dF9jb250ZXh0KCZycS0+ZW5naW5lLT5sZWdhY3kuY29udGV4dCwgcnEtPmNvbnRleHQpOworCX0K
KworCXJpbmdfY29weShyaW5nLCBycS0+cmluZywgcnEtPmhlYWQsIHJxLT50YWlsKTsKKwlyZXR1
cm4gcnE7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqCitjb3B5X2FjdGl2ZShz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqcG9ydCwgc3RydWN0IGk5MTVfcmVxdWVzdCAqIGNvbnN0ICph
Y3RpdmUpCit7CisJd2hpbGUgKCphY3RpdmUpCisJCSpwb3J0KysgPSAqYWN0aXZlKys7CisKKwly
ZXR1cm4gcG9ydDsKK30KKworc3RhdGljIHZvaWQgZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKiBjb25zdCBl
bCA9ICZlbmdpbmUtPmV4ZWNsaXN0czsKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqIGNvbnN0IGxh
c3RfcG9ydCA9IGVsLT5wZW5kaW5nICsgZWwtPnBvcnRfbWFzazsKKwlzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICoqcG9ydCwgKipmaXJzdDsKKwl1bnNpZ25lZCBsb25nIGZsYWdzOworCXN0cnVjdCByYl9u
b2RlICpyYjsKKworCWZpcnN0ID0gY29weV9hY3RpdmUoZWwtPnBlbmRpbmcsIGVsLT5hY3RpdmUp
OworCWlmIChmaXJzdCA+IGxhc3RfcG9ydCkKKwkJcmV0dXJuOworCisJcG9ydCA9IGZpcnN0Owor
CSpwb3J0ID0gTlVMTDsKKwlzcGluX2xvY2tfaXJxc2F2ZSgmZW5naW5lLT5hY3RpdmUubG9jaywg
ZmxhZ3MpOworCXdoaWxlICgocmIgPSByYl9maXJzdF9jYWNoZWQoJmVsLT5xdWV1ZSkpKSB7CisJ
CXN0cnVjdCBpOTE1X3ByaW9saXN0ICpwID0gdG9fcHJpb2xpc3QocmIpOworCQlzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSwgKnJuOworCisJCXByaW9saXN0X2Zvcl9lYWNoX3JlcXVlc3RfY29uc3Vt
ZShycSwgcm4sIHApIHsKKwkJCUdFTV9CVUdfT04ocnEgPT0gKnBvcnQpOworCQkJaWYgKCpwb3J0
ICYmIHJxLT5jb250ZXh0ICE9ICgqcG9ydCktPmNvbnRleHQpIHsKKwkJCQlpZiAocG9ydCA9PSBs
YXN0X3BvcnQpCisJCQkJCWdvdG8gZG9uZTsKKworCQkJCXBvcnQrKzsKKwkJCX0KKworCQkJKnBv
cnQgPSByaW5nX3N1Ym1pdChycSk7CisJCX0KKworCQlyYl9lcmFzZV9jYWNoZWQoJnAtPm5vZGUs
ICZlbC0+cXVldWUpOworCQlpOTE1X3ByaW9saXN0X2ZyZWUocCk7CisJfQorZG9uZToKKwlzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZlbmdpbmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7CisJaWYgKCEq
cG9ydCkKKwkJcmV0dXJuOworCisJKisrcG9ydCA9IE5VTEw7CisJc2NoZWR1bGVfaW5fbmV3KGVu
Z2luZSwgZmlyc3QpOworCVdSSVRFX09OQ0UoZWwtPmFjdGl2ZSwgZWwtPnBlbmRpbmcpOworCisJ
d21iKCk7IC8qIHBhcmFub2lkIGZsdXNoIG9mIFdDQiBiZWZvcmUgUklOR19UQUlMIHdyaXRlICov
CisJRU5HSU5FX1dSSVRFKGVuZ2luZSwgUklOR19UQUlMLCBlbmdpbmUtPmxlZ2FjeS5yaW5nLT50
YWlsKTsKKwltZW1jcHkoZWwtPmluZmxpZ2h0LCBlbC0+cGVuZGluZywKKwkgICAgICAgKHBvcnQg
LSBlbC0+cGVuZGluZyArIDEpICogc2l6ZW9mKCpwb3J0KSk7CisKKwlXUklURV9PTkNFKGVsLT5h
Y3RpdmUsIGVsLT5pbmZsaWdodCk7CisJR0VNX0JVR19PTighKmVsLT5hY3RpdmUpOworfQorCitz
dGF0aWMgc3RydWN0IGk5MTVfcmVxdWVzdCAqKgorcHJvY2Vzc19xKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfcmVxdWVzdCAqKmluYWN0aXZlKQoreworCXN0cnVj
dCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3QgZWwgPSAmZW5naW5lLT5leGVjbGlzdHM7
CisKKwl3aGlsZSAoKmVsLT5hY3RpdmUpIHsKKwkJaWYgKCFpOTE1X3JlcXVlc3RfY29tcGxldGVk
KCplbC0+YWN0aXZlKSkKKwkJCWJyZWFrOworCisJCSppbmFjdGl2ZSsrID0gKmVsLT5hY3RpdmUr
KzsKKwl9CisKKwlyZXR1cm4gaW5hY3RpdmU7Cit9CisKK3N0YXRpYyB2b2lkIHBvc3RfcHJvY2Vz
c19xKHN0cnVjdCBpOTE1X3JlcXVlc3QgKipwb3J0LAorCQkJICAgc3RydWN0IGk5MTVfcmVxdWVz
dCAqIGNvbnN0ICppbmFjdGl2ZSkKK3sKKwl3aGlsZSAocG9ydCAhPSBpbmFjdGl2ZSkKKwkJc2No
ZWR1bGVfb3V0KCpwb3J0KyspOworfQorCitzdGF0aWMgdm9pZCBzdWJtaXNzaW9uX3Rhc2tsZXQo
dW5zaWduZWQgbG9uZyBkYXRhKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9
IChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICopZGF0YTsKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpw
b3N0W0VYRUNMSVNUX01BWF9QT1JUU107CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqKmluYWN0aXZl
OworCisJaW5hY3RpdmUgPSBwcm9jZXNzX3EoZW5naW5lLCBwb3N0KTsKKwlHRU1fQlVHX09OKGlu
YWN0aXZlIC0gcG9zdCA+IEFSUkFZX1NJWkUocG9zdCkpOworCisJaWYgKHJiX2ZpcnN0X2NhY2hl
ZCgmZW5naW5lLT5leGVjbGlzdHMucXVldWUpKQorCQlkZXF1ZXVlKGVuZ2luZSk7CisKKwlwb3N0
X3Byb2Nlc3NfcShwb3N0LCBpbmFjdGl2ZSk7Cit9CisKK3N0YXRpYyB2b2lkIHN1Ym1pdF9yZXF1
ZXN0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSA9IHJxLT5lbmdpbmU7CisJdW5zaWduZWQgbG9uZyBmbGFnczsKKworCXNwaW5fbG9j
a19pcnFzYXZlKCZlbmdpbmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7CisJaWYgKGludGVsX2VuZ2lu
ZV9xdWV1ZV9yZXF1ZXN0KGVuZ2luZSwgcnEpKQorCQl0YXNrbGV0X2hpX3NjaGVkdWxlKCZlbmdp
bmUtPmV4ZWNsaXN0cy50YXNrbGV0KTsKKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZlbmdpbmUt
PmFjdGl2ZS5sb2NrLCBmbGFncyk7Cit9CisKK3N0YXRpYyB2b2lkIHJlc2V0X3ByZXBhcmUoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfZXhl
Y2xpc3RzICogY29uc3QgZWwgPSAmZW5naW5lLT5leGVjbGlzdHM7CisKKwlHRU1fVFJBQ0UoIiVz
XG4iLCBlbmdpbmUtPm5hbWUpOworCisJX190YXNrbGV0X2Rpc2FibGVfc3luY19vbmNlKCZlbC0+
dGFza2xldCk7CisJR0VNX0JVR19PTighcmVzZXRfaW5fcHJvZ3Jlc3MoZWwpKTsKKworCWludGVs
X3Jpbmdfc3VibWlzc2lvbl9yZXNldF9wcmVwYXJlKGVuZ2luZSk7Cit9CisKK3N0YXRpYyBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICoKK19fdW53aW5kX2luY29tcGxldGVfcmVxdWVzdHMoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCAqcm4s
ICphY3RpdmUgPSBOVUxMOworCXN0cnVjdCBsaXN0X2hlYWQgKnVuaW5pdGlhbGl6ZWRfdmFyKHBs
KTsKKwl1NjQgZGVhZGxpbmUgPSBJOTE1X0RFQURMSU5FX05FVkVSOworCisJbG9ja2RlcF9hc3Nl
cnRfaGVsZCgmZW5naW5lLT5hY3RpdmUubG9jayk7CisKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3Nh
ZmVfcmV2ZXJzZShycSwgcm4sCisJCQkJCSAmZW5naW5lLT5hY3RpdmUucmVxdWVzdHMsCisJCQkJ
CSBzY2hlZC5saW5rKSB7CisJCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKKwkJCWJy
ZWFrOworCisJCV9faTkxNV9yZXF1ZXN0X3Vuc3VibWl0KHJxKTsKKworCQlpZiAoaTkxNV9yZXF1
ZXN0X3N0YXJ0ZWQocnEpKSB7CisJCQl1NjQgZGVhZGxpbmUgPQorCQkJCWk5MTVfc2NoZWR1bGVy
X25leHRfdmlydHVhbF9kZWFkbGluZShycV9wcmlvKHJxKSk7CisJCQlycS0+c2NoZWQuZGVhZGxp
bmUgPSBtaW4ocnFfZGVhZGxpbmUocnEpLCBkZWFkbGluZSk7CisJCX0KKworCQlpZiAocnFfZGVh
ZGxpbmUocnEpICE9IGRlYWRsaW5lKSB7CisJCQlkZWFkbGluZSA9IHJxX2RlYWRsaW5lKHJxKTsK
KwkJCXBsID0gaTkxNV9zY2hlZF9sb29rdXBfcHJpb2xpc3QoZW5naW5lLCBkZWFkbGluZSk7CisJ
CX0KKwkJR0VNX0JVR19PTihSQl9FTVBUWV9ST09UKCZlbmdpbmUtPmV4ZWNsaXN0cy5xdWV1ZS5y
Yl9yb290KSk7CisKKwkJbGlzdF9tb3ZlKCZycS0+c2NoZWQubGluaywgcGwpOworCQlzZXRfYml0
KEk5MTVfRkVOQ0VfRkxBR19QUVVFVUUsICZycS0+ZmVuY2UuZmxhZ3MpOworCisJCWFjdGl2ZSA9
IHJxOworCX0KKworCXJldHVybiBhY3RpdmU7Cit9CisKK3N0YXRpYyB2b2lkIGNhbmNlbF9wb3J0
X3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlzdHJ1Y3QgaW50
ZWxfZW5naW5lX2V4ZWNsaXN0cyAqIGNvbnN0IGVsID0gJmVuZ2luZS0+ZXhlY2xpc3RzOworCXN0
cnVjdCBpOTE1X3JlcXVlc3QgKiBjb25zdCAqcG9ydDsKKworCWNsZWFyX3BvcnRzKGVsLT5wZW5k
aW5nLCBBUlJBWV9TSVpFKGVsLT5wZW5kaW5nKSk7CisJZm9yIChwb3J0ID0geGNoZygmZWwtPmFj
dGl2ZSwgZWwtPnBlbmRpbmcpOyAqcG9ydDsgcG9ydCsrKQorCQlzY2hlZHVsZV9vdXQoKnBvcnQp
OworCWNsZWFyX3BvcnRzKGVsLT5pbmZsaWdodCwgQVJSQVlfU0laRShlbC0+aW5mbGlnaHQpKTsK
KworCXNtcF93bWIoKTsgLyogY29tcGxldGUgdGhlIHNlcWxvY2sgZm9yIGV4ZWNsaXN0c19hY3Rp
dmUoKSAqLworCVdSSVRFX09OQ0UoZWwtPmFjdGl2ZSwgZWwtPmluZmxpZ2h0KTsKK30KKworc3Rh
dGljIHZvaWQgX19yaW5nX3Jld2luZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJv
b2wgc3RhbGxlZCkKK3sKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKworCXJxID0gX191bndp
bmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhlbmdpbmUpOworCWlmIChycSAmJiBpOTE1X3JlcXVlc3Rf
c3RhcnRlZChycSkpCisJCV9faTkxNV9yZXF1ZXN0X3Jlc2V0KHJxLCBzdGFsbGVkKTsKKworCS8q
IENsZWFyIHRoZSBnbG9iYWwgc3VibWlzc2lvbiBzdGF0ZSwgd2Ugd2lsbCBzdWJtaXQgZnJvbSBz
Y3JhdGNoICovCisJaW50ZWxfcmluZ19yZXNldChlbmdpbmUtPmxlZ2FjeS5yaW5nLCAwKTsKKwlz
ZXRfY3VycmVudF9jb250ZXh0KCZlbmdpbmUtPmxlZ2FjeS5jb250ZXh0LCBOVUxMKTsKK30KKwor
c3RhdGljIHZvaWQgcmluZ19yZXNldF9yZXdpbmQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLCBib29sIHN0YWxsZWQpCit7CisJdW5zaWduZWQgbG9uZyBmbGFnczsKKworCWNhbmNlbF9w
b3J0X3JlcXVlc3RzKGVuZ2luZSk7CisKKwlzcGluX2xvY2tfaXJxc2F2ZSgmZW5naW5lLT5hY3Rp
dmUubG9jaywgZmxhZ3MpOworCV9fcmluZ19yZXdpbmQoZW5naW5lLCBzdGFsbGVkKTsKKwlzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZlbmdpbmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7Cit9CisKK3N0
YXRpYyB2b2lkIG5vcF9zdWJtaXNzaW9uX3Rhc2tsZXQodW5zaWduZWQgbG9uZyBkYXRhKQorewor
fQorCitzdGF0aWMgdm9pZCByaW5nX3Jlc2V0X2NhbmNlbChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKiBjb25zdCBlbCA9
ICZlbmdpbmUtPmV4ZWNsaXN0czsKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgKnJuOworCXVu
c2lnbmVkIGxvbmcgZmxhZ3M7CisJc3RydWN0IHJiX25vZGUgKnJiOworCisJY2FuY2VsX3BvcnRf
cmVxdWVzdHMoZW5naW5lKTsKKworCXNwaW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPmFjdGl2ZS5s
b2NrLCBmbGFncyk7CisKKwlfX3JpbmdfcmV3aW5kKGVuZ2luZSwgdHJ1ZSk7CisKKwkvKiBNYXJr
IGFsbCBzdWJtaXR0ZWQgcmVxdWVzdHMgYXMgc2tpcHBlZC4gKi8KKwlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KHJxLCAmZW5naW5lLT5hY3RpdmUucmVxdWVzdHMsIHNjaGVkLmxpbmspIHsKKwkJaTkxNV9y
ZXF1ZXN0X3NldF9lcnJvcl9vbmNlKHJxLCAtRUlPKTsKKwkJaTkxNV9yZXF1ZXN0X21hcmtfY29t
cGxldGUocnEpOworCX0KKworCS8qIEZsdXNoIHRoZSBxdWV1ZWQgcmVxdWVzdHMgdG8gdGhlIHRp
bWVsaW5lIGxpc3QgKGZvciByZXRpcmluZykuICovCisJd2hpbGUgKChyYiA9IHJiX2ZpcnN0X2Nh
Y2hlZCgmZWwtPnF1ZXVlKSkpIHsKKwkJc3RydWN0IGk5MTVfcHJpb2xpc3QgKnAgPSB0b19wcmlv
bGlzdChyYik7CisKKwkJcHJpb2xpc3RfZm9yX2VhY2hfcmVxdWVzdF9jb25zdW1lKHJxLCBybiwg
cCkgeworCQkJaTkxNV9yZXF1ZXN0X3NldF9lcnJvcl9vbmNlKHJxLCAtRUlPKTsKKwkJCWk5MTVf
cmVxdWVzdF9tYXJrX2NvbXBsZXRlKHJxKTsKKwkJCV9faTkxNV9yZXF1ZXN0X3N1Ym1pdChycSk7
CisJCX0KKworCQlyYl9lcmFzZV9jYWNoZWQoJnAtPm5vZGUsICZlbC0+cXVldWUpOworCQlpOTE1
X3ByaW9saXN0X2ZyZWUocCk7CisJfQorCUdFTV9CVUdfT04oIVJCX0VNUFRZX1JPT1QoJmVsLT5x
dWV1ZS5yYl9yb290KSk7CisKKwkvKiBSZW1haW5pbmcgX3VucmVhZHlfIHJlcXVlc3RzIHdpbGwg
YmUgbm9wJ2VkIHdoZW4gc3VibWl0dGVkICovCisKKwlHRU1fQlVHX09OKF9fdGFza2xldF9pc19l
bmFibGVkKCZlbC0+dGFza2xldCkpOworCWVsLT50YXNrbGV0LmZ1bmMgPSBub3Bfc3VibWlzc2lv
bl90YXNrbGV0OworCisJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT5hY3RpdmUubG9j
aywgZmxhZ3MpOworfQorCitzdGF0aWMgdm9pZCByZXNldF9maW5pc2goc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQoreworCWludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXNldF9maW5pc2go
ZW5naW5lKTsKKworCWlmIChfX3Rhc2tsZXRfZW5hYmxlKCZlbmdpbmUtPmV4ZWNsaXN0cy50YXNr
bGV0KSkKKwkJdGFza2xldF9oaV9zY2hlZHVsZSgmZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7
Cit9CisKK3N0YXRpYyB2b2lkIHN1Ym1pc3Npb25fcGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCit7CisJaW50ZWxfZW5naW5lX3VucGluX2JyZWFkY3J1bWJzX2lycShlbmdpbmUp
OworCS8qIGRyYWluIHRoZSBzdWJtaXQgcXVldWUgKi8KKwl0YXNrbGV0X2hpX3NjaGVkdWxlKCZl
bmdpbmUtPmV4ZWNsaXN0cy50YXNrbGV0KTsKK30KKworc3RhdGljIHZvaWQgc3VibWlzc2lvbl91
bnBhcmsoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCWludGVsX2VuZ2luZV9w
aW5fYnJlYWRjcnVtYnNfaXJxKGVuZ2luZSk7Cit9CisKK3N0YXRpYyB2b2lkIHJpbmdfY29udGV4
dF9kZXN0cm95KHN0cnVjdCBrcmVmICpyZWYpCit7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNl
ID0gY29udGFpbmVyX29mKHJlZiwgdHlwZW9mKCpjZSksIHJlZik7CisKKwlHRU1fQlVHX09OKGlu
dGVsX2NvbnRleHRfaXNfcGlubmVkKGNlKSk7CisKKwlpZiAoY2UtPnN0YXRlKQorCQlpOTE1X3Zt
YV9wdXQoY2UtPnN0YXRlKTsKKwlpZiAodGVzdF9iaXQoQ09OVEVYVF9BTExPQ19CSVQsICZjZS0+
ZmxhZ3MpKQorCQlpbnRlbF9yaW5nX3B1dChjZS0+cmluZyk7CisKKwlpbnRlbF9jb250ZXh0X2Zp
bmkoY2UpOworCWludGVsX2NvbnRleHRfZnJlZShjZSk7Cit9CisKK3N0YXRpYyB2b2lkIHJpbmdf
Y29udGV4dF91bnBpbihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7Cit9CisKK3N0YXRpYyBp
bnQgYWxsb2NfY29udGV4dF92bWEoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQorCit7CisJc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gY2UtPmVuZ2luZTsKKwlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqOworCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCWludCBlcnI7CisK
KwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGVuZ2luZS0+aTkxNSwgZW5naW5l
LT5jb250ZXh0X3NpemUpOworCWlmIChJU19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIob2Jq
KTsKKworCS8qCisJICogVHJ5IHRvIG1ha2UgdGhlIGNvbnRleHQgdXRpbGl6ZSBMMyBhcyB3ZWxs
IGFzIExMQy4KKwkgKgorCSAqIE9uIFZMViB3ZSBkb24ndCBoYXZlIEwzIGNvbnRyb2xzIGluIHRo
ZSBQVEVzIHNvIHdlCisJICogc2hvdWxkbid0IHRvdWNoIHRoZSBjYWNoZSBsZXZlbCwgZXNwZWNp
YWxseSBhcyB0aGF0CisJICogd291bGQgbWFrZSB0aGUgb2JqZWN0IHNub29wZWQgd2hpY2ggbWln
aHQgaGF2ZSBhCisJICogbmVnYXRpdmUgcGVyZm9ybWFuY2UgaW1wYWN0LgorCSAqCisJICogU25v
b3BpbmcgaXMgcmVxdWlyZWQgb24gbm9uLWxsYyBwbGF0Zm9ybXMgaW4gZXhlY2xpc3QKKwkgKiBt
b2RlLCBidXQgc2luY2UgYWxsIEdHVFQgYWNjZXNzZXMgdXNlIFBBVCBlbnRyeSAwIHdlCisJICog
Z2V0IHNub29waW5nIGFueXdheSByZWdhcmRsZXNzIG9mIGNhY2hlX2xldmVsLgorCSAqCisJICog
VGhpcyBpcyBvbmx5IGFwcGxpY2FibGUgZm9yIEl2eSBCcmlkZ2UgZGV2aWNlcyBzaW5jZQorCSAq
IGxhdGVyIHBsYXRmb3JtcyBkb24ndCBoYXZlIEwzIGNvbnRyb2wgYml0cyBpbiB0aGUgUFRFLgor
CSAqLworCWlmIChJU19JVllCUklER0UoZW5naW5lLT5pOTE1KSkKKwkJaTkxNV9nZW1fb2JqZWN0
X3NldF9jYWNoZV9jb2hlcmVuY3kob2JqLCBJOTE1X0NBQ0hFX0wzX0xMQyk7CisKKwlpZiAoZW5n
aW5lLT5kZWZhdWx0X3N0YXRlKSB7CisJCXZvaWQgKnZhZGRyOworCisJCXZhZGRyID0gaTkxNV9n
ZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQik7CisJCWlmIChJU19FUlIodmFkZHIp
KSB7CisJCQllcnIgPSBQVFJfRVJSKHZhZGRyKTsKKwkJCWdvdG8gZXJyX29iajsKKwkJfQorCisJ
CXNobWVtX3JlYWQoZW5naW5lLT5kZWZhdWx0X3N0YXRlLCAwLAorCQkJICAgdmFkZHIsIGVuZ2lu
ZS0+Y29udGV4dF9zaXplKTsKKwkJX19zZXRfYml0KENPTlRFWFRfVkFMSURfQklULCAmY2UtPmZs
YWdzKTsKKworCQlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKG9iaik7CisJCWk5MTVfZ2VtX29i
amVjdF91bnBpbl9tYXAob2JqKTsKKwl9CisKKwl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmos
ICZlbmdpbmUtPmd0LT5nZ3R0LT52bSwgTlVMTCk7CisJaWYgKElTX0VSUih2bWEpKSB7CisJCWVy
ciA9IFBUUl9FUlIodm1hKTsKKwkJZ290byBlcnJfb2JqOworCX0KKworCWNlLT5zdGF0ZSA9IHZt
YTsKKwlyZXR1cm4gMDsKKworZXJyX29iajoKKwlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJ
cmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCBhbGxvY190aW1lbGluZShzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2UpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gY2UtPmVu
Z2luZTsKKwlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsOworCXN0cnVjdCBpOTE1X3ZtYSAqaHdz
cDsKKworCS8qCisJICogVXNlIHRoZSBzdGF0aWMgZ2xvYmFsIEhXU1AgZm9yIHRoZSBrZXJuZWwg
Y29udGV4dCwgYW5kCisJICogYSBkeW5hbWljYWxseSBhbGxvY2F0ZWQgY2FjaGVsaW5lIGZvciBl
dmVyeW9uZSBlbHNlLgorCSAqLworCWh3c3AgPSBOVUxMOworCWlmICh1bmxpa2VseShpbnRlbF9j
b250ZXh0X2lzX2JhcnJpZXIoY2UpKSkKKwkJaHdzcCA9IGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1h
OworCisJdGwgPSBpbnRlbF90aW1lbGluZV9jcmVhdGUoZW5naW5lLT5ndCwgaHdzcCk7CisJaWYg
KElTX0VSUih0bCkpCisJCXJldHVybiBQVFJfRVJSKHRsKTsKKworCWNlLT50aW1lbGluZSA9IHRs
OworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IHJpbmdfY29udGV4dF9hbGxvYyhzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2UpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0g
Y2UtPmVuZ2luZTsKKwlzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZzsKKwlpbnQgZXJyOworCisJR0VN
X0JVR19PTihjZS0+c3RhdGUpOworCWlmIChlbmdpbmUtPmNvbnRleHRfc2l6ZSkgeworCQllcnIg
PSBhbGxvY19jb250ZXh0X3ZtYShjZSk7CisJCWlmIChlcnIpCisJCQlyZXR1cm4gZXJyOworCX0K
KworCWlmICghY2UtPnRpbWVsaW5lKSB7CisJCWVyciA9IGFsbG9jX3RpbWVsaW5lKGNlKTsKKwkJ
aWYgKGVycikKKwkJCWdvdG8gZXJyX3ZtYTsKKwl9CisKKwlyaW5nID0gaW50ZWxfZW5naW5lX2Ny
ZWF0ZV9yaW5nKGVuZ2luZSwKKwkJCQkJKHVuc2lnbmVkIGxvbmcpY2UtPnJpbmcgfAorCQkJCQlJ
TlRFTF9SSU5HX0NSRUFURV9JTlRFUk5BTCk7CisJaWYgKElTX0VSUihyaW5nKSkgeworCQllcnIg
PSBQVFJfRVJSKHJpbmcpOworCQlnb3RvIGVycl90aW1lbGluZTsKKwl9CisJY2UtPnJpbmcgPSBy
aW5nOworCisJcmV0dXJuIDA7CisKK2Vycl90aW1lbGluZToKKwlpbnRlbF90aW1lbGluZV9wdXQo
Y2UtPnRpbWVsaW5lKTsKK2Vycl92bWE6CisJaWYgKGNlLT5zdGF0ZSkgeworCQlpOTE1X3ZtYV9w
dXQoY2UtPnN0YXRlKTsKKwkJY2UtPnN0YXRlID0gTlVMTDsKKwl9CisJcmV0dXJuIGVycjsKK30K
Kworc3RhdGljIGludCByaW5nX2NvbnRleHRfcGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
K3sKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgcmluZ19jb250ZXh0X3Jlc2V0KHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwlpbnRlbF9yaW5nX3Jlc2V0KGNlLT5yaW5nLCAwKTsK
KwljbGVhcl9iaXQoQ09OVEVYVF9WQUxJRF9CSVQsICZjZS0+ZmxhZ3MpOworfQorCitzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2NvbnRleHRfb3BzIHJpbmdfY29udGV4dF9vcHMgPSB7CisJLmFs
bG9jID0gcmluZ19jb250ZXh0X2FsbG9jLAorCisJLnBpbiA9IHJpbmdfY29udGV4dF9waW4sCisJ
LnVucGluID0gcmluZ19jb250ZXh0X3VucGluLAorCisJLmVudGVyID0gaW50ZWxfY29udGV4dF9l
bnRlcl9lbmdpbmUsCisJLmV4aXQgPSBpbnRlbF9jb250ZXh0X2V4aXRfZW5naW5lLAorCisJLnJl
c2V0ID0gcmluZ19jb250ZXh0X3Jlc2V0LAorCS5kZXN0cm95ID0gcmluZ19jb250ZXh0X2Rlc3Ry
b3ksCit9OworCitzdGF0aWMgaW50IHJpbmdfcmVxdWVzdF9hbGxvYyhzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKK3sKKwlpbnQgcmV0OworCisJR0VNX0JVR19PTighaW50ZWxfY29udGV4dF9pc19w
aW5uZWQocnEtPmNvbnRleHQpKTsKKworCS8qCisJICogRmx1c2ggZW5vdWdoIHNwYWNlIHRvIHJl
ZHVjZSB0aGUgbGlrZWxpaG9vZCBvZiB3YWl0aW5nIGFmdGVyCisJICogd2Ugc3RhcnQgYnVpbGRp
bmcgdGhlIHJlcXVlc3QgLSBpbiB3aGljaCBjYXNlIHdlIHdpbGwganVzdAorCSAqIGhhdmUgdG8g
cmVwZWF0IHdvcmsuCisJICovCisJcnEtPnJlc2VydmVkX3NwYWNlICs9IExFR0FDWV9SRVFVRVNU
X1NJWkU7CisKKwkvKiBVbmNvbmRpdGlvbmFsbHkgaW52YWxpZGF0ZSBHUFUgY2FjaGVzIGFuZCBU
TEJzLiAqLworCXJldCA9IHJxLT5lbmdpbmUtPmVtaXRfZmx1c2gocnEsIEVNSVRfSU5WQUxJREFU
RSk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCXJxLT5yZXNlcnZlZF9zcGFjZSAtPSBM
RUdBQ1lfUkVRVUVTVF9TSVpFOworCXJldHVybiAwOworfQorCitzdGF0aWMgdm9pZCBzZXRfZGVm
YXVsdF9zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwllbmdp
bmUtPnN1Ym1pdF9yZXF1ZXN0ID0gc3VibWl0X3JlcXVlc3Q7CisJZW5naW5lLT5leGVjbGlzdHMu
dGFza2xldC5mdW5jID0gc3VibWlzc2lvbl90YXNrbGV0OworfQorCitzdGF0aWMgdm9pZCByaW5n
X3JlbGVhc2VfZ2xvYmFsX3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQoreworCWludGVsX3JpbmdfdW5waW4oZW5naW5lLT5sZWdhY3kucmluZyk7CisJaW50ZWxfcmlu
Z19wdXQoZW5naW5lLT5sZWdhY3kucmluZyk7Cit9CisKK3N0YXRpYyB2b2lkIHJpbmdfcmVsZWFz
ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJaW50ZWxfZW5naW5lX2NsZWFu
dXBfY29tbW9uKGVuZ2luZSk7CisKKwlzZXRfY3VycmVudF9jb250ZXh0KCZlbmdpbmUtPmxlZ2Fj
eS5jb250ZXh0LCBOVUxMKTsKKworCXJpbmdfcmVsZWFzZV9nbG9iYWxfc3VibWlzc2lvbihlbmdp
bmUpOworfQorCitzdGF0aWMgdm9pZCBzZXR1cF9pcnEoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQoreworfQorCitzdGF0aWMgdm9pZCBzZXR1cF9jb21tb24oc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5n
aW5lLT5pOTE1OworCisJLyogZ2VuOCsgYXJlIG9ubHkgc3VwcG9ydGVkIHdpdGggZXhlY2xpc3Rz
ICovCisJR0VNX0JVR19PTihJTlRFTF9HRU4oaTkxNSkgPj0gOCk7CisJR0VNX0JVR19PTihJTlRF
TF9HRU4oaTkxNSkgPCA4KTsKKworCXNldHVwX2lycShlbmdpbmUpOworCisJZW5naW5lLT5wYXJr
ID0gc3VibWlzc2lvbl9wYXJrOworCWVuZ2luZS0+dW5wYXJrID0gc3VibWlzc2lvbl91bnBhcms7
CisKKwllbmdpbmUtPnJlc3VtZSA9IGludGVsX3Jpbmdfc3VibWlzc2lvbl9yZXN1bWU7CisJZW5n
aW5lLT5yZXNldC5wcmVwYXJlID0gcmVzZXRfcHJlcGFyZTsKKwllbmdpbmUtPnJlc2V0LnJld2lu
ZCA9IHJpbmdfcmVzZXRfcmV3aW5kOworCWVuZ2luZS0+cmVzZXQuY2FuY2VsID0gcmluZ19yZXNl
dF9jYW5jZWw7CisJZW5naW5lLT5yZXNldC5maW5pc2ggPSByZXNldF9maW5pc2g7CisKKwllbmdp
bmUtPmNvcHMgPSAmcmluZ19jb250ZXh0X29wczsKKwllbmdpbmUtPnJlcXVlc3RfYWxsb2MgPSBy
aW5nX3JlcXVlc3RfYWxsb2M7CisKKwllbmdpbmUtPnNldF9kZWZhdWx0X3N1Ym1pc3Npb24gPSBz
ZXRfZGVmYXVsdF9zdWJtaXNzaW9uOworfQorCitzdGF0aWMgdm9pZCBzZXR1cF9yY3Moc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworfQorCitzdGF0aWMgdm9pZCBzZXR1cF92Y3Mo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworfQorCitzdGF0aWMgdm9pZCBzZXR1
cF9iY3Moc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworfQorCitzdGF0aWMgdm9p
ZCBzZXR1cF92ZWNzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlHRU1fQlVH
X09OKCFJU19IQVNXRUxMKGVuZ2luZS0+aTkxNSkpOworfQorCitzdGF0aWMgdW5zaWduZWQgaW50
IGdsb2JhbF9yaW5nX3NpemUodm9pZCkKK3sKKwkvKiBFbm91Z2ggc3BhY2UgdG8gaG9sZCAyIGNs
aWVudHMgYW5kIHRoZSBjb250ZXh0IHN3aXRjaCAqLworCXJldHVybiByb3VuZHVwX3Bvd19vZl90
d28oRVhFQ0xJU1RfTUFYX1BPUlRTICogU1pfMTZLICsgU1pfNEspOworfQorCitzdGF0aWMgaW50
IHJpbmdfc2V0dXBfZ2xvYmFsX3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQoreworCXN0cnVjdCBpOTE1X2FjcXVpcmVfY3R4IGFjcXVpcmU7CisJc3RydWN0IGludGVs
X3JpbmcgKnJpbmc7CisJaW50IGVycjsKKworCXJpbmcgPSBpbnRlbF9lbmdpbmVfY3JlYXRlX3Jp
bmcoZW5naW5lLCBnbG9iYWxfcmluZ19zaXplKCkpOworCWlmIChJU19FUlIocmluZykpCisJCXJl
dHVybiBQVFJfRVJSKHJpbmcpOworCisJaTkxNV9hY3F1aXJlX2N0eF9pbml0KCZhY3F1aXJlKTsK
KworCWVyciA9IGludGVsX3JpbmdfYWNxdWlyZV9sb2NrKHJpbmcsICZhY3F1aXJlKTsKKwlpZiAo
ZXJyKQorCQlnb3RvIGVycl9hY3F1aXJlOworCisJZXJyID0gaTkxNV9hY3F1aXJlX21tKCZhY3F1
aXJlKTsKKwlpZiAoZXJyKQorCQlnb3RvIGVycl9hY3F1aXJlOworCisJZXJyID0gaW50ZWxfcmlu
Z19waW5fbG9ja2VkKHJpbmcpOworCWlmIChlcnIpCisJCWdvdG8gZXJyX2FjcXVpcmU7CisKKwlp
OTE1X2FjcXVpcmVfY3R4X2ZpbmkoJmFjcXVpcmUpOworCisJR0VNX0JVR19PTihlbmdpbmUtPmxl
Z2FjeS5yaW5nKTsKKwllbmdpbmUtPmxlZ2FjeS5yaW5nID0gcmluZzsKKwlyZXR1cm4gMDsKKwor
ZXJyX2FjcXVpcmU6CisJaTkxNV9hY3F1aXJlX2N0eF9maW5pKCZhY3F1aXJlKTsKKwlpbnRlbF9y
aW5nX3B1dChyaW5nKTsKKwlyZXR1cm4gZXJyOworfQorCitpbnQgaW50ZWxfcmluZ19zY2hlZHVs
ZXJfc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCWludCBlcnI7CisK
KwlHRU1fQlVHX09OKEhBU19FWEVDTElTVFMoZW5naW5lLT5pOTE1KSk7CisKKwl0YXNrbGV0X2lu
aXQoJmVuZ2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQsCisJCSAgICAgc3VibWlzc2lvbl90YXNrbGV0
LCAodW5zaWduZWQgbG9uZyllbmdpbmUpOworCisJc2V0dXBfY29tbW9uKGVuZ2luZSk7CisKKwlz
d2l0Y2ggKGVuZ2luZS0+Y2xhc3MpIHsKKwljYXNlIFJFTkRFUl9DTEFTUzoKKwkJc2V0dXBfcmNz
KGVuZ2luZSk7CisJCWJyZWFrOworCWNhc2UgVklERU9fREVDT0RFX0NMQVNTOgorCQlzZXR1cF92
Y3MoZW5naW5lKTsKKwkJYnJlYWs7CisJY2FzZSBDT1BZX0VOR0lORV9DTEFTUzoKKwkJc2V0dXBf
YmNzKGVuZ2luZSk7CisJCWJyZWFrOworCWNhc2UgVklERU9fRU5IQU5DRU1FTlRfQ0xBU1M6CisJ
CXNldHVwX3ZlY3MoZW5naW5lKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNF
KGVuZ2luZS0+Y2xhc3MpOworCQlyZXR1cm4gLUVOT0RFVjsKKwl9CisKKwllcnIgPSByaW5nX3Nl
dHVwX2dsb2JhbF9zdWJtaXNzaW9uKGVuZ2luZSk7CisJaWYgKGVycikKKwkJZ290byBlcnJfY29t
bW9uOworCisJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9IQVNfU0NIRURVTEVSOworCWVu
Z2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfTkVFRFNfQlJFQURDUlVNQl9UQVNLTEVUOworCWVu
Z2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfU1VQUE9SVFNfU1RBVFM7CisKKwkvKiBGaW5hbGx5
LCB0YWtlIG93bmVyc2hpcCBhbmQgcmVzcG9uc2liaWxpdHkgZm9yIGNsZWFudXAhICovCisJZW5n
aW5lLT5yZWxlYXNlID0gcmluZ19yZWxlYXNlOworCXJldHVybiAwOworCitlcnJfY29tbW9uOgor
CWludGVsX2VuZ2luZV9jbGVhbnVwX2NvbW1vbihlbmdpbmUpOworCXJldHVybiBlcnI7Cit9CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jCmluZGV4
IGVjNTRmZjAyOTY5OS4uNGMzYjc1ZmJjODk5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwpAQCAtMzgsNiArMzgsNyBAQAogI2luY2x1ZGUg
ImludGVsX2d0LmgiCiAjaW5jbHVkZSAiaW50ZWxfcmVzZXQuaCIKICNpbmNsdWRlICJpbnRlbF9y
aW5nLmgiCisjaW5jbHVkZSAiaW50ZWxfcmluZ19zdWJtaXNzaW9uLmgiCiAjaW5jbHVkZSAic2ht
ZW1fdXRpbHMuaCIKIAogLyogUm91Z2ggZXN0aW1hdGUgb2YgdGhlIHR5cGljYWwgcmVxdWVzdCBz
aXplLCBwZXJmb3JtaW5nIGEgZmx1c2gsCkBAIC0yMTgsNyArMjE5LDcgQEAgc3RhdGljIHZvaWQg
c2V0X3BwX2RpcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJfQogfQogCi1zdGF0
aWMgaW50IHhjc19yZXN1bWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoraW50IGlu
dGVsX3Jpbmdfc3VibWlzc2lvbl9yZXN1bWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGVuZ2luZS0+aTkxNTsK
IAlzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZyA9IGVuZ2luZS0+bGVnYWN5LnJpbmc7CkBAIC0zMjIs
NyArMzIzLDcgQEAgc3RhdGljIGludCB4Y3NfcmVzdW1lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgdm9pZCByZXNldF9wcmVwYXJlKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3ZvaWQgaW50ZWxfcmluZ19zdWJtaXNzaW9u
X3Jlc2V0X3ByZXBhcmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCXN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGVuZ2luZS0+dW5jb3JlOwogCWNvbnN0IHUzMiBiYXNl
ID0gZW5naW5lLT5tbWlvX2Jhc2U7CkBAIC00MjksNyArNDMwLDcgQEAgc3RhdGljIHZvaWQgcmVz
ZXRfcmV3aW5kKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQog
CXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+YWN0aXZlLmxvY2ssIGZsYWdzKTsKIH0K
IAotc3RhdGljIHZvaWQgcmVzZXRfZmluaXNoKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKK3ZvaWQgaW50ZWxfcmluZ19zdWJtaXNzaW9uX3Jlc2V0X2ZpbmlzaChzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCiB7CiB9CiAKQEAgLTEwNjUsMTEgKzEwNjYsMTEgQEAgc3RhdGlj
IHZvaWQgc2V0dXBfY29tbW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCXNl
dHVwX2lycShlbmdpbmUpOwogCi0JZW5naW5lLT5yZXN1bWUgPSB4Y3NfcmVzdW1lOwotCWVuZ2lu
ZS0+cmVzZXQucHJlcGFyZSA9IHJlc2V0X3ByZXBhcmU7CisJZW5naW5lLT5yZXN1bWUgPSBpbnRl
bF9yaW5nX3N1Ym1pc3Npb25fcmVzdW1lOworCWVuZ2luZS0+cmVzZXQucHJlcGFyZSA9IGludGVs
X3Jpbmdfc3VibWlzc2lvbl9yZXNldF9wcmVwYXJlOwogCWVuZ2luZS0+cmVzZXQucmV3aW5kID0g
cmVzZXRfcmV3aW5kOwogCWVuZ2luZS0+cmVzZXQuY2FuY2VsID0gcmVzZXRfY2FuY2VsOwotCWVu
Z2luZS0+cmVzZXQuZmluaXNoID0gcmVzZXRfZmluaXNoOworCWVuZ2luZS0+cmVzZXQuZmluaXNo
ID0gaW50ZWxfcmluZ19zdWJtaXNzaW9uX3Jlc2V0X2ZpbmlzaDsKIAogCWVuZ2luZS0+Y29wcyA9
ICZyaW5nX2NvbnRleHRfb3BzOwogCWVuZ2luZS0+cmVxdWVzdF9hbGxvYyA9IHJpbmdfcmVxdWVz
dF9hbGxvYzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdf
c3VibWlzc2lvbi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNz
aW9uLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi43MDFlYjAzM2Uw
NTUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5n
X3N1Ym1pc3Npb24uaApAQCAtMCwwICsxLDE2IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTUlUICovCisvKgorICogQ29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KKyAq
LworCisjaWZuZGVmIF9fSU5URUxfUklOR19TVUJNSVNTSU9OX0hfXworI2RlZmluZSBfX0lOVEVM
X1JJTkdfU1VCTUlTU0lPTl9IX18KKworc3RydWN0IGludGVsX2VuZ2luZV9jczsKKwordm9pZCBp
bnRlbF9yaW5nX3N1Ym1pc3Npb25fcmVzZXRfcHJlcGFyZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpOwordm9pZCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25fcmVzZXRfZmluaXNoKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CisKK2ludCBpbnRlbF9yaW5nX3N1Ym1pc3Npb25f
cmVzdW1lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CisKKyNlbmRpZiAvKiBfX0lO
VEVMX1JJTkdfU1VCTUlTU0lPTl9IX18gKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
