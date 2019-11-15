Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A356EFDBF7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 12:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C1FB6E43A;
	Fri, 15 Nov 2019 11:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A1F96E43A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 11:08:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19210585-1500050 for multiple; Fri, 15 Nov 2019 11:08:43 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191115101840.23921-1-jani.nikula@intel.com>
 <20191115101840.23921-2-jani.nikula@intel.com>
 <157381331724.8818.5022640832000274325@skylake-alporthouse-com>
 <878soh1jur.fsf@intel.com>
In-Reply-To: <878soh1jur.fsf@intel.com>
Message-ID: <157381612048.8818.7421108719267545674@skylake-alporthouse-com>
Date: Fri, 15 Nov 2019 11:08:40 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: make debug printer
 shown_bug_once variable to drm_i915_private
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMS0xNSAxMTowNDoyOCkKPiBPbiBGcmksIDE1IE5v
diAyMDE5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4g
PiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTExLTE1IDEwOjE4OjQwKQo+ID4+IEdldCByaWQg
b2YgdGhlIG1vZHVsZSBzcGVjaWZpYyBzdGF0aWMgdmFyaWFibGUuCj4gPj4gCj4gPj4gU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiA+PiAtLS0KPiA+
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgIHwgMiArKwo+ID4+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMgfCA5ICsrKystLS0tLQo+ID4+ICAyIGZpbGVzIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+PiAKPiA+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKPiA+PiBpbmRleCAxNzc5ZjYwMGZjZmIuLmUxMWVlMzI2OGFlMyAxMDA2
NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ID4+IEBAIC0xMjgzLDYgKzEyODMsOCBA
QCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7Cj4gPj4gICAgICAgICAvKiBNdXRleCB0byBwcm90
ZWN0IHRoZSBhYm92ZSBoZGNwIGNvbXBvbmVudCByZWxhdGVkIHZhbHVlcy4gKi8KPiA+PiAgICAg
ICAgIHN0cnVjdCBtdXRleCBoZGNwX2NvbXBfbXV0ZXg7Cj4gPj4gIAo+ID4+ICsgICAgICAgYm9v
bCBzaG93bl9idWdfb25jZTsKPiA+PiArCj4gPj4gICAgICAgICBJOTE1X1NFTEZURVNUX0RFQ0xB
UkUoc3RydWN0IGk5MTVfc2VsZnRlc3Rfc3Rhc2ggc2VsZnRlc3Q7KQo+ID4+ICAKPiA+PiAgICAg
ICAgIC8qCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYwo+ID4+IGluZGV4IGM0NzI2MWFl
ODZlYS4uZjQzNDI3NGIwYjI5IDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfdXRpbHMuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMu
Ywo+ID4+IEBAIC0xMywxMSArMTMsMTAgQEAKPiA+PiAgICAgICAgICAgICAgICAgICAgICJwcm92
aWRpbmcgdGhlIGRtZXNnIGxvZyBieSBib290aW5nIHdpdGggZHJtLmRlYnVnPTB4ZiIKPiA+PiAg
Cj4gPj4gIHZvaWQKPiA+PiAtX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGNvbnN0IGNoYXIgKmxldmVsLAo+ID4+ICtfX2k5MTVfcHJpbnRrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LCBjb25zdCBjaGFyICpsZXZlbCwKPiA+PiAgICAgICAgICAg
ICAgIGNvbnN0IGNoYXIgKmZtdCwgLi4uKQo+ID4+ICB7Cj4gPj4gLSAgICAgICBzdGF0aWMgYm9v
bCBzaG93bl9idWdfb25jZTsKPiA+PiAtICAgICAgIHN0cnVjdCBkZXZpY2UgKmtkZXYgPSBkZXZf
cHJpdi0+ZHJtLmRldjsKPiA+PiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmtkZXYgPSBpOTE1LT5k
cm0uZGV2Owo+ID4+ICAgICAgICAgYm9vbCBpc19lcnJvciA9IGxldmVsWzFdIDw9IEtFUk5fRVJS
WzFdOwo+ID4+ICAgICAgICAgYm9vbCBpc19kZWJ1ZyA9IGxldmVsWzFdID09IEtFUk5fREVCVUdb
MV07Cj4gPj4gICAgICAgICBzdHJ1Y3QgdmFfZm9ybWF0IHZhZjsKPiA+PiBAQCAtMzksNyArMzgs
NyBAQCBfX2k5MTVfcHJpbnRrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgY29u
c3QgY2hhciAqbGV2ZWwsCj4gPj4gIAo+ID4+ICAgICAgICAgdmFfZW5kKGFyZ3MpOwo+ID4+ICAK
PiA+PiAtICAgICAgIGlmIChpc19lcnJvciAmJiAhc2hvd25fYnVnX29uY2UpIHsKPiA+PiArICAg
ICAgIGlmIChpc19lcnJvciAmJiAhaTkxNS0+c2hvd25fYnVnX29uY2UpIHsKPiA+PiAgICAgICAg
ICAgICAgICAgLyoKPiA+PiAgICAgICAgICAgICAgICAgICogQXNrIHRoZSB1c2VyIHRvIGZpbGUg
YSBidWcgcmVwb3J0IGZvciB0aGUgZXJyb3IsIGV4Y2VwdAo+ID4+ICAgICAgICAgICAgICAgICAg
KiBpZiB0aGV5IG1heSBoYXZlIGNhdXNlZCB0aGUgYnVnIGJ5IGZpZGRsaW5nIHdpdGggdW5zYWZl
Cj4gPj4gQEAgLTQ3LDcgKzQ2LDcgQEAgX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGNvbnN0IGNoYXIgKmxldmVsLAo+ID4+ICAgICAgICAgICAgICAgICAg
Ki8KPiA+PiAgICAgICAgICAgICAgICAgaWYgKCF0ZXN0X3RhaW50KFRBSU5UX1VTRVIpKQo+ID4+
ICAgICAgICAgICAgICAgICAgICAgICAgIGRldl9ub3RpY2Uoa2RldiwgIiVzIiwgRkRPX0JVR19N
U0cpOwo+ID4KPiA+IEkgZmVlbCB0aGlzIHBsZWEgdG8gdGhlIHVzZXJzIHRvIGZpbGUgYSBidWcg
cmVwb3J0IHNob3VsZCBiZSBhIG9uZS10aW1lCj4gPiB0aGluZzsgYSB0cnVlIGdsb2JhbC4KPiAK
PiBGYWlyIGVub3VnaC4KPiAKPiBJIGFtIHdvbmRlcmluZyBpZiB3ZSBzaG91bGQgaGF2ZSBhIGNv
bnZlbnRpb24gb2YgbmFtaW5nIG9yIGNvbW1lbnRpbmcKPiBsZWdpdCBnbG9iYWxzLCBib3RoIHRv
IGhlbHAgYXV0b21hdGlvbiBkZXRlY3RpbmcgbmV3IGFjY2lkZW50YWwgb25lcywKPiBhbmQgdG8g
aGVscCBwZW9wbGUgZmlndXJlIG91dCBub3QgdG8gc2VuZCBhbm90aGVyIGNvbnZlcnNpb24gcGF0
Y2ggc3VjaAo+IGFzIHRoaXMuCgpnbG9iYWxfaTkxNV9zaG93X2J1Z19vbmNlCm1vZHVsZV9pOTE1
X3Nob3dfYnVnX29uY2UKdGhpc19pc19ub3RfYV9kcmlsbF9zaG93X3RoZV9idWdfb25seV9vbmNl
CgpSZXZlcnNlIEh1bmdhcmlhbiBuYW1lc3BhY2U/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
