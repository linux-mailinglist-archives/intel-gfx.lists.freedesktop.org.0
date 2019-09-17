Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4538B50C7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 16:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A926ECC6;
	Tue, 17 Sep 2019 14:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B9FD6ECC6
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 14:53:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 07:53:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="193768654"
Received: from mseifert-mobl.ger.corp.intel.com (HELO [10.252.54.177])
 ([10.252.54.177])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2019 07:53:57 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <20190909034325.20006-4-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <369e256b-2dfc-9a5e-5668-b381c07caa20@linux.intel.com>
Date: Tue, 17 Sep 2019 16:53:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190909034325.20006-4-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display/icl: HW state readout
 for transcoder port sync config
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDktMDktMjAxOSBvbSAwNTo0MyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gQWZ0ZXIgdGhl
IHN0YXRlIGlzIGNvbW1pdHRlZCwgd2UgcmVhZG91dCB0aGUgSFcgcmVnaXN0ZXJzIGFuZCBjb21w
YXJlCj4gdGhlIEhXIHN0YXRlIHdpdGggdGhlIFNXIHN0YXRlIHRoYXQgd2UganVzdCBjb21taXR0
ZWQuCj4gRm9yIFRyYW5zY2RvZXIgcG9ydCBzeW5jLCB3ZSBhZGQgbWFzdGVyX3RyYW5zY29kZXIg
YW5kIHRoZQo+IHNhbHZlcyBiaXRtYXNrIHRvIHRoZSBjcnRjX3N0YXRlLCBoZW5jZSB3ZSBuZWVk
IHRvIHJlYWQgdGhvc2UgZHVyaW5nCj4gdGhlIEhXIHN0YXRlIHJlYWRvdXQgdG8gYXZvaWQgcGlw
ZSBzdGF0ZSBtaXNtYXRjaC4KPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNDcgKysr
KysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXgg
YjhmN2E5MTliNmQzLi43NmNhMWNhODY0YzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xMDQyMSw2ICsxMDQyMSw1MCBAQCBzdGF0
aWMgdm9pZCBoYXN3ZWxsX2dldF9kZGlfcG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywKPiAgCX0KPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgaWNlbGFrZV9nZXRfdHJhbnNfcG9ydF9z
eW5jX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiArCQkJCQkgICAgICAgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gKwl1MzIgdHJhbnNfcG9ydF9zeW5jLCB0cmFuc2NvZGVy
cywgbWFzdGVyX3NlbGVjdDsKPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcjsKPiAr
Cj4gKwl0cmFuc19wb3J0X3N5bmMgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMMihwaXBl
X2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpKTsKPiArCWlmICh0cmFuc19wb3J0X3N5bmMgJiBQT1JU
X1NZTkNfTU9ERV9FTkFCTEUpIHsKPiArCQltYXN0ZXJfc2VsZWN0ID0gdHJhbnNfcG9ydF9zeW5j
ICYKPiArCQkJUE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVF9NQVNLOwo+ICsJCXN3aXRjaCAo
bWFzdGVyX3NlbGVjdCkgewo+ICsJCWNhc2UgMToKPiArCQkJcGlwZV9jb25maWctPm1hc3Rlcl90
cmFuc2NvZGVyID0gVFJBTlNDT0RFUl9BOwo+ICsJCQlicmVhazsKPiArCQljYXNlIDI6Cj4gKwkJ
CXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2RlciA9IFRSQU5TQ09ERVJfQjsKPiArCQkJYnJl
YWs7Cj4gKwkJY2FzZSAzOgo+ICsJCQlwaXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIgPSBU
UkFOU0NPREVSX0M7Cj4gKwkJCWJyZWFrOwpTYW1lLCBUUkFOU0NPREVSX0QgKyBNSVNTSU5HX0NB
U0UoKQo+ICsJCWRlZmF1bHQ6Cj4gKwkJCXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2RlciA9
IFRSQU5TQ09ERVJfRURQOwo+ICsJCQlicmVhazsKPiArCQl9Cj4gKwo+ICsJCXBpcGVfY29uZmln
LT5zeW5jX21vZGVfc2xhdmVzX21hc2sgPSAwOwo+ICsJfSBlbHNlIHsKPiArCQlwaXBlX2NvbmZp
Zy0+bWFzdGVyX3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7Cj4gKwo+ICsJCXRyYW5z
Y29kZXJzID0gQklUKFRSQU5TQ09ERVJfRURQKSB8Cj4gKwkJCUJJVChUUkFOU0NPREVSX0EpIHwK
PiArCQkJQklUKFRSQU5TQ09ERVJfQikgfAo+ICsJCQlCSVQoVFJBTlNDT0RFUl9DKTsKPiArCQlm
b3JfZWFjaF9jcHVfdHJhbnNjb2Rlcl9tYXNrZWQoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCB0
cmFuc2NvZGVycykgewo+ICsJCQl0cmFuc19wb3J0X3N5bmMgPSBJOTE1X1JFQUQoVFJBTlNfRERJ
X0ZVTkNfQ1RMMihjcHVfdHJhbnNjb2RlcikpOwo+ICsKPiArCQkJaWYgKHRyYW5zX3BvcnRfc3lu
YyAmIFBPUlRfU1lOQ19NT0RFX0VOQUJMRSkKPiArCQkJCXBpcGVfY29uZmlnLT5zeW5jX21vZGVf
c2xhdmVzX21hc2sgfD0gQklUKGNwdV90cmFuc2NvZGVyKTsKPiArCQl9Cj4gKwl9Cj4gK30KPiAr
Cj4gIHN0YXRpYyBib29sIGhhc3dlbGxfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLAo+ICAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykK
PiAgewo+IEBAIC0xMDUxNyw2ICsxMDU2MSw5IEBAIHN0YXRpYyBib29sIGhhc3dlbGxfZ2V0X3Bp
cGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICAJCXBpcGVfY29uZmlnLT5waXhl
bF9tdWx0aXBsaWVyID0gMTsKPiAgCX0KPiAgCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSkKPiArCQlpY2VsYWtlX2dldF90cmFuc19wb3J0X3N5bmNfY29uZmlnKGNydGMsIHBpcGVf
Y29uZmlnKTsKPiArCj4gIG91dDoKPiAgCWZvcl9lYWNoX3Bvd2VyX2RvbWFpbihwb3dlcl9kb21h
aW4sIHBvd2VyX2RvbWFpbl9tYXNrKQo+ICAJCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9w
cml2LAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
