Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B3EB5E71
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 09:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD466EE2C;
	Wed, 18 Sep 2019 07:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BFCF6EE2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 07:57:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 00:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="338254878"
Received: from mmoller-mobl2.ger.corp.intel.com (HELO [10.249.39.68])
 ([10.249.39.68])
 by orsmga004.jf.intel.com with ESMTP; 18 Sep 2019 00:57:30 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190918003352.26322-1-manasi.d.navare@intel.com>
 <20190918003352.26322-3-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <6c3d04e0-2729-2704-5817-16e6f052ac4f@linux.intel.com>
Date: Wed, 18 Sep 2019 09:57:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190918003352.26322-3-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 3/6] drm/i915/display/icl: HW state readout for
 transcoder port sync config
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

T3AgMTgtMDktMjAxOSBvbSAwMjozMyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gQWZ0ZXIgdGhl
IHN0YXRlIGlzIGNvbW1pdHRlZCwgd2UgcmVhZG91dCB0aGUgSFcgcmVnaXN0ZXJzIGFuZCBjb21w
YXJlCj4gdGhlIEhXIHN0YXRlIHdpdGggdGhlIFNXIHN0YXRlIHRoYXQgd2UganVzdCBjb21taXR0
ZWQuCj4gRm9yIFRyYW5zY2RvZXIgcG9ydCBzeW5jLCB3ZSBhZGQgbWFzdGVyX3RyYW5zY29kZXIg
YW5kIHRoZQo+IHNhbHZlcyBiaXRtYXNrIHRvIHRoZSBjcnRjX3N0YXRlLCBoZW5jZSB3ZSBuZWVk
IHRvIHJlYWQgdGhvc2UgZHVyaW5nCj4gdGhlIEhXIHN0YXRlIHJlYWRvdXQgdG8gYXZvaWQgcGlw
ZSBzdGF0ZSBtaXNtYXRjaC4KPgo+IHYyOgo+ICogQWRkIFRyYW5zY29kZXJfRCBhbmQgTUlTU0lO
R19DQVNFIChNYWFydGVuKQo+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiBSZXZp
ZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCA0OSArKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDkgaW5zZXJ0
aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPiBpbmRleCBiMGY3NmU0N2Y1YTYuLmJlYTNmNjMxYWQzNiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEwNDM5LDYgKzEwNDM5
LDUyIEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfZ2V0X2RkaV9wb3J0X3N0YXRlKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjLAo+ICAJfQo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBpY2VsYWtlX2dldF90
cmFuc19wb3J0X3N5bmNfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICsJCQkJCSAg
ICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCj4gK3sKPiArCXN0cnVj
dCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRldjsKPiArCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiArCXUzMiB0cmFuc19wb3J0X3N5bmMs
IHRyYW5zY29kZXJzLCBtYXN0ZXJfc2VsZWN0Owo+ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFu
c2NvZGVyOwo+ICsKPiArCXRyYW5zX3BvcnRfc3luYyA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVO
Q19DVEwyKHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlcikpOwo+ICsJaWYgKHRyYW5zX3BvcnRf
c3luYyAmIFBPUlRfU1lOQ19NT0RFX0VOQUJMRSkgewo+ICsJCW1hc3Rlcl9zZWxlY3QgPSB0cmFu
c19wb3J0X3N5bmMgJgo+ICsJCQlQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX01BU0s7Cj4g
KwkJc3dpdGNoIChtYXN0ZXJfc2VsZWN0KSB7Cj4gKwkJY2FzZSAxOgo+ICsJCQlwaXBlX2NvbmZp
Zy0+bWFzdGVyX3RyYW5zY29kZXIgPSBUUkFOU0NPREVSX0E7Cj4gKwkJCWJyZWFrOwo+ICsJCWNh
c2UgMjoKPiArCQkJcGlwZV9jb25maWctPm1hc3Rlcl90cmFuc2NvZGVyID0gVFJBTlNDT0RFUl9C
Owo+ICsJCQlicmVhazsKPiArCQljYXNlIDM6Cj4gKwkJCXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJh
bnNjb2RlciA9IFRSQU5TQ09ERVJfQzsKPiArCQkJYnJlYWs7Cj4gKwkJY2FzZSA0Ogo+ICsJCQlw
aXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIgPSBUUkFOU0NPREVSX0Q7Cj4gKwkJCWJyZWFr
Owo+ICsJCWRlZmF1bHQ6Cj4gKwkJCU1JU1NJTkdfQ0FTRShtYXN0ZXJfc2VsZWN0KTsKPiArCQl9
Cj4gKwo+ICsJCXBpcGVfY29uZmlnLT5zeW5jX21vZGVfc2xhdmVzX21hc2sgPSAwOwo+ICsJfSBl
bHNlIHsKPiArCQlwaXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5T
Q09ERVI7Cj4gKwo+ICsJCXRyYW5zY29kZXJzID0gQklUKFRSQU5TQ09ERVJfRURQKSB8Cj4gKwkJ
CUJJVChUUkFOU0NPREVSX0EpIHwKPiArCQkJQklUKFRSQU5TQ09ERVJfQikgfAo+ICsJCQlCSVQo
VFJBTlNDT0RFUl9DKTsKXk1pc3NlZCBvbmUgc3BvdCBmb3IgdHJhbnNjb2RlciBELi4gYWxzbyBF
RFAgaXMgc3RpbGwgaGVyZT8KPiArCQlmb3JfZWFjaF9jcHVfdHJhbnNjb2Rlcl9tYXNrZWQoZGV2
X3ByaXYsIGNwdV90cmFuc2NvZGVyLCB0cmFuc2NvZGVycykgewo+ICsJCQl0cmFuc19wb3J0X3N5
bmMgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMMihjcHVfdHJhbnNjb2RlcikpOwo+ICsK
PiArCQkJaWYgKHRyYW5zX3BvcnRfc3luYyAmIFBPUlRfU1lOQ19NT0RFX0VOQUJMRSkKPiArCQkJ
CXBpcGVfY29uZmlnLT5zeW5jX21vZGVfc2xhdmVzX21hc2sgfD0gQklUKGNwdV90cmFuc2NvZGVy
KTsKPiArCQl9Cj4gKwl9Cj4gK30KPiArCj4gIHN0YXRpYyBib29sIGhhc3dlbGxfZ2V0X3BpcGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICAJCQkJICAgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpwaXBlX2NvbmZpZykKPiAgewo+IEBAIC0xMDUzNSw2ICsxMDU4MSw5IEBAIHN0
YXRpYyBib29sIGhhc3dlbGxfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LAo+ICAJCXBpcGVfY29uZmlnLT5waXhlbF9tdWx0aXBsaWVyID0gMTsKPiAgCX0KPiAgCj4gKwlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiArCQlpY2VsYWtlX2dldF90cmFuc19wb3J0
X3N5bmNfY29uZmlnKGNydGMsIHBpcGVfY29uZmlnKTsKPiArCj4gIG91dDoKPiAgCWZvcl9lYWNo
X3Bvd2VyX2RvbWFpbihwb3dlcl9kb21haW4sIHBvd2VyX2RvbWFpbl9tYXNrKQo+ICAJCWludGVs
X2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
