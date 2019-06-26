Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDD156AF6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5AA46E437;
	Wed, 26 Jun 2019 13:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA606E437
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:43:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 06:43:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="188654014"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jun 2019 06:43:14 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8115D5C1EAC; Wed, 26 Jun 2019 16:43:00 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156155636812.26855.17162523955007818580@skylake-alporthouse-com>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <20190626065303.31624-3-chris@chris-wilson.co.uk>
 <8736jw5v22.fsf@gaia.fi.intel.com>
 <156155636812.26855.17162523955007818580@skylake-alporthouse-com>
Date: Wed, 26 Jun 2019 16:43:00 +0300
Message-ID: <87zhm44g4b.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/selftests: Fixup atomic reset
 checking
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI2IDE0OjM1OjAxKQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBXZSByZXF1aXJlIHRoYXQg
dGhlIGludGVsX2dwdV9yZXNldCgpIHdhcyBhdG9taWMsIG5vdCB0aGUgd2hvbGUgb2YKPj4gPiBp
OTE1X3Jlc2V0KCkgd2hpY2ggaXMgZ3VhcmRlZCBieSBhIG11dGV4LiBIb3dldmVyLCB3ZSBkbyBy
ZXF1aXJlIHRoYXQKPj4gPiBpOTE1X3Jlc2V0X2VuZ2luZSgpIGlzIGF0b21pYyBmb3IgdXNlIGZy
b20gd2l0aGluIHRoZSBzdWJtaXNzaW9uIHRhc2tsZXQuCj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gPiAtLS0KPj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYyB8IDY1ICsrKysrKysrKysr
KysrKysrKysrKysrLQo+PiA+ICAxIGZpbGUgY2hhbmdlZCwgNjMgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVz
ZXQuYwo+PiA+IGluZGV4IDY0YzJjOGFiNjRlYy4uNjQxY2YzYWVlOGQ1IDEwMDY0NAo+PiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jlc2V0LmMKPj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jCj4+ID4gQEAgLTczLDExICs3
MywxMyBAQCBzdGF0aWMgaW50IGlndF9hdG9taWNfcmVzZXQodm9pZCAqYXJnKQo+PiA+ICAgICAg
IGZvciAocCA9IGlndF9hdG9taWNfcGhhc2VzOyBwLT5uYW1lOyBwKyspIHsKPj4gPiAgICAgICAg
ICAgICAgIEdFTV9UUkFDRSgiaW50ZWxfZ3B1X3Jlc2V0IHVuZGVyICVzXG4iLCBwLT5uYW1lKTsK
Pj4gPiAgCj4+ID4gLSAgICAgICAgICAgICBwLT5jcml0aWNhbF9zZWN0aW9uX2JlZ2luKCk7Cj4+
ID4gICAgICAgICAgICAgICByZXNldF9wcmVwYXJlKGk5MTUpOwo+PiA+ICsgICAgICAgICAgICAg
cC0+Y3JpdGljYWxfc2VjdGlvbl9iZWdpbigpOwo+PiA+ICsKPj4gPiAgICAgICAgICAgICAgIGVy
ciA9IGludGVsX2dwdV9yZXNldChpOTE1LCBBTExfRU5HSU5FUyk7Cj4+ID4gLSAgICAgICAgICAg
ICByZXNldF9maW5pc2goaTkxNSk7Cj4+ID4gKwo+PiA+ICAgICAgICAgICAgICAgcC0+Y3JpdGlj
YWxfc2VjdGlvbl9lbmQoKTsKPj4gPiArICAgICAgICAgICAgIHJlc2V0X2ZpbmlzaChpOTE1KTsK
Pj4gPiAgCj4+ID4gICAgICAgICAgICAgICBpZiAoZXJyKSB7Cj4+ID4gICAgICAgICAgICAgICAg
ICAgICAgIHByX2VycigiaW50ZWxfZ3B1X3Jlc2V0IGZhaWxlZCB1bmRlciAlc1xuIiwgcC0+bmFt
ZSk7Cj4+ID4gQEAgLTk1LDEyICs5Nyw3MSBAQCBzdGF0aWMgaW50IGlndF9hdG9taWNfcmVzZXQo
dm9pZCAqYXJnKQo+PiA+ICAgICAgIHJldHVybiBlcnI7Cj4+ID4gIH0KPj4gPiAgCj4+ID4gK3N0
YXRpYyBpbnQgaWd0X2F0b21pY19lbmdpbmVfcmVzZXQodm9pZCAqYXJnKQo+PiA+ICt7Cj4+ID4g
KyAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7Cj4+ID4gKyAgICAgY29u
c3QgdHlwZW9mKCppZ3RfYXRvbWljX3BoYXNlcykgKnA7Cj4+IAo+PiBJIGRpZCBhZG1pcmUgdGhl
IG5hc3R5bmVzcyBvZiB0aGlzIGFycmF5Lgo+PiAKPj4gPiArICAgICBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmU7Cj4+ID4gKyAgICAgZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Cj4+ID4g
KyAgICAgaW50IGVyciA9IDA7Cj4+ID4gKwo+PiA+ICsgICAgIC8qIENoZWNrIHRoYXQgdGhlIHJl
c2V0cyBhcmUgdXNhYmxlIGZyb20gYXRvbWljIGNvbnRleHQgKi8KPj4gPiArCj4+ID4gKyAgICAg
aWYgKCFpbnRlbF9oYXNfcmVzZXRfZW5naW5lKGk5MTUpKQo+PiA+ICsgICAgICAgICAgICAgcmV0
dXJuIDA7Cj4+ID4gKwo+PiA+ICsgICAgIGlmIChVU0VTX0dVQ19TVUJNSVNTSU9OKGk5MTUpKQo+
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7Cj4+ID4gKwo+PiA+ICsgICAgIGludGVsX2d0X3Bt
X2dldCgmaTkxNS0+Z3QpOwo+PiA+ICsgICAgIGlndF9nbG9iYWxfcmVzZXRfbG9jayhpOTE1KTsK
Pj4gPiArCj4+ID4gKyAgICAgLyogRmx1c2ggYW55IHJlcXVlc3RzIGJlZm9yZSB3ZSBnZXQgc3Rh
cnRlZCBhbmQgY2hlY2sgYmFzaWNzICovCj4+ID4gKyAgICAgaWYgKCFpZ3RfZm9yY2VfcmVzZXQo
aTkxNSkpCj4+ID4gKyAgICAgICAgICAgICBnb3RvIG91dF91bmxvY2s7Cj4+IAo+PiBJIHdvdWxk
IHN0aWxsIGdvIG91dCB3aXRoIGVycm9yIGlmIHRoZSBwcmVyZXF1aXNpdGVzCj4+IGFyZSBub3Qg
bWV0Pwo+Cj4gSXQncyBqdXN0IHNvIHRoYXQgdGhlIHNlbGZ0ZXN0cyByZXBvcnQgZ3JlZW4gZXhj
ZXB0IGZvciB0aGUgMSBvciAyIHRoYXQKPiBleHBsaWNpdGx5IHJlcG9ydCBhcyByZWQgaWYgdGhl
IG1hY2hpbmUgaXMgdGVybWluYWxseSB3ZWRnZWQgYXQgYm9vdC4KPgo+IEl0J3MganVzdCBkYW1h
Z2UgY29udHJvbC4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
