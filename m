Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F110A2C33A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFED89B60;
	Tue, 28 May 2019 09:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517D7898C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:30:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16703183-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 10:29:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2019 10:29:42 +0100
Message-Id: <20190528092956.14910-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 01/15] drm/i915: Split GEM object type definition
 to its own header
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

Rm9yIGNvbnZlbmllbmNlIGluIGF2b2lkaW5nIGlubGluZSBzcGFnaGV0dGksIGtlZXAgdGhlIHR5
cGUgZGVmaW5pdGlvbgphcyBhIHNlcGFyYXRlIGhlYWRlci4KClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpBY2tlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgpBY2tlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KQWNrZWQtYnk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAg
ICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL01ha2VmaWxlICAgICAgICAg
ICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9NYWtlZmlsZS5oZWFkZXItdGVz
dCB8ICAxNiArCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAg
fCAyODUgKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV90eXBlcy5oICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAg
ICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNo
X3Bvb2wuaCAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0Lmgg
ICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX29iamVjdC5o
ICAgICAgICB8IDI5NSArLS0tLS0tLS0tLS0tLS0tLS0KIDkgZmlsZXMgY2hhbmdlZCwgMzEyIGlu
c2VydGlvbnMoKyksIDI5NCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUuaGVhZGVyLXRlc3QKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlCmluZGV4IDEzOWEwZmMxOTM5MC4uMjNhNDVkN2JhYWJiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQpAQCAtODUsNiArODUsNyBAQCBndC0kKENPTkZJR19EUk1fSTkxNV9TRUxGVEVTVCkg
Kz0gXAogaTkxNS15ICs9ICQoZ3QteSkKIAogIyBHRU0gKEdyYXBoaWNzIEV4ZWN1dGlvbiBNYW5h
Z2VtZW50KSBjb2RlCitvYmoteSArPSBnZW0vCiBpOTE1LXkgKz0gXAogCSAgaTkxNV9hY3RpdmUu
byBcCiAJICBpOTE1X2NtZF9wYXJzZXIubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4wN2U3YjhiODQwZWEKLS0tIC9k
ZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUKQEAgLTAsMCAr
MSBAQAoraW5jbHVkZSAkKHNyYykvTWFrZWZpbGUuaGVhZGVyLXRlc3QgIyBFeHRyYSBoZWFkZXIg
dGVzdHMKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9NYWtlZmlsZS5oZWFk
ZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9NYWtlZmlsZS5oZWFkZXItdGVzdApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjYxZTA2Y2JiNGIzMgotLS0g
L2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9NYWtlZmlsZS5oZWFkZXIt
dGVzdApAQCAtMCwwICsxLDE2IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKyMg
Q29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKworIyBUZXN0IHRoZSBoZWFkZXJz
IGFyZSBjb21waWxhYmxlIGFzIHN0YW5kYWxvbmUgdW5pdHMKK2hlYWRlcl90ZXN0IDo9ICQobm90
ZGlyICQod2lsZGNhcmQgJChzcmMpLyouaCkpCisKK3F1aWV0X2NtZF9oZWFkZXJfdGVzdCA9IEhE
UlRFU1QgJEAKKyAgICAgIGNtZF9oZWFkZXJfdGVzdCA9IGVjaG8gIlwjaW5jbHVkZSBcIiQoPEYp
XCIiID4gJEAKKworaGVhZGVyX3Rlc3RfJS5jOiAlLmgKKwkkKGNhbGwgY21kLGhlYWRlcl90ZXN0
KQorCitleHRyYS0kKENPTkZJR19EUk1fSTkxNV9XRVJST1IpICs9IFwKKwkkKGZvcmVhY2ggaCwk
KGhlYWRlcl90ZXN0KSwkKHBhdHN1YnN0ICUuaCxoZWFkZXJfdGVzdF8lLm8sJChoKSkpCisKK2Ns
ZWFuLWZpbGVzICs9ICQoZm9yZWFjaCBoLCQoaGVhZGVyX3Rlc3QpLCQocGF0c3Vic3QgJS5oLGhl
YWRlcl90ZXN0XyUuYywkKGgpKSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3RfdHlwZXMuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAw
MDAuLmZlM2IyYTI3NzVmNwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaApAQCAtMCwwICsxLDI4NSBAQAorLyoKKyAqIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKyAqCisgKiBDb3B5cmlnaHQgwqkgMjAxNiBJbnRl
bCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgX19JOTE1X0dFTV9PQkpFQ1RfVFlQRVNfSF9f
CisjZGVmaW5lIF9fSTkxNV9HRU1fT0JKRUNUX1RZUEVTX0hfXworCisjaW5jbHVkZSA8bGludXgv
cmVzZXJ2YXRpb24uaD4KKworI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+CisKKyNpbmNsdWRlICJp
OTE1X2FjdGl2ZS5oIgorI2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIKKworc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3Q7CisKKy8qCisgKiBzdHJ1Y3QgaTkxNV9sdXRfaGFuZGxlIHRyYWNrcyB0
aGUgZmFzdCBsb29rdXBzIGZyb20gaGFuZGxlIHRvIHZtYSB1c2VkCisgKiBmb3IgZXhlY2J1Zi4g
QWx0aG91Z2ggd2UgdXNlIGEgcmFkaXh0cmVlIGZvciB0aGF0IG1hcHBpbmcsIGluIG9yZGVyIHRv
CisgKiByZW1vdmUgdGhlbSBhcyB0aGUgb2JqZWN0IG9yIGNvbnRleHQgaXMgY2xvc2VkLCB3ZSBu
ZWVkIGEgc2Vjb25kYXJ5IGxpc3QKKyAqIGFuZCBhIHRyYW5zbGF0aW9uIGVudHJ5IChpOTE1X2x1
dF9oYW5kbGUpLgorICovCitzdHJ1Y3QgaTkxNV9sdXRfaGFuZGxlIHsKKwlzdHJ1Y3QgbGlzdF9o
ZWFkIG9ial9saW5rOworCXN0cnVjdCBsaXN0X2hlYWQgY3R4X2xpbms7CisJc3RydWN0IGk5MTVf
Z2VtX2NvbnRleHQgKmN0eDsKKwl1MzIgaGFuZGxlOworfTsKKworc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3Rfb3BzIHsKKwl1bnNpZ25lZCBpbnQgZmxhZ3M7CisjZGVmaW5lIEk5MTVfR0VNX09C
SkVDVF9IQVNfU1RSVUNUX1BBR0UJQklUKDApCisjZGVmaW5lIEk5MTVfR0VNX09CSkVDVF9JU19T
SFJJTktBQkxFCUJJVCgxKQorI2RlZmluZSBJOTE1X0dFTV9PQkpFQ1RfSVNfUFJPWFkJQklUKDIp
CisjZGVmaW5lIEk5MTVfR0VNX09CSkVDVF9BU1lOQ19DQU5DRUwJQklUKDMpCisKKwkvKiBJbnRl
cmZhY2UgYmV0d2VlbiB0aGUgR0VNIG9iamVjdCBhbmQgaXRzIGJhY2tpbmcgc3RvcmFnZS4KKwkg
KiBnZXRfcGFnZXMoKSBpcyBjYWxsZWQgb25jZSBwcmlvciB0byB0aGUgdXNlIG9mIHRoZSBhc3Nv
Y2lhdGVkIHNldAorCSAqIG9mIHBhZ2VzIGJlZm9yZSB0byBiaW5kaW5nIHRoZW0gaW50byB0aGUg
R1RULCBhbmQgcHV0X3BhZ2VzKCkgaXMKKwkgKiBjYWxsZWQgYWZ0ZXIgd2Ugbm8gbG9uZ2VyIG5l
ZWQgdGhlbS4gQXMgd2UgZXhwZWN0IHRoZXJlIHRvIGJlCisJICogYXNzb2NpYXRlZCBjb3N0IHdp
dGggbWlncmF0aW5nIHBhZ2VzIGJldHdlZW4gdGhlIGJhY2tpbmcgc3RvcmFnZQorCSAqIGFuZCBt
YWtpbmcgdGhlbSBhdmFpbGFibGUgZm9yIHRoZSBHUFUgKGUuZy4gY2xmbHVzaCksIHdlIG1heSBo
b2xkCisJICogb250byB0aGUgcGFnZXMgYWZ0ZXIgdGhleSBhcmUgbm8gbG9uZ2VyIHJlZmVyZW5j
ZWQgYnkgdGhlIEdQVQorCSAqIGluIGNhc2UgdGhleSBtYXkgYmUgdXNlZCBhZ2FpbiBzaG9ydGx5
IChmb3IgZXhhbXBsZSBtaWdyYXRpbmcgdGhlCisJICogcGFnZXMgdG8gYSBkaWZmZXJlbnQgbWVt
b3J5IGRvbWFpbiB3aXRoaW4gdGhlIEdUVCkuIHB1dF9wYWdlcygpCisJICogd2lsbCB0aGVyZWZv
cmUgbW9zdCBsaWtlbHkgYmUgY2FsbGVkIHdoZW4gdGhlIG9iamVjdCBpdHNlbGYgaXMKKwkgKiBi
ZWluZyByZWxlYXNlZCBvciB1bmRlciBtZW1vcnkgcHJlc3N1cmUgKHdoZXJlIHdlIGF0dGVtcHQg
dG8KKwkgKiByZWFwIHBhZ2VzIGZvciB0aGUgc2hyaW5rZXIpLgorCSAqLworCWludCAoKmdldF9w
YWdlcykoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CisJdm9pZCAoKnB1dF9wYWdl
cykoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCSAgc3RydWN0IHNnX3RhYmxl
ICpwYWdlcyk7CisKKwlpbnQgKCpwd3JpdGUpKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCisJCSAgICAgIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fcHdyaXRlICphcmcpOworCisJ
aW50ICgqZG1hYnVmX2V4cG9ydCkoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CisJ
dm9pZCAoKnJlbGVhc2UpKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOworfTsKKwor
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgeworCXN0cnVjdCBkcm1fZ2VtX29iamVjdCBiYXNl
OworCisJY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzICpvcHM7CisKKwlzdHJ1
Y3QgeworCQkvKioKKwkJICogQHZtYS5sb2NrOiBwcm90ZWN0IHRoZSBsaXN0L3RyZWUgb2Ygdm1h
cworCQkgKi8KKwkJc3BpbmxvY2tfdCBsb2NrOworCisJCS8qKgorCQkgKiBAdm1hLmxpc3Q6IExp
c3Qgb2YgVk1BcyBiYWNrZWQgYnkgdGhpcyBvYmplY3QKKwkJICoKKwkJICogVGhlIFZNQSBvbiB0
aGlzIGxpc3QgYXJlIG9yZGVyZWQgYnkgdHlwZSwgYWxsIEdHVFQgdm1hIGFyZQorCQkgKiBwbGFj
ZWQgYXQgdGhlIGhlYWQgYW5kIGFsbCBwcEdUVCB2bWEgYXJlIHBsYWNlZCBhdCB0aGUgdGFpbC4K
KwkJICogVGhlIGRpZmZlcmVudCB0eXBlcyBvZiBHR1RUIHZtYSBhcmUgdW5vcmRlcmVkIGJldHdl
ZW4KKwkJICogdGhlbXNlbHZlcywgdXNlIHRoZSBAdm1hLnRyZWUgKHdoaWNoIGhhcyBhIGRlZmlu
ZWQgb3JkZXIKKwkJICogYmV0d2VlbiBhbGwgVk1BKSB0byBxdWlja2x5IGZpbmQgYW4gZXhhY3Qg
bWF0Y2guCisJCSAqLworCQlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7CisKKwkJLyoqCisJCSAqIEB2
bWEudHJlZTogT3JkZXJlZCB0cmVlIG9mIFZNQXMgYmFja2VkIGJ5IHRoaXMgb2JqZWN0CisJCSAq
CisJCSAqIEFsbCBWTUEgY3JlYXRlZCBmb3IgdGhpcyBvYmplY3QgYXJlIHBsYWNlZCBpbiB0aGUg
QHZtYS50cmVlCisJCSAqIGZvciBmYXN0IHJldHJpZXZhbCB2aWEgYSBiaW5hcnkgc2VhcmNoIGlu
CisJCSAqIGk5MTVfdm1hX2luc3RhbmNlKCkuIFRoZXkgYXJlIGFsc28gYWRkZWQgdG8gQHZtYS5s
aXN0IGZvcgorCQkgKiBlYXN5IGl0ZXJhdGlvbi4KKwkJICovCisJCXN0cnVjdCByYl9yb290IHRy
ZWU7CisJfSB2bWE7CisKKwkvKioKKwkgKiBAbHV0X2xpc3Q6IExpc3Qgb2Ygdm1hIGxvb2t1cCBl
bnRyaWVzIGluIHVzZSBmb3IgdGhpcyBvYmplY3QuCisJICoKKwkgKiBJZiB0aGlzIG9iamVjdCBp
cyBjbG9zZWQsIHdlIG5lZWQgdG8gcmVtb3ZlIGFsbCBvZiBpdHMgVk1BIGZyb20KKwkgKiB0aGUg
ZmFzdCBsb29rdXAgaW5kZXggaW4gYXNzb2NpYXRlZCBjb250ZXh0czsgQGx1dF9saXN0IHByb3Zp
ZGVzCisJICogdGhpcyB0cmFuc2xhdGlvbiBmcm9tIG9iamVjdCB0byBjb250ZXh0LT5oYW5kbGVz
X3ZtYS4KKwkgKi8KKwlzdHJ1Y3QgbGlzdF9oZWFkIGx1dF9saXN0OworCisJLyoqIFN0b2xlbiBt
ZW1vcnkgZm9yIHRoaXMgb2JqZWN0LCBpbnN0ZWFkIG9mIGJlaW5nIGJhY2tlZCBieSBzaG1lbS4g
Ki8KKwlzdHJ1Y3QgZHJtX21tX25vZGUgKnN0b2xlbjsKKwl1bmlvbiB7CisJCXN0cnVjdCByY3Vf
aGVhZCByY3U7CisJCXN0cnVjdCBsbGlzdF9ub2RlIGZyZWVkOworCX07CisKKwkvKioKKwkgKiBX
aGV0aGVyIHRoZSBvYmplY3QgaXMgY3VycmVudGx5IGluIHRoZSBHR1RUIG1tYXAuCisJICovCisJ
dW5zaWduZWQgaW50IHVzZXJmYXVsdF9jb3VudDsKKwlzdHJ1Y3QgbGlzdF9oZWFkIHVzZXJmYXVs
dF9saW5rOworCisJc3RydWN0IGxpc3RfaGVhZCBiYXRjaF9wb29sX2xpbms7CisJSTkxNV9TRUxG
VEVTVF9ERUNMQVJFKHN0cnVjdCBsaXN0X2hlYWQgc3RfbGluayk7CisKKwl1bnNpZ25lZCBsb25n
IGZsYWdzOworCisJLyoqCisJICogSGF2ZSB3ZSB0YWtlbiBhIHJlZmVyZW5jZSBmb3IgdGhlIG9i
amVjdCBmb3IgaW5jb21wbGV0ZSBHUFUKKwkgKiBhY3Rpdml0eT8KKwkgKi8KKyNkZWZpbmUgSTkx
NV9CT19BQ1RJVkVfUkVGIDAKKworCS8qCisJICogSXMgdGhlIG9iamVjdCB0byBiZSBtYXBwZWQg
YXMgcmVhZC1vbmx5IHRvIHRoZSBHUFUKKwkgKiBPbmx5IGhvbm91cmVkIGlmIGhhcmR3YXJlIGhh
cyByZWxldmFudCBwdGUgYml0CisJICovCisJdW5zaWduZWQgaW50IGNhY2hlX2xldmVsOjM7CisJ
dW5zaWduZWQgaW50IGNhY2hlX2NvaGVyZW50OjI7CisjZGVmaW5lIEk5MTVfQk9fQ0FDSEVfQ09I
RVJFTlRfRk9SX1JFQUQgQklUKDApCisjZGVmaW5lIEk5MTVfQk9fQ0FDSEVfQ09IRVJFTlRfRk9S
X1dSSVRFIEJJVCgxKQorCXVuc2lnbmVkIGludCBjYWNoZV9kaXJ0eToxOworCisJLyoqCisJICog
QHJlYWRfZG9tYWluczogUmVhZCBtZW1vcnkgZG9tYWlucy4KKwkgKgorCSAqIFRoZXNlIG1vbml0
b3Igd2hpY2ggY2FjaGVzIGNvbnRhaW4gcmVhZC93cml0ZSBkYXRhIHJlbGF0ZWQgdG8gdGhlCisJ
ICogb2JqZWN0LiBXaGVuIHRyYW5zaXRpb25pbmcgZnJvbSBvbmUgc2V0IG9mIGRvbWFpbnMgdG8g
YW5vdGhlciwKKwkgKiB0aGUgZHJpdmVyIGlzIGNhbGxlZCB0byBlbnN1cmUgdGhhdCBjYWNoZXMg
YXJlIHN1aXRhYmx5IGZsdXNoZWQgYW5kCisJICogaW52YWxpZGF0ZWQuCisJICovCisJdTE2IHJl
YWRfZG9tYWluczsKKworCS8qKgorCSAqIEB3cml0ZV9kb21haW46IENvcnJlc3BvbmRpbmcgdW5p
cXVlIHdyaXRlIG1lbW9yeSBkb21haW4uCisJICovCisJdTE2IHdyaXRlX2RvbWFpbjsKKworCWF0
b21pY190IGZyb250YnVmZmVyX2JpdHM7CisJdW5zaWduZWQgaW50IGZyb250YnVmZmVyX2dndHRf
b3JpZ2luOyAvKiB3cml0ZSBvbmNlICovCisJc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3QgZnJv
bnRidWZmZXJfd3JpdGU7CisKKwkvKiogQ3VycmVudCB0aWxpbmcgc3RyaWRlIGZvciB0aGUgb2Jq
ZWN0LCBpZiBpdCdzIHRpbGVkLiAqLworCXVuc2lnbmVkIGludCB0aWxpbmdfYW5kX3N0cmlkZTsK
KyNkZWZpbmUgRkVOQ0VfTUlOSU1VTV9TVFJJREUgMTI4IC8qIFNlZSBpOTE1X3RpbGluZ19vaygp
ICovCisjZGVmaW5lIFRJTElOR19NQVNLIChGRU5DRV9NSU5JTVVNX1NUUklERSAtIDEpCisjZGVm
aW5lIFNUUklERV9NQVNLICh+VElMSU5HX01BU0spCisKKwkvKiogQ291bnQgb2YgVk1BIGFjdHVh
bGx5IGJvdW5kIGJ5IHRoaXMgb2JqZWN0ICovCisJdW5zaWduZWQgaW50IGJpbmRfY291bnQ7CisJ
dW5zaWduZWQgaW50IGFjdGl2ZV9jb3VudDsKKwkvKiogQ291bnQgb2YgaG93IG1hbnkgZ2xvYmFs
IFZNQSBhcmUgY3VycmVudGx5IHBpbm5lZCBmb3IgdXNlIGJ5IEhXICovCisJdW5zaWduZWQgaW50
IHBpbl9nbG9iYWw7CisKKwlzdHJ1Y3QgeworCQlzdHJ1Y3QgbXV0ZXggbG9jazsgLyogcHJvdGVj
dHMgdGhlIHBhZ2VzIGFuZCB0aGVpciB1c2UgKi8KKwkJYXRvbWljX3QgcGFnZXNfcGluX2NvdW50
OworCisJCXN0cnVjdCBzZ190YWJsZSAqcGFnZXM7CisJCXZvaWQgKm1hcHBpbmc7CisKKwkJLyog
VE9ETzogd2hhY2sgc29tZSBvZiB0aGlzIGludG8gdGhlIGVycm9yIHN0YXRlICovCisJCXN0cnVj
dCBpOTE1X3BhZ2Vfc2l6ZXMgeworCQkJLyoqCisJCQkgKiBUaGUgc2cgbWFzayBvZiB0aGUgcGFn
ZXMgc2dfdGFibGUuIGkuZSB0aGUgbWFzayBvZgorCQkJICogb2YgdGhlIGxlbmd0aHMgZm9yIGVh
Y2ggc2cgZW50cnkuCisJCQkgKi8KKwkJCXVuc2lnbmVkIGludCBwaHlzOworCisJCQkvKioKKwkJ
CSAqIFRoZSBndHQgcGFnZSBzaXplcyB3ZSBhcmUgYWxsb3dlZCB0byB1c2UgZ2l2ZW4gdGhlCisJ
CQkgKiBzZyBtYXNrIGFuZCB0aGUgc3VwcG9ydGVkIHBhZ2Ugc2l6ZXMuIFRoaXMgd2lsbAorCQkJ
ICogZXhwcmVzcyB0aGUgc21hbGxlc3QgdW5pdCB3ZSBjYW4gdXNlIGZvciB0aGUgd2hvbGUKKwkJ
CSAqIG9iamVjdCwgYXMgd2VsbCBhcyB0aGUgbGFyZ2VyIHNpemVzIHdlIG1heSBiZSBhYmxlCisJ
CQkgKiB0byB1c2Ugb3Bwb3J0dW5pc3RpY2FsbHkuCisJCQkgKi8KKwkJCXVuc2lnbmVkIGludCBz
ZzsKKworCQkJLyoqCisJCQkgKiBUaGUgYWN0dWFsIGd0dCBwYWdlIHNpemUgdXNhZ2UuIFNpbmNl
IHdlIGNhbiBoYXZlCisJCQkgKiBtdWx0aXBsZSB2bWEgYXNzb2NpYXRlZCB3aXRoIHRoaXMgb2Jq
ZWN0IHdlIG5lZWQgdG8KKwkJCSAqIHByZXZlbnQgYW55IHRyYW1wbGluZyBvZiBzdGF0ZSwgaGVu
Y2UgYSBjb3B5IG9mIHRoaXMKKwkJCSAqIHN0cnVjdCBhbHNvIGxpdmVzIGluIGVhY2ggdm1hLCB0
aGVyZWZvcmUgdGhlIGd0dAorCQkJICogdmFsdWUgaGVyZSBzaG91bGQgb25seSBiZSByZWFkL3dy
aXRlIHRocm91Z2ggdGhlIHZtYS4KKwkJCSAqLworCQkJdW5zaWduZWQgaW50IGd0dDsKKwkJfSBw
YWdlX3NpemVzOworCisJCUk5MTVfU0VMRlRFU1RfREVDTEFSRSh1bnNpZ25lZCBpbnQgcGFnZV9t
YXNrKTsKKworCQlzdHJ1Y3QgaTkxNV9nZW1fb2JqZWN0X3BhZ2VfaXRlciB7CisJCQlzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnNnX3BvczsKKwkJCXVuc2lnbmVkIGludCBzZ19pZHg7IC8qIGluIHBhZ2Vz
LCBidXQgMzJiaXQgZWVrISAqLworCisJCQlzdHJ1Y3QgcmFkaXhfdHJlZV9yb290IHJhZGl4Owor
CQkJc3RydWN0IG11dGV4IGxvY2s7IC8qIHByb3RlY3RzIHRoaXMgY2FjaGUgKi8KKwkJfSBnZXRf
cGFnZTsKKworCQkvKioKKwkJICogRWxlbWVudCB3aXRoaW4gaTkxNS0+bW0udW5ib3VuZF9saXN0
IG9yIGk5MTUtPm1tLmJvdW5kX2xpc3QsCisJCSAqIGxvY2tlZCBieSBpOTE1LT5tbS5vYmpfbG9j
ay4KKwkJICovCisJCXN0cnVjdCBsaXN0X2hlYWQgbGluazsKKworCQkvKioKKwkJICogQWR2aWNl
OiBhcmUgdGhlIGJhY2tpbmcgcGFnZXMgcHVyZ2VhYmxlPworCQkgKi8KKwkJdW5zaWduZWQgaW50
IG1hZHY6MjsKKworCQkvKioKKwkJICogVGhpcyBpcyBzZXQgaWYgdGhlIG9iamVjdCBoYXMgYmVl
biB3cml0dGVuIHRvIHNpbmNlIHRoZQorCQkgKiBwYWdlcyB3ZXJlIGxhc3QgYWNxdWlyZWQuCisJ
CSAqLworCQlib29sIGRpcnR5OjE7CisKKwkJLyoqCisJCSAqIFRoaXMgaXMgc2V0IGlmIHRoZSBv
YmplY3QgaGFzIGJlZW4gcGlubmVkIGR1ZSB0byB1bmtub3duCisJCSAqIHN3aXp6bGluZy4KKwkJ
ICovCisJCWJvb2wgcXVpcmtlZDoxOworCX0gbW07CisKKwkvKiogQnJlYWRjcnVtYiBvZiBsYXN0
IHJlbmRlcmluZyB0byB0aGUgYnVmZmVyLgorCSAqIFRoZXJlIGNhbiBvbmx5IGJlIG9uZSB3cml0
ZXIsIGJ1dCB3ZSBhbGxvdyBmb3IgbXVsdGlwbGUgcmVhZGVycy4KKwkgKiBJZiB0aGVyZSBpcyBh
IHdyaXRlciB0aGF0IG5lY2Vzc2FyaWx5IGltcGxpZXMgdGhhdCBhbGwgb3RoZXIKKwkgKiByZWFk
IHJlcXVlc3RzIGFyZSBjb21wbGV0ZSAtIGJ1dCB3ZSBtYXkgb25seSBiZSBsYXppbHkgY2xlYXJp
bmcKKwkgKiB0aGUgcmVhZCByZXF1ZXN0cy4gQSByZWFkIHJlcXVlc3QgaXMgbmF0dXJhbGx5IHRo
ZSBtb3N0IHJlY2VudAorCSAqIHJlcXVlc3Qgb24gYSByaW5nLCBzbyB3ZSBtYXkgaGF2ZSB0d28g
ZGlmZmVyZW50IHdyaXRlIGFuZCByZWFkCisJICogcmVxdWVzdHMgb24gb25lIHJpbmcgd2hlcmUg
dGhlIHdyaXRlIHJlcXVlc3QgaXMgb2xkZXIgdGhhbiB0aGUKKwkgKiByZWFkIHJlcXVlc3QuIFRo
aXMgYWxsb3dzIGZvciB0aGUgQ1BVIHRvIHJlYWQgZnJvbSBhbiBhY3RpdmUKKwkgKiBidWZmZXIg
Ynkgb25seSB3YWl0aW5nIGZvciB0aGUgd3JpdGUgdG8gY29tcGxldGUuCisJICovCisJc3RydWN0
IHJlc2VydmF0aW9uX29iamVjdCAqcmVzdjsKKworCS8qKiBSZWZlcmVuY2VzIGZyb20gZnJhbWVi
dWZmZXJzLCBsb2NrcyBvdXQgdGlsaW5nIGNoYW5nZXMuICovCisJdW5zaWduZWQgaW50IGZyYW1l
YnVmZmVyX3JlZmVyZW5jZXM7CisKKwkvKiogUmVjb3JkIG9mIGFkZHJlc3MgYml0IDE3IG9mIGVh
Y2ggcGFnZSBhdCBsYXN0IHVuYmluZC4gKi8KKwl1bnNpZ25lZCBsb25nICpiaXRfMTc7CisKKwl1
bmlvbiB7CisJCXN0cnVjdCBpOTE1X2dlbV91c2VycHRyIHsKKwkJCXVpbnRwdHJfdCBwdHI7CisK
KwkJCXN0cnVjdCBpOTE1X21tX3N0cnVjdCAqbW07CisJCQlzdHJ1Y3QgaTkxNV9tbXVfb2JqZWN0
ICptbXVfb2JqZWN0OworCQkJc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrOworCQl9IHVzZXJwdHI7
CisKKwkJdW5zaWduZWQgbG9uZyBzY3JhdGNoOworCisJCXZvaWQgKmd2dF9pbmZvOworCX07CisK
KwkvKiogZm9yIHBoeXMgYWxsb2NhdGVkIG9iamVjdHMgKi8KKwlzdHJ1Y3QgZHJtX2RtYV9oYW5k
bGUgKnBoeXNfaGFuZGxlOworCisJc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCBfX2J1aWx0aW5f
cmVzdjsKK307CisKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgor
dG9faW50ZWxfYm8oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpnZW0pCit7CisJLyogQXNzZXJ0IHRo
YXQgdG9faW50ZWxfYm8oTlVMTCkgPT0gTlVMTCAqLworCUJVSUxEX0JVR19PTihvZmZzZXRvZihz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCwgYmFzZSkpOworCisJcmV0dXJuIGNvbnRhaW5lcl9v
ZihnZW0sIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0LCBiYXNlKTsKK30KKworI2VuZGlmCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCmluZGV4IDQwZTc3
NGFjYzJjZC4uMDEyMjM4NjQyMzdhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfdHlwZXMuaApAQCAtMjksNiArMjksNyBAQAogI2RlZmluZSBJOTE1X0NNRF9IQVNI
X09SREVSIDkKIAogc3RydWN0IGRtYV9mZW5jZTsKK3N0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
Owogc3RydWN0IGRybV9pOTE1X3JlZ190YWJsZTsKIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0Owog
c3RydWN0IGk5MTVfcmVxdWVzdDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDg3Y2M4MGM3
YjYyNi4uOWE3NDRkMzlkMWNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTgyLDcgKzgy
LDYgQEAKICNpbmNsdWRlICJpOTE1X2dlbS5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX2NvbnRleHQu
aCIKICNpbmNsdWRlICJpOTE1X2dlbV9mZW5jZV9yZWcuaCIKLSNpbmNsdWRlICJpOTE1X2dlbV9v
YmplY3QuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9ndHQuaCIKICNpbmNsdWRlICJpOTE1X2dwdV9l
cnJvci5oIgogI2luY2x1ZGUgImk5MTVfcmVxdWVzdC5oIgpAQCAtMTM3LDYgKzEzNiw4IEBAIGJv
b2wgaTkxNV9lcnJvcl9pbmplY3RlZCh2b2lkKTsKIAlfX2k5MTVfcHJpbnRrKGk5MTUsIGk5MTVf
ZXJyb3JfaW5qZWN0ZWQoKSA/IEtFUk5fREVCVUcgOiBLRVJOX0VSUiwgXAogCQkgICAgICBmbXQs
ICMjX19WQV9BUkdTX18pCiAKK3N0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0OworCiBlbnVtIGhw
ZF9waW4gewogCUhQRF9OT05FID0gMCwKIAlIUERfVFYgPSBIUERfTk9ORSwgICAgIC8qIFRWIGlz
IGtub3duIHRvIGJlIHVucmVsaWFibGUgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2JhdGNoX3Bvb2wuaAppbmRleCA1Njk0N2RhYWFmNjUuLmZlZWVlZWFhNTRkOCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuaApAQCAtOSw2ICs5LDcgQEAKIAog
I2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAKK3N0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0Owog
c3RydWN0IGludGVsX2VuZ2luZV9jczsKIAogc3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgewpA
QCAtMTksNyArMjAsNyBAQCBzdHJ1Y3QgaTkxNV9nZW1fYmF0Y2hfcG9vbCB7CiB2b2lkIGk5MTVf
Z2VtX2JhdGNoX3Bvb2xfaW5pdChzdHJ1Y3QgaTkxNV9nZW1fYmF0Y2hfcG9vbCAqcG9vbCwKIAkJ
CSAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiB2b2lkIGk5MTVfZ2VtX2Jh
dGNoX3Bvb2xfZmluaShzdHJ1Y3QgaTkxNV9nZW1fYmF0Y2hfcG9vbCAqcG9vbCk7Ci1zdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCoKK3N0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKIGk5MTVf
Z2VtX2JhdGNoX3Bvb2xfZ2V0KHN0cnVjdCBpOTE1X2dlbV9iYXRjaF9wb29sICpwb29sLCBzaXpl
X3Qgc2l6ZSk7CiAKICNlbmRpZiAvKiBJOTE1X0dFTV9CQVRDSF9QT09MX0ggKi8KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmgKaW5kZXggMzg0OTYwMzk0NTZiLi44MTFmYTA1YzAzMjIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCkBAIC02MSw2ICs2MSw3IEBACiAKIHN0cnVj
dCBkcm1faTkxNV9maWxlX3ByaXZhdGU7CiBzdHJ1Y3QgZHJtX2k5MTVfZmVuY2VfcmVnOworc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3Q7CiBzdHJ1Y3QgaTkxNV92bWE7CiAKIHR5cGVkZWYgdTMy
IGdlbjZfcHRlX3Q7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9v
YmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX29iamVjdC5oCmluZGV4IGNh
OTNhNDBjMGM4Ny4uMzY2NmIwYzVmNmNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9v
YmplY3QuaApAQCAtMSwzMDggKzEsMTkgQEAKIC8qCi0gKiBDb3B5cmlnaHQgwqkgMjAxNiBJbnRl
bCBDb3Jwb3JhdGlvbgotICoKLSAqIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUg
b2YgY2hhcmdlLCB0byBhbnkgcGVyc29uIG9idGFpbmluZyBhCi0gKiBjb3B5IG9mIHRoaXMgc29m
dHdhcmUgYW5kIGFzc29jaWF0ZWQgZG9jdW1lbnRhdGlvbiBmaWxlcyAodGhlICJTb2Z0d2FyZSIp
LAotICogdG8gZGVhbCBpbiB0aGUgU29mdHdhcmUgd2l0aG91dCByZXN0cmljdGlvbiwgaW5jbHVk
aW5nIHdpdGhvdXQgbGltaXRhdGlvbgotICogdGhlIHJpZ2h0cyB0byB1c2UsIGNvcHksIG1vZGlm
eSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUsIHN1YmxpY2Vuc2UsCi0gKiBhbmQvb3Igc2Vs
bCBjb3BpZXMgb2YgdGhlIFNvZnR3YXJlLCBhbmQgdG8gcGVybWl0IHBlcnNvbnMgdG8gd2hvbSB0
aGUKLSAqIFNvZnR3YXJlIGlzIGZ1cm5pc2hlZCB0byBkbyBzbywgc3ViamVjdCB0byB0aGUgZm9s
bG93aW5nIGNvbmRpdGlvbnM6Ci0gKgotICogVGhlIGFib3ZlIGNvcHlyaWdodCBub3RpY2UgYW5k
IHRoaXMgcGVybWlzc2lvbiBub3RpY2UgKGluY2x1ZGluZyB0aGUgbmV4dAotICogcGFyYWdyYXBo
KSBzaGFsbCBiZSBpbmNsdWRlZCBpbiBhbGwgY29waWVzIG9yIHN1YnN0YW50aWFsIHBvcnRpb25z
IG9mIHRoZQotICogU29mdHdhcmUuCi0gKgotICogVEhFIFNPRlRXQVJFIElTIFBST1ZJREVEICJB
UyBJUyIsIFdJVEhPVVQgV0FSUkFOVFkgT0YgQU5ZIEtJTkQsIEVYUFJFU1MgT1IKLSAqIElNUExJ
RUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gVEhFIFdBUlJBTlRJRVMgT0YgTUVSQ0hB
TlRBQklMSVRZLAotICogRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UgQU5EIE5PTklO
RlJJTkdFTUVOVC4gIElOIE5PIEVWRU5UIFNIQUxMCi0gKiBUSEUgQVVUSE9SUyBPUiBDT1BZUklH
SFQgSE9MREVSUyBCRSBMSUFCTEUgRk9SIEFOWSBDTEFJTSwgREFNQUdFUyBPUiBPVEhFUgotICog
TElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05UUkFDVCwgVE9SVCBPUiBPVEhF
UldJU0UsIEFSSVNJTkcKLSAqIEZST00sIE9VVCBPRiBPUiBJTiBDT05ORUNUSU9OIFdJVEggVEhF
IFNPRlRXQVJFIE9SIFRIRSBVU0UgT1IgT1RIRVIgREVBTElOR1MKLSAqIElOIFRIRSBTT0ZUV0FS
RS4KKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICAqCisgKiBDb3B5cmlnaHQgwqkg
MjAxNiBJbnRlbCBDb3Jwb3JhdGlvbgogICovCiAKICNpZm5kZWYgX19JOTE1X0dFTV9PQkpFQ1Rf
SF9fCiAjZGVmaW5lIF9fSTkxNV9HRU1fT0JKRUNUX0hfXwogCi0jaW5jbHVkZSA8bGludXgvcmVz
ZXJ2YXRpb24uaD4KLQotI2luY2x1ZGUgPGRybS9kcm1fdm1hX21hbmFnZXIuaD4KICNpbmNsdWRl
IDxkcm0vZHJtX2dlbS5oPgogI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5oPgogI2luY2x1ZGUgPGRy
bS9kcm1fZGV2aWNlLmg+CiAKICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAotI2luY2x1ZGUg
Imk5MTVfcmVxdWVzdC5oIgotI2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIKLQotc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3Q7Ci0KLS8qCi0gKiBzdHJ1Y3QgaTkxNV9sdXRfaGFuZGxlIHRyYWNr
cyB0aGUgZmFzdCBsb29rdXBzIGZyb20gaGFuZGxlIHRvIHZtYSB1c2VkCi0gKiBmb3IgZXhlY2J1
Zi4gQWx0aG91Z2ggd2UgdXNlIGEgcmFkaXh0cmVlIGZvciB0aGF0IG1hcHBpbmcsIGluIG9yZGVy
IHRvCi0gKiByZW1vdmUgdGhlbSBhcyB0aGUgb2JqZWN0IG9yIGNvbnRleHQgaXMgY2xvc2VkLCB3
ZSBuZWVkIGEgc2Vjb25kYXJ5IGxpc3QKLSAqIGFuZCBhIHRyYW5zbGF0aW9uIGVudHJ5IChpOTE1
X2x1dF9oYW5kbGUpLgotICovCi1zdHJ1Y3QgaTkxNV9sdXRfaGFuZGxlIHsKLQlzdHJ1Y3QgbGlz
dF9oZWFkIG9ial9saW5rOwotCXN0cnVjdCBsaXN0X2hlYWQgY3R4X2xpbms7Ci0Jc3RydWN0IGk5
MTVfZ2VtX2NvbnRleHQgKmN0eDsKLQl1MzIgaGFuZGxlOwotfTsKLQotc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3Rfb3BzIHsKLQl1bnNpZ25lZCBpbnQgZmxhZ3M7Ci0jZGVmaW5lIEk5MTVfR0VN
X09CSkVDVF9IQVNfU1RSVUNUX1BBR0UJQklUKDApCi0jZGVmaW5lIEk5MTVfR0VNX09CSkVDVF9J
U19TSFJJTktBQkxFCUJJVCgxKQotI2RlZmluZSBJOTE1X0dFTV9PQkpFQ1RfSVNfUFJPWFkJQklU
KDIpCi0jZGVmaW5lIEk5MTVfR0VNX09CSkVDVF9BU1lOQ19DQU5DRUwJQklUKDMpCi0KLQkvKiBJ
bnRlcmZhY2UgYmV0d2VlbiB0aGUgR0VNIG9iamVjdCBhbmQgaXRzIGJhY2tpbmcgc3RvcmFnZS4K
LQkgKiBnZXRfcGFnZXMoKSBpcyBjYWxsZWQgb25jZSBwcmlvciB0byB0aGUgdXNlIG9mIHRoZSBh
c3NvY2lhdGVkIHNldAotCSAqIG9mIHBhZ2VzIGJlZm9yZSB0byBiaW5kaW5nIHRoZW0gaW50byB0
aGUgR1RULCBhbmQgcHV0X3BhZ2VzKCkgaXMKLQkgKiBjYWxsZWQgYWZ0ZXIgd2Ugbm8gbG9uZ2Vy
IG5lZWQgdGhlbS4gQXMgd2UgZXhwZWN0IHRoZXJlIHRvIGJlCi0JICogYXNzb2NpYXRlZCBjb3N0
IHdpdGggbWlncmF0aW5nIHBhZ2VzIGJldHdlZW4gdGhlIGJhY2tpbmcgc3RvcmFnZQotCSAqIGFu
ZCBtYWtpbmcgdGhlbSBhdmFpbGFibGUgZm9yIHRoZSBHUFUgKGUuZy4gY2xmbHVzaCksIHdlIG1h
eSBob2xkCi0JICogb250byB0aGUgcGFnZXMgYWZ0ZXIgdGhleSBhcmUgbm8gbG9uZ2VyIHJlZmVy
ZW5jZWQgYnkgdGhlIEdQVQotCSAqIGluIGNhc2UgdGhleSBtYXkgYmUgdXNlZCBhZ2FpbiBzaG9y
dGx5IChmb3IgZXhhbXBsZSBtaWdyYXRpbmcgdGhlCi0JICogcGFnZXMgdG8gYSBkaWZmZXJlbnQg
bWVtb3J5IGRvbWFpbiB3aXRoaW4gdGhlIEdUVCkuIHB1dF9wYWdlcygpCi0JICogd2lsbCB0aGVy
ZWZvcmUgbW9zdCBsaWtlbHkgYmUgY2FsbGVkIHdoZW4gdGhlIG9iamVjdCBpdHNlbGYgaXMKLQkg
KiBiZWluZyByZWxlYXNlZCBvciB1bmRlciBtZW1vcnkgcHJlc3N1cmUgKHdoZXJlIHdlIGF0dGVt
cHQgdG8KLQkgKiByZWFwIHBhZ2VzIGZvciB0aGUgc2hyaW5rZXIpLgotCSAqLwotCWludCAoKmdl
dF9wYWdlcykoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKik7Ci0Jdm9pZCAoKnB1dF9wYWdl
cykoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKiwgc3RydWN0IHNnX3RhYmxlICopOwotCi0J
aW50ICgqcHdyaXRlKShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqLAotCQkgICAgICBjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3B3cml0ZSAqKTsKLQotCWludCAoKmRtYWJ1Zl9leHBvcnQp
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICopOwotCXZvaWQgKCpyZWxlYXNlKShzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqKTsKLX07Ci0KLXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
IHsKLQlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgYmFzZTsKLQotCWNvbnN0IHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0X29wcyAqb3BzOwotCi0Jc3RydWN0IHsKLQkJLyoqCi0JCSAqIEB2bWEubG9j
azogcHJvdGVjdCB0aGUgbGlzdC90cmVlIG9mIHZtYXMKLQkJICovCi0JCXNwaW5sb2NrX3QgbG9j
azsKLQotCQkvKioKLQkJICogQHZtYS5saXN0OiBMaXN0IG9mIFZNQXMgYmFja2VkIGJ5IHRoaXMg
b2JqZWN0Ci0JCSAqCi0JCSAqIFRoZSBWTUEgb24gdGhpcyBsaXN0IGFyZSBvcmRlcmVkIGJ5IHR5
cGUsIGFsbCBHR1RUIHZtYSBhcmUKLQkJICogcGxhY2VkIGF0IHRoZSBoZWFkIGFuZCBhbGwgcHBH
VFQgdm1hIGFyZSBwbGFjZWQgYXQgdGhlIHRhaWwuCi0JCSAqIFRoZSBkaWZmZXJlbnQgdHlwZXMg
b2YgR0dUVCB2bWEgYXJlIHVub3JkZXJlZCBiZXR3ZWVuCi0JCSAqIHRoZW1zZWx2ZXMsIHVzZSB0
aGUgQHZtYS50cmVlICh3aGljaCBoYXMgYSBkZWZpbmVkIG9yZGVyCi0JCSAqIGJldHdlZW4gYWxs
IFZNQSkgdG8gcXVpY2tseSBmaW5kIGFuIGV4YWN0IG1hdGNoLgotCQkgKi8KLQkJc3RydWN0IGxp
c3RfaGVhZCBsaXN0OwotCi0JCS8qKgotCQkgKiBAdm1hLnRyZWU6IE9yZGVyZWQgdHJlZSBvZiBW
TUFzIGJhY2tlZCBieSB0aGlzIG9iamVjdAotCQkgKgotCQkgKiBBbGwgVk1BIGNyZWF0ZWQgZm9y
IHRoaXMgb2JqZWN0IGFyZSBwbGFjZWQgaW4gdGhlIEB2bWEudHJlZQotCQkgKiBmb3IgZmFzdCBy
ZXRyaWV2YWwgdmlhIGEgYmluYXJ5IHNlYXJjaCBpbgotCQkgKiBpOTE1X3ZtYV9pbnN0YW5jZSgp
LiBUaGV5IGFyZSBhbHNvIGFkZGVkIHRvIEB2bWEubGlzdCBmb3IKLQkJICogZWFzeSBpdGVyYXRp
b24uCi0JCSAqLwotCQlzdHJ1Y3QgcmJfcm9vdCB0cmVlOwotCX0gdm1hOwotCi0JLyoqCi0JICog
QGx1dF9saXN0OiBMaXN0IG9mIHZtYSBsb29rdXAgZW50cmllcyBpbiB1c2UgZm9yIHRoaXMgb2Jq
ZWN0LgotCSAqCi0JICogSWYgdGhpcyBvYmplY3QgaXMgY2xvc2VkLCB3ZSBuZWVkIHRvIHJlbW92
ZSBhbGwgb2YgaXRzIFZNQSBmcm9tCi0JICogdGhlIGZhc3QgbG9va3VwIGluZGV4IGluIGFzc29j
aWF0ZWQgY29udGV4dHM7IEBsdXRfbGlzdCBwcm92aWRlcwotCSAqIHRoaXMgdHJhbnNsYXRpb24g
ZnJvbSBvYmplY3QgdG8gY29udGV4dC0+aGFuZGxlc192bWEuCi0JICovCi0Jc3RydWN0IGxpc3Rf
aGVhZCBsdXRfbGlzdDsKLQotCS8qKiBTdG9sZW4gbWVtb3J5IGZvciB0aGlzIG9iamVjdCwgaW5z
dGVhZCBvZiBiZWluZyBiYWNrZWQgYnkgc2htZW0uICovCi0Jc3RydWN0IGRybV9tbV9ub2RlICpz
dG9sZW47Ci0JdW5pb24gewotCQlzdHJ1Y3QgcmN1X2hlYWQgcmN1OwotCQlzdHJ1Y3QgbGxpc3Rf
bm9kZSBmcmVlZDsKLQl9OwotCi0JLyoqCi0JICogV2hldGhlciB0aGUgb2JqZWN0IGlzIGN1cnJl
bnRseSBpbiB0aGUgR0dUVCBtbWFwLgotCSAqLwotCXVuc2lnbmVkIGludCB1c2VyZmF1bHRfY291
bnQ7Ci0Jc3RydWN0IGxpc3RfaGVhZCB1c2VyZmF1bHRfbGluazsKLQotCXN0cnVjdCBsaXN0X2hl
YWQgYmF0Y2hfcG9vbF9saW5rOwotCUk5MTVfU0VMRlRFU1RfREVDTEFSRShzdHJ1Y3QgbGlzdF9o
ZWFkIHN0X2xpbmspOwotCi0JdW5zaWduZWQgbG9uZyBmbGFnczsKLQotCS8qKgotCSAqIEhhdmUg
d2UgdGFrZW4gYSByZWZlcmVuY2UgZm9yIHRoZSBvYmplY3QgZm9yIGluY29tcGxldGUgR1BVCi0J
ICogYWN0aXZpdHk/Ci0JICovCi0jZGVmaW5lIEk5MTVfQk9fQUNUSVZFX1JFRiAwCi0KLQkvKgot
CSAqIElzIHRoZSBvYmplY3QgdG8gYmUgbWFwcGVkIGFzIHJlYWQtb25seSB0byB0aGUgR1BVCi0J
ICogT25seSBob25vdXJlZCBpZiBoYXJkd2FyZSBoYXMgcmVsZXZhbnQgcHRlIGJpdAotCSAqLwot
CXVuc2lnbmVkIGludCBjYWNoZV9sZXZlbDozOwotCXVuc2lnbmVkIGludCBjYWNoZV9jb2hlcmVu
dDoyOwotI2RlZmluZSBJOTE1X0JPX0NBQ0hFX0NPSEVSRU5UX0ZPUl9SRUFEIEJJVCgwKQotI2Rl
ZmluZSBJOTE1X0JPX0NBQ0hFX0NPSEVSRU5UX0ZPUl9XUklURSBCSVQoMSkKLQl1bnNpZ25lZCBp
bnQgY2FjaGVfZGlydHk6MTsKLQotCS8qKgotCSAqIEByZWFkX2RvbWFpbnM6IFJlYWQgbWVtb3J5
IGRvbWFpbnMuCi0JICoKLQkgKiBUaGVzZSBtb25pdG9yIHdoaWNoIGNhY2hlcyBjb250YWluIHJl
YWQvd3JpdGUgZGF0YSByZWxhdGVkIHRvIHRoZQotCSAqIG9iamVjdC4gV2hlbiB0cmFuc2l0aW9u
aW5nIGZyb20gb25lIHNldCBvZiBkb21haW5zIHRvIGFub3RoZXIsCi0JICogdGhlIGRyaXZlciBp
cyBjYWxsZWQgdG8gZW5zdXJlIHRoYXQgY2FjaGVzIGFyZSBzdWl0YWJseSBmbHVzaGVkIGFuZAot
CSAqIGludmFsaWRhdGVkLgotCSAqLwotCXUxNiByZWFkX2RvbWFpbnM7Ci0KLQkvKioKLQkgKiBA
d3JpdGVfZG9tYWluOiBDb3JyZXNwb25kaW5nIHVuaXF1ZSB3cml0ZSBtZW1vcnkgZG9tYWluLgot
CSAqLwotCXUxNiB3cml0ZV9kb21haW47Ci0KLQlhdG9taWNfdCBmcm9udGJ1ZmZlcl9iaXRzOwot
CXVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9nZ3R0X29yaWdpbjsgLyogd3JpdGUgb25jZSAqLwot
CXN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0IGZyb250YnVmZmVyX3dyaXRlOwotCi0JLyoqIEN1
cnJlbnQgdGlsaW5nIHN0cmlkZSBmb3IgdGhlIG9iamVjdCwgaWYgaXQncyB0aWxlZC4gKi8KLQl1
bnNpZ25lZCBpbnQgdGlsaW5nX2FuZF9zdHJpZGU7Ci0jZGVmaW5lIEZFTkNFX01JTklNVU1fU1RS
SURFIDEyOCAvKiBTZWUgaTkxNV90aWxpbmdfb2soKSAqLwotI2RlZmluZSBUSUxJTkdfTUFTSyAo
RkVOQ0VfTUlOSU1VTV9TVFJJREUtMSkKLSNkZWZpbmUgU1RSSURFX01BU0sgKH5USUxJTkdfTUFT
SykKLQotCS8qKiBDb3VudCBvZiBWTUEgYWN0dWFsbHkgYm91bmQgYnkgdGhpcyBvYmplY3QgKi8K
LQl1bnNpZ25lZCBpbnQgYmluZF9jb3VudDsKLQl1bnNpZ25lZCBpbnQgYWN0aXZlX2NvdW50Owot
CS8qKiBDb3VudCBvZiBob3cgbWFueSBnbG9iYWwgVk1BIGFyZSBjdXJyZW50bHkgcGlubmVkIGZv
ciB1c2UgYnkgSFcgKi8KLQl1bnNpZ25lZCBpbnQgcGluX2dsb2JhbDsKLQotCXN0cnVjdCB7Ci0J
CXN0cnVjdCBtdXRleCBsb2NrOyAvKiBwcm90ZWN0cyB0aGUgcGFnZXMgYW5kIHRoZWlyIHVzZSAq
LwotCQlhdG9taWNfdCBwYWdlc19waW5fY291bnQ7Ci0KLQkJc3RydWN0IHNnX3RhYmxlICpwYWdl
czsKLQkJdm9pZCAqbWFwcGluZzsKLQotCQkvKiBUT0RPOiB3aGFjayBzb21lIG9mIHRoaXMgaW50
byB0aGUgZXJyb3Igc3RhdGUgKi8KLQkJc3RydWN0IGk5MTVfcGFnZV9zaXplcyB7Ci0JCQkvKioK
LQkJCSAqIFRoZSBzZyBtYXNrIG9mIHRoZSBwYWdlcyBzZ190YWJsZS4gaS5lIHRoZSBtYXNrIG9m
Ci0JCQkgKiBvZiB0aGUgbGVuZ3RocyBmb3IgZWFjaCBzZyBlbnRyeS4KLQkJCSAqLwotCQkJdW5z
aWduZWQgaW50IHBoeXM7Ci0KLQkJCS8qKgotCQkJICogVGhlIGd0dCBwYWdlIHNpemVzIHdlIGFy
ZSBhbGxvd2VkIHRvIHVzZSBnaXZlbiB0aGUKLQkJCSAqIHNnIG1hc2sgYW5kIHRoZSBzdXBwb3J0
ZWQgcGFnZSBzaXplcy4gVGhpcyB3aWxsCi0JCQkgKiBleHByZXNzIHRoZSBzbWFsbGVzdCB1bml0
IHdlIGNhbiB1c2UgZm9yIHRoZSB3aG9sZQotCQkJICogb2JqZWN0LCBhcyB3ZWxsIGFzIHRoZSBs
YXJnZXIgc2l6ZXMgd2UgbWF5IGJlIGFibGUKLQkJCSAqIHRvIHVzZSBvcHBvcnR1bmlzdGljYWxs
eS4KLQkJCSAqLwotCQkJdW5zaWduZWQgaW50IHNnOwotCi0JCQkvKioKLQkJCSAqIFRoZSBhY3R1
YWwgZ3R0IHBhZ2Ugc2l6ZSB1c2FnZS4gU2luY2Ugd2UgY2FuIGhhdmUKLQkJCSAqIG11bHRpcGxl
IHZtYSBhc3NvY2lhdGVkIHdpdGggdGhpcyBvYmplY3Qgd2UgbmVlZCB0bwotCQkJICogcHJldmVu
dCBhbnkgdHJhbXBsaW5nIG9mIHN0YXRlLCBoZW5jZSBhIGNvcHkgb2YgdGhpcwotCQkJICogc3Ry
dWN0IGFsc28gbGl2ZXMgaW4gZWFjaCB2bWEsIHRoZXJlZm9yZSB0aGUgZ3R0Ci0JCQkgKiB2YWx1
ZSBoZXJlIHNob3VsZCBvbmx5IGJlIHJlYWQvd3JpdGUgdGhyb3VnaCB0aGUgdm1hLgotCQkJICov
Ci0JCQl1bnNpZ25lZCBpbnQgZ3R0OwotCQl9IHBhZ2Vfc2l6ZXM7Ci0KLQkJSTkxNV9TRUxGVEVT
VF9ERUNMQVJFKHVuc2lnbmVkIGludCBwYWdlX21hc2spOwotCi0JCXN0cnVjdCBpOTE1X2dlbV9v
YmplY3RfcGFnZV9pdGVyIHsKLQkJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2dfcG9zOwotCQkJdW5z
aWduZWQgaW50IHNnX2lkeDsgLyogaW4gcGFnZXMsIGJ1dCAzMmJpdCBlZWshICovCi0KLQkJCXN0
cnVjdCByYWRpeF90cmVlX3Jvb3QgcmFkaXg7Ci0JCQlzdHJ1Y3QgbXV0ZXggbG9jazsgLyogcHJv
dGVjdHMgdGhpcyBjYWNoZSAqLwotCQl9IGdldF9wYWdlOwotCi0JCS8qKgotCQkgKiBFbGVtZW50
IHdpdGhpbiBpOTE1LT5tbS51bmJvdW5kX2xpc3Qgb3IgaTkxNS0+bW0uYm91bmRfbGlzdCwKLQkJ
ICogbG9ja2VkIGJ5IGk5MTUtPm1tLm9ial9sb2NrLgotCQkgKi8KLQkJc3RydWN0IGxpc3RfaGVh
ZCBsaW5rOwotCi0JCS8qKgotCQkgKiBBZHZpY2U6IGFyZSB0aGUgYmFja2luZyBwYWdlcyBwdXJn
ZWFibGU/Ci0JCSAqLwotCQl1bnNpZ25lZCBpbnQgbWFkdjoyOwotCi0JCS8qKgotCQkgKiBUaGlz
IGlzIHNldCBpZiB0aGUgb2JqZWN0IGhhcyBiZWVuIHdyaXR0ZW4gdG8gc2luY2UgdGhlCi0JCSAq
IHBhZ2VzIHdlcmUgbGFzdCBhY3F1aXJlZC4KLQkJICovCi0JCWJvb2wgZGlydHk6MTsKLQotCQkv
KioKLQkJICogVGhpcyBpcyBzZXQgaWYgdGhlIG9iamVjdCBoYXMgYmVlbiBwaW5uZWQgZHVlIHRv
IHVua25vd24KLQkJICogc3dpenpsaW5nLgotCQkgKi8KLQkJYm9vbCBxdWlya2VkOjE7Ci0JfSBt
bTsKLQotCS8qKiBCcmVhZGNydW1iIG9mIGxhc3QgcmVuZGVyaW5nIHRvIHRoZSBidWZmZXIuCi0J
ICogVGhlcmUgY2FuIG9ubHkgYmUgb25lIHdyaXRlciwgYnV0IHdlIGFsbG93IGZvciBtdWx0aXBs
ZSByZWFkZXJzLgotCSAqIElmIHRoZXJlIGlzIGEgd3JpdGVyIHRoYXQgbmVjZXNzYXJpbHkgaW1w
bGllcyB0aGF0IGFsbCBvdGhlcgotCSAqIHJlYWQgcmVxdWVzdHMgYXJlIGNvbXBsZXRlIC0gYnV0
IHdlIG1heSBvbmx5IGJlIGxhemlseSBjbGVhcmluZwotCSAqIHRoZSByZWFkIHJlcXVlc3RzLiBB
IHJlYWQgcmVxdWVzdCBpcyBuYXR1cmFsbHkgdGhlIG1vc3QgcmVjZW50Ci0JICogcmVxdWVzdCBv
biBhIHJpbmcsIHNvIHdlIG1heSBoYXZlIHR3byBkaWZmZXJlbnQgd3JpdGUgYW5kIHJlYWQKLQkg
KiByZXF1ZXN0cyBvbiBvbmUgcmluZyB3aGVyZSB0aGUgd3JpdGUgcmVxdWVzdCBpcyBvbGRlciB0
aGFuIHRoZQotCSAqIHJlYWQgcmVxdWVzdC4gVGhpcyBhbGxvd3MgZm9yIHRoZSBDUFUgdG8gcmVh
ZCBmcm9tIGFuIGFjdGl2ZQotCSAqIGJ1ZmZlciBieSBvbmx5IHdhaXRpbmcgZm9yIHRoZSB3cml0
ZSB0byBjb21wbGV0ZS4KLQkgKi8KLQlzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpyZXN2Owot
Ci0JLyoqIFJlZmVyZW5jZXMgZnJvbSBmcmFtZWJ1ZmZlcnMsIGxvY2tzIG91dCB0aWxpbmcgY2hh
bmdlcy4gKi8KLQl1bnNpZ25lZCBpbnQgZnJhbWVidWZmZXJfcmVmZXJlbmNlczsKLQotCS8qKiBS
ZWNvcmQgb2YgYWRkcmVzcyBiaXQgMTcgb2YgZWFjaCBwYWdlIGF0IGxhc3QgdW5iaW5kLiAqLwot
CXVuc2lnbmVkIGxvbmcgKmJpdF8xNzsKLQotCXVuaW9uIHsKLQkJc3RydWN0IGk5MTVfZ2VtX3Vz
ZXJwdHIgewotCQkJdWludHB0cl90IHB0cjsKLQotCQkJc3RydWN0IGk5MTVfbW1fc3RydWN0ICpt
bTsKLQkJCXN0cnVjdCBpOTE1X21tdV9vYmplY3QgKm1tdV9vYmplY3Q7Ci0JCQlzdHJ1Y3Qgd29y
a19zdHJ1Y3QgKndvcms7Ci0JCX0gdXNlcnB0cjsKLQotCQl1bnNpZ25lZCBsb25nIHNjcmF0Y2g7
Ci0KLQkJdm9pZCAqZ3Z0X2luZm87Ci0JfTsKLQotCS8qKiBmb3IgcGh5cyBhbGxvY2F0ZWQgb2Jq
ZWN0cyAqLwotCXN0cnVjdCBkcm1fZG1hX2hhbmRsZSAqcGh5c19oYW5kbGU7Ci0KLQlzdHJ1Y3Qg
cmVzZXJ2YXRpb25fb2JqZWN0IF9fYnVpbHRpbl9yZXN2OwotfTsKLQotc3RhdGljIGlubGluZSBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCi10b19pbnRlbF9ibyhzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKmdlbSkKLXsKLQkvKiBBc3NlcnQgdGhhdCB0b19pbnRlbF9ibyhOVUxMKSA9PSBOVUxM
ICovCi0JQlVJTERfQlVHX09OKG9mZnNldG9mKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0LCBi
YXNlKSk7Ci0KLQlyZXR1cm4gY29udGFpbmVyX29mKGdlbSwgc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QsIGJhc2UpOwotfQorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCIK
IAogc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmk5MTVfZ2VtX29iamVjdF9hbGxvYyh2b2lk
KTsKIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2ZyZWUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaik7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
