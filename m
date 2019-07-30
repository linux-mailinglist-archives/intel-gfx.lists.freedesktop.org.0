Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC2A7A259
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 09:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990066E41F;
	Tue, 30 Jul 2019 07:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2486E41F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 07:35:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 00:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="346910447"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 30 Jul 2019 00:35:17 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
 <20190729234727.28286-5-daniele.ceraolospurio@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <acb578ed-2cc9-c7a2-edfd-3927e86233c7@linux.intel.com>
Date: Tue, 30 Jul 2019 08:35:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729234727.28286-5-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gt: introduce
 intel_gt_runtime_suspend/resume
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDMwLzA3LzIwMTkgMDA6NDcsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gVG8g
YmUgY2FsbGVkIGZyb20gdGhlIHRvcCBsZXZlbCBydW50aW1lIGZ1bmN0aW9ucywgdG8gaGlkZSB0
aGUKPiBndC1zcGVjaWZpYyBiaXRzIChtYWlubHkgcmVsYXRlZCB0byBpbnRlbF91YykuCgpMb29r
cyBva2F5IHRvIG1lLgoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCgpQLlMuIEFkZGVkIEFuZGkgYW5kIFJhbSB0
byBDYyBzaW5jZSBQTS9SUFMgdGFzay4KCgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfcG0uYyB8IDEyICsrKysrKysrKysrKwo+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaCB8ICAyICsrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jICAgICAgIHwgIDkgKysrLS0tLS0tCj4gICAzIGZpbGVzIGNoYW5nZWQsIDE3IGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9wbS5jCj4gaW5kZXggNjVjMGQwYzlkNTQzLi4xYTMyZTNlNTIzYzAgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKPiBAQCAtMTY0LDMgKzE2NCwxNSBAQCBpbnQg
aW50ZWxfZ3RfcmVzdW1lKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gICAKPiAgIAlyZXR1cm4gZXJy
Owo+ICAgfQo+ICsKPiArdm9pZCBpbnRlbF9ndF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGludGVs
X2d0ICpndCkKPiArewo+ICsJaW50ZWxfdWNfcnVudGltZV9zdXNwZW5kKCZndC0+dWMpOwo+ICt9
Cj4gKwo+ICtpbnQgaW50ZWxfZ3RfcnVudGltZV9yZXN1bWUoc3RydWN0IGludGVsX2d0ICpndCkK
PiArewo+ICsJaW50ZWxfZ3RfaW5pdF9zd2l6emxpbmcoZ3QpOwo+ICsKPiArCXJldHVybiBpbnRl
bF91Y19yZXN1bWUoJmd0LT51Yyk7Cj4gK30KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
X3BtLmgKPiBpbmRleCBiYTk2MGUxZmMyMDkuLjUyNzg5NGZlMTM0NSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaAo+IEBAIC0yMyw1ICsyMyw3IEBAIHZvaWQgaW50ZWxf
Z3RfcG1faW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKPiAgIAo+ICAgdm9pZCBpbnRl
bF9ndF9zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBib29sIGZvcmNlKTsKPiAgIGludCBp
bnRlbF9ndF9yZXN1bWUoc3RydWN0IGludGVsX2d0ICpndCk7Cj4gK3ZvaWQgaW50ZWxfZ3RfcnVu
dGltZV9zdXNwZW5kKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwo+ICtpbnQgaW50ZWxfZ3RfcnVudGlt
ZV9yZXN1bWUoc3RydWN0IGludGVsX2d0ICpndCk7Cj4gICAKPiAgICNlbmRpZiAvKiBJTlRFTF9H
VF9QTV9IICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggM2NkM2JlNjlkYmFkLi5i
YzdmZmRhMTBlNWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtMjkyNSw3ICsy
OTI1LDcgQEAgc3RhdGljIGludCBpbnRlbF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAq
a2RldikKPiAgIAkgKi8KPiAgIAlpOTE1X2dlbV9ydW50aW1lX3N1c3BlbmQoZGV2X3ByaXYpOwo+
ICAgCj4gLQlpbnRlbF91Y19ydW50aW1lX3N1c3BlbmQoJmRldl9wcml2LT5ndC51Yyk7Cj4gKwlp
bnRlbF9ndF9ydW50aW1lX3N1c3BlbmQoJmRldl9wcml2LT5ndCk7Cj4gICAKPiAgIAlpbnRlbF9y
dW50aW1lX3BtX2Rpc2FibGVfaW50ZXJydXB0cyhkZXZfcHJpdik7Cj4gICAKPiBAQCAtMjk1MCw5
ICsyOTUwLDggQEAgc3RhdGljIGludCBpbnRlbF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmlj
ZSAqa2RldikKPiAgIAo+ICAgCQlpbnRlbF9ydW50aW1lX3BtX2VuYWJsZV9pbnRlcnJ1cHRzKGRl
dl9wcml2KTsKPiAgIAo+IC0JCWludGVsX3VjX3Jlc3VtZSgmZGV2X3ByaXYtPmd0LnVjKTsKPiAr
CQlpbnRlbF9ndF9ydW50aW1lX3Jlc3VtZSgmZGV2X3ByaXYtPmd0KTsKPiAgIAo+IC0JCWludGVs
X2d0X2luaXRfc3dpenpsaW5nKCZkZXZfcHJpdi0+Z3QpOwo+ICAgCQlpOTE1X2dlbV9yZXN0b3Jl
X2ZlbmNlcyhkZXZfcHJpdik7Cj4gICAKPiAgIAkJZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMo
cnBtKTsKPiBAQCAtMzA0NywxMyArMzA0NiwxMSBAQCBzdGF0aWMgaW50IGludGVsX3J1bnRpbWVf
cmVzdW1lKHN0cnVjdCBkZXZpY2UgKmtkZXYpCj4gICAKPiAgIAlpbnRlbF9ydW50aW1lX3BtX2Vu
YWJsZV9pbnRlcnJ1cHRzKGRldl9wcml2KTsKPiAgIAo+IC0JaW50ZWxfdWNfcmVzdW1lKCZkZXZf
cHJpdi0+Z3QudWMpOwo+IC0KPiAgIAkvKgo+ICAgCSAqIE5vIHBvaW50IG9mIHJvbGxpbmcgYmFj
ayB0aGluZ3MgaW4gY2FzZSBvZiBhbiBlcnJvciwgYXMgdGhlIGJlc3QKPiAgIAkgKiB3ZSBjYW4g
ZG8gaXMgdG8gaG9wZSB0aGF0IHRoaW5ncyB3aWxsIHN0aWxsIHdvcmsgKGFuZCBkaXNhYmxlIFJQ
TSkuCj4gICAJICovCj4gLQlpbnRlbF9ndF9pbml0X3N3aXp6bGluZygmZGV2X3ByaXYtPmd0KTsK
PiArCWludGVsX2d0X3J1bnRpbWVfcmVzdW1lKCZkZXZfcHJpdi0+Z3QpOwo+ICAgCWk5MTVfZ2Vt
X3Jlc3RvcmVfZmVuY2VzKGRldl9wcml2KTsKPiAgIAo+ICAgCS8qCj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
