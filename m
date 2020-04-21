Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D90B11B2A73
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368196E9A1;
	Tue, 21 Apr 2020 14:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD966E9A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 14:47:21 +0000 (UTC)
IronPort-SDR: EzFHdnkUsW9s0IZw8XXStyHv9QTew4zPe2/gD9jUC8avcoSlLMYaFNDyupx8G2ad8VrPsNA4im
 eEJnBDMH7L5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 07:47:21 -0700
IronPort-SDR: ghW0EU1G/h6zbsRXu746fVSsN6nnT3/PdZwX3tqzCpN9mASNqHJd2mEVF/ty9V5xT/Rva1fhQu
 4ExCDRpJSSDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="365368051"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 21 Apr 2020 07:47:20 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EDB925C1DA7; Tue, 21 Apr 2020 17:45:25 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200421142236.8614-1-chris@chris-wilson.co.uk>
References: <20200421142236.8614-1-chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 17:45:25 +0300
Message-ID: <871rognbi2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Disable C-states when
 measuring RPS frequency response
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gTGV0J3Mg
aXNvbGF0ZSB0aGUgaW1wYWN0IG9mIGNwdSBmcmVxdWVuY3kgc2VsZWN0aW9uIG9uIGRldGVybWlu
ZyB0aGUgR1BVCj4gdGhyb3VnaHB1dCBpbiByZXNwb25zZSB0byBzZWxlY3Rpb24gb2YgUlBTIGZy
ZXF1ZW5jaWVzLgo+Cj4gRm9yIHJlYWwgc3lzdGVtcywgd2UgZG8gaGF2ZSB0byBiZSBjb25jZXJu
ZWQgd2l0aCB0aGUgaW1wYWN0IG9mCj4gaW50ZWdyYXRpbmcgYy1zdGF0ZXMsIHAtc3RhdGVzIGFu
ZCBycC1zdGF0ZXMsIGJ1dCBmb3IgdGhlIHNha2Ugb2YKPiBwcm92aW5nIHdoZXRoZXIgb3Igbm90
IFJQUyB3b3Jrcywgb25lIGJhYnkgc3RlcCBhdCBhIHRpbWUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmMgfCAxOCArKysrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ycHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X3Jwcy5jCj4gaW5kZXggMzk1MjY1MTIxZTQzLi5lMmFmYzIwMDNjYWEgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ycHMuYwo+IEBAIC0zLDYgKzMsNyBAQAo+
ICAgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgo+ICAgKi8KPiAgCj4gKyNp
bmNsdWRlIDxsaW51eC9wbV9xb3MuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3NvcnQuaD4KPiAgCj4g
ICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKPiBAQCAtMTQsNiArMTUsOSBAQAo+ICAjaW5j
bHVkZSAic2VsZnRlc3RzL2lndF9zcGlubmVyLmgiCj4gICNpbmNsdWRlICJzZWxmdGVzdHMvbGli
cmFwbC5oIgo+ICAKPiArLyogVHJ5IHRvIGlzb2xhdGUgdGhlIGltcGFjdCBvZiBjc3RhdGVzIGZy
b20gZGV0ZXJtaW5nIGZyZXF1ZW5jeSByZXNwb25zZSAqLwo+ICsjZGVmaW5lIENQVV9MQVRFTkNZ
IDAgLyogLTEgdG8gZGlzYWJsZSBwbV9xb3MsIDAgdG8gZGlzYWJsZSBjc3RhdGVzICovCj4gKwo+
ICBzdGF0aWMgdm9pZCBkdW1teV9ycHNfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKPiAg
ewo+ICB9Cj4gQEAgLTQwNiw2ICs0MTAsNyBAQCBpbnQgbGl2ZV9ycHNfZnJlcXVlbmN5X2NzKHZv
aWQgKmFyZykKPiAgCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7Cj4gIAlzdHJ1Y3QgaW50ZWxf
cnBzICpycHMgPSAmZ3QtPnJwczsKPiAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsK
PiArCXN0cnVjdCBwbV9xb3NfcmVxdWVzdCBxb3M7Cj4gIAllbnVtIGludGVsX2VuZ2luZV9pZCBp
ZDsKPiAgCWludCBlcnIgPSAwOwo+ICAKPiBAQCAtNDIxLDYgKzQyNiw5IEBAIGludCBsaXZlX3Jw
c19mcmVxdWVuY3lfY3Modm9pZCAqYXJnKQo+ICAJaWYgKElOVEVMX0dFTihndC0+aTkxNSkgPCA4
KSAvKiBmb3IgQ1Mgc2ltcGxpY2l0eSAqLwo+ICAJCXJldHVybiAwOwo+ICAKPiArCWlmIChDUFVf
TEFURU5DWSA+PSAwKQo+ICsJCWNwdV9sYXRlbmN5X3Fvc19hZGRfcmVxdWVzdCgmcW9zLCBDUFVf
TEFURU5DWSk7Cj4gKwo+ICAJaW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZShndCk7Cj4gIAlzYXZl
ZF93b3JrID0gcnBzLT53b3JrLmZ1bmM7Cj4gIAlycHMtPndvcmsuZnVuYyA9IGR1bW15X3Jwc193
b3JrOwo+IEBAIC01MjcsNiArNTM1LDkgQEAgaW50IGxpdmVfcnBzX2ZyZXF1ZW5jeV9jcyh2b2lk
ICphcmcpCj4gIAlpbnRlbF9ndF9wbV93YWl0X2Zvcl9pZGxlKGd0KTsKPiAgCXJwcy0+d29yay5m
dW5jID0gc2F2ZWRfd29yazsKPiAgCj4gKwlpZiAoQ1BVX0xBVEVOQ1kgPj0gMCkKPiArCQljcHVf
bGF0ZW5jeV9xb3NfcmVtb3ZlX3JlcXVlc3QoJnFvcyk7Cj4gKwo+ICAJcmV0dXJuIGVycjsKPiAg
fQo+ICAKPiBAQCAtNTM2LDYgKzU0Nyw3IEBAIGludCBsaXZlX3Jwc19mcmVxdWVuY3lfc3JtKHZv
aWQgKmFyZykKPiAgCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7Cj4gIAlzdHJ1Y3QgaW50ZWxf
cnBzICpycHMgPSAmZ3QtPnJwczsKPiAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsK
PiArCXN0cnVjdCBwbV9xb3NfcmVxdWVzdCBxb3M7Cj4gIAllbnVtIGludGVsX2VuZ2luZV9pZCBp
ZDsKPiAgCWludCBlcnIgPSAwOwo+ICAKPiBAQCAtNTUxLDYgKzU2Myw5IEBAIGludCBsaXZlX3Jw
c19mcmVxdWVuY3lfc3JtKHZvaWQgKmFyZykKPiAgCWlmIChJTlRFTF9HRU4oZ3QtPmk5MTUpIDwg
OCkgLyogZm9yIENTIHNpbXBsaWNpdHkgKi8KPiAgCQlyZXR1cm4gMDsKPiAgCj4gKwlpZiAoQ1BV
X0xBVEVOQ1kgPj0gMCkKPiArCQljcHVfbGF0ZW5jeV9xb3NfYWRkX3JlcXVlc3QoJnFvcywgQ1BV
X0xBVEVOQ1kpOwo+ICsKPiAgCWludGVsX2d0X3BtX3dhaXRfZm9yX2lkbGUoZ3QpOwo+ICAJc2F2
ZWRfd29yayA9IHJwcy0+d29yay5mdW5jOwo+ICAJcnBzLT53b3JrLmZ1bmMgPSBkdW1teV9ycHNf
d29yazsKPiBAQCAtNjU2LDYgKzY3MSw5IEBAIGludCBsaXZlX3Jwc19mcmVxdWVuY3lfc3JtKHZv
aWQgKmFyZykKPiAgCWludGVsX2d0X3BtX3dhaXRfZm9yX2lkbGUoZ3QpOwo+ICAJcnBzLT53b3Jr
LmZ1bmMgPSBzYXZlZF93b3JrOwo+ICAKPiArCWlmIChDUFVfTEFURU5DWSA+PSAwKQo+ICsJCWNw
dV9sYXRlbmN5X3Fvc19yZW1vdmVfcmVxdWVzdCgmcW9zKTsKPiArCj4gIAlyZXR1cm4gZXJyOwo+
ICB9Cj4gIAo+IC0tIAo+IDIuMjAuMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
