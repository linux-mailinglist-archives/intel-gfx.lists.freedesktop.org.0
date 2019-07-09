Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2529763302
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 10:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E2389F6F;
	Tue,  9 Jul 2019 08:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D42C89F6F
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 08:44:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 01:44:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170531325"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 01:44:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190709081718.27843-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ea745d23-6d1f-62b7-38f1-4a311b1835f7@linux.intel.com>
Date: Tue, 9 Jul 2019 09:44:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190709081718.27843-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/userptr: Don't mark readonly
 objects as dirty
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

Ck9uIDA5LzA3LzIwMTkgMDk6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB3ZSBtYXAgYW4g
b2JqZWN0IGFzIHJlYWRvbmx5IGludG8gdGhlIEdUVCwgd2Uga25vdyB0aGF0IHRoZSBHUFUKPiBj
YW5ub3QgaGF2ZSB3cml0dGVuIHRvIGl0IGFuZCBzbyB0aGUgb2JqZWN0IGlzIG5vdCBkaXJ0eSBh
bmQgd2UgZG9uJ3QKPiBuZWVkIHRvIGZsdXNoIHRoZSB3cml0ZXMgYmFjayB0byB0aGUgc3lzdGVt
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyB8IDggKysr
KysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKPiBpbmRleCAzMmQyMDhlZGUzNDMu
LmI5ZDJiYjE1ZTRhNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdXNlcnB0ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3VzZXJwdHIuYwo+IEBAIC02NjMsNiArNjYzLDE0IEBAIGk5MTVfZ2VtX3VzZXJwdHJfcHV0X3Bh
Z2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gICAJX19pOTE1X2dlbV9vYmpl
Y3RfcmVsZWFzZV9zaG1lbShvYmosIHBhZ2VzLCB0cnVlKTsKPiAgIAlpOTE1X2dlbV9ndHRfZmlu
aXNoX3BhZ2VzKG9iaiwgcGFnZXMpOwo+ICAgCj4gKwkvKgo+ICsJICogV2UgYWx3YXlzIG1hcmsg
b2JqZWN0cyBhcyBkaXJ0eSB3aGVuIHRoZXkgYXJlIHVzZWQgYnkgdGhlIEdQVSwKPiArCSAqIGp1
c3QgaW4gY2FzZS4gSG93ZXZlciwgaWYgd2Ugc2V0IHRoZSB2bWEgYXMgYmVpbmcgcmVhZC1vbmx5
IHdlIGtub3cKPiArCSAqIHRoYXQgdGhlIG9iamVjdCB3aWxsIG5ldmVyIGhhdmUgYmVlbiB3cml0
dGVuIHRvLgo+ICsJICovCj4gKwlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3JlYWRvbmx5KG9iaikp
Cj4gKwkJb2JqLT5tbS5kaXJ0eSA9IGZhbHNlOwo+ICsKPiAgIAlmb3JfZWFjaF9zZ3RfcGFnZShw
YWdlLCBzZ3RfaXRlciwgcGFnZXMpIHsKPiAgIAkJaWYgKG9iai0+bW0uZGlydHkpCj4gICAJCQkv
Kgo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
