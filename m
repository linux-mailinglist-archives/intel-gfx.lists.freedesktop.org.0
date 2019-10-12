Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C13D4F61
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2019 13:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A740E6E487;
	Sat, 12 Oct 2019 11:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539A46E487
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Oct 2019 11:38:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Oct 2019 04:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,287,1566889200"; d="scan'208";a="278400512"
Received: from schuenem-mobl2.ger.corp.intel.com (HELO [10.252.55.214])
 ([10.252.55.214])
 by orsmga001.jf.intel.com with ESMTP; 12 Oct 2019 04:38:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191012090854.18037-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ab717c3c-56e1-2569-dd28-15653aa0d635@intel.com>
Date: Sat, 12 Oct 2019 14:38:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191012090854.18037-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Prefer using the pinned_ctx
 for emitting delays on config
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

TWFrZXMgc2Vuc2UsIEkgd2FzIHRoaW5raW5nIGFib3V0IHRoYXQgeWVzdGVyZGF5LgoKV2l0aG91
dCB0aGUgdHlwbyA6IFJldmlld2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiAKPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgoKT24gMTIvMTAvMjAxOSAxMjowOCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFdoZW4gd2UgYXJlIHdhdGNoaW5nIGEgcGFydGljdWxhciBjb250ZXh0LCB3ZSB3YW50
IHRoZSBPQSBjb25maWcgdG8gYmUKPiBhcHBsaWVkIGlubGluZSB3aXRoIHRoYXQgY29udGV4dCBz
dWNoIHRoYXQgaXQgdGFrZXMgZWZmZWN0IGJlZm9yZSB0aGUKPiBuZXh0IHN1Ym1pc3Npb24uCj4K
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+
IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCA5ICsrKysrKystLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gaW5kZXggNzRmNTAxMjBjMTUxLi45NTliNmMzNDE5MzQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+IEBAIC0xOTAzLDYgKzE5MDMsMTEgQEAg
c3RhdGljIGludCBlbWl0X29hX2NvbmZpZyhzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFt
LAo+ICAgCXJldHVybiBlcnI7Cj4gICB9Cj4gICAKPiArc3RhdGljIHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpvYV9jb250ZXh0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4gK3sKPiAr
CXJldHVybiBzdHJlYW0tPnBpbm5lZF9jdHggPzogc3RyZWFtLT5lbmdpbmUtPmtlcm5lbF9jb250
ZXh0Owo+ICt9Cj4gKwo+ICAgc3RhdGljIGludCBoc3dfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0
IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPiAgIHsKPiAgIAlzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKPiBAQCAtMTkyMiw3ICsxOTI3LDcgQEAgc3RhdGlj
IGludCBoc3dfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVh
bSkKPiAgIAlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgR0VONl9VQ0dDVEwxLAo+ICAgCQkJIDAs
IEdFTjZfQ1NVTklUX0NMT0NLX0dBVEVfRElTQUJMRSk7Cj4gICAKPiAtCXJldHVybiBlbWl0X29h
X2NvbmZpZyhzdHJlYW0sIHN0cmVhbS0+ZW5naW5lLT5rZXJuZWxfY29udGV4dCk7Cj4gKwlyZXR1
cm4gZW1pdF9vYV9jb25maWcoc3RyZWFtLCBvYV9jb250ZXh0KHN0cmVhbSkpOwo+ICAgfQo+ICAg
Cj4gICBzdGF0aWMgdm9pZCBoc3dfZGlzYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZf
c3RyZWFtICpzdHJlYW0pCj4gQEAgLTIyODYsNyArMjI5MSw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9l
bmFibGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+ICAgCWlm
IChyZXQpCj4gICAJCXJldHVybiByZXQ7Cj4gICAKPiAtCXJldHVybiBlbWl0X29hX2NvbmZpZyhz
dHJlYW0sIHN0cmVhbS0+ZW5naW5lLT5rZXJuZWxfY29udGV4dCk7Cj4gKwlyZXR1cm4gZW1pdF9v
YV9jb25maWcoc3RyZWFtLCBvYV9jb250ZXh0KHN0cmVhbWEpKTsKCgpUeXBvIGhlcmUgcy9zdHJl
YW1hL3N0cmVhbS8KCgo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZCBnZW44X2Rpc2FibGVfbWV0
cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
