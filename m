Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26619E3092
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A60A26E2D7;
	Thu, 24 Oct 2019 11:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5749A89FC5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:40:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18948731-1500050 
 for multiple; Thu, 24 Oct 2019 12:40:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 12:40:22 +0100
Message-Id: <20191024114028.6170-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024114028.6170-1-chris@chris-wilson.co.uk>
References: <20191024114028.6170-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/11] drm/i915/gt: Expose timeslice duration to
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
ZmlsZSAgICAgICAgIHwgMTggKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZS5oICAgICAgIHwgIDkgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMgICAgfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfc3lzZnMuYyB8IDQ2ICsrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jICAgICAgICAgIHwgMzkgKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jICAgICAgIHwgMTMgKysrKystCiA3IGZpbGVzIGNo
YW5nZWQsIDExNCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9LY29uZmlnLnByb2ZpbGUKaW5kZXggOGFiN2FmNWViMzExLi5iODdjOGY0ODVhMjQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmlsZQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKQEAgLTU5LDMgKzU5LDIxIEBAIGNvbmZpZyBE
Uk1fSTkxNV9TVE9QX1RJTUVPVVQKIAkgIGRhbWFnZSBhcyB0aGUgc3lzdGVtIGlzIHJlc2V0IGlu
IG9yZGVyIHRvIHJlY292ZXIuIFRoZSBjb3JvbGxhcnkgaXMKIAkgIHRoYXQgdGhlIHJlc2V0IGl0
c2VsZiBtYXkgdGFrZSBsb25nZXIgYW5kIHNvIGJlIG1vcmUgZGlzcnVwdGl2ZSB0bwogCSAgaW50
ZXJhY3RpdmUgb3IgbG93IGxhdGVuY3kgd29ya2xvYWRzLgorCitjb25maWcgRFJNX0k5MTVfVElN
RVNMSUNFX0RVUkFUSU9OCisJaW50ICJTY2hlZHVsaW5nIHF1YW50dW0gZm9yIHVzZXJzcGFjZSBi
YXRjaGVzIChtcywgamlmZnkgZ3JhbnVsYXJpdHkpIgorCWRlZmF1bHQgMSAjIG1pbGxpc2Vjb25k
cworCWhlbHAKKwkgIFdoZW4gdHdvIHVzZXIgYmF0Y2hlcyBvZiBlcXVhbCBwcmlvcml0eSBhcmUg
ZXhlY3V0aW5nLCB3ZSB3aWxsCisJICBhbHRlcm5hdGUgZXhlY3V0aW9uIG9mIGVhY2ggYmF0Y2gg
dG8gZW5zdXJlIGZvcndhcmQgcHJvZ3Jlc3Mgb2YKKwkgIGFsbCB1c2Vycy4gVGhpcyBpcyBuZWNl
c3NhcnkgaW4gc29tZSBjYXNlcyB3aGVyZSB0aGVyZSBtYXkgYmUKKwkgIGFuIGltcGxpY2l0IGRl
cGVuZGVuY3kgYmV0d2VlbiB0aG9zZSBiYXRjaGVzIHRoYXQgcmVxdWlyZXMKKwkgIGNvbmN1cnJl
bnQgZXhlY3V0aW9uIGluIG9yZGVyIGZvciB0aGVtIHRvIHByb2NlZWQsIGUuZy4gdGhleQorCSAg
aW50ZXJhY3Qgd2l0aCBlYWNoIG90aGVyIHZpYSB1c2Vyc3BhY2Ugc2VtYXBob3Jlcy4gRWFjaCBj
b250ZXh0CisJICBpcyBzY2hlZHVsZWQgZm9yIGV4ZWN1dGlvbiBmb3IgdGhlIHRpbWVzbGljZSBk
dXJhdGlvbiwgYmVmb3JlCisJICBzd2l0Y2hpbmcgdG8gdGhlIG5leHQgY29udGV4dC4KKworCSAg
VGhpcyBpcyBhZGp1c3RhYmxlIHZpYQorCSAgL3N5cy9jbGFzcy9kcm0vY2FyZD8vZW5naW5lLyov
dGltZXNsaWNlX2R1cmF0aW9uX21zCisKKwkgIE1heSBiZSAwIHRvIGRpc2FibGUgdGltZXNsaWNp
bmcuCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCmluZGV4IDk3YmJkZDk3NzNj
OS4uZDc3YjlmOWYwOTZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaApA
QCAtMzkwLDQgKzM5MCwxMyBAQCBpbnRlbF9lbmdpbmVfaGFzX3ByZWVtcHRfcmVzZXQoY29uc3Qg
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCXJldHVybiBpbnRlbF9lbmdpbmVfaGFz
X3ByZWVtcHRpb24oZW5naW5lKTsKIH0KIAorc3RhdGljIGlubGluZSBib29sCitpbnRlbF9lbmdp
bmVfaGFzX3RpbWVzbGljZXMoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQor
eworCWlmICghQ09ORklHX0RSTV9JOTE1X1RJTUVTTElDRV9EVVJBVElPTikKKwkJcmV0dXJuIDA7
CisKKwlyZXR1cm4gaW50ZWxfZW5naW5lX2hhc19zZW1hcGhvcmVzKGVuZ2luZSk7Cit9CisKICNl
bmRpZiAvKiBfSU5URUxfUklOR0JVRkZFUl9IXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYwppbmRleCA5Y2MxZWE2NTE5ZWMuLjJhZmEyZWY5MDQ4MiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKQEAgLTMxNSw2ICszMTUsOCBA
QCBzdGF0aWMgaW50IGludGVsX2VuZ2luZV9zZXR1cChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBlbnVt
IGludGVsX2VuZ2luZV9pZCBpZCkKIAkJQ09ORklHX0RSTV9JOTE1X1BSRUVNUFRfVElNRU9VVDsK
IAllbmdpbmUtPnByb3BzLnN0b3BfdGltZW91dF9tcyA9CiAJCUNPTkZJR19EUk1fSTkxNV9TVE9Q
X1RJTUVPVVQ7CisJZW5naW5lLT5wcm9wcy50aW1lc2xpY2VfZHVyYXRpb25fbXMgPQorCQlDT05G
SUdfRFJNX0k5MTVfVElNRVNMSUNFX0RVUkFUSU9OOwogCiAJLyoKIAkgKiBUbyBiZSBvdmVycmlk
ZGVuIGJ5IHRoZSBiYWNrZW5kIG9uIHNldHVwLiBIb3dldmVyIHRvIGZhY2lsaXRhdGUKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMKaW5kZXggYWJkZGQ4ZDBm
OWFlLi5iMWJkNzY4YjEzZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9zeXNmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9zeXNmcy5jCkBAIC0xNDIsNiArMTQyLDQ4IEBAIGFsbF9jYXBzX3Nob3coc3RydWN0IGtv
YmplY3QgKmtvYmosIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSAqYXR0ciwgY2hhciAqYnVmKQogc3Rh
dGljIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSBhbGxfY2Fwc19hdHRyID0KIF9fQVRUUihrbm93bl9j
YXBhYmlsaXRpZXMsIDA0NDQsIGFsbF9jYXBzX3Nob3csIE5VTEwpOwogCitzdGF0aWMgc3NpemVf
dAordGltZXNsaWNlX3N0b3JlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRy
aWJ1dGUgKmF0dHIsCisJCWNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQoreworCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGtvYmpfdG9fZW5naW5lKGtvYmopOworCXVuc2ln
bmVkIGxvbmcgbG9uZyBkdXJhdGlvbjsKKwlpbnQgZXJyOworCisJLyoKKwkgKiBFeGVjbGlzdHMg
dXNlcyBhIHNjaGVkdWxpbmcgcXVhbnR1bSAoYSB0aW1lc2xpY2UpIHRvIGFsdGVybmF0ZQorCSAq
IGV4ZWN1dGlvbiBiZXR3ZWVuIHJlYWR5LXRvLXJ1biBjb250ZXh0cyBvZiBlcXVhbCBwcmlvcml0
eS4gVGhpcworCSAqIGVuc3VyZXMgdGhhdCBhbGwgdXNlcnMgKHRob3VnaCBvbmx5IGlmIHRoZXkg
b2YgZXF1YWwgaW1wb3J0YW5jZSkKKwkgKiBoYXZlIHRoZSBvcHBvcnR1bml0eSB0byBydW4gYW5k
IHByZXZlbnRzIGxpdmVsb2NrcyB3aGVyZSBjb250ZXh0cworCSAqIG1heSBoYXZlIGltcGxpY2l0
IG9yZGVyaW5nIGR1ZSB0byB1c2Vyc3BhY2Ugc2VtYXBob3Jlcy4KKwkgKi8KKworCWVyciA9IGtz
dHJ0b3VsbChidWYsIDAsICZkdXJhdGlvbik7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKwor
CWlmIChkdXJhdGlvbiA+IGppZmZpZXNfdG9fbXNlY3MoTUFYX1NDSEVEVUxFX1RJTUVPVVQpKQor
CQlyZXR1cm4gLUVJTlZBTDsKKworCVdSSVRFX09OQ0UoZW5naW5lLT5wcm9wcy50aW1lc2xpY2Vf
ZHVyYXRpb25fbXMsIGR1cmF0aW9uKTsKKworCWlmIChleGVjbGlzdHNfYWN0aXZlKCZlbmdpbmUt
PmV4ZWNsaXN0cykpCisJCXNldF90aW1lcl9tcygmZW5naW5lLT5leGVjbGlzdHMudGltZXIsIGR1
cmF0aW9uKTsKKworCXJldHVybiBjb3VudDsKK30KKworc3RhdGljIHNzaXplX3QKK3RpbWVzbGlj
ZV9zaG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIs
IGNoYXIgKmJ1ZikKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBrb2JqX3Rv
X2VuZ2luZShrb2JqKTsKKworCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVsdVxuIiwgZW5naW5lLT5w
cm9wcy50aW1lc2xpY2VfZHVyYXRpb25fbXMpOworfQorCitzdGF0aWMgc3RydWN0IGtvYmpfYXR0
cmlidXRlIHRpbWVzbGljZV9kdXJhdGlvbl9hdHRyID0KK19fQVRUUih0aW1lc2xpY2VfZHVyYXRp
b25fbXMsIDA2NDQsIHRpbWVzbGljZV9zaG93LCB0aW1lc2xpY2Vfc3RvcmUpOworCiBzdGF0aWMg
dm9pZCBrb2JqX2VuZ2luZV9yZWxlYXNlKHN0cnVjdCBrb2JqZWN0ICprb2JqKQogewogCWtmcmVl
KGtvYmopOwpAQCAtMjA2LDYgKzI0OCwxMCBAQCB2b2lkIGludGVsX2VuZ2luZXNfYWRkX3N5c2Zz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQlpZiAoc3lzZnNfY3JlYXRlX2ZpbGVz
KGtvYmosIGZpbGVzKSkKIAkJCWdvdG8gZXJyX29iamVjdDsKIAorCQlpZiAoaW50ZWxfZW5naW5l
X2hhc190aW1lc2xpY2VzKGVuZ2luZSkgJiYKKwkJICAgIHN5c2ZzX2NyZWF0ZV9maWxlKGtvYmos
ICZ0aW1lc2xpY2VfZHVyYXRpb25fYXR0ci5hdHRyKSkKKwkJCWdvdG8gZXJyX2VuZ2luZTsKKwog
CQlpZiAoMCkgewogZXJyX29iamVjdDoKIAkJCWtvYmplY3RfcHV0KGtvYmopOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAppbmRleCBlOGVhMTJiOTY3NTUu
LmM1ZDEwNDdhNGJjNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3R5cGVzLmgKQEAgLTUyMyw2ICs1MjMsNyBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzIHsKIAkJ
dW5zaWduZWQgbG9uZyBoZWFydGJlYXRfaW50ZXJ2YWxfbXM7CiAJCXVuc2lnbmVkIGxvbmcgcHJl
ZW1wdF90aW1lb3V0X21zOwogCQl1bnNpZ25lZCBsb25nIHN0b3BfdGltZW91dF9tczsKKwkJdW5z
aWduZWQgbG9uZyB0aW1lc2xpY2VfZHVyYXRpb25fbXM7CiAJfSBwcm9wczsKIH07CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggNzNlYWU4NWEyY2M5Li5hNzc1NWQ2ZGM0OGIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xNDE5LDcgKzE0MTksNyBAQCBu
ZWVkX3RpbWVzbGljZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGNvbnN0IHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxKQogewogCWludCBoaW50OwogCi0JaWYgKCFpbnRlbF9lbmdpbmVf
aGFzX3NlbWFwaG9yZXMoZW5naW5lKSkKKwlpZiAoIWludGVsX2VuZ2luZV9oYXNfdGltZXNsaWNl
cyhlbmdpbmUpKQogCQlyZXR1cm4gZmFsc2U7CiAKIAlpZiAobGlzdF9pc19sYXN0KCZycS0+c2No
ZWQubGluaywgJmVuZ2luZS0+YWN0aXZlLnJlcXVlc3RzKSkKQEAgLTE0NDAsMTUgKzE0NDAsMzIg
QEAgc3dpdGNoX3ByaW8oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBjb25zdCBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAlyZXR1cm4gcnFfcHJpbyhsaXN0X25leHRfZW50cnkocnEs
IHNjaGVkLmxpbmspKTsKIH0KIAotc3RhdGljIGJvb2wKLWVuYWJsZV90aW1lc2xpY2UoY29uc3Qg
c3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykKK3N0YXRpYyBpbmxpbmUg
dW5zaWduZWQgbG9uZwordGltZXNsaWNlKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKK3sKKwlyZXR1cm4gUkVBRF9PTkNFKGVuZ2luZS0+cHJvcHMudGltZXNsaWNlX2R1cmF0
aW9uX21zKTsKK30KKworc3RhdGljIHVuc2lnbmVkIGxvbmcKK2FjdGl2ZV90aW1lc2xpY2UoY29u
c3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewotCWNvbnN0IHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxID0gKmV4ZWNsaXN0cy0+YWN0aXZlOworCWNvbnN0IHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxID0gKmVuZ2luZS0+ZXhlY2xpc3RzLmFjdGl2ZTsKIAogCWlmIChpOTE1X3JlcXVl
c3RfY29tcGxldGVkKHJxKSkKLQkJcmV0dXJuIGZhbHNlOworCQlyZXR1cm4gMDsKKworCWlmIChl
bmdpbmUtPmV4ZWNsaXN0cy5zd2l0Y2hfcHJpb3JpdHlfaGludCA8IGVmZmVjdGl2ZV9wcmlvKHJx
KSkKKwkJcmV0dXJuIDA7CisKKwlyZXR1cm4gdGltZXNsaWNlKGVuZ2luZSk7Cit9CisKK3N0YXRp
YyB2b2lkIHNldF90aW1lc2xpY2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQorewor
CWlmICghaW50ZWxfZW5naW5lX2hhc190aW1lc2xpY2VzKGVuZ2luZSkpCisJCXJldHVybjsKIAot
CXJldHVybiBleGVjbGlzdHMtPnN3aXRjaF9wcmlvcml0eV9oaW50ID49IGVmZmVjdGl2ZV9wcmlv
KHJxKTsKKwlzZXRfdGltZXJfbXMoJmVuZ2luZS0+ZXhlY2xpc3RzLnRpbWVyLCBhY3RpdmVfdGlt
ZXNsaWNlKGVuZ2luZSkpOwogfQogCiBzdGF0aWMgdm9pZCByZWNvcmRfcHJlZW1wdGlvbihzdHJ1
Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzKQpAQCAtMTYxOSw4ICsxNjM2LDkg
QEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQogCQkJCSAqLwogCQkJCWlmICghZXhlY2xpc3RzLT50aW1lci5leHBpcmVzICYmCiAJ
CQkJICAgIG5lZWRfdGltZXNsaWNlKGVuZ2luZSwgbGFzdCkpCi0JCQkJCW1vZF90aW1lcigmZXhl
Y2xpc3RzLT50aW1lciwKLQkJCQkJCSAgamlmZmllcyArIDEpOworCQkJCQlzZXRfdGltZXJfbXMo
JmV4ZWNsaXN0cy0+dGltZXIsCisJCQkJCQkgICAgIHRpbWVzbGljZShlbmdpbmUpKTsKKwogCQkJ
CXJldHVybjsKIAkJCX0KIApAQCAtMjA0NCwxMCArMjA2Miw3IEBAIHN0YXRpYyB2b2lkIHByb2Nl
c3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCQkgICAgICAgZXhlY2xp
c3RzX251bV9wb3J0cyhleGVjbGlzdHMpICoKIAkJCQkgICAgICAgc2l6ZW9mKCpleGVjbGlzdHMt
PnBlbmRpbmcpKTsKIAotCQkJaWYgKGVuYWJsZV90aW1lc2xpY2UoZXhlY2xpc3RzKSkKLQkJCQlt
b2RfdGltZXIoJmV4ZWNsaXN0cy0+dGltZXIsIGppZmZpZXMgKyAxKTsKLQkJCWVsc2UKLQkJCQlj
YW5jZWxfdGltZXIoJmV4ZWNsaXN0cy0+dGltZXIpOworCQkJc2V0X3RpbWVzbGljZShlbmdpbmUp
OwogCiAJCQlXUklURV9PTkNFKGV4ZWNsaXN0cy0+cGVuZGluZ1swXSwgTlVMTCk7CiAJCX0gZWxz
ZSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCmluZGV4IGQ1ZDI2OGJlNTU0
ZS4uMTVmMWVkNGQyZGQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwpA
QCAtNDQwLDYgKzQ0MCw4IEBAIHN0YXRpYyBpbnQgbGl2ZV90aW1lc2xpY2VfcHJlZW1wdCh2b2lk
ICphcmcpCiAJICogbmVlZCB0byBwcmVlbXB0IHRoZSBjdXJyZW50IHRhc2sgYW5kIHJlcGxhY2Ug
aXQgd2l0aCBhbm90aGVyCiAJICogcmVhZHkgdGFzay4KIAkgKi8KKwlpZiAoIUNPTkZJR19EUk1f
STkxNV9USU1FU0xJQ0VfRFVSQVRJT04pCisJCXJldHVybiAwOwogCiAJb2JqID0gaTkxNV9nZW1f
b2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChndC0+aTkxNSwgUEFHRV9TSVpFKTsKIAlpZiAoSVNfRVJS
KG9iaikpCkBAIC01MTQsNiArNTE2LDExIEBAIHN0YXRpYyB2b2lkIHdhaXRfZm9yX3N1Ym1pdChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJfSB3aGlsZSAoIWk5MTVfcmVxdWVzdF9p
c19hY3RpdmUocnEpKTsKIH0KIAorc3RhdGljIGxvbmcgdGltZXNsaWNlX3RocmVzaG9sZChjb25z
dCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJcmV0dXJuIDIgKiBtc2Vjc190
b19qaWZmaWVzX3RpbWVvdXQodGltZXNsaWNlKGVuZ2luZSkpICsgMTsKK30KKwogc3RhdGljIGlu
dCBsaXZlX3RpbWVzbGljZV9xdWV1ZSh2b2lkICphcmcpCiB7CiAJc3RydWN0IGludGVsX2d0ICpn
dCA9IGFyZzsKQEAgLTUzMSw2ICs1MzgsOCBAQCBzdGF0aWMgaW50IGxpdmVfdGltZXNsaWNlX3F1
ZXVlKHZvaWQgKmFyZykKIAkgKiBFTFNQWzFdIGlzIGFscmVhZHkgb2NjdXBpZWQsIHNvIG11c3Qg
cmVseSBvbiB0aW1lc2xpY2luZyB0bwogCSAqIGVqZWN0IEVMU1BbMF0gaW4gZmF2b3VyIG9mIHRo
ZSBxdWV1ZS4pCiAJICovCisJaWYgKCFDT05GSUdfRFJNX0k5MTVfVElNRVNMSUNFX0RVUkFUSU9O
KQorCQlyZXR1cm4gMDsKIAogCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwo
Z3QtPmk5MTUsIFBBR0VfU0laRSk7CiAJaWYgKElTX0VSUihvYmopKQpAQCAtNjA4LDggKzYxNyw4
IEBAIHN0YXRpYyBpbnQgbGl2ZV90aW1lc2xpY2VfcXVldWUodm9pZCAqYXJnKQogCQkJZXJyID0g
LUVJTlZBTDsKIAkJfQogCi0JCS8qIFRpbWVzbGljZSBldmVyeSBqaWZmaWUsIHNvIHdpdGhpbiAy
IHdlIHNob3VsZCBzaWduYWwgKi8KLQkJaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJxLCAwLCAzKSA8
IDApIHsKKwkJLyogVGltZXNsaWNlIGV2ZXJ5IGppZmZ5LCBzbyB3aXRoaW4gMiB3ZSBzaG91bGQg
c2lnbmFsICovCisJCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgdGltZXNsaWNlX3RocmVz
aG9sZChlbmdpbmUpKSA8IDApIHsKIAkJCXN0cnVjdCBkcm1fcHJpbnRlciBwID0KIAkJCQlkcm1f
aW5mb19wcmludGVyKGd0LT5pOTE1LT5kcm0uZGV2KTsKIAotLSAKMi4yNC4wLnJjMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
