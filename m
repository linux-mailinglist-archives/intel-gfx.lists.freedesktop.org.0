Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5F4C36AC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7691989CBE;
	Tue,  1 Oct 2019 14:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BE989CBE
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:10:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="185190407"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 01 Oct 2019 07:10:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2019 17:10:39 +0300
Date: Tue, 1 Oct 2019 17:10:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191001141039.GK1208@intel.com>
References: <20191001134353.12028-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001134353.12028-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: split out
 intel_vga_client.[ch]
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDQ6NDM6NTNQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gU3BsaXQgb3V0IGNvZGUgcmVsYXRlZCB0byB2Z2EgY2xpZW50IGFuZCB2Z2Egc3dpdGNo
ZXJvbwo+IHJlZ2lzdGVyL3VucmVnaXN0ZXIgYW5kIHN0YXRlIGhhbmRsaW5nIGZyb20gaTkxNV9k
cnYuYyBhbmQKPiBpbnRlbF9kaXNwbGF5LmMuCgpUaGUgdHdvIHRoaW5ncyBkb24ndCByZWFsbHkg
aGF2ZSBhbnl0aGluZyBpbiBjb21tb24gZXhjZXB0IGJvdGggaGF2ZQoidmdhIiBpbiB0aGUgbmFt
ZSwgc28gbm90IHN1cmUgaXQgbWFrZXMgc2Vuc2UgdG8gcHV0IHRoZW0gaW4gdGhlIHNhbWUKcGxh
Y2UuIE9UT0ggdGhleSBhcmUgcHJldHR5IHNtYWxsIHNvIHByb2JhYmx5IG5vdCB3b3J0aCBpdCB0
byBoYXZlIHR3bwpmaWxlcy4KCkFsc28gdGhlIHZnYWFyYiBzdHVmZiBpcyBzdGlsbCBicm9rZW4g
YnV0IEkgZ3Vlc3Mgbm8gb25lIHJlYWxseSBjYXJlcy4KCj4gCj4gSXQncyBhIGJpdCBkaWZmaWN1
bHQgdG8gZHJhdyB0aGUgbGluZSBob3cgbXVjaCB0byBtb3ZlIHRvIHRoZSBuZXcgZmlsZQo+IGZy
b20gaTkxNV9kcnYuYywgYnV0IGl0IHNlZW1lZCB0byBtZSBrZWVwaW5nIGk5MTVfc3VzcGVuZF9z
d2l0Y2hlcm9vKCkKPiBhbmQgaTkxNV9yZXN1bWVfc3dpdGNoZXJvbygpIGluIHBsYWNlIHdhcyBj
bGVhbmVzdC4KPiAKPiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gCj4gQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gCj4gLS0tCj4gCj4gSXQncyBhbHNvIGEgYml0IGZ1enp5
IGlmIHRoaXMgaXMgYSBzZW5zaWJsZSBzcGxpdCBhbnl3YXkuIENvdWxkIGFsc28KPiBuYW1lIGl0
IGludGVsX3ZnYSBhbmQgbW92ZSB0aGVzZSBmcm9tIGludGVsX2Rpc3BsYXkuYyB0aGVyZT8KPiAK
PiBpOTE1X3ZnYWNudHJsX3JlZwo+IGk5MTVfZGlzYWJsZV92Z2EKPiBpOTE1X3JlZGlzYWJsZV92
Z2EKPiBpOTE1X3JlZGlzYWJsZV92Z2FfcG93ZXJfb24KCkNvbnNpZGVyaW5nIHRoYXQncyB0aGUg
b25seSByZWFzb24gd2UgcmVnaXN0ZXIgd2l0aCB2Z2FhcmIgaXQgcHJvYmFibHkKbWFrZXMgc2Vu
c2UgdG8gbW92ZSB0aGVtIGFzIHdlbGwuCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDMgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDI5IC0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgICAxIC0KPiAgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZnYV9jbGllbnQuYyAgIHwgMTQwICsrKysrKysrKysrKysrKysrKwo+ICAu
Li4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhX2NsaWVudC5oICAgfCAgMTQgKysKPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgIDk0ICstLS0t
LS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAg
fCAgIDMgKwo+ICA3IGZpbGVzIGNoYW5nZWQsIDE2NiBpbnNlcnRpb25zKCspLCAxMTggZGVsZXRp
b25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3ZnYV9jbGllbnQuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92Z2FfY2xpZW50LmgKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+
IGluZGV4IGUwNDQ2M2Q4NTQwMS4uY2E3NzA0NjNlMDFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUKPiBAQCAtMTg0LDcgKzE4NCw4IEBAIGk5MTUteSArPSBcCj4gIAlkaXNwbGF5L2ludGVsX3Bz
ci5vIFwKPiAgCWRpc3BsYXkvaW50ZWxfcXVpcmtzLm8gXAo+ICAJZGlzcGxheS9pbnRlbF9zcHJp
dGUubyBcCj4gLQlkaXNwbGF5L2ludGVsX3RjLm8KPiArCWRpc3BsYXkvaW50ZWxfdGMubyBcCj4g
KwlkaXNwbGF5L2ludGVsX3ZnYV9jbGllbnQubwo+ICBpOTE1LSQoQ09ORklHX0FDUEkpICs9IFwK
PiAgCWRpc3BsYXkvaW50ZWxfYWNwaS5vIFwKPiAgCWRpc3BsYXkvaW50ZWxfb3ByZWdpb24ubwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXgg
ZjEzMjhjMDhmNGFkLi42Mjc4ZDYyYmM4N2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNzE4OCwzNSArMTcxODgsNiBAQCB2b2lk
IGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKPiAgCWludGVsX2ZiY19jbGVhbnVwX2NmYihpOTE1KTsKPiAgfQo+ICAKPiAtLyoKPiAtICog
c2V0IHZnYSBkZWNvZGUgc3RhdGUgLSB0cnVlID09IGVuYWJsZSBWR0EgZGVjb2RlCj4gLSAqLwo+
IC1pbnQgaW50ZWxfbW9kZXNldF92Z2Ffc2V0X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgYm9vbCBzdGF0ZSkKPiAtewo+IC0JdW5zaWduZWQgcmVnID0gSU5URUxfR0VO
KGRldl9wcml2KSA+PSA2ID8gU05CX0dNQ0hfQ1RSTCA6IElOVEVMX0dNQ0hfQ1RSTDsKPiAtCXUx
NiBnbWNoX2N0cmw7Cj4gLQo+IC0JaWYgKHBjaV9yZWFkX2NvbmZpZ193b3JkKGRldl9wcml2LT5i
cmlkZ2VfZGV2LCByZWcsICZnbWNoX2N0cmwpKSB7Cj4gLQkJRFJNX0VSUk9SKCJmYWlsZWQgdG8g
cmVhZCBjb250cm9sIHdvcmRcbiIpOwo+IC0JCXJldHVybiAtRUlPOwo+IC0JfQo+IC0KPiAtCWlm
ICghIShnbWNoX2N0cmwgJiBJTlRFTF9HTUNIX1ZHQV9ESVNBQkxFKSA9PSAhc3RhdGUpCj4gLQkJ
cmV0dXJuIDA7Cj4gLQo+IC0JaWYgKHN0YXRlKQo+IC0JCWdtY2hfY3RybCAmPSB+SU5URUxfR01D
SF9WR0FfRElTQUJMRTsKPiAtCWVsc2UKPiAtCQlnbWNoX2N0cmwgfD0gSU5URUxfR01DSF9WR0Ff
RElTQUJMRTsKPiAtCj4gLQlpZiAocGNpX3dyaXRlX2NvbmZpZ193b3JkKGRldl9wcml2LT5icmlk
Z2VfZGV2LCByZWcsIGdtY2hfY3RybCkpIHsKPiAtCQlEUk1fRVJST1IoImZhaWxlZCB0byB3cml0
ZSBjb250cm9sIHdvcmRcbiIpOwo+IC0JCXJldHVybiAtRUlPOwo+IC0JfQo+IC0KPiAtCXJldHVy
biAwOwo+IC19Cj4gLQo+ICAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfQ0FQVFVSRV9F
UlJPUikKPiAgCj4gIHN0cnVjdCBpbnRlbF9kaXNwbGF5X2Vycm9yX3N0YXRlIHsKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAo+IGluZGV4IDRiOWUxOGU1
YTI2My4uYTdiMGQxMWEzMzE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmgKPiBAQCAtNTc5LDcgKzU3OSw2IEBAIHZvaWQgaW50ZWxfZGlzcGxh
eV9wcmludF9lcnJvcl9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVmICplLAo+
ICB2b2lkIGludGVsX21vZGVzZXRfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSk7Cj4gIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpOwo+ICB2b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSk7Cj4gLWludCBpbnRlbF9tb2Rlc2V0X3ZnYV9zZXRfc3RhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBib29sIHN0YXRlKTsKPiAgdm9pZCBpbnRlbF9k
aXNwbGF5X3Jlc3VtZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKPiAgdm9pZCBpOTE1X3JlZGlz
YWJsZV92Z2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiAgdm9pZCBpOTE1
X3JlZGlzYWJsZV92Z2FfcG93ZXJfb24oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2Ff
Y2xpZW50LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYV9jbGllbnQu
Ywo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wNGVmMTQ0M2Y0
MGUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92Z2FfY2xpZW50LmMKPiBAQCAtMCwwICsxLDE0MCBAQAo+ICsvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUCj4gKy8qCj4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBv
cmF0aW9uCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L3BjaS5oPgo+ICsjaW5jbHVkZSA8
bGludXgvdmdhX3N3aXRjaGVyb28uaD4KPiArI2luY2x1ZGUgPGxpbnV4L3ZnYWFyYi5oPgo+ICsK
PiArI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgo+ICsKPiArI2luY2x1ZGUgImk5MTVfZHJ2Lmgi
Cj4gKyNpbmNsdWRlICJpbnRlbF9hY3BpLmgiCj4gKyNpbmNsdWRlICJpbnRlbF92Z2FfY2xpZW50
LmgiCj4gKwo+ICtzdGF0aWMgaW50Cj4gK2ludGVsX3ZnYV9jbGllbnRfc2V0X3N0YXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBib29sIGVuYWJsZV9kZWNvZGUpCj4gK3sKPiArCXVu
c2lnbmVkIGludCByZWcgPSBJTlRFTF9HRU4oaTkxNSkgPj0gNiA/IFNOQl9HTUNIX0NUUkwgOiBJ
TlRFTF9HTUNIX0NUUkw7Cj4gKwl1MTYgZ21jaF9jdHJsOwo+ICsKPiArCWlmIChwY2lfcmVhZF9j
b25maWdfd29yZChpOTE1LT5icmlkZ2VfZGV2LCByZWcsICZnbWNoX2N0cmwpKSB7Cj4gKwkJRFJN
X0VSUk9SKCJmYWlsZWQgdG8gcmVhZCBjb250cm9sIHdvcmRcbiIpOwo+ICsJCXJldHVybiAtRUlP
Owo+ICsJfQo+ICsKPiArCWlmICghIShnbWNoX2N0cmwgJiBJTlRFTF9HTUNIX1ZHQV9ESVNBQkxF
KSA9PSAhZW5hYmxlX2RlY29kZSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlpZiAoZW5hYmxlX2Rl
Y29kZSkKPiArCQlnbWNoX2N0cmwgJj0gfklOVEVMX0dNQ0hfVkdBX0RJU0FCTEU7Cj4gKwllbHNl
Cj4gKwkJZ21jaF9jdHJsIHw9IElOVEVMX0dNQ0hfVkdBX0RJU0FCTEU7Cj4gKwo+ICsJaWYgKHBj
aV93cml0ZV9jb25maWdfd29yZChpOTE1LT5icmlkZ2VfZGV2LCByZWcsIGdtY2hfY3RybCkpIHsK
PiArCQlEUk1fRVJST1IoImZhaWxlZCB0byB3cml0ZSBjb250cm9sIHdvcmRcbiIpOwo+ICsJCXJl
dHVybiAtRUlPOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdW5z
aWduZWQgaW50Cj4gK2ludGVsX3ZnYV9jbGllbnRfc2V0X2RlY29kZSh2b2lkICpjb29raWUsIGJv
b2wgZW5hYmxlX2RlY29kZSkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBjb29raWU7Cj4gKwo+ICsJaW50ZWxfdmdhX2NsaWVudF9zZXRfc3RhdGUoaTkxNSwgZW5hYmxl
X2RlY29kZSk7Cj4gKwo+ICsJaWYgKGVuYWJsZV9kZWNvZGUpCj4gKwkJcmV0dXJuIFZHQV9SU1JD
X0xFR0FDWV9JTyB8IFZHQV9SU1JDX0xFR0FDWV9NRU0gfAo+ICsJCSAgICAgICBWR0FfUlNSQ19O
T1JNQUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOwo+ICsJZWxzZQo+ICsJCXJldHVybiBWR0Ff
UlNSQ19OT1JNQUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
Ym9vbCBpbnRlbF92Z2Ffc3dpdGNoZXJvb19jYW5fc3dpdGNoKHN0cnVjdCBwY2lfZGV2ICpwZGV2
KQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHBkZXZfdG9faTkxNShw
ZGV2KTsKPiArCj4gKwkvKgo+ICsJICogRklYTUU6IG9wZW5fY291bnQgaXMgcHJvdGVjdGVkIGJ5
IGRybV9nbG9iYWxfbXV0ZXggYnV0IHRoYXQgd291bGQKPiArCSAqIGxlYWQgdG8gbG9ja2luZyBp
bnZlcnNpb24gd2l0aCB0aGUgZHJpdmVyIGxvYWQgcGF0aC4gQW5kIHRoZSBhY2Nlc3MKPiArCSAq
IGhlcmUgaXMgY29tcGxldGVseSByYWN5IGFueXdheS4gU28gZG9uJ3QgYm90aGVyIHdpdGggbG9j
a2luZyBmb3Igbm93Lgo+ICsJICovCj4gKwlyZXR1cm4gaTkxNSAmJiBpOTE1LT5kcm0ub3Blbl9j
b3VudCA9PSAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBpbnRlbF92Z2Ffc3dpdGNoZXJvb19z
ZXRfc3RhdGUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4gKwkJCQkJICAgZW51bSB2Z2Ffc3dpdGNo
ZXJvb19zdGF0ZSBzdGF0ZSkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBwZGV2X3RvX2k5MTUocGRldik7Cj4gKwlwbV9tZXNzYWdlX3QgcG1tID0geyAuZXZlbnQgPSBQ
TV9FVkVOVF9TVVNQRU5EIH07Cj4gKwo+ICsJaWYgKCFpOTE1KSB7Cj4gKwkJZGV2X2VycigmcGRl
di0+ZGV2LCAiRFJNIG5vdCBpbml0aWFsaXplZCwgYWJvcnRpbmcgc3dpdGNoLlxuIik7Cj4gKwkJ
cmV0dXJuOwo+ICsJfQo+ICsKPiArCWlmIChzdGF0ZSA9PSBWR0FfU1dJVENIRVJPT19PTikgewo+
ICsJCXByX2luZm8oInN3aXRjaGVkIG9uXG4iKTsKPiArCQlpOTE1LT5kcm0uc3dpdGNoX3Bvd2Vy
X3N0YXRlID0gRFJNX1NXSVRDSF9QT1dFUl9DSEFOR0lORzsKPiArCQkvKiBpOTE1IHJlc3VtZSBo
YW5kbGVyIGRvZXNuJ3Qgc2V0IHRvIEQwICovCj4gKwkJcGNpX3NldF9wb3dlcl9zdGF0ZShwZGV2
LCBQQ0lfRDApOwo+ICsJCWk5MTVfcmVzdW1lX3N3aXRjaGVyb28oaTkxNSk7Cj4gKwkJaTkxNS0+
ZHJtLnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJfT047Cj4gKwl9IGVsc2Ug
ewo+ICsJCXByX2luZm8oInN3aXRjaGVkIG9mZlxuIik7Cj4gKwkJaTkxNS0+ZHJtLnN3aXRjaF9w
b3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJfQ0hBTkdJTkc7Cj4gKwkJaTkxNV9zdXNwZW5k
X3N3aXRjaGVyb28oaTkxNSwgcG1tKTsKPiArCQlpOTE1LT5kcm0uc3dpdGNoX3Bvd2VyX3N0YXRl
ID0gRFJNX1NXSVRDSF9QT1dFUl9PRkY7Cj4gKwl9Cj4gK30KPiArCj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgdmdhX3N3aXRjaGVyb29fY2xpZW50X29wcyBpOTE1X3N3aXRjaGVyb29fb3BzID0gewo+
ICsJLnNldF9ncHVfc3RhdGUgPSBpbnRlbF92Z2Ffc3dpdGNoZXJvb19zZXRfc3RhdGUsCj4gKwku
cmVwcm9iZSA9IE5VTEwsCj4gKwkuY2FuX3N3aXRjaCA9IGludGVsX3ZnYV9zd2l0Y2hlcm9vX2Nh
bl9zd2l0Y2gsCj4gK307Cj4gKwo+ICtpbnQgaW50ZWxfdmdhX2NsaWVudF9yZWdpc3RlcihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+ICsJc3RydWN0IHBjaV9kZXYgKnBkZXYg
PSBpOTE1LT5kcm0ucGRldjsKPiArCWludCByZXQ7Cj4gKwo+ICsJLyoKPiArCSAqIElmIHdlIGhh
dmUgPiAxIFZHQSBjYXJkcywgdGhlbiB3ZSBuZWVkIHRvIGFyYml0cmF0ZSBhY2Nlc3MgdG8gdGhl
Cj4gKwkgKiBjb21tb24gVkdBIHJlc291cmNlcy4KPiArCSAqCj4gKwkgKiBJZiB3ZSBhcmUgYSBz
ZWNvbmRhcnkgZGlzcGxheSBjb250cm9sbGVyICghUENJX0RJU1BMQVlfQ0xBU1NfVkdBKSwKPiAr
CSAqIHRoZW4gd2UgZG8gbm90IHRha2UgcGFydCBpbiBWR0EgYXJiaXRyYXRpb24gYW5kIHRoZQo+
ICsJICogdmdhX2NsaWVudF9yZWdpc3RlcigpIGZhaWxzIHdpdGggLUVOT0RFVi4KPiArCSAqLwo+
ICsJcmV0ID0gdmdhX2NsaWVudF9yZWdpc3RlcihwZGV2LCBpOTE1LCBOVUxMLCBpbnRlbF92Z2Ff
Y2xpZW50X3NldF9kZWNvZGUpOwo+ICsJaWYgKHJldCAmJiByZXQgIT0gLUVOT0RFVikKPiArCQln
b3RvIG91dDsKPiArCj4gKwlpbnRlbF9yZWdpc3Rlcl9kc21faGFuZGxlcigpOwo+ICsKPiArCXJl
dCA9IHZnYV9zd2l0Y2hlcm9vX3JlZ2lzdGVyX2NsaWVudChwZGV2LCAmaTkxNV9zd2l0Y2hlcm9v
X29wcywgZmFsc2UpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIG91dF91bnJlZ2lzdGVyOwo+ICsK
PiArCXJldHVybiAwOwo+ICsKPiArb3V0X3VucmVnaXN0ZXI6Cj4gKwlpbnRlbF91bnJlZ2lzdGVy
X2RzbV9oYW5kbGVyKCk7Cj4gKwl2Z2FfY2xpZW50X3JlZ2lzdGVyKHBkZXYsIE5VTEwsIE5VTEws
IE5VTEwpOwo+ICtvdXQ6Cj4gKwlyZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICt2b2lkIGludGVsX3Zn
YV9jbGllbnRfdW5yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+
ICsJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBpOTE1LT5kcm0ucGRldjsKPiArCj4gKwl2Z2Ffc3dp
dGNoZXJvb191bnJlZ2lzdGVyX2NsaWVudChwZGV2KTsKPiArCWludGVsX3VucmVnaXN0ZXJfZHNt
X2hhbmRsZXIoKTsKPiArCXZnYV9jbGllbnRfcmVnaXN0ZXIocGRldiwgTlVMTCwgTlVMTCwgTlVM
TCk7Cj4gK30KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92Z2FfY2xpZW50LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYV9j
bGllbnQuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4zMzRl
YjkwYTJlNGIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92Z2FfY2xpZW50LmgKPiBAQCAtMCwwICsxLDE0IEBACj4gKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KPiArLyoKPiArICogQ29weXJpZ2h0IMKpIDIwMTkgSW50
ZWwgQ29ycG9yYXRpb24KPiArICovCj4gKwo+ICsjaWZuZGVmIF9fSU5URUxfVkdBX0NMSUVOVF9I
X18KPiArI2RlZmluZSBfX0lOVEVMX1ZHQV9DTElFTlRfSF9fCj4gKwo+ICtzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZTsKPiArCj4gK2ludCBpbnRlbF92Z2FfY2xpZW50X3JlZ2lzdGVyKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KTsKPiArdm9pZCBpbnRlbF92Z2FfY2xpZW50X3VucmVnaXN0
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICsKPiArI2VuZGlmIC8qIF9fSU5U
RUxfVkdBX0NMSUVOVF9IX18gKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRleCA5MWFh
ZTU2YjQyODAuLmEzNjEzMWIxNWE2ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IEBA
IC0zNiw3ICszNiw2IEBACj4gICNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+Cj4gICNpbmNs
dWRlIDxsaW51eC9wbnAuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiAtI2luY2x1ZGUg
PGxpbnV4L3ZnYWFyYi5oPgo+ICAjaW5jbHVkZSA8bGludXgvdmdhX3N3aXRjaGVyb28uaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L3Z0Lmg+Cj4gICNpbmNsdWRlIDxhY3BpL3ZpZGVvLmg+Cj4gQEAgLTU5
LDYgKzU4LDcgQEAKPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfb3ZlcmxheS5oIgo+ICAjaW5j
bHVkZSAiZGlzcGxheS9pbnRlbF9waXBlX2NyYy5oIgo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRl
bF9zcHJpdGUuaCIKPiArI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfdmdhX2NsaWVudC5oIgo+ICAK
PiAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0LmgiCj4gICNpbmNsdWRlICJnZW0vaTkx
NV9nZW1faW9jdGxzLmgiCj4gQEAgLTI2OSw2OSArMjY5LDggQEAgaW50ZWxfdGVhcmRvd25fbWNo
YmFyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQlyZWxlYXNlX3Jlc291
cmNlKCZkZXZfcHJpdi0+bWNoX3Jlcyk7Cj4gIH0KPiAgCj4gLS8qIHRydWUgPSBlbmFibGUgZGVj
b2RlLCBmYWxzZSA9IGRpc2FibGUgZGVjb2RlciAqLwo+IC1zdGF0aWMgdW5zaWduZWQgaW50IGk5
MTVfdmdhX3NldF9kZWNvZGUodm9pZCAqY29va2llLCBib29sIHN0YXRlKQo+IC17Cj4gLQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBjb29raWU7Cj4gLQo+IC0JaW50ZWxfbW9k
ZXNldF92Z2Ffc2V0X3N0YXRlKGRldl9wcml2LCBzdGF0ZSk7Cj4gLQlpZiAoc3RhdGUpCj4gLQkJ
cmV0dXJuIFZHQV9SU1JDX0xFR0FDWV9JTyB8IFZHQV9SU1JDX0xFR0FDWV9NRU0gfAo+IC0JCSAg
ICAgICBWR0FfUlNSQ19OT1JNQUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOwo+IC0JZWxzZQo+
IC0JCXJldHVybiBWR0FfUlNSQ19OT1JNQUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOwo+IC19
Cj4gLQo+IC1zdGF0aWMgaW50IGk5MTVfcmVzdW1lX3N3aXRjaGVyb28oc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpOwo+IC1zdGF0aWMgaW50IGk5MTVfc3VzcGVuZF9zd2l0Y2hlcm9vKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+IC0JCQkJICAgcG1fbWVzc2FnZV90IHN0YXRl
KTsKPiAtCj4gLXN0YXRpYyB2b2lkIGk5MTVfc3dpdGNoZXJvb19zZXRfc3RhdGUoc3RydWN0IHBj
aV9kZXYgKnBkZXYsIGVudW0gdmdhX3N3aXRjaGVyb29fc3RhdGUgc3RhdGUpCj4gLXsKPiAtCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gcGRldl90b19pOTE1KHBkZXYpOwo+IC0JcG1f
bWVzc2FnZV90IHBtbSA9IHsgLmV2ZW50ID0gUE1fRVZFTlRfU1VTUEVORCB9Owo+IC0KPiAtCWlm
ICghaTkxNSkgewo+IC0JCWRldl9lcnIoJnBkZXYtPmRldiwgIkRSTSBub3QgaW5pdGlhbGl6ZWQs
IGFib3J0aW5nIHN3aXRjaC5cbiIpOwo+IC0JCXJldHVybjsKPiAtCX0KPiAtCj4gLQlpZiAoc3Rh
dGUgPT0gVkdBX1NXSVRDSEVST09fT04pIHsKPiAtCQlwcl9pbmZvKCJzd2l0Y2hlZCBvblxuIik7
Cj4gLQkJaTkxNS0+ZHJtLnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJfQ0hB
TkdJTkc7Cj4gLQkJLyogaTkxNSByZXN1bWUgaGFuZGxlciBkb2Vzbid0IHNldCB0byBEMCAqLwo+
IC0JCXBjaV9zZXRfcG93ZXJfc3RhdGUocGRldiwgUENJX0QwKTsKPiAtCQlpOTE1X3Jlc3VtZV9z
d2l0Y2hlcm9vKGk5MTUpOwo+IC0JCWk5MTUtPmRybS5zd2l0Y2hfcG93ZXJfc3RhdGUgPSBEUk1f
U1dJVENIX1BPV0VSX09OOwo+IC0JfSBlbHNlIHsKPiAtCQlwcl9pbmZvKCJzd2l0Y2hlZCBvZmZc
biIpOwo+IC0JCWk5MTUtPmRybS5zd2l0Y2hfcG93ZXJfc3RhdGUgPSBEUk1fU1dJVENIX1BPV0VS
X0NIQU5HSU5HOwo+IC0JCWk5MTVfc3VzcGVuZF9zd2l0Y2hlcm9vKGk5MTUsIHBtbSk7Cj4gLQkJ
aTkxNS0+ZHJtLnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJfT0ZGOwo+IC0J
fQo+IC19Cj4gLQo+IC1zdGF0aWMgYm9vbCBpOTE1X3N3aXRjaGVyb29fY2FuX3N3aXRjaChzdHJ1
Y3QgcGNpX2RldiAqcGRldikKPiAtewo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBwZGV2X3RvX2k5MTUocGRldik7Cj4gLQo+IC0JLyoKPiAtCSAqIEZJWE1FOiBvcGVuX2NvdW50
IGlzIHByb3RlY3RlZCBieSBkcm1fZ2xvYmFsX211dGV4IGJ1dCB0aGF0IHdvdWxkIGxlYWQgdG8K
PiAtCSAqIGxvY2tpbmcgaW52ZXJzaW9uIHdpdGggdGhlIGRyaXZlciBsb2FkIHBhdGguIEFuZCB0
aGUgYWNjZXNzIGhlcmUgaXMKPiAtCSAqIGNvbXBsZXRlbHkgcmFjeSBhbnl3YXkuIFNvIGRvbid0
IGJvdGhlciB3aXRoIGxvY2tpbmcgZm9yIG5vdy4KPiAtCSAqLwo+IC0JcmV0dXJuIGk5MTUgJiYg
aTkxNS0+ZHJtLm9wZW5fY291bnQgPT0gMDsKPiAtfQo+IC0KPiAtc3RhdGljIGNvbnN0IHN0cnVj
dCB2Z2Ffc3dpdGNoZXJvb19jbGllbnRfb3BzIGk5MTVfc3dpdGNoZXJvb19vcHMgPSB7Cj4gLQku
c2V0X2dwdV9zdGF0ZSA9IGk5MTVfc3dpdGNoZXJvb19zZXRfc3RhdGUsCj4gLQkucmVwcm9iZSA9
IE5VTEwsCj4gLQkuY2FuX3N3aXRjaCA9IGk5MTVfc3dpdGNoZXJvb19jYW5fc3dpdGNoLAo+IC19
Owo+IC0KPiAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4gLQlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGk5MTUt
PmRybS5wZGV2Owo+ICAJaW50IHJldDsKPiAgCj4gIAlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFp
bHVyZShpOTE1KSkKPiBAQCAtMzQ2LDIyICsyODUsOSBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVy
X21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAJaW50
ZWxfYmlvc19pbml0KGk5MTUpOwo+ICAKPiAtCS8qIElmIHdlIGhhdmUgPiAxIFZHQSBjYXJkcywg
dGhlbiB3ZSBuZWVkIHRvIGFyYml0cmF0ZSBhY2Nlc3MKPiAtCSAqIHRvIHRoZSBjb21tb24gVkdB
IHJlc291cmNlcy4KPiAtCSAqCj4gLQkgKiBJZiB3ZSBhcmUgYSBzZWNvbmRhcnkgZGlzcGxheSBj
b250cm9sbGVyICghUENJX0RJU1BMQVlfQ0xBU1NfVkdBKSwKPiAtCSAqIHRoZW4gd2UgZG8gbm90
IHRha2UgcGFydCBpbiBWR0EgYXJiaXRyYXRpb24gYW5kIHRoZQo+IC0JICogdmdhX2NsaWVudF9y
ZWdpc3RlcigpIGZhaWxzIHdpdGggLUVOT0RFVi4KPiAtCSAqLwo+IC0JcmV0ID0gdmdhX2NsaWVu
dF9yZWdpc3RlcihwZGV2LCBpOTE1LCBOVUxMLCBpOTE1X3ZnYV9zZXRfZGVjb2RlKTsKPiAtCWlm
IChyZXQgJiYgcmV0ICE9IC1FTk9ERVYpCj4gLQkJZ290byBvdXQ7Cj4gLQo+IC0JaW50ZWxfcmVn
aXN0ZXJfZHNtX2hhbmRsZXIoKTsKPiAtCj4gLQlyZXQgPSB2Z2Ffc3dpdGNoZXJvb19yZWdpc3Rl
cl9jbGllbnQocGRldiwgJmk5MTVfc3dpdGNoZXJvb19vcHMsIGZhbHNlKTsKPiArCXJldCA9IGlu
dGVsX3ZnYV9jbGllbnRfcmVnaXN0ZXIoaTkxNSk7Cj4gIAlpZiAocmV0KQo+IC0JCWdvdG8gY2xl
YW51cF92Z2FfY2xpZW50Owo+ICsJCWdvdG8gb3V0Owo+ICAKPiAgCS8qIG11c3QgaGFwcGVuIGJl
Zm9yZSBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoKSBvbiBWTFYvQ0hWICovCj4gIAlpbnRl
bF91cGRhdGVfcmF3Y2xrKGk5MTUpOwo+IEBAIC00MTQsMjMgKzM0MCwxOCBAQCBzdGF0aWMgaW50
IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cj4gIGNsZWFudXBfY3NyOgo+ICAJaW50ZWxfY3NyX3Vjb2RlX2ZpbmkoaTkxNSk7Cj4gIAlpbnRl
bF9wb3dlcl9kb21haW5zX2RyaXZlcl9yZW1vdmUoaTkxNSk7Cj4gLQl2Z2Ffc3dpdGNoZXJvb191
bnJlZ2lzdGVyX2NsaWVudChwZGV2KTsKPiAtY2xlYW51cF92Z2FfY2xpZW50Ogo+IC0JdmdhX2Ns
aWVudF9yZWdpc3RlcihwZGV2LCBOVUxMLCBOVUxMLCBOVUxMKTsKPiArCWludGVsX3ZnYV9jbGll
bnRfdW5yZWdpc3RlcihpOTE1KTsKPiAgb3V0Ogo+ICAJcmV0dXJuIHJldDsKPiAgfQo+ICAKPiAg
c3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCj4gIHsKPiAtCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+ZHJtLnBk
ZXY7Cj4gLQo+ICAJaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKGk5MTUpOwo+ICAKPiAgCWlu
dGVsX2Jpb3NfZHJpdmVyX3JlbW92ZShpOTE1KTsKPiAgCj4gLQl2Z2Ffc3dpdGNoZXJvb191bnJl
Z2lzdGVyX2NsaWVudChwZGV2KTsKPiAtCXZnYV9jbGllbnRfcmVnaXN0ZXIocGRldiwgTlVMTCwg
TlVMTCwgTlVMTCk7Cj4gKwlpbnRlbF92Z2FfY2xpZW50X3VucmVnaXN0ZXIoaTkxNSk7Cj4gIAo+
ICAJaW50ZWxfY3NyX3Vjb2RlX2ZpbmkoaTkxNSk7Cj4gIH0KPiBAQCAtMTg0NSw4ICsxNzY2LDcg
QEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgYm9vbCBoaWJlcm5hdGlvbikKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiAgCj4gLXN0YXRpYyBp
bnQKPiAtaTkxNV9zdXNwZW5kX3N3aXRjaGVyb28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIHBtX21lc3NhZ2VfdCBzdGF0ZSkKPiAraW50IGk5MTVfc3VzcGVuZF9zd2l0Y2hlcm9vKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBwbV9tZXNzYWdlX3Qgc3RhdGUpCj4gIHsKPiAg
CWludCBlcnJvcjsKPiAgCj4gQEAgLTIwMTQsNyArMTkzNCw3IEBAIHN0YXRpYyBpbnQgaTkxNV9k
cm1fcmVzdW1lX2Vhcmx5KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gIAlyZXR1cm4gcmV0Owo+
ICB9Cj4gIAo+IC1zdGF0aWMgaW50IGk5MTVfcmVzdW1lX3N3aXRjaGVyb28oc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gK2ludCBpOTE1X3Jlc3VtZV9zd2l0Y2hlcm9vKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4gIAlpbnQgcmV0Owo+ICAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKPiBpbmRleCAzMzdkODMwNjQxNmEuLjFiNjRhODhhNTRiOCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBAIC0yMjIzLDYgKzIyMjMsOSBAQCBleHRlcm4gY29uc3Qg
c3RydWN0IGRldl9wbV9vcHMgaTkxNV9wbV9vcHM7Cj4gIGludCBpOTE1X2RyaXZlcl9wcm9iZShz
dHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCk7Cj4g
IHZvaWQgaTkxNV9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsK
PiAgCj4gK2ludCBpOTE1X3N1c3BlbmRfc3dpdGNoZXJvbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgcG1fbWVzc2FnZV90IHN0YXRlKTsKPiAraW50IGk5MTVfcmVzdW1lX3N3aXRjaGVy
b28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICsKPiAgdm9pZCBpbnRlbF9lbmdp
bmVfaW5pdF9oYW5nY2hlY2soc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKPiAgaW50
IHZsdl9mb3JjZV9nZnhfY2xvY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBi
b29sIG9uKTsKPiAgCj4gLS0gCj4gMi4yMC4xCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
