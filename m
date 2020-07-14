Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FD221FFF8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 23:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68916E9EE;
	Tue, 14 Jul 2020 21:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD0CF6E881;
 Tue, 14 Jul 2020 21:24:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21820610-1500050 
 for multiple; Tue, 14 Jul 2020 22:24:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Tue, 14 Jul 2020 22:24:01 +0100
Message-Id: <20200714212401.15825-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200714212401.15825-1-chris@chris-wilson.co.uk>
References: <20200714212401.15825-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] dma-buf/selftests: Add locking selftests
 for sw_sync
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
Cc: intel-gfx@lists.freedesktop.org,
 Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpbGUgc3dfc3luYyBpcyBwdXJlbHkgYSBkZWJ1ZyBmYWNpbGl0eSBmb3IgdXNlcnNwYWNlIHRv
IGNyZWF0ZSBmZW5jZXMKYW5kIHRpbWVsaW5lcyBpdCBjYW4gY29udHJvbCwgbmV2ZXJ0aGVsZXNz
IGl0IGhhcyBzb21lIHRyaWNreSBsb2NraW5nCnNlbWFudGljcyBvZiBpdHMgb3duLiBJbiBwYXJ0
aWN1bGFyLCBCYXMgTmlldXdlbmh1aXplbiByZXBvcnRlZCB0aGF0IHdlCmhhZCByZWludHJvZHVj
ZWQgYSBkZWFkbG9jayBpZiBhIHNpZ25hbCBjYWxsYmFjayBhdHRlbXB0ZWQgdG8gZGVzdHJveQp0
aGUgZmVuY2UuIFNvIGxldCdzIGFkZCBhIGZldyB0cml2aWFsIHNlbGZ0ZXN0cyB0byBtYWtlIHN1
cmUgdGhhdCBvbmNlCmZpeGVkIGFnYWluLCBpdCBzdGF5cyBmaXhlZC4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQmFzIE5pZXV3ZW5o
dWl6ZW4gPGJhc0BiYXNuaWV1d2VuaHVpemVuLm5sPgpSZXZpZXdlZC1ieTogQmFzIE5pZXV3ZW5o
dWl6ZW4gPGJhc0BiYXNuaWV1d2VuaHVpemVuLm5sPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9NYWtl
ZmlsZSAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZG1hLWJ1Zi9zZWxmdGVzdHMuaCAgfCAgIDEgKwog
ZHJpdmVycy9kbWEtYnVmL3N0LXN3X3N5bmMuYyB8IDI3OSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwogZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyAgICB8ICAzOSArKysrKwog
ZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaCB8ICAgOCArCiA1IGZpbGVzIGNoYW5nZWQsIDMy
OSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9kbWEtYnVmL3N0LXN3X3N5bmMuYwoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9NYWtl
ZmlsZSBiL2RyaXZlcnMvZG1hLWJ1Zi9NYWtlZmlsZQppbmRleCA5OTVlMDVmNjA5ZmYuLjliZTRk
NDYxMTYwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL01ha2VmaWxlCisrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9NYWtlZmlsZQpAQCAtMTAsNiArMTAsNyBAQCBvYmotJChDT05GSUdfVURNQUJV
RikJCSs9IHVkbWFidWYubwogZG1hYnVmX3NlbGZ0ZXN0cy15IDo9IFwKIAlzZWxmdGVzdC5vIFwK
IAlzdC1kbWEtZmVuY2UubyBcCi0Jc3QtZG1hLWZlbmNlLWNoYWluLm8KKwlzdC1kbWEtZmVuY2Ut
Y2hhaW4ubyBcCisJc3Qtc3dfc3luYy5vCiAKIG9iai0kKENPTkZJR19ETUFCVUZfU0VMRlRFU1RT
KQkrPSBkbWFidWZfc2VsZnRlc3RzLm8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zZWxm
dGVzdHMuaCBiL2RyaXZlcnMvZG1hLWJ1Zi9zZWxmdGVzdHMuaAppbmRleCBiYzhjZWE2N2JmMWUu
LjIzMjQ5OWEyNDg3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3NlbGZ0ZXN0cy5oCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9zZWxmdGVzdHMuaApAQCAtMTIsMyArMTIsNCBAQAogc2VsZnRl
c3Qoc2FuaXR5Y2hlY2ssIF9fc2FuaXR5Y2hlY2tfXykgLyoga2VlcCBmaXJzdCAoaWd0IHNlbGZj
aGVjaykgKi8KIHNlbGZ0ZXN0KGRtYV9mZW5jZSwgZG1hX2ZlbmNlKQogc2VsZnRlc3QoZG1hX2Zl
bmNlX2NoYWluLCBkbWFfZmVuY2VfY2hhaW4pCitzZWxmdGVzdChzd19zeW5jLCBzd19zeW5jKQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LXN3X3N5bmMuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9zdC1zd19zeW5jLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4x
NDVmZDMzMGYxYzYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2RtYS1idWYvc3Qtc3dfc3lu
Yy5jCkBAIC0wLDAgKzEsMjc5IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisv
KgorICogQ29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaW5jbHVk
ZSA8bGludXgvZGVsYXkuaD4KKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4KKyNpbmNsdWRl
IDxsaW51eC9rZXJuZWwuaD4KKyNpbmNsdWRlIDxsaW51eC9rdGhyZWFkLmg+CisjaW5jbHVkZSA8
bGludXgvc2NoZWQvc2lnbmFsLmg+CisjaW5jbHVkZSA8bGludXgvc2xhYi5oPgorI2luY2x1ZGUg
PGxpbnV4L3NwaW5sb2NrLmg+CisKKyNpbmNsdWRlICJzeW5jX2RlYnVnLmgiCisjaW5jbHVkZSAi
c2VsZnRlc3QuaCIKKworc3RhdGljIGludCBzYW5pdHljaGVjayh2b2lkICphcmcpCit7CisJc3Ry
dWN0IHN5bmNfdGltZWxpbmUgKnRsOworCXN0cnVjdCBkbWFfZmVuY2UgKmY7CisJaW50IGVyciA9
IC1FTk9NRU07CisKKwkvKiBRdWljayBjaGVjayB3ZSBjYW4gY3JlYXRlIHRoZSB0aW1lbGluZSBh
bmQgc3luY3B0ICovCisKKwl0bCA9IHN0X3N5bmNfdGltZWxpbmVfY3JlYXRlKCJtb2NrIik7CisJ
aWYgKCF0bCkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlmID0gc3Rfc3luY19wdF9jcmVhdGUodGws
IDEpOworCWlmICghZikKKwkJZ290byBvdXQ7CisKKwlkbWFfZmVuY2Vfc2lnbmFsKGYpOworCWRt
YV9mZW5jZV9wdXQoZik7CisKKwllcnIgPSAwOworb3V0OgorCXN0X3N5bmNfdGltZWxpbmVfcHV0
KHRsKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IHNpZ25hbCh2b2lkICphcmcpCit7
CisJc3RydWN0IHN5bmNfdGltZWxpbmUgKnRsOworCXN0cnVjdCBkbWFfZmVuY2UgKmY7CisJaW50
IGVyciA9IC1FSU5WQUw7CisKKwkvKiBDaGVjayB0aGF0IHRoZSBzeW5jcHQgZmVuY2UgaXMgc2ln
bmFsZWQgd2hlbiB0aGUgdGltZWxpbmUgYWR2YW5jZXMgKi8KKworCXRsID0gc3Rfc3luY190aW1l
bGluZV9jcmVhdGUoIm1vY2siKTsKKwlpZiAoIXRsKQorCQlyZXR1cm4gLUVOT01FTTsKKworCWYg
PSBzdF9zeW5jX3B0X2NyZWF0ZSh0bCwgMSk7CisJaWYgKCFmKSB7CisJCWVyciA9IC1FTk9NRU07
CisJCWdvdG8gb3V0OworCX0KKworCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZikpIHsKKwkJ
cHJfZXJyKCJzeW5jcHQ6JWxsZCBzaWduYWxlZCB0b28gZWFybHlcbiIsIGYtPnNlcW5vKTsKKwkJ
Z290byBvdXRfZmVuY2U7CisJfQorCisJc3Rfc3luY190aW1lbGluZV9zaWduYWwodGwsIDEpOwor
CisJaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZikpIHsKKwkJcHJfZXJyKCJzeW5jcHQ6JWxs
ZCBub3Qgc2lnbmFsZWQgYWZ0ZXIgaW5jcmVtZW50XG4iLCBmLT5zZXFubyk7CisJCWdvdG8gb3V0
X2ZlbmNlOworCX0KKworCWVyciA9IDA7CitvdXRfZmVuY2U6CisJZG1hX2ZlbmNlX3NpZ25hbChm
KTsKKwlkbWFfZmVuY2VfcHV0KGYpOworb3V0OgorCXN0X3N5bmNfdGltZWxpbmVfcHV0KHRsKTsK
KwlyZXR1cm4gZXJyOworfQorCitzdHJ1Y3QgY2JfZGVzdHJveSB7CisJc3RydWN0IGRtYV9mZW5j
ZV9jYiBjYjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmOworfTsKKworc3RhdGljIHZvaWQgY2JfZGVz
dHJveShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IGRtYV9mZW5jZV9jYiAqX2NiKQor
eworCXN0cnVjdCBjYl9kZXN0cm95ICpjYiA9IGNvbnRhaW5lcl9vZihfY2IsIHR5cGVvZigqY2Ip
LCBjYik7CisKKwlwcl9pbmZvKCJzeW5jcHQ6JWxseCBkZXN0cm95aW5nIHN5bmNwdDolbGx4XG4i
LAorCQlmZW5jZS0+c2Vxbm8sIGNiLT5mLT5zZXFubyk7CisJZG1hX2ZlbmNlX3B1dChjYi0+Zik7
CisJY2ItPmYgPSBOVUxMOworfQorCitzdGF0aWMgaW50IGNiX2F1dG9kZXN0cm95KHZvaWQgKmFy
ZykKK3sKKwlzdHJ1Y3Qgc3luY190aW1lbGluZSAqdGw7CisJc3RydWN0IGNiX2Rlc3Ryb3kgY2I7
CisJaW50IGVyciA9IC1FSU5WQUw7CisKKwkvKiBDaGVjayB0aGF0IHdlIGNhbiBkcm9wIHRoZSBm
aW5hbCBzeW5jcHQgcmVmZXJlbmNlIGZyb20gYSBjYWxsYmFjayAqLworCisJdGwgPSBzdF9zeW5j
X3RpbWVsaW5lX2NyZWF0ZSgibW9jayIpOworCWlmICghdGwpCisJCXJldHVybiAtRU5PTUVNOwor
CisJY2IuZiA9IHN0X3N5bmNfcHRfY3JlYXRlKHRsLCAxKTsKKwlpZiAoIWNiLmYpIHsKKwkJZXJy
ID0gLUVOT01FTTsKKwkJZ290byBvdXQ7CisJfQorCisJaWYgKGRtYV9mZW5jZV9hZGRfY2FsbGJh
Y2soY2IuZiwgJmNiLmNiLCBjYl9kZXN0cm95KSkgeworCQlwcl9lcnIoInN5bmNwdDolbGxkIHNp
Z25hbGVkIGJlZm9yZSBpbmNyZW1lbnRcbiIsIGNiLmYtPnNlcW5vKTsKKwkJZ290byBvdXQ7CisJ
fQorCisJc3Rfc3luY190aW1lbGluZV9zaWduYWwodGwsIDEpOworCWlmIChjYi5mKSB7CisJCXBy
X2Vycigic3luY3B0OiVsbGQgY2FsbGJhY2sgbm90IHJ1blxuIiwgY2IuZi0+c2Vxbm8pOworCQlk
bWFfZmVuY2VfcHV0KGNiLmYpOworCQlnb3RvIG91dDsKKwl9CisKKwllcnIgPSAwOworb3V0Ogor
CXN0X3N5bmNfdGltZWxpbmVfcHV0KHRsKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50
IGNiX2Rlc3Ryb3lfMTIodm9pZCAqYXJnKQoreworCXN0cnVjdCBzeW5jX3RpbWVsaW5lICp0bDsK
KwlzdHJ1Y3QgY2JfZGVzdHJveSBjYjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmOworCWludCBlcnIg
PSAtRUlOVkFMOworCisJLyogQ2hlY2sgdGhhdCB3ZSBjYW4gZHJvcCBzb21lIG90aGVyIHN5bmNw
dCByZWZlcmVuY2UgZnJvbSBhIGNhbGxiYWNrICovCisKKwl0bCA9IHN0X3N5bmNfdGltZWxpbmVf
Y3JlYXRlKCJtb2NrIik7CisJaWYgKCF0bCkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlmID0gc3Rf
c3luY19wdF9jcmVhdGUodGwsIDEpOworCWlmICghZikgeworCQllcnIgPSAtRU5PTUVNOworCQln
b3RvIG91dDsKKwl9CisKKwljYi5mID0gc3Rfc3luY19wdF9jcmVhdGUodGwsIDIpOworCWlmICgh
Y2IuZikgeworCQllcnIgPSAtRU5PTUVNOworCQlnb3RvIG91dDsKKwl9CisKKwlpZiAoZG1hX2Zl
bmNlX2FkZF9jYWxsYmFjayhmLCAmY2IuY2IsIGNiX2Rlc3Ryb3kpKSB7CisJCXByX2Vycigic3lu
Y3B0OiVsbGQgc2lnbmFsZWQgYmVmb3JlIGluY3JlbWVudFxuIiwgZi0+c2Vxbm8pOworCQlnb3Rv
IG91dDsKKwl9CisKKwlzdF9zeW5jX3RpbWVsaW5lX3NpZ25hbCh0bCwgMSk7CisJaWYgKGNiLmYp
IHsKKwkJcHJfZXJyKCJzeW5jcHQ6JWxsZCBjYWxsYmFjayBub3QgcnVuXG4iLCBmLT5zZXFubyk7
CisJCWRtYV9mZW5jZV9wdXQoY2IuZik7CisJCWdvdG8gb3V0X2ZlbmNlOworCX0KKworCWVyciA9
IDA7CitvdXRfZmVuY2U6CisJZG1hX2ZlbmNlX3B1dChmKTsKK291dDoKKwlzdF9zeW5jX3RpbWVs
aW5lX3B1dCh0bCk7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCBjYl9kZXN0cm95XzIx
KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3Qgc3luY190aW1lbGluZSAqdGw7CisJc3RydWN0IGNiX2Rl
c3Ryb3kgY2I7CisJc3RydWN0IGRtYV9mZW5jZSAqZjsKKwlpbnQgZXJyID0gLUVJTlZBTDsKKwor
CS8qIENoZWNrIHRoYXQgd2UgY2FuIGRyb3AgYW4gZWFybGllciBzeW5jcHQgcmVmZXJlbmNlIGZy
b20gYSBjYWxsYmFjayAqLworCisJdGwgPSBzdF9zeW5jX3RpbWVsaW5lX2NyZWF0ZSgibW9jayIp
OworCWlmICghdGwpCisJCXJldHVybiAtRU5PTUVNOworCisJY2IuZiA9IHN0X3N5bmNfcHRfY3Jl
YXRlKHRsLCAxKTsKKwlpZiAoIWNiLmYpIHsKKwkJZXJyID0gLUVOT01FTTsKKwkJZ290byBvdXQ7
CisJfQorCisJZiA9IHN0X3N5bmNfcHRfY3JlYXRlKHRsLCAyKTsKKwlpZiAoIWYpIHsKKwkJZXJy
ID0gLUVOT01FTTsKKwkJZ290byBvdXQ7CisJfQorCisJaWYgKGRtYV9mZW5jZV9hZGRfY2FsbGJh
Y2soZiwgJmNiLmNiLCBjYl9kZXN0cm95KSkgeworCQlwcl9lcnIoInN5bmNwdDolbGxkIHNpZ25h
bGVkIGJlZm9yZSBpbmNyZW1lbnRcbiIsIGYtPnNlcW5vKTsKKwkJZ290byBvdXQ7CisJfQorCisJ
c3Rfc3luY190aW1lbGluZV9zaWduYWwodGwsIDIpOworCWlmIChjYi5mKSB7CisJCXByX2Vycigi
c3luY3B0OiVsbGQgY2FsbGJhY2sgbm90IHJ1blxuIiwgZi0+c2Vxbm8pOworCQlkbWFfZmVuY2Vf
cHV0KGNiLmYpOworCQlnb3RvIG91dF9mZW5jZTsKKwl9CisKKwllcnIgPSAwOworb3V0X2ZlbmNl
OgorCWRtYV9mZW5jZV9wdXQoZik7CitvdXQ6CisJc3Rfc3luY190aW1lbGluZV9wdXQodGwpOwor
CXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgY2JfZGVzdHJveV8yMih2b2lkICphcmcpCit7
CisJc3RydWN0IHN5bmNfdGltZWxpbmUgKnRsOworCXN0cnVjdCBjYl9kZXN0cm95IGNiOworCXN0
cnVjdCBkbWFfZmVuY2UgKmY7CisJaW50IGVyciA9IC1FSU5WQUw7CisKKwkvKiBDaGVjayB0aGF0
IHdlIGNhbiBkcm9wIHRoZSBsYXRlciBzeW5jcHQgcmVmZXJlbmNlIGZyb20gYSBjYWxsYmFjayAq
LworCisJdGwgPSBzdF9zeW5jX3RpbWVsaW5lX2NyZWF0ZSgibW9jayIpOworCWlmICghdGwpCisJ
CXJldHVybiAtRU5PTUVNOworCisJZiA9IHN0X3N5bmNfcHRfY3JlYXRlKHRsLCAxKTsKKwlpZiAo
IWYpIHsKKwkJZXJyID0gLUVOT01FTTsKKwkJZ290byBvdXQ7CisJfQorCisJY2IuZiA9IHN0X3N5
bmNfcHRfY3JlYXRlKHRsLCAyKTsKKwlpZiAoIWNiLmYpIHsKKwkJZXJyID0gLUVOT01FTTsKKwkJ
Z290byBvdXQ7CisJfQorCisJaWYgKGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZiwgJmNiLmNiLCBj
Yl9kZXN0cm95KSkgeworCQlwcl9lcnIoInN5bmNwdDolbGxkIHNpZ25hbGVkIGJlZm9yZSBpbmNy
ZW1lbnRcbiIsIGYtPnNlcW5vKTsKKwkJZ290byBvdXQ7CisJfQorCisJc3Rfc3luY190aW1lbGlu
ZV9zaWduYWwodGwsIDIpOworCWlmIChjYi5mKSB7CisJCXByX2Vycigic3luY3B0OiVsbGQgY2Fs
bGJhY2sgbm90IHJ1blxuIiwgZi0+c2Vxbm8pOworCQlkbWFfZmVuY2VfcHV0KGNiLmYpOworCQln
b3RvIG91dF9mZW5jZTsKKwl9CisKKwllcnIgPSAwOworb3V0X2ZlbmNlOgorCWRtYV9mZW5jZV9w
dXQoZik7CitvdXQ6CisJc3Rfc3luY190aW1lbGluZV9wdXQodGwpOworCXJldHVybiBlcnI7Cit9
CisKK2ludCBzd19zeW5jKHZvaWQpCit7CisJc3RhdGljIGNvbnN0IHN0cnVjdCBzdWJ0ZXN0IHRl
c3RzW10gPSB7CisJCVNVQlRFU1Qoc2FuaXR5Y2hlY2spLAorCQlTVUJURVNUKHNpZ25hbCksCisJ
CVNVQlRFU1QoY2JfYXV0b2Rlc3Ryb3kpLAorCQlTVUJURVNUKGNiX2Rlc3Ryb3lfMTIpLAorCQlT
VUJURVNUKGNiX2Rlc3Ryb3lfMjEpLAorCQlTVUJURVNUKGNiX2Rlc3Ryb3lfMjIpLAorCX07CisK
KwlyZXR1cm4gc3VidGVzdHModGVzdHMsIE5VTEwpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL3N3X3N5bmMuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMKaW5kZXggMTdhNWMx
YTNiN2NlLi5mMTZiNmM0NzZlZWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5j
LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYwpAQCAtNDI4LDMgKzQyOCw0MiBAQCBj
b25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIHN3X3N5bmNfZGVidWdmc19mb3BzID0gewogCS51
bmxvY2tlZF9pb2N0bCA9IHN3X3N5bmNfaW9jdGwsCiAJLmNvbXBhdF9pb2N0bAk9IGNvbXBhdF9w
dHJfaW9jdGwsCiB9OworCisjaWYgSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX1NFTEZURVNUUykK
K3N0cnVjdCBzeW5jX3RpbWVsaW5lICpzdF9zeW5jX3RpbWVsaW5lX2NyZWF0ZShjb25zdCBjaGFy
ICpuYW1lKQoreworCXJldHVybiBzeW5jX3RpbWVsaW5lX2NyZWF0ZShuYW1lKTsKK30KK0VYUE9S
VF9TWU1CT0xfR1BMKHN0X3N5bmNfdGltZWxpbmVfY3JlYXRlKTsKKwordm9pZCBzdF9zeW5jX3Rp
bWVsaW5lX2dldChzdHJ1Y3Qgc3luY190aW1lbGluZSAqdGwpCit7CisJc3luY190aW1lbGluZV9n
ZXQodGwpOworfQorRVhQT1JUX1NZTUJPTF9HUEwoc3Rfc3luY190aW1lbGluZV9nZXQpOworCit2
b2lkIHN0X3N5bmNfdGltZWxpbmVfcHV0KHN0cnVjdCBzeW5jX3RpbWVsaW5lICp0bCkKK3sKKwlz
eW5jX3RpbWVsaW5lX3B1dCh0bCk7Cit9CitFWFBPUlRfU1lNQk9MX0dQTChzdF9zeW5jX3RpbWVs
aW5lX3B1dCk7CisKK3ZvaWQgc3Rfc3luY190aW1lbGluZV9zaWduYWwoc3RydWN0IHN5bmNfdGlt
ZWxpbmUgKnRsLCB1bnNpZ25lZCBpbnQgaW5jKQoreworCXN5bmNfdGltZWxpbmVfc2lnbmFsKHRs
LCBpbmMpOworfQorRVhQT1JUX1NZTUJPTF9HUEwoc3Rfc3luY190aW1lbGluZV9zaWduYWwpOwor
CitzdHJ1Y3QgZG1hX2ZlbmNlICoKK3N0X3N5bmNfcHRfY3JlYXRlKHN0cnVjdCBzeW5jX3RpbWVs
aW5lICp0bCwgdW5zaWduZWQgaW50IHNlcW5vKQoreworCXN0cnVjdCBzeW5jX3B0ICpwdDsKKwor
CXB0ID0gc3luY19wdF9jcmVhdGUodGwsIHNlcW5vKTsKKwlpZiAoIXB0KQorCQlyZXR1cm4gTlVM
TDsKKworCXJldHVybiAmcHQtPmJhc2U7Cit9CitFWFBPUlRfU1lNQk9MX0dQTChzdF9zeW5jX3B0
X2NyZWF0ZSk7CisjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVn
LmggYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oCmluZGV4IDU2NTg5ZGFlMjE1OS4uNTQ2
YTExZTU2NGE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oCisrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmgKQEAgLTcyLDQgKzcyLDEyIEBAIHZvaWQgc3lu
Y190aW1lbGluZV9kZWJ1Z19yZW1vdmUoc3RydWN0IHN5bmNfdGltZWxpbmUgKm9iaik7CiB2b2lk
IHN5bmNfZmlsZV9kZWJ1Z19hZGQoc3RydWN0IHN5bmNfZmlsZSAqZmVuY2UpOwogdm9pZCBzeW5j
X2ZpbGVfZGVidWdfcmVtb3ZlKHN0cnVjdCBzeW5jX2ZpbGUgKmZlbmNlKTsKIAorc3RydWN0IHN5
bmNfdGltZWxpbmUgKnN0X3N5bmNfdGltZWxpbmVfY3JlYXRlKGNvbnN0IGNoYXIgKm5hbWUpOwor
dm9pZCBzdF9zeW5jX3RpbWVsaW5lX2dldChzdHJ1Y3Qgc3luY190aW1lbGluZSAqdGwpOwordm9p
ZCBzdF9zeW5jX3RpbWVsaW5lX3B1dChzdHJ1Y3Qgc3luY190aW1lbGluZSAqdGwpOwordm9pZCBz
dF9zeW5jX3RpbWVsaW5lX3NpZ25hbChzdHJ1Y3Qgc3luY190aW1lbGluZSAqdGwsIHVuc2lnbmVk
IGludCBpbmMpOworCitzdHJ1Y3QgZG1hX2ZlbmNlICoKK3N0X3N5bmNfcHRfY3JlYXRlKHN0cnVj
dCBzeW5jX3RpbWVsaW5lICp0bCwgdW5zaWduZWQgaW50IHNlcW5vKTsKKwogI2VuZGlmIC8qIF9M
SU5VWF9TWU5DX0ggKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
