Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E77E0E4D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 00:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFCF86E922;
	Tue, 22 Oct 2019 22:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79D96E91C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 22:39:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18930834-1500050 
 for multiple; Tue, 22 Oct 2019 23:38:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 23:38:22 +0100
Message-Id: <20191022223831.22677-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191022223831.22677-1-chris@chris-wilson.co.uk>
References: <20191022223831.22677-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/12] drm/i915/gt: Expose timeslice duration to
 sysfs
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

RXhlY2xpc3RzIHVzZXMgYSBzY2hlZHVsaW5nIHF1YW50dW0gKGEgdGltZXNsaWNlKSB0byBhbHRl
cm5hdGUgZXhlY3V0aW9uCmJldHdlZW4gcmVhZHktdG8tcnVuIGNvbnRleHRzIG9mIGVxdWFsIHBy
aW9yaXR5LiBUaGlzIGVuc3VyZXMgdGhhdCBhbGwKdXNlcnMgKHRob3VnaCBvbmx5IGlmIHRoZXkg
b2YgZXF1YWwgaW1wb3J0YW5jZSkgaGF2ZSB0aGUgb3Bwb3J0dW5pdHkgdG8KcnVuIGFuZCBwcmV2
ZW50cyBsaXZlbG9ja3Mgd2hlcmUgY29udGV4dHMgbWF5IGhhdmUgaW1wbGljaXQgb3JkZXJpbmcg
ZHVlCnRvIHVzZXJzcGFjZSBzZW1hcGhvcmVzLgoKVGhlIHRpbWVzbGljaW5nIG1lY2hhbmlzbSBj
YW4gYmUgY29tcGlsZWQgb3V0IHdpdGgKCgkuL3NjcmlwdHMvY29uZmlnIC0tc2V0LXZhbCBEUk1f
STkxNV9USU1FU0xJQ0VfRFVSQVRJT04gMAoKVGhlIHRpbWVzbGljZSBkdXJhdGlvbiBjYW4gYmUg
YWRqdXN0ZWQgcGVyLWVuZ2luZSB1c2luZywKCgkvc3lzL2NsYXNzL2RybS9jYXJkPy9lbmdpbmUv
Ki90aW1lc2xpY2VfZHVyYXRpb25fbXMKClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGlu
ZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJv
ZmlsZSAgICAgICAgIHwgMTggKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmUuaCAgICAgICB8ICA5ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMgICAgfCAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
c3lzZnMuYyB8IDQ2ICsrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3R5cGVzLmggfCAgNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMgICAgICAgICAgfCA1OSArKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgICAgICAgfCAxMyArKysrLQogNyBmaWxlcyBjaGFuZ2Vk
LCAxMzggaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2Nv
bmZpZy5wcm9maWxlCmluZGV4IDQ4ZGY4ODg5YTg4YS4uYjhkZjgwYmMwYjQ3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCkBAIC0yNSwzICsyNSwyMSBAQCBjb25maWcgRFJNX0k5
MTVfU1BJTl9SRVFVRVNUCiAJICBNYXkgYmUgMCB0byBkaXNhYmxlIHRoZSBpbml0aWFsIHNwaW4u
IEluIHByYWN0aWNlLCB3ZSBlc3RpbWF0ZQogCSAgdGhlIGNvc3Qgb2YgZW5hYmxpbmcgdGhlIGlu
dGVycnVwdCAoaWYgY3VycmVudGx5IGRpc2FibGVkKSB0byBiZQogCSAgYSBmZXcgbWljcm9zZWNv
bmRzLgorCitjb25maWcgRFJNX0k5MTVfVElNRVNMSUNFX0RVUkFUSU9OCisJaW50ICJTY2hlZHVs
aW5nIHF1YW50dW0gZm9yIHVzZXJzcGFjZSBiYXRjaGVzIChtcywgamlmZnkgZ3JhbnVsYXJpdHkp
IgorCWRlZmF1bHQgMSAjIG1pbGxpc2Vjb25kcworCWhlbHAKKwkgIFdoZW4gdHdvIHVzZXIgYmF0
Y2hlcyBvZiBlcXVhbCBwcmlvcml0eSBhcmUgZXhlY3V0aW5nLCB3ZSB3aWxsCisJICBhbHRlcm5h
dGUgZXhlY3V0aW9uIG9mIGVhY2ggYmF0Y2ggdG8gZW5zdXJlIGZvcndhcmQgcHJvZ3Jlc3Mgb2YK
KwkgIGFsbCB1c2Vycy4gVGhpcyBpcyBuZWNlc3NhcnkgaW4gc29tZSBjYXNlcyB3aGVyZSB0aGVy
ZSBtYXkgYmUKKwkgIGFuIGltcGxpY2l0IGRlcGVuZGVuY3kgYmV0d2VlbiB0aG9zZSBiYXRjaGVz
IHRoYXQgcmVxdWlyZXMKKwkgIGNvbmN1cnJlbnQgZXhlY3V0aW9uIGluIG9yZGVyIGZvciB0aGVt
IHRvIHByb2NlZWQsIGUuZy4gdGhleQorCSAgaW50ZXJhY3Qgd2l0aCBlYWNoIG90aGVyIHZpYSB1
c2Vyc3BhY2Ugc2VtYXBob3Jlcy4gRWFjaCBjb250ZXh0CisJICBpcyBzY2hlZHVsZWQgZm9yIGV4
ZWN1dGlvbiBmb3IgdGhlIHRpbWVzbGljZSBkdXJhdGlvbiwgYmVmb3JlCisJICBzd2l0Y2hpbmcg
dG8gdGhlIG5leHQgY29udGV4dC4KKworCSAgVGhpcyBpcyBhZGp1c3RhYmxlIHZpYQorCSAgL3N5
cy9jbGFzcy9kcm0vY2FyZD8vZW5naW5lLyovdGltZXNsaWNlX2R1cmF0aW9uX21zCisKKwkgIE1h
eSBiZSAwIHRvIGRpc2FibGUgdGltZXNsaWNpbmcuCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZS5oCmluZGV4IGMyZDlkNjdjNjNkOS4uOTRlNmY2NDYwNTE5IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaApAQCAtNTI3LDQgKzUyNywxMyBAQCB2b2lkIGludGVs
X2VuZ2luZV9pbml0X2FjdGl2ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAjZGVm
aW5lIEVOR0lORV9NT0NLCTEKICNkZWZpbmUgRU5HSU5FX1ZJUlRVQUwJMgogCitzdGF0aWMgaW5s
aW5lIGJvb2wKK2ludGVsX2VuZ2luZV9oYXNfdGltZXNsaWNlcyhjb25zdCBzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCit7CisJaWYgKCFDT05GSUdfRFJNX0k5MTVfVElNRVNMSUNFX0RV
UkFUSU9OKQorCQlyZXR1cm4gMDsKKworCXJldHVybiBpbnRlbF9lbmdpbmVfaGFzX3NlbWFwaG9y
ZXMoZW5naW5lKTsKK30KKwogI2VuZGlmIC8qIF9JTlRFTF9SSU5HQlVGRkVSX0hfICovCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDBlMjA3MTM2MDNlYy4u
OThkYmFhYWFmM2RiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3Mu
YwpAQCAtMzA4LDYgKzMwOCw5IEBAIHN0YXRpYyBpbnQgaW50ZWxfZW5naW5lX3NldHVwKHN0cnVj
dCBpbnRlbF9ndCAqZ3QsIGVudW0gaW50ZWxfZW5naW5lX2lkIGlkKQogCWVuZ2luZS0+aW5zdGFu
Y2UgPSBpbmZvLT5pbnN0YW5jZTsKIAlfX3NwcmludF9lbmdpbmVfbmFtZShlbmdpbmUpOwogCisJ
ZW5naW5lLT5wcm9wcy50aW1lc2xpY2VfZHVyYXRpb25fbXMgPQorCQlDT05GSUdfRFJNX0k5MTVf
VElNRVNMSUNFX0RVUkFUSU9OOworCiAJLyoKIAkgKiBUbyBiZSBvdmVycmlkZGVuIGJ5IHRoZSBi
YWNrZW5kIG9uIHNldHVwLiBIb3dldmVyIHRvIGZhY2lsaXRhdGUKIAkgKiBjbGVhbnVwIG9uIGVy
cm9yIGR1cmluZyBzZXR1cCwgd2UgYWx3YXlzIHByb3ZpZGUgdGhlIGRlc3Ryb3kgdmZ1bmMuCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jCmluZGV4IDU1N2Vm
MWUyZjg0YS4uNTVhZTgxNzY5YThlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfc3lzZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfc3lzZnMuYwpAQCAtMTQyLDYgKzE0Miw0OCBAQCBhbGxfY2Fwc19zaG93KHN0cnVj
dCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikK
IHN0YXRpYyBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgYWxsX2NhcHNfYXR0ciA9CiBfX0FUVFIoa25v
d25fY2FwYWJpbGl0aWVzLCAwNDQ0LCBhbGxfY2Fwc19zaG93LCBOVUxMKTsKIAorc3RhdGljIHNz
aXplX3QKK3RpbWVzbGljZV9zaG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9h
dHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUgPSBrb2JqX3RvX2VuZ2luZShrb2JqKTsKKworCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVs
dVxuIiwgZW5naW5lLT5wcm9wcy50aW1lc2xpY2VfZHVyYXRpb25fbXMpOworfQorCitzdGF0aWMg
c3NpemVfdAordGltZXNsaWNlX3N0b3JlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29i
al9hdHRyaWJ1dGUgKmF0dHIsCisJCWNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQorewor
CXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGtvYmpfdG9fZW5naW5lKGtvYmopOwor
CXVuc2lnbmVkIGxvbmcgbG9uZyBkdXJhdGlvbjsKKwlpbnQgZXJyOworCisJZXJyID0ga3N0cnRv
dWxsKGJ1ZiwgMCwgJmR1cmF0aW9uKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCisJaWYg
KGR1cmF0aW9uID4gamlmZmllc190b19tc2VjcyhNQVhfU0NIRURVTEVfVElNRU9VVCkpCisJCXJl
dHVybiAtRUlOVkFMOworCisJV1JJVEVfT05DRShlbmdpbmUtPnByb3BzLnRpbWVzbGljZV9kdXJh
dGlvbl9tcywgZHVyYXRpb24pOworCisJaWYgKGV4ZWNsaXN0c19hY3RpdmUoJmVuZ2luZS0+ZXhl
Y2xpc3RzKSkgeworCQlzdHJ1Y3QgdGltZXJfbGlzdCAqdCA9ICZlbmdpbmUtPmV4ZWNsaXN0cy50
aW1lcjsKKworCQlpZiAoIWR1cmF0aW9uKSB7CisJCQljYW5jZWxfdGltZXIodCk7CisJCX0gZWxz
ZSB7CisJCQlkdXJhdGlvbiA9IG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dChkdXJhdGlvbik7CisJ
CQltb2RfdGltZXIodCwgamlmZmllcyArIGR1cmF0aW9uKTsKKwkJfQorCX0KKworCXJldHVybiBj
b3VudDsKK30KKworc3RhdGljIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSB0aW1lc2xpY2VfZHVyYXRp
b25fYXR0ciA9CitfX0FUVFIodGltZXNsaWNlX2R1cmF0aW9uX21zLCAwNjQ0LCB0aW1lc2xpY2Vf
c2hvdywgdGltZXNsaWNlX3N0b3JlKTsKKwogc3RhdGljIHZvaWQga29ial9lbmdpbmVfcmVsZWFz
ZShzdHJ1Y3Qga29iamVjdCAqa29iaikKIHsKIAlrZnJlZShrb2JqKTsKQEAgLTIwMyw2ICsyNDUs
MTAgQEAgdm9pZCBpbnRlbF9lbmdpbmVzX2FkZF9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKIAkJaWYgKHN5c2ZzX2NyZWF0ZV9maWxlcyhrb2JqLCBmaWxlcykpCiAJCQlnb3Rv
IGVycl9vYmplY3Q7CiAKKwkJaWYgKGludGVsX2VuZ2luZV9oYXNfdGltZXNsaWNlcyhlbmdpbmUp
ICYmCisJCSAgICBzeXNmc19jcmVhdGVfZmlsZShrb2JqLCAmdGltZXNsaWNlX2R1cmF0aW9uX2F0
dHIuYXR0cikpCisJCQlnb3RvIGVycl9lbmdpbmU7CisKIAkJaWYgKDApIHsKIGVycl9vYmplY3Q6
CiAJCQlrb2JqZWN0X3B1dChrb2JqKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3R5cGVzLmgKaW5kZXggMzQ1MWJlMDM0Y2FmLi44OWE5NjE2ZTg1MzkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCkBAIC01NDIsNiArNTQy
LDEwIEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgewogCQkgKi8KIAkJa3RpbWVfdCB0b3RhbDsK
IAl9IHN0YXRzOworCisJc3RydWN0IHsKKwkJdW5zaWduZWQgbG9uZyB0aW1lc2xpY2VfZHVyYXRp
b25fbXM7CisJfSBwcm9wczsKIH07CiAKIHN0YXRpYyBpbmxpbmUgYm9vbApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwppbmRleCBmOWYzZTk4NWJiNzkuLjMwMTQyZWJjZThmZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTI1Miw2ICsyNTIsMjYgQEAgc3RhdGljIGlu
bGluZSB1MzIgaW50ZWxfaHdzX3ByZWVtcHRfYWRkcmVzcyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCiAJCUk5MTVfR0VNX0hXU19QUkVFTVBUX0FERFIpOwogfQogCitzdGF0aWMgdm9p
ZCBfX3NldF90aW1lcihzdHJ1Y3QgdGltZXJfbGlzdCAqdCwgdW5zaWduZWQgbG9uZyB0aW1lb3V0
KQoreworCWlmICghdGltZW91dCkgeworCQljYW5jZWxfdGltZXIodCk7CisJCXJldHVybjsKKwl9
CisKKwl0aW1lb3V0ID0gbXNlY3NfdG9famlmZmllc190aW1lb3V0KHRpbWVvdXQpOworCisJLyoK
KwkgKiBQYXJhbm9pYSB0byBtYWtlIHN1cmUgdGhlIGNvbXBpbGVyIGNvbXB1dGVzIHRoZSB0aW1l
b3V0IGJlZm9yZQorCSAqIGxvYWRpbmcgJ2ppZmZpZXMnIGFzIGppZmZpZXMgaXMgdm9sYXRpbGUg
YW5kIG1heSBiZSB1cGRhdGVkIGluCisJICogdGhlIGJhY2tncm91bmQgYnkgYSB0aW1lciB0aWNr
LiBBbGwgdG8gcmVkdWNlIHRoZSBjb21wbGV4aXR5CisJICogb2YgdGhlIGFkZGl0aW9uIGFuZCBy
ZWR1Y2UgdGhlIHJpc2sgb2YgbG9zaW5nIGEgamlmZmllLgorCSAqLworCWJhcnJpZXIoKTsKKwor
CW1vZF90aW1lcih0LCBqaWZmaWVzICsgdGltZW91dCk7Cit9CisKIHN0YXRpYyBpbmxpbmUgdm9p
ZAogcmluZ19zZXRfcGF1c2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwg
aW50IHN0YXRlKQogewpAQCAtMTMzNSw3ICsxMzU1LDcgQEAgbmVlZF90aW1lc2xpY2Uoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
IHsKIAlpbnQgaGludDsKIAotCWlmICghaW50ZWxfZW5naW5lX2hhc19zZW1hcGhvcmVzKGVuZ2lu
ZSkpCisJaWYgKCFpbnRlbF9lbmdpbmVfaGFzX3RpbWVzbGljZXMoZW5naW5lKSkKIAkJcmV0dXJu
IGZhbHNlOwogCiAJaWYgKGxpc3RfaXNfbGFzdCgmcnEtPnNjaGVkLmxpbmssICZlbmdpbmUtPmFj
dGl2ZS5yZXF1ZXN0cykpCkBAIC0xMzU2LDE1ICsxMzc2LDMyIEBAIHN3aXRjaF9wcmlvKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEp
CiAJcmV0dXJuIHJxX3ByaW8obGlzdF9uZXh0X2VudHJ5KHJxLCBzY2hlZC5saW5rKSk7CiB9CiAK
LXN0YXRpYyBib29sCi1lbmFibGVfdGltZXNsaWNlKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVf
ZXhlY2xpc3RzICpleGVjbGlzdHMpCitzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcKK3RpbWVz
bGljZShjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJcmV0dXJuIFJF
QURfT05DRShlbmdpbmUtPnByb3BzLnRpbWVzbGljZV9kdXJhdGlvbl9tcyk7Cit9CisKK3N0YXRp
YyB1bnNpZ25lZCBsb25nCithY3RpdmVfdGltZXNsaWNlKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSkKIHsKLQljb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSA9ICpleGVj
bGlzdHMtPmFjdGl2ZTsKKwljb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSA9ICplbmdpbmUt
PmV4ZWNsaXN0cy5hY3RpdmU7CiAKIAlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCi0J
CXJldHVybiBmYWxzZTsKKwkJcmV0dXJuIDA7CiAKLQlyZXR1cm4gZXhlY2xpc3RzLT5zd2l0Y2hf
cHJpb3JpdHlfaGludCA+PSBlZmZlY3RpdmVfcHJpbyhycSk7CisJaWYgKGVuZ2luZS0+ZXhlY2xp
c3RzLnN3aXRjaF9wcmlvcml0eV9oaW50IDwgZWZmZWN0aXZlX3ByaW8ocnEpKQorCQlyZXR1cm4g
MDsKKworCXJldHVybiB0aW1lc2xpY2UoZW5naW5lKTsKK30KKworc3RhdGljIHZvaWQgc2V0X3Rp
bWVzbGljZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJaWYgKCFpbnRlbF9l
bmdpbmVfaGFzX3RpbWVzbGljZXMoZW5naW5lKSkKKwkJcmV0dXJuOworCisJX19zZXRfdGltZXIo
JmVuZ2luZS0+ZXhlY2xpc3RzLnRpbWVyLCBhY3RpdmVfdGltZXNsaWNlKGVuZ2luZSkpOwogfQog
CiBzdGF0aWMgdm9pZCByZWNvcmRfcHJlZW1wdGlvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNs
aXN0cyAqZXhlY2xpc3RzKQpAQCAtMTUxMSw4ICsxNTQ4LDkgQEAgc3RhdGljIHZvaWQgZXhlY2xp
c3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJCSAqLwogCQkJ
CWlmICghZXhlY2xpc3RzLT50aW1lci5leHBpcmVzICYmCiAJCQkJICAgIG5lZWRfdGltZXNsaWNl
KGVuZ2luZSwgbGFzdCkpCi0JCQkJCW1vZF90aW1lcigmZXhlY2xpc3RzLT50aW1lciwKLQkJCQkJ
CSAgamlmZmllcyArIDEpOworCQkJCQlfX3NldF90aW1lcigmZXhlY2xpc3RzLT50aW1lciwKKwkJ
CQkJCSAgICB0aW1lc2xpY2UoZW5naW5lKSk7CisKIAkJCQlyZXR1cm47CiAJCQl9CiAKQEAgLTE5
MzQsMTAgKzE5NzIsNyBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAJCQkJICAgICAgIGV4ZWNsaXN0c19udW1fcG9ydHMoZXhlY2xpc3Rz
KSAqCiAJCQkJICAgICAgIHNpemVvZigqZXhlY2xpc3RzLT5wZW5kaW5nKSk7CiAKLQkJCWlmIChl
bmFibGVfdGltZXNsaWNlKGV4ZWNsaXN0cykpCi0JCQkJbW9kX3RpbWVyKCZleGVjbGlzdHMtPnRp
bWVyLCBqaWZmaWVzICsgMSk7Ci0JCQllbHNlCi0JCQkJY2FuY2VsX3RpbWVyKCZleGVjbGlzdHMt
PnRpbWVyKTsKKwkJCXNldF90aW1lc2xpY2UoZW5naW5lKTsKIAogCQkJV1JJVEVfT05DRShleGVj
bGlzdHMtPnBlbmRpbmdbMF0sIE5VTEwpOwogCQl9IGVsc2UgewpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9scmMuYwppbmRleCA3NTE2ZDFjOTA5MjUuLjNlOWYxNTE4NWI2NSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKQEAgLTQzOSw2ICs0MzksOCBAQCBzdGF0
aWMgaW50IGxpdmVfdGltZXNsaWNlX3ByZWVtcHQodm9pZCAqYXJnKQogCSAqIG5lZWQgdG8gcHJl
ZW1wdCB0aGUgY3VycmVudCB0YXNrIGFuZCByZXBsYWNlIGl0IHdpdGggYW5vdGhlcgogCSAqIHJl
YWR5IHRhc2suCiAJICovCisJaWYgKCFDT05GSUdfRFJNX0k5MTVfVElNRVNMSUNFX0RVUkFUSU9O
KQorCQlyZXR1cm4gMDsKIAogCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwo
Z3QtPmk5MTUsIFBBR0VfU0laRSk7CiAJaWYgKElTX0VSUihvYmopKQpAQCAtNTEzLDYgKzUxNSwx
MSBAQCBzdGF0aWMgdm9pZCB3YWl0X2Zvcl9zdWJtaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLAogCX0gd2hpbGUgKCFpOTE1X3JlcXVlc3RfaXNfYWN0aXZlKHJxKSk7CiB9CiAKK3N0
YXRpYyBsb25nIHRpbWVzbGljZV90aHJlc2hvbGQoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQoreworCXJldHVybiAyICogbXNlY3NfdG9famlmZmllc190aW1lb3V0KHRpbWVz
bGljZShlbmdpbmUpKSArIDE7Cit9CisKIHN0YXRpYyBpbnQgbGl2ZV90aW1lc2xpY2VfcXVldWUo
dm9pZCAqYXJnKQogewogCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7CkBAIC01MzAsNiArNTM3
LDggQEAgc3RhdGljIGludCBsaXZlX3RpbWVzbGljZV9xdWV1ZSh2b2lkICphcmcpCiAJICogRUxT
UFsxXSBpcyBhbHJlYWR5IG9jY3VwaWVkLCBzbyBtdXN0IHJlbHkgb24gdGltZXNsaWNpbmcgdG8K
IAkgKiBlamVjdCBFTFNQWzBdIGluIGZhdm91ciBvZiB0aGUgcXVldWUuKQogCSAqLworCWlmICgh
Q09ORklHX0RSTV9JOTE1X1RJTUVTTElDRV9EVVJBVElPTikKKwkJcmV0dXJuIDA7CiAKIAlvYmog
PSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGd0LT5pOTE1LCBQQUdFX1NJWkUpOwog
CWlmIChJU19FUlIob2JqKSkKQEAgLTYwNyw4ICs2MTYsOCBAQCBzdGF0aWMgaW50IGxpdmVfdGlt
ZXNsaWNlX3F1ZXVlKHZvaWQgKmFyZykKIAkJCWVyciA9IC1FSU5WQUw7CiAJCX0KIAotCQkvKiBU
aW1lc2xpY2UgZXZlcnkgamlmZmllLCBzbyB3aXRoaW4gMiB3ZSBzaG91bGQgc2lnbmFsICovCi0J
CWlmIChpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgMykgPCAwKSB7CisJCS8qIFRpbWVzbGljZSBl
dmVyeSBqaWZmeSwgc28gd2l0aGluIDIgd2Ugc2hvdWxkIHNpZ25hbCAqLworCQlpZiAoaTkxNV9y
ZXF1ZXN0X3dhaXQocnEsIDAsIHRpbWVzbGljZV90aHJlc2hvbGQoZW5naW5lKSkgPCAwKSB7CiAJ
CQlzdHJ1Y3QgZHJtX3ByaW50ZXIgcCA9CiAJCQkJZHJtX2luZm9fcHJpbnRlcihndC0+aTkxNS0+
ZHJtLmRldik7CiAKLS0gCjIuMjQuMC5yYzAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
