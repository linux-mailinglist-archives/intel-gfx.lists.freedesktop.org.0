Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD91BEC9E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 09:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C0A6ECE6;
	Thu, 26 Sep 2019 07:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC19D6ECE6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 07:37:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 00:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="214325900"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 26 Sep 2019 00:37:17 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.146.172])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x8Q7bGOG012908; Thu, 26 Sep 2019 08:37:16 +0100
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Summers, Stuart" <stuart.summers@intel.com>
References: <20190925222121.4000-1-daniele.ceraolospurio@intel.com>
 <68bc14da224c1e6d4d47ac6f75d79ee9bd09a645.camel@intel.com>
Date: Thu, 26 Sep 2019 09:37:16 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z8prgeecxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <68bc14da224c1e6d4d47ac6f75d79ee9bd09a645.camel@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: fix version parsing from CSS
 header
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNiBTZXAgMjAxOSAwMTowMzoyMCArMDIwMCwgU3VtbWVycywgU3R1YXJ0ICAKPHN0
dWFydC5zdW1tZXJzQGludGVsLmNvbT4gd3JvdGU6Cgo+IE9uIFdlZCwgMjAxOS0wOS0yNSBhdCAx
NToyMSAtMDcwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPj4gVGhlIEh1QyBGVyBo
YXMgc2lsZW50bHkgc3dpdGNoZWQgdG8gZW5jb2RpbmcgdGhlIHZlcnNpb24gdGhlIHNhbWUgd2F5
Cj4+IGFzCj4+IHRoZSBHdUMgRlcgZG9lcywgaS5lLiBtYWpvci5taW5vci5wYXRjaCBpbnN0ZWFk
IG9mIGp1c3QgbWFqb3IubWlub3IuCj4+IEFsbAo+PiB0aGUgY3VycmVudCBibG9icyBmb2xsb3cg
dGhlIG5ldyBzY2hlbWUsIGJ1dCBzaW5jZSBtaW5vciBhbmQgcGF0Y2gKPj4gYXJlCj4+IGJvdGgg
emVybyB0aGVyZSBpcyBubyBkaWZmZXJlbmNlIGluIHRoZSBlbmQgcmVzdWx0cyBhbmQgd2UgaGFw
cGlseQo+PiBsb2FkCj4+IHRoZW0uIE5ldyBiaW5hcmllcywgaG93ZXZlciwgd2lsbCBoYXZlIG5v
bi16ZXJvIHZhbHVlcyBpbiB0aGVyZSwgc28KPj4gd2UKPj4gbmVlZCB0byBtYWtlIHN1cmUgdG8g
cGFyc2UgdGhlbSBjb3JyZWN0bHkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPAo+PiBkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+Cj4gSSBkb24n
dCBoYXZlIGluc2lnaHQgaW50byB0aGUgSHVDIGNoYW5nZSwgc28ganVzdCB0YWtpbmcgeW91ciB3
b3JkCj4gaGVyZS4gVGhlIGNvZGUgYmVsb3cgbG9va3Mgc2FuZSBhbmQgaXMgYW4gb2J2aW91cyBp
bXByb3ZlbWVudC4KPgo+IEl0IG1pZ2h0IGJlIGludGVyZXN0aW5nIHRvIGdldCBhIGxvb2sgZnJv
bSBzb21lb25lIGEgbGl0dGxlIGNsb3NlciB0bwo+IHRoaXMgZm9yIGEgSHVDIHBlcnNwZWN0aXZl
LiBXaXRoIHRoYXQgZGlzY2xhaW1lcjoKPiBSZXZpZXdlZC1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0
dWFydC5zdW1tZXJzQGludGVsLmNvbT4KCkRvdWJsZSBjaGVja2VkIG9mZmxpbmUgd2l0aCBIdUMg
dGVhbSwgc28KCkFja2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGlu
dGVsLmNvbT4KCj4KPj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVs
LmNvbT4KPj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
Pgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgICAg
IHwgMjMgKysrKy0tLS0tLS0tLS0tLQo+PiAtLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19md19hYmkuaCB8ICA4ICsrKy0tLS0KPj4gIDIgZmlsZXMgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4+IGluZGV4IGVhOWE4MDdhYmQ0Zi4uYmI4NzgxMTlm
MDZjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4g
QEAgLTMzOSwyNSArMzM5LDEwIEBAIGludCBpbnRlbF91Y19md19mZXRjaChzdHJ1Y3QgaW50ZWxf
dWNfZncKPj4gKnVjX2Z3LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gIAl9Cj4+
Cj4+ICAJLyogR2V0IHZlcnNpb24gbnVtYmVycyBmcm9tIHRoZSBDU1MgaGVhZGVyICovCj4+IC0J
c3dpdGNoICh1Y19mdy0+dHlwZSkgewo+PiAtCWNhc2UgSU5URUxfVUNfRldfVFlQRV9HVUM6Cj4+
IC0JCXVjX2Z3LT5tYWpvcl92ZXJfZm91bmQgPQo+PiBGSUVMRF9HRVQoQ1NTX1NXX1ZFUlNJT05f
R1VDX01BSk9SLAo+PiAtCQkJCQkJICAgY3NzLT5zd192ZXJzaW9uKTsKPj4gLQkJdWNfZnctPm1p
bm9yX3Zlcl9mb3VuZCA9Cj4+IEZJRUxEX0dFVChDU1NfU1dfVkVSU0lPTl9HVUNfTUlOT1IsCj4+
IC0JCQkJCQkgICBjc3MtPnN3X3ZlcnNpb24pOwo+PiAtCQlicmVhazsKPj4gLQo+PiAtCWNhc2Ug
SU5URUxfVUNfRldfVFlQRV9IVUM6Cj4+IC0JCXVjX2Z3LT5tYWpvcl92ZXJfZm91bmQgPQo+PiBG
SUVMRF9HRVQoQ1NTX1NXX1ZFUlNJT05fSFVDX01BSk9SLAo+PiAtCQkJCQkJICAgY3NzLT5zd192
ZXJzaW9uKTsKPj4gLQkJdWNfZnctPm1pbm9yX3Zlcl9mb3VuZCA9Cj4+IEZJRUxEX0dFVChDU1Nf
U1dfVkVSU0lPTl9IVUNfTUlOT1IsCj4+IC0JCQkJCQkgICBjc3MtPnN3X3ZlcnNpb24pOwo+PiAt
CQlicmVhazsKPj4gLQo+PiAtCWRlZmF1bHQ6Cj4+IC0JCU1JU1NJTkdfQ0FTRSh1Y19mdy0+dHlw
ZSk7Cj4+IC0JCWJyZWFrOwo+PiAtCX0KPj4gKwl1Y19mdy0+bWFqb3JfdmVyX2ZvdW5kID0gRklF
TERfR0VUKENTU19TV19WRVJTSU9OX1VDX01BSk9SLAo+PiArCQkJCQkgICBjc3MtPnN3X3ZlcnNp
b24pOwo+PiArCXVjX2Z3LT5taW5vcl92ZXJfZm91bmQgPSBGSUVMRF9HRVQoQ1NTX1NXX1ZFUlNJ
T05fVUNfTUlOT1IsCj4+ICsJCQkJCSAgIGNzcy0+c3dfdmVyc2lvbik7Cj4+Cj4+ICAJaWYgKHVj
X2Z3LT5tYWpvcl92ZXJfZm91bmQgIT0gdWNfZnctPm1ham9yX3Zlcl93YW50ZWQgfHwKPj4gIAkg
ICAgdWNfZnctPm1pbm9yX3Zlcl9mb3VuZCA8IHVjX2Z3LT5taW5vcl92ZXJfd2FudGVkKSB7Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19md19hYmku
aAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5oCj4+IGlu
ZGV4IGFlNThlOGE4YzUzYi4uZjhmNmM5MWEwZGY2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19md19hYmkuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Y19md19hYmkuaAo+PiBAQCAtNjksMTEgKzY5LDkgQEAgc3Ry
dWN0IHVjX2Nzc19oZWFkZXIgewo+PiAgCWNoYXIgdXNlcm5hbWVbOF07Cj4+ICAJY2hhciBidWls
ZG51bWJlclsxMl07Cj4+ICAJdTMyIHN3X3ZlcnNpb247Cj4+IC0jZGVmaW5lIENTU19TV19WRVJT
SU9OX0dVQ19NQUpPUgkoMHhGRiA8PCAxNikKPj4gLSNkZWZpbmUgQ1NTX1NXX1ZFUlNJT05fR1VD
X01JTk9SCSgweEZGIDw8IDgpCj4+IC0jZGVmaW5lIENTU19TV19WRVJTSU9OX0dVQ19QQVRDSAko
MHhGRiA8PCAwKQo+PiAtI2RlZmluZSBDU1NfU1dfVkVSU0lPTl9IVUNfTUFKT1IJKDB4RkZGRiA8
PCAxNikKPj4gLSNkZWZpbmUgQ1NTX1NXX1ZFUlNJT05fSFVDX01JTk9SCSgweEZGRkYgPDwgMCkK
Pj4gKyNkZWZpbmUgQ1NTX1NXX1ZFUlNJT05fVUNfTUFKT1IJCSgweEZGIDw8IDE2KQo+PiArI2Rl
ZmluZSBDU1NfU1dfVkVSU0lPTl9VQ19NSU5PUgkJKDB4RkYgPDwgOCkKPj4gKyNkZWZpbmUgQ1NT
X1NXX1ZFUlNJT05fVUNfUEFUQ0gJCSgweEZGIDw8IDApCj4+ICAJdTMyIHJlc2VydmVkWzE0XTsK
Pj4gIAl1MzIgaGVhZGVyX2luZm87Cj4+ICB9IF9fcGFja2VkOwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
