Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D52AE2CDE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 11:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E196E19B;
	Thu, 24 Oct 2019 09:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B63CA6E19B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 09:11:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 02:11:47 -0700
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="192125615"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 02:11:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <87pnimcy0h.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
 <20191014110122.31923-5-vandita.kulkarni@intel.com>
 <87pnixak8d.fsf@intel.com>
 <57510F3E2013164E925CD03ED7512A3B80980EC7@BGSMSX108.gar.corp.intel.com>
 <87pnimcy0h.fsf@intel.com>
Date: Thu, 24 Oct 2019 12:11:41 +0300
Message-ID: <87mudqcxte.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/dsi: Helper to find dsi encoder
 in cmd mode
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

T24gVGh1LCAyNCBPY3QgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gV2VkLCAxNiBPY3QgMjAxOSwgIkt1bGthcm5pLCBWYW5kaXRhIiA8dmFuZGl0
YS5rdWxrYXJuaUBpbnRlbC5jb20+IHdyb3RlOgo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPj4+IEZyb206IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+Pj4gU2Vu
dDogV2VkbmVzZGF5LCBPY3RvYmVyIDE2LCAyMDE5IDEyOjUxIEFNCj4+PiBUbzogS3Vsa2Fybmks
IFZhbmRpdGEgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPjsgaW50ZWwtCj4+PiBnZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4+PiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207
IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsKPj4+IENoYXVoYW4sIE1hZGhh
diA8bWFkaGF2LmNoYXVoYW5AaW50ZWwuY29tPjsgS3Vsa2FybmksIFZhbmRpdGEKPj4+IDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4KPj4+IFN1YmplY3Q6IFJlOiBbUkZDIDQvN10gZHJtL2k5
MTUvZHNpOiBIZWxwZXIgdG8gZmluZCBkc2kgZW5jb2RlciBpbiBjbWQgbW9kZQo+Pj4gCj4+PiBP
biBNb24sIDE0IE9jdCAyMDE5LCBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4gd3JvdGU6Cj4+PiA+IEZyb206IE1hZGhhdiBDaGF1aGFuIDxtYWRoYXYuY2hhdWhh
bkBpbnRlbC5jb20+Cj4+PiA+Cj4+PiA+IFRoaXMgcGF0Y2ggYWRkcyBhIGhlbHBlciBmdW5jdGlv
biB0byBmaW5kIGVuY29kZXIgaWYgRFNJIGlzIG9wZXJhdGluZwo+Pj4gPiBpbiBjb21tYW5kIG1v
ZGUuIFRoaXMgZnVuY3Rpb24gd2lsbCBiZSB1c2VkIHdoaWxlIGVuYWJsaW5nL2Rpc2FibGluZwo+
Pj4gPiBURSBpbnRlcnJ1cHRzIGZvciBEU0kuCj4+PiA+Cj4+PiA+IFNpZ25lZC1vZmYtYnk6IE1h
ZGhhdiBDaGF1aGFuIDxtYWRoYXYuY2hhdWhhbkBpbnRlbC5jb20+Cj4+PiA+IFNpZ25lZC1vZmYt
Ynk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+Pj4gPiAt
LS0KPj4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAgfCAxNyAr
KysrKysrKysrKysrKysrKwo+Pj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2kuaCB8ICAzICsrKwo+Pj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCsp
Cj4+PiA+Cj4+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lj
bF9kc2kuYwo+Pj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj4+
PiA+IGluZGV4IDVkZDllZWJhYjZiMS4uODc3NzQ2NDE2ZTUyIDEwMDY0NAo+Pj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+Pj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+Pj4gPiBAQCAtNzMsNiArNzMsMjMgQEAg
c3RhdGljIGVudW0gdHJhbnNjb2Rlcgo+Pj4gZHNpX3BvcnRfdG9fdHJhbnNjb2RlcihlbnVtIHBv
cnQgcG9ydCkKPj4+ID4gIAkJcmV0dXJuIFRSQU5TQ09ERVJfRFNJXzE7Cj4+PiA+ICB9Cj4+PiA+
Cj4+PiA+ICtzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZ2VuMTFfZHNpX2ZpbmRfY21kX21vZGVfZW5j
b2RlcihzdHJ1Y3QKPj4+ID4gK2ludGVsX2NydGMgKmNydGMpIHsKPj4+ID4gKwlzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7Cj4+PiA+ICsJc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXI7Cj4+PiA+ICsJc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpOwo+Pj4gPiAr
Cj4+PiA+ICsJZm9yX2VhY2hfZW5jb2Rlcl9vbl9jcnRjKGRldiwgJmNydGMtPmJhc2UsIGVuY29k
ZXIpIHsKPj4+ID4gKwkJaWYgKGVuY29kZXItPnR5cGUgIT0gSU5URUxfT1VUUFVUX0RTSSkKPj4+
ID4gKwkJCWNvbnRpbnVlOwo+Pj4gPiArCQlpbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZl
bmNvZGVyLT5iYXNlKTsKPj4+ID4gKwkJaWYgKGludGVsX2RzaS0+b3BlcmF0aW9uX21vZGUgPT0K
Pj4+IElOVEVMX0RTSV9DT01NQU5EX01PREUpCj4+PiA+ICsJCQlyZXR1cm4gZW5jb2RlcjsKPj4+
ID4gKwl9Cj4+PiA+ICsKPj4+ID4gKwlyZXR1cm4gTlVMTDsKPj4+ID4gK30KPj4+IAo+Pj4gVGhp
cyBtYXkgYmUgYSBiaXQgaGFyc2gsIGJ1dCBldmVyeXRoaW5nIHRoYXQgZmVlbHMgd3JvbmcgYWJv
dXQgdGhlIGZvbGxvd2luZwo+Pj4gcGF0Y2hlcyBwcmV0dHkgbXVjaCBib2lscyBkb3duIHRvIHRo
aXMgZnVuY3Rpb24uIEl0IG1heSBnZXQgdGhlIGpvYiBkb25lLAo+Pj4gYW5kIEkgZG9uJ3QgaGF2
ZSBhIGJldHRlciBzdWdnZXN0aW9uIG9uIGhvdyB0byBhY2NvbXBsaXNoIHRoaXMgcmlnaHQgbm93
Lgo+Pj4gQnV0IGl0IHNlZW1zIGxpa2Ugd2Ugc2hvdWxkbid0IGhhdmUgdG8gZG8gYW55dGhpbmcg
bGlrZSB0aGlzLCBhbmQgbWFrZXMgeW91Cj4+PiBmZWVsIGxpa2UgdGhlcmUncyBzb21ldGhpbmcg
d3Jvbmcgd2l0aCB0aGUgZGVzaWduLgo+Pj4gCj4+PiBJdCB3b3VsZCBiZSBncmVhdCB0byBiZSBh
YmxlIHRvIGhhbmRsZSB0aGlzIHVzaW5nIGNydGMgc3RhdGUsIGJ1dCBhbGFzIHRoZQo+Pj4gdmJs
YW5rIGVuYWJsZSBob29rIG9ubHkgZ2V0cyBwYXNzZWQgYSBzdHJ1Y3QgZHJtX2NydGMgKi4gKFBh
dGNoIDcgY291bGQKPj4+IGVhc2lseSBzd2l0Y2ggdG8gdXNpbmcgY3J0YyBzdGF0ZSwgYnV0IG5l
ZWQgdG8gYWxzbyBzb2x2ZSBwYXRjaAo+Pj4gNS4pCj4+IC4KPj4+IAo+Pj4gSSdsbCBnZXQgYmFj
ayB0byB5b3Ugb24gdGhpcyBsYXRlciwgYnV0IGluIHRoZSBtZWFuIHRpbWUgLSBWaWxsZSwgZG8g
eW91IGhhdmUKPj4+IGFueSBpZGVhcz8KPj4KPj4gT3RoZXIgb3B0aW9uIG9mIGFkZGluZyBpbiBj
cnRjX3N0YXRlLCBkaWQgeW91IG1lYW4gc29tZXRoaW5nIGxpa2UgdGhpcwo+PiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzM2MTc4LyAKPj4gQEphbmkgYW5kIEBWaWxs
ZSAgUGxlYXNlIGxldCBtZSBrbm93IHlvdXIgY29tbWVudHMuCj4KPiBUaGUgcHJvYmxlbSBpcyB0
aGF0IHdlIGRvbid0IGhhdmUgYWNjZXNzIHRvIHRoZSBjcnRjIHN0YXRlIGluIHBhdGNoIDUKPiBn
ZW4xMV9kc2lfY29uZmlndXJlX3RlKCkgYmVjYXVzZSB0aGUgY2FsbCBwYXRoIGlzIHZpYSBkcm1f
Y3J0Y19mdW5jcyBhbmQKPiBiZHdfZW5hYmxlX3ZibGFuay4KClBTLiBJIHRoaW5rIG1vdmluZyBz
b21lIG9mIHRoaXMgc3R1ZmYgdG8gdGhlIGNydGMgc3RhdGUgaXMgcHJvYmFibHkgYQpnb29kIHRo
aW5nIG5vIG1hdHRlciB3aGF0LiBJdCdzIGp1c3QgdGhhdCB3ZSAqYWxzbyogbmVlZCBzb21lIHNv
bHV0aW9uCnRvIHRoZSBwcm9ibGVtIGluIHBhdGNoIDUuCgoKPgo+IEJSLAo+IEphbmkuCj4KPgo+
Pgo+PiBUaGFua3MsCj4+IFZhbmRpdGEKPj4+IAo+Pj4gCj4+PiBCUiwKPj4+IEphbmkuCj4+PiAK
Pj4+IAo+Pj4gPiArCj4+PiA+ICBzdGF0aWMgdm9pZCB3YWl0X2Zvcl9jbWRzX2Rpc3BhdGNoZWRf
dG9fcGFuZWwoc3RydWN0IGludGVsX2VuY29kZXIKPj4+ID4gKmVuY29kZXIpICB7Cj4+PiA+ICAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNl
LmRldik7IGRpZmYKPj4+ID4gLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzaS5oCj4+PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2ku
aAo+Pj4gPiBpbmRleCBiMTViZTU4MTQ1OTkuLjA3MWRhZDdlZTA0YSAxMDA2NDQKPj4+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2kuaAo+Pj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5oCj4+PiA+IEBAIC0yMDEsNiAr
MjAxLDkgQEAgdTMyIGJ4dF9kc2lfZ2V0X3BjbGsoc3RydWN0IGludGVsX2VuY29kZXIKPj4+ICpl
bmNvZGVyLAo+Pj4gPiAgCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjb25maWcpOyAg
dm9pZAo+Pj4gPiBieHRfZHNpX3Jlc2V0X2Nsb2NrcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwgZW51bSBwb3J0IHBvcnQpOwo+Pj4gPgo+Pj4gPiArLyogaWNsX2RzaS5jICovCj4+PiA+
ICtzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZ2VuMTFfZHNpX2ZpbmRfY21kX21vZGVfZW5jb2Rlcihz
dHJ1Y3QKPj4+ID4gK2ludGVsX2NydGMgKmNydGMpOwo+Pj4gPiArCj4+PiA+ICAvKiBpbnRlbF9k
c2lfdmJ0LmMgKi8KPj4+ID4gIGJvb2wgaW50ZWxfZHNpX3ZidF9pbml0KHN0cnVjdCBpbnRlbF9k
c2kgKmludGVsX2RzaSwgdTE2IHBhbmVsX2lkKTsKPj4+ID4gdm9pZCBpbnRlbF9kc2lfdmJ0X2V4
ZWNfc2VxdWVuY2Uoc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpLAo+Pj4gCj4+PiAtLQo+Pj4g
SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgoKLS0gCkphbmkg
TmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
