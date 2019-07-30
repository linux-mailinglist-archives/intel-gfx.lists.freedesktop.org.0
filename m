Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CAE7A356
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:47:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A396E449;
	Tue, 30 Jul 2019 08:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47EEE6E449
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:47:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17722887-1500050 for multiple; Tue, 30 Jul 2019 09:47:38 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190729152301.22588-4-michal.wajdeczko@intel.com>
References: <20190729152301.22588-1-michal.wajdeczko@intel.com>
 <20190729152301.22588-4-michal.wajdeczko@intel.com>
Message-ID: <156447645705.6373.15586627343250569384@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 09:47:37 +0100
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTI5IDE2OjIzOjAwKQo+IEluamVjdCBs
b2FkIGVycm9ycyBpbnRvIGludGVsX3VjX2luaXRfaHcgdG8gbWFrZSBzdXJlIHdlCj4gY29ycmVj
dGx5IGhhbmRsZSB1QyBpbml0aWFsaXphdGlvbiBmYWlsdXJlcy4KPiAKPiBUbyBhdm9pZCBjb21w
bGFpbnMgZnJvbSBDSSBhYm91dCBpbnNlcnRlZCBlcnJvcnMgb3Igd2FybmluZ3MsCj4gdXNlIGhl
bHBlciBtYWNybyB0aGF0IGNoZWNrcyBpZiB0aGVyZSB3YXMgYW4gZXJyb3IgaW5qZWN0aW9uLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDggKysr
KysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICB8IDcgKysrKysr
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgIHwgMiArLQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gaW5kZXggZmFmYTliZTFlMTJhLi45ZTExNTZj
MjljYjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiBAQCAtNDAw
LDYgKzQwMCwxNCBAQCBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+
ICAgICAgICAgaWYgKCFpbnRlbF91Y19pc191c2luZ19ndWModWMpKQo+ICAgICAgICAgICAgICAg
ICByZXR1cm4gMDsKPiAgCj4gKyAgICAgICByZXQgPSBpOTE1X2luamVjdF9sb2FkX2Vycm9yKGk5
MTUsIC1FSU8pOwo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiArCj4gKyAgICAgICByZXQgPSBpOTE1X2luamVjdF9sb2FkX2Vycm9yKGk5MTUsIC1FTlhJ
Tyk7Cj4gKyAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsK
PiAgICAgICAgIEdFTV9CVUdfT04oIWludGVsX3VjX2Z3X3N1cHBvcnRlZCgmZ3VjLT5mdykpOwo+
ICAKPiAgICAgICAgIGd1Y19yZXNldF9pbnRlcnJ1cHRzKGd1Yyk7Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCj4gaW5kZXggNmIwNTlkNTFhYWZmLi4zNmY3YTE0NmYwNmEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKPiBAQCAtMTM3LDkgKzEzNywxNCBAQCBib29sIGk5MTVfZXJyb3JfaW5q
ZWN0ZWQodm9pZCk7Cj4gIAo+ICAjZGVmaW5lIGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUoaTkx
NSkgaTkxNV9pbmplY3RfbG9hZF9lcnJvcigoaTkxNSksIC1FTk9ERVYpCj4gIAo+IC0jZGVmaW5l
IGk5MTVfcHJvYmVfZXJyb3IoaTkxNSwgZm10LCAuLi4pICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFwKPiArI2RlZmluZSBJOTE1X0VSUk9SKGk5MTUsIGZtdCwgLi4uKSBcCj4gICAg
ICAgICBfX2k5MTVfcHJpbnRrKGk5MTUsIGk5MTVfZXJyb3JfaW5qZWN0ZWQoKSA/IEtFUk5fREVC
VUcgOiBLRVJOX0VSUiwgXAo+ICAgICAgICAgICAgICAgICAgICAgICBmbXQsICMjX19WQV9BUkdT
X18pCj4gKyNkZWZpbmUgSTkxNV9XQVJOKGk5MTUsIGZtdCwgLi4uKSBcCj4gKyAgICAgICBfX2k5
MTVfcHJpbnRrKGk5MTUsIGk5MTVfZXJyb3JfaW5qZWN0ZWQoKSA/IEtFUk5fREVCVUcgOiBLRVJO
X1dBUk5JTkcsIFwKPiArICAgICAgICAgICAgICAgICAgICAgZm10LCAjI19fVkFfQVJHU19fKQoK
SSBkaWRuJ3Qgc2VlIEk5MTVfV0FSTiBiZSB1c2VkIGluIHRoaXMgc2VyaWVzLiBJcyBpdCBsaWtl
bHk/IFdlIGVpdGhlcgphYm9ydCB0aGUgbW9kdWxlIGxvYWQsIGluIHdoaWNoIGl0IGlzIGFuIGVy
cm9yLCBvciB3ZSBhcmUgcXVpdGUgaGFwcHkgdG8KY29udGludWUgaW4gd2hpY2ggY2FzZSBJJ2Qg
dm90ZSBmb3IgYSAibm9ybWFsIGJ1dCBzaWduaWZpY2FudCBjb25kaXRpb24iCmkuZS4gS0VSTl9O
T1RJQ0UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
