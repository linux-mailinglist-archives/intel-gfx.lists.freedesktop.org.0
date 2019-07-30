Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0797A41C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 11:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C5706E466;
	Tue, 30 Jul 2019 09:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B254D6E466
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 09:28:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17723981-1500050 for multiple; Tue, 30 Jul 2019 10:27:52 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156447645705.6373.15586627343250569384@skylake-alporthouse-com>
References: <20190729152301.22588-1-michal.wajdeczko@intel.com>
 <20190729152301.22588-4-michal.wajdeczko@intel.com>
 <156447645705.6373.15586627343250569384@skylake-alporthouse-com>
Message-ID: <156447887119.6373.16785561926112571184@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 10:27:51 +0100
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/uc: Inject load errors into
 intel_uc_init_hw
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMzAgMDk6NDc6MzcpCj4gUXVvdGluZyBNaWNo
YWwgV2FqZGVjemtvICgyMDE5LTA3LTI5IDE2OjIzOjAwKQo+ID4gSW5qZWN0IGxvYWQgZXJyb3Jz
IGludG8gaW50ZWxfdWNfaW5pdF9odyB0byBtYWtlIHN1cmUgd2UKPiA+IGNvcnJlY3RseSBoYW5k
bGUgdUMgaW5pdGlhbGl6YXRpb24gZmFpbHVyZXMuCj4gPiAKPiA+IFRvIGF2b2lkIGNvbXBsYWlu
cyBmcm9tIENJIGFib3V0IGluc2VydGVkIGVycm9ycyBvciB3YXJuaW5ncywKPiA+IHVzZSBoZWxw
ZXIgbWFjcm8gdGhhdCBjaGVja3MgaWYgdGhlcmUgd2FzIGFuIGVycm9yIGluamVjdGlvbi4KPiA+
IAo+ID4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0Bp
bnRlbC5jb20+Cj4gPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4KPiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
LmMgfCA4ICsrKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAg
ICB8IDcgKysrKysrLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAg
fCAyICstCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiA+IGluZGV4
IGZhZmE5YmUxZTEyYS4uOWUxMTU2YzI5Y2IxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWMuYwo+ID4gQEAgLTQwMCw2ICs0MDAsMTQgQEAgaW50IGludGVsX3VjX2lu
aXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKPiA+ICAgICAgICAgaWYgKCFpbnRlbF91Y19pc191
c2luZ19ndWModWMpKQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gIAo+ID4gKyAg
ICAgICByZXQgPSBpOTE1X2luamVjdF9sb2FkX2Vycm9yKGk5MTUsIC1FSU8pOwo+ID4gKyAgICAg
ICBpZiAocmV0KQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiArCj4gPiArICAg
ICAgIHJldCA9IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoaTkxNSwgLUVOWElPKTsKPiA+ICsgICAg
ICAgaWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gKwo+ID4gICAg
ICAgICBHRU1fQlVHX09OKCFpbnRlbF91Y19md19zdXBwb3J0ZWQoJmd1Yy0+ZncpKTsKPiA+ICAK
PiA+ICAgICAgICAgZ3VjX3Jlc2V0X2ludGVycnVwdHMoZ3VjKTsKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAo+ID4gaW5kZXggNmIwNTlkNTFhYWZmLi4zNmY3YTE0NmYwNmEgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gPiBAQCAtMTM3LDkgKzEzNywxNCBAQCBib29sIGk5MTVf
ZXJyb3JfaW5qZWN0ZWQodm9pZCk7Cj4gPiAgCj4gPiAgI2RlZmluZSBpOTE1X2luamVjdF9wcm9i
ZV9mYWlsdXJlKGk5MTUpIGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoKGk5MTUpLCAtRU5PREVWKQo+
ID4gIAo+ID4gLSNkZWZpbmUgaTkxNV9wcm9iZV9lcnJvcihpOTE1LCBmbXQsIC4uLikgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gKyNkZWZpbmUgSTkxNV9FUlJPUihpOTE1
LCBmbXQsIC4uLikgXAo+ID4gICAgICAgICBfX2k5MTVfcHJpbnRrKGk5MTUsIGk5MTVfZXJyb3Jf
aW5qZWN0ZWQoKSA/IEtFUk5fREVCVUcgOiBLRVJOX0VSUiwgXAo+ID4gICAgICAgICAgICAgICAg
ICAgICAgIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiA+ICsjZGVmaW5lIEk5MTVfV0FSTihpOTE1LCBm
bXQsIC4uLikgXAo+ID4gKyAgICAgICBfX2k5MTVfcHJpbnRrKGk5MTUsIGk5MTVfZXJyb3JfaW5q
ZWN0ZWQoKSA/IEtFUk5fREVCVUcgOiBLRVJOX1dBUk5JTkcsIFwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBmbXQsICMjX19WQV9BUkdTX18pCj4gCj4gSSBkaWRuJ3Qgc2VlIEk5MTVfV0FSTiBi
ZSB1c2VkIGluIHRoaXMgc2VyaWVzLiBJcyBpdCBsaWtlbHk/IFdlIGVpdGhlcgo+IGFib3J0IHRo
ZSBtb2R1bGUgbG9hZCwgaW4gd2hpY2ggaXQgaXMgYW4gZXJyb3IsIG9yIHdlIGFyZSBxdWl0ZSBo
YXBweSB0bwo+IGNvbnRpbnVlIGluIHdoaWNoIGNhc2UgSSdkIHZvdGUgZm9yIGEgIm5vcm1hbCBi
dXQgc2lnbmlmaWNhbnQgY29uZGl0aW9uIgo+IGkuZS4gS0VSTl9OT1RJQ0UuCgpTcG90dGVkIHRo
ZSBJOTE1X1dBUk4sIEkgZ3Vlc3MgdGhhdCdzIHJlYXNvbmFibGUuCgpIb3dldmVyLCBJIGRvIGRp
c2xpa2UgSTkxNV9FUlJPUiAvIEk5MTVfV0FSTiBvbiBwcmluY2lwbGUuIEVzcGVjaWFsbHkgYXMK
dGhleSBoYXZlIHRoZSBjb3VwbGluZyB0byB0aGUgcHJvYmUtZmFpbHVyZSBtYWdpYyBhbmQgSSBk
b24ndCBmZWVsIGxpa2UKaXQgaXMgYSBnb29kIGlkZWEgdG8gaGF2ZSB0aGF0IHNwcmVhZCB0b28g
ZmFyLgotY2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
