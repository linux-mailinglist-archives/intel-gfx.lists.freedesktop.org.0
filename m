Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6EB10C9D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 20:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5731C892B9;
	Wed,  1 May 2019 18:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BEE892B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 18:14:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 11:14:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,418,1549958400"; d="scan'208";a="140438950"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 01 May 2019 11:14:43 -0700
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190501153450.30494-1-stuart.summers@intel.com>
 <20190501153450.30494-4-stuart.summers@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <76be3194-3e2d-e390-71f3-8bb0aa39a243@intel.com>
Date: Wed, 1 May 2019 11:14:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190501153450.30494-4-stuart.summers@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Move calculation of subslices
 per slice to new function
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

CgpPbiA1LzEvMTkgODozNCBBTSwgU3R1YXJ0IFN1bW1lcnMgd3JvdGU6Cj4gQWRkIGEgbmV3IGZ1
bmN0aW9uIHRvIHJldHVybiB0aGUgbnVtYmVyIG9mIHN1YnNsaWNlcyBwZXIgc2xpY2UgdG8KPiBj
b25zb2xpZGF0ZSBjb2RlIHVzYWdlLgo+IAo+IHYyOiByZWJhc2Ugb24gY2hhbmdlcyB0byBtb3Zl
IHNzZXUgc3RydWN0IHRvIGludGVsX3NzZXUuaAo+IAo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN0
dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggICAgIHwgNiArKysrKysKPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgfCAyICstCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgNCArKy0tCj4gICAzIGZpbGVzIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfc3NldS5oCj4gaW5kZXggYzBiMTZiMjQ4ZDRjLi5mNWZmNmI3YTc1NmEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oCj4gQEAgLTYzLDYgKzYzLDEyIEBAIGludGVs
X3NzZXVfZnJvbV9kZXZpY2VfaW5mbyhjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSkK
PiAgIAlyZXR1cm4gdmFsdWU7Cj4gICB9Cj4gICAKPiArc3RhdGljIGlubGluZSB1bnNpZ25lZCBp
bnQKPiArc3NldV9zdWJzbGljZXNfcGVyX3NsaWNlKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZv
ICpzc2V1LCB1OCBzbGljZSkKClRoaXMgaXMgZXhwb3NlZCwgc28gbmVlZHMgYW4gaW50ZWxfKiBw
cmVmaXguIHdpdGggdGhhdDoKClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKRGFuaWVsZQoKPiArewo+ICsJcmV0dXJu
IGh3ZWlnaHQ4KHNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2VdKTsKPiArfQo+ICsKPiAgIHUzMiBp
bnRlbF9zc2V1X21ha2VfcnBjcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgIAkJ
CSBjb25zdCBzdHJ1Y3QgaW50ZWxfc3NldSAqcmVxX3NzZXUpOwo+ICAgCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRleCAwZTRkZmZjZDRkYTQuLmZlODU0YzYyOWEzMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gQEAgLTQxODUsNyArNDE4NSw3IEBA
IHN0YXRpYyB2b2lkIGk5MTVfcHJpbnRfc3NldV9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgYm9v
bCBpc19hdmFpbGFibGVfaW5mbywKPiAgIAkJICAgc3NldV9zdWJzbGljZV90b3RhbChzc2V1KSk7
Cj4gICAJZm9yIChzID0gMDsgcyA8IGZscyhzc2V1LT5zbGljZV9tYXNrKTsgcysrKSB7Cj4gICAJ
CXNlcV9wcmludGYobSwgIiAgJXMgU2xpY2UlaSBzdWJzbGljZXM6ICV1XG4iLCB0eXBlLAo+IC0J
CQkgICBzLCBod2VpZ2h0OChzc2V1LT5zdWJzbGljZV9tYXNrW3NdKSk7Cj4gKwkJCSAgIHMsIHNz
ZXVfc3Vic2xpY2VzX3Blcl9zbGljZShzc2V1LCBzKSk7Cj4gICAJfQo+ICAgCXNlcV9wcmludGYo
bSwgIiAgJXMgRVUgVG90YWw6ICV1XG4iLCB0eXBlLAo+ICAgCQkgICBzc2V1LT5ldV90b3RhbCk7
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gaW5kZXggNmFmNDgw
Yjk1YmM2Li41NTljZjBkMDYyOGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmMKPiBAQCAtOTMsNyArOTMsNyBAQCBzdGF0aWMgdm9pZCBzc2V1X2R1bXAoY29u
c3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsIHN0cnVjdCBkcm1fcHJpbnRlciAqcCkKPiAg
IAlkcm1fcHJpbnRmKHAsICJzdWJzbGljZSB0b3RhbDogJXVcbiIsIHNzZXVfc3Vic2xpY2VfdG90
YWwoc3NldSkpOwo+ICAgCWZvciAocyA9IDA7IHMgPCBzc2V1LT5tYXhfc2xpY2VzOyBzKyspIHsK
PiAgIAkJZHJtX3ByaW50ZihwLCAic2xpY2UlZDogJXUgc3Vic2xpY2VzLCBtYXNrPSUwNHhcbiIs
Cj4gLQkJCSAgIHMsIGh3ZWlnaHQ4KHNzZXUtPnN1YnNsaWNlX21hc2tbc10pLAo+ICsJCQkgICBz
LCBzc2V1X3N1YnNsaWNlc19wZXJfc2xpY2Uoc3NldSwgcyksCj4gICAJCQkgICBzc2V1LT5zdWJz
bGljZV9tYXNrW3NdKTsKPiAgIAl9Cj4gICAJZHJtX3ByaW50ZihwLCAiRVUgdG90YWw6ICV1XG4i
LCBzc2V1LT5ldV90b3RhbCk7Cj4gQEAgLTEyNiw3ICsxMjYsNyBAQCB2b2lkIGludGVsX2Rldmlj
ZV9pbmZvX2R1bXBfdG9wb2xvZ3koY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsCj4g
ICAKPiAgIAlmb3IgKHMgPSAwOyBzIDwgc3NldS0+bWF4X3NsaWNlczsgcysrKSB7Cj4gICAJCWRy
bV9wcmludGYocCwgInNsaWNlJWQ6ICV1IHN1YnNsaWNlKHMpICgweCVoaHgpOlxuIiwKPiAtCQkJ
ICAgcywgaHdlaWdodDgoc3NldS0+c3Vic2xpY2VfbWFza1tzXSksCj4gKwkJCSAgIHMsIHNzZXVf
c3Vic2xpY2VzX3Blcl9zbGljZShzc2V1LCBzKSwKPiAgIAkJCSAgIHNzZXUtPnN1YnNsaWNlX21h
c2tbc10pOwo+ICAgCj4gICAJCWZvciAoc3MgPSAwOyBzcyA8IHNzZXUtPm1heF9zdWJzbGljZXM7
IHNzKyspIHsKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
