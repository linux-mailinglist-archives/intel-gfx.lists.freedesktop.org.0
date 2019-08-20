Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F3896AF7
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 22:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E69B6E886;
	Tue, 20 Aug 2019 20:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7DF6E886
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 20:57:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 13:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="202803345"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 20 Aug 2019 13:57:41 -0700
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
Date: Tue, 20 Aug 2019 13:57:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820195451.15671-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzIwLzE5IDEyOjU0IFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IFRoZSBjcHUgKGRl
KXRpbGVyIGh3IGlzIGdvbmUsIHRoaXMgc3RvcHBlZCBiZWluZyB1c2VmdWwuIFBsdXMgaXQgbmV2
ZXIKPiBzdXBwb3J0ZWQgYW55IG9mIHRoZSBmYW5jeSBuZXcgdGlsaW5nIGZvcm1hdHMsIHdoaWNo
IG1lYW5zIHVzZXJzcGFjZQo+IGFsc28gc3RvcHBlZCB1c2luZyB0aGUgbWFnaWMgc2lkZS1jaGFu
bmVsIHRoaXMgcHJvdmlkZXMuCj4gCj4gVGhpcyB3b3VsZCB0b3RhbGx5IGJyZWFrIGEgbG90IG9m
IHRoZSBpZ3RzLCBidXQgdGhleSdyZSBhbHJlYWR5IGJyb2tlbgo+IGZvciB0aGUgc2FtZSByZWFz
b25zIGFzIHVzZXJzcGFjZSBvbiBnZW4xMiB3b3VsZCBiZS4KPiAKPiB2MjogTG9vayBhdCBnZ3R0
LT5udW1fZmVuY2VzIGluc3RlYWQsIHRoYXQgYWxzbyBhdm9pZHMgdGhlIG5lZWQgZm9yIGEKPiBj
b21tZW50IChDaHJpcykuIFRoaXMgYWxzbyBtZWFucyB0aGF0IGdlbjEyIHN1cHBvcnQgcmVhbGx5
IG5lZWRzIHRvCj4gbWFrZSBzdXJlIG51bV9mZW5jZXMgaXMgc2V0IHRvIDAuIFRoZXJlIGlzIGEg
cGF0Y2ggZm9yIHRoYXQsIGJ1dCBpdAo+IGNoZWNrcyBmb3IgSEFTX01BUFBBQkxFX0FQRVJUVVJF
LCB3aGljaCBJJ20gbm90IHN1cmUgaXMgdGhlIHJpZ2h0Cj4gdGhpbmcgcmVhbGx5LiBBZGRpbmcg
cmVsZXZhbnQgcGVvcGxlLgo+IAoKV2UnZCBvYnZpb3VzbHkgbmVlZCB0byBtYWtlIHRoYXQgc2V0
dGluZyBmb3IgYWxsIGdlbjEyKywgYmVjYXVzZSBUR0wgCmRvZXMgaGF2ZSBtYXBwYWJsZSBhcGVy
dHVyZS4KCkFwYXJ0IGZyb20gdGhlIHRpbGluZyBpb2N0bCwgdGhlIG9ubHkgcGxhY2UgSSBzZWUg
d2hlcmUgd2Ugc2V0IHRpbGluZyBpcyAKaW50ZWxfYWxsb2NfaW5pdGlhbF9wbGFuZV9vYmooKSwg
Y2FuIHRoZSB1c2VycyBvZiB0aGF0IG9iamVjdCBoYW5kbGUgdGhlIApsYWNrIG9mIGZlbmNlcyBn
cmFjZWZ1bGx5PyBXaGVuIEkgd3JvdGUgdGhlIG51bV9mZW5jZXM9MCBwYXRjaCBJIHdhcyAKZXhw
ZWN0aW5nIGRpc3BsYXkgdG8gYmUgdW5hdmFpbGFibGUsIHNvIEkgZGlkbid0IHJlYWxseSBsb29r
IGF0IHRoYXQgCnBhcnQgb2YgdGhlIGNvZGUuCgpJdCdkIGFsc28gYmUgbmljZSB0byBiZSBtb3Jl
IGV4cGxpY2l0IHdpdGggZmVuY2luZyBzaW5jZSB3ZSBzZWVtIHRvIApvZnRlbiBjYWxsIGk5MTVf
dm1hX3Bpbl9pb21hcCwgd2hpY2ggaW1wbGljaXRseSBhcHBsaWVzIGEgZmVuY2UgaWYgCm5lZWRl
ZCwgb24gb2JqZWN0cyB0aGF0IGNhbid0IGJlIHRpbGVkIG9yIGhhdmUgaGFkIGEgZmVuY2UgYXNz
aWduZWQgYSAKZmV3IGxpbmVzIGJlZm9yZS4gVGhpcyBpcyBtb3JlIGEgbmljZSB0byBoYXZlIHRv
dWdoLCBwb3NzaWJseSB0b2dldGhlciAKd2l0aCBhIHNwbGl0IG9mIHRoZSAibWFwcGFibGUiIGFu
ZCAiZmVuY2VhYmxlIiBhdHRyaWJ1dGVzIG9mIHRoZSB2bWEuCgpEYW5pZWxlCgo+IENjOiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENj
OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+IENjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IEtlbm5ldGggR3JhdW5rZSA8a2Vu
bmV0aEB3aGl0ZWNhcGUub3JnPgo+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFu
ZC5uZXQ+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENj
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90aWxpbmcuYyB8IDcgKysrKysrKwo+ICAg
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKPiBpbmRleCBjYTBjMmY0NTE3NDIuLmU1ZDFhZThkNGRi
YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5n
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKPiBA
QCAtMzEzLDEwICszMTMsMTQgQEAgaW50Cj4gICBpOTE1X2dlbV9zZXRfdGlsaW5nX2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAJCQkgIHN0cnVjdCBkcm1fZmls
ZSAqZmlsZSkKPiAgIHsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZGV2KTsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3NldF90aWxpbmcgKmFyZ3MgPSBk
YXRhOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gICAJaW50IGVycjsK
PiAgIAo+ICsJaWYgKCFkZXZfcHJpdi0+Z2d0dC5udW1fZmVuY2VzKQo+ICsJCXJldHVybiAtRU9Q
Tk9UU1VQUDsKPiArCj4gICAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlLCBhcmdz
LT5oYW5kbGUpOwo+ICAgCWlmICghb2JqKQo+ICAgCQlyZXR1cm4gLUVOT0VOVDsKPiBAQCAtNDAy
LDYgKzQwNiw5IEBAIGk5MTVfZ2VtX2dldF90aWxpbmdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+
ICAgCWludCBlcnIgPSAtRU5PRU5UOwo+ICAgCj4gKwlpZiAoIWRldl9wcml2LT5nZ3R0Lm51bV9m
ZW5jZXMpCj4gKwkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+ICsKPiAgIAlyY3VfcmVhZF9sb2NrKCk7
Cj4gICAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cF9yY3UoZmlsZSwgYXJncy0+aGFuZGxl
KTsKPiAgIAlpZiAob2JqKSB7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
