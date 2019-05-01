Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4530310C7C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 19:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4874D88AC2;
	Wed,  1 May 2019 17:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB7088AC2
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 17:54:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 10:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,418,1549958400"; d="scan'208";a="140433951"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 01 May 2019 10:54:26 -0700
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190501153450.30494-1-stuart.summers@intel.com>
 <20190501153450.30494-2-stuart.summers@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <92fa8952-d75e-5af5-7cde-3b4139c79415@intel.com>
Date: Wed, 1 May 2019 10:54:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190501153450.30494-2-stuart.summers@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Use local variable for SSEU
 info in GETPARAM ioctl
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

CgpPbiA1LzEvMTkgODozNCBBTSwgU3R1YXJ0IFN1bW1lcnMgd3JvdGU6Cj4gSW4gdGhlIEdFVFBB
UkFNIGlvY3RsIGhhbmRsZXIsIHVzZSBhIGxvY2FsIHZhcmlhYmxlIHRvIGNvbnNvbGlkYXRlCj4g
dXNhZ2Ugb2YgU1NFVSBydW50aW1lIGluZm8uCj4gCj4gdjI6IGFkZCBjb25zdCB0byBzc2V1X2Rl
dl9pbmZvIHZhcmlhYmxlCj4gCj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMg
PHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAxMSArKysrKystLS0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKPiBpbmRleCAyMWRhYzVhMDlmYmUuLmMzNzYyNDRjMTljNCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwo+IEBAIC0zMjQsNiArMzI0LDcgQEAgc3RhdGljIGludCBpOTE1X2dl
dHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICB7Cj4g
ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwo+ICAg
CXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2Owo+ICsJY29uc3Qgc3Ry
dWN0IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAmUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldTsK
PiAgIAlkcm1faTkxNV9nZXRwYXJhbV90ICpwYXJhbSA9IGRhdGE7Cj4gICAJaW50IHZhbHVlOwo+
ICAgCj4gQEAgLTM3NywxMiArMzc4LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9nZXRwYXJhbV9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgCQl2YWx1ZSA9IGk5MTVf
Y21kX3BhcnNlcl9nZXRfdmVyc2lvbihkZXZfcHJpdik7Cj4gICAJCWJyZWFrOwo+ICAgCWNhc2Ug
STkxNV9QQVJBTV9TVUJTTElDRV9UT1RBTDoKPiAtCQl2YWx1ZSA9IHNzZXVfc3Vic2xpY2VfdG90
YWwoJlJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnNzZXUpOwo+ICsJCXZhbHVlID0gc3NldV9zdWJz
bGljZV90b3RhbChzc2V1KTsKPiAgIAkJaWYgKCF2YWx1ZSkKPiAgIAkJCXJldHVybiAtRU5PREVW
Owo+ICAgCQlicmVhazsKPiAgIAljYXNlIEk5MTVfUEFSQU1fRVVfVE9UQUw6Cj4gLQkJdmFsdWUg
PSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1LmV1X3RvdGFsOwo+ICsJCXZhbHVlID0gc3Nl
dS0+ZXVfdG90YWw7Cj4gICAJCWlmICghdmFsdWUpCj4gICAJCQlyZXR1cm4gLUVOT0RFVjsKPiAg
IAkJYnJlYWs7Cj4gQEAgLTM5OSw3ICs0MDAsNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1f
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgIAkJdmFsdWUgPSBI
QVNfUE9PTEVEX0VVKGRldl9wcml2KTsKPiAgIAkJYnJlYWs7Cj4gICAJY2FzZSBJOTE1X1BBUkFN
X01JTl9FVV9JTl9QT09MOgo+IC0JCXZhbHVlID0gUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3Nl
dS5taW5fZXVfaW5fcG9vbDsKPiArCQl2YWx1ZSA9IHNzZXUtPm1pbl9ldV9pbl9wb29sOwo+ICAg
CQlicmVhazsKPiAgIAljYXNlIEk5MTVfUEFSQU1fSFVDX1NUQVRVUzoKPiAgIAkJdmFsdWUgPSBp
bnRlbF9odWNfY2hlY2tfc3RhdHVzKCZkZXZfcHJpdi0+aHVjKTsKPiBAQCAtNDQ5LDEyICs0NTAs
MTIgQEAgc3RhdGljIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEsCj4gICAJCXZhbHVlID0gaW50ZWxfZW5naW5lc19oYXNfY29udGV4dF9p
c29sYXRpb24oZGV2X3ByaXYpOwo+ICAgCQlicmVhazsKPiAgIAljYXNlIEk5MTVfUEFSQU1fU0xJ
Q0VfTUFTSzoKPiAtCQl2YWx1ZSA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnNzZXUuc2xpY2Vf
bWFzazsKPiArCQl2YWx1ZSA9IHNzZXUtPnNsaWNlX21hc2s7Cj4gICAJCWlmICghdmFsdWUpCj4g
ICAJCQlyZXR1cm4gLUVOT0RFVjsKPiAgIAkJYnJlYWs7Cj4gICAJY2FzZSBJOTE1X1BBUkFNX1NV
QlNMSUNFX01BU0s6Cj4gLQkJdmFsdWUgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1LnN1
YnNsaWNlX21hc2tbMF07Cj4gKwkJdmFsdWUgPSBzc2V1LT5zdWJzbGljZV9tYXNrWzBdOwo+ICAg
CQlpZiAoIXZhbHVlKQo+ICAgCQkJcmV0dXJuIC1FTk9ERVY7Cj4gICAJCWJyZWFrOwo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
