Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0253F1576
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 12:53:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D966ECEA;
	Wed,  6 Nov 2019 11:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E216ECEA
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 11:53:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 03:53:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="227672198"
Received: from savicrad-mobl.ger.corp.intel.com (HELO [10.249.40.217])
 ([10.249.40.217])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Nov 2019 03:53:46 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191105171447.22111-1-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <b5f5bd8b-1300-3077-2de3-1866173165ac@linux.intel.com>
Date: Wed, 6 Nov 2019 12:53:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105171447.22111-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Frob the correct crtc state
 in intel_crtc_disable_noatomic()
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

T3AgMDUtMTEtMjAxOSBvbSAxODoxNCBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFRoZSB1YXBp
IHZzLiBodyBzdGF0ZSBzcGxpdCBpbnRyb2R1Y2VkIGEgYnVnIGluCj4gaW50ZWxfY3J0Y19kaXNh
YmxlX25vYXRvbWljKCkgd2hlcmUgaXQncyBub3QgZnJvYmJpbmcgYW4gYWxyZWFkeQo+IGZyZWVk
IHRlbXAgY3J0YyBzdGF0ZSBpbnN0ZWFkIG9mIGFkanVzdGluZyB0aGUgY3J0YyBzdGF0ZSB3ZQo+
IGFyZSByZWFsbHkgbGVmdCB3aXRoLiBGaXggdGhhdCBieSBtYWtpbmcgYSBjbGVhbmVyIHNlcGFy
YXRpb24KPiBiZXRlZW4gdGhlIHR3by4KPgo+IFRoaXMgY2F1c2VzIGV4cGxvc2lvbnMgb24gYW55
IG1hY2hpbmUgdGhhdCBib290cyB1cCB3aXRoIHBpcGVzCj4gYWxyZWFkeSBydW5uaW5nIGJ1dCBu
b3QgaG9va2VkIHVwIHRvIGFueSBlbmNvZGVyICh0eXBpY2FsCj4gYmVoYXZpb3VyIGZvciBnZW4y
LTQgVkJJT1MpLgo+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gRml4ZXM6IDU4ZDEyNGVhMjczOSAoImRybS9pOTE1OiBDb21wbGV0
ZSBjcnRjIGh3L3VhcGkgc3BsaXQsIHY2LiIpCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKystLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDg3NmZjMjU5Njhi
Zi4uMWY5Mzg2MGZiODk3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiBAQCAtNzE5MSwxMSArNzE5MSwxMyBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9jcnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5kZXYpOwo+ICAJc3Ry
dWN0IGludGVsX2J3X3N0YXRlICpid19zdGF0ZSA9Cj4gIAkJdG9faW50ZWxfYndfc3RhdGUoZGV2
X3ByaXYtPmJ3X29iai5zdGF0ZSk7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSA9Cj4gKwkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5zdGF0ZSk7Cj4gIAllbnVtIGlu
dGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbjsKPiAgCXN0cnVjdCBpbnRlbF9wbGFuZSAq
cGxhbmU7Cj4gIAl1NjQgZG9tYWluczsKPiAgCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0
ZTsKPiAtCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOwo+ICsJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKnRlbXBfY3J0Y19zdGF0ZTsKPiAgCWludCByZXQ7Cj4gIAo+ICAJaWYg
KCFpbnRlbF9jcnRjLT5hY3RpdmUpCj4gQEAgLTcyMTksMTIgKzcyMjEsMTIgQEAgc3RhdGljIHZv
aWQgaW50ZWxfY3J0Y19kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiAg
CXN0YXRlLT5hY3F1aXJlX2N0eCA9IGN0eDsKPiAgCj4gIAkvKiBFdmVyeXRoaW5nJ3MgYWxyZWFk
eSBsb2NrZWQsIC1FREVBRExLIGNhbid0IGhhcHBlbi4gKi8KPiAtCWNydGNfc3RhdGUgPSBpbnRl
bF9hdG9taWNfZ2V0X2NydGNfc3RhdGUoc3RhdGUsIGludGVsX2NydGMpOwo+ICsJdGVtcF9jcnRj
X3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9jcnRjX3N0YXRlKHN0YXRlLCBpbnRlbF9jcnRjKTsK
PiAgCXJldCA9IGRybV9hdG9taWNfYWRkX2FmZmVjdGVkX2Nvbm5lY3RvcnMoc3RhdGUsIGNydGMp
Owo+ICAKPiAtCVdBUk5fT04oSVNfRVJSKGNydGNfc3RhdGUpIHx8IHJldCk7Cj4gKwlXQVJOX09O
KElTX0VSUih0ZW1wX2NydGNfc3RhdGUpIHx8IHJldCk7Cj4gIAo+IC0JZGV2X3ByaXYtPmRpc3Bs
YXkuY3J0Y19kaXNhYmxlKGNydGNfc3RhdGUsIHRvX2ludGVsX2F0b21pY19zdGF0ZShzdGF0ZSkp
Owo+ICsJZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19kaXNhYmxlKHRlbXBfY3J0Y19zdGF0ZSwgdG9f
aW50ZWxfYXRvbWljX3N0YXRlKHN0YXRlKSk7Cj4gIAo+ICAJZHJtX2F0b21pY19zdGF0ZV9wdXQo
c3RhdGUpOwo+ICAKClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
