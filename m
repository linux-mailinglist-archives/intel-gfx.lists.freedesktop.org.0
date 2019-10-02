Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E515C8D6D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 17:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F06316E21E;
	Wed,  2 Oct 2019 15:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D8E6E21E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 15:53:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 08:53:55 -0700
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="190981116"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 02 Oct 2019 08:53:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
 <20191002112000.12280-13-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <16963c88-2d9e-c35d-c093-058ed3931aaf@linux.intel.com>
Date: Wed, 2 Oct 2019 16:53:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002112000.12280-13-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 13/30] drm/i915/gem: Retire directly for
 mmap-offset shrinking
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAyLzEwLzIwMTkgMTI6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBOb3cgdGhhdCB3ZSBj
YW4gcmV0aXJlIHdpdGhvdXQgdGFraW5nIHN0cnVjdF9tdXRleCwgd2UgY2FuIGRvIHNvIHRvCj4g
aGFuZGxlIHNocmlua2luZyB0aGUgbW1hcC1vZmZzZXQgc3BhY2UgYWZ0ZXIgYW4gYWxsb2NhdGlv
biBmYWlsdXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgMTcgKysrKystLS0t
LS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+IGluZGV4
IDQxOGQwZDJiNWZhOS4uNDViYmQyMmMxNGYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jCj4gQEAgLTQzMSwxOSArNDMxLDEyIEBAIHN0YXRpYyBpbnQgY3Jl
YXRlX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gICAJCXJl
dHVybiAwOwo+ICAgCj4gICAJLyogQXR0ZW1wdCB0byByZWFwIHNvbWUgbW1hcCBzcGFjZSBmcm9t
IGRlYWQgb2JqZWN0cyAqLwo+IC0JZG8gewo+IC0JCWVyciA9IGk5MTVfZ2VtX3dhaXRfZm9yX2lk
bGUoaTkxNSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOwo+IC0JCWlmIChlcnIpCj4gLQkJCWJyZWFr
Owo+ICsJZXJyID0gaTkxNV9yZXRpcmVfcmVxdWVzdHNfdGltZW91dChpOTE1LCBNQVhfU0NIRURV
TEVfVElNRU9VVCk7Cj4gKwlpZiAoZXJyKQo+ICsJCXJldHVybiBlcnI7Cj4gICAKPiAtCQlpOTE1
X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGk5MTUpOwo+IC0JCWVyciA9IGRybV9nZW1fY3JlYXRl
X21tYXBfb2Zmc2V0KCZvYmotPmJhc2UpOwo+IC0JCWlmICghZXJyKQo+IC0JCQlicmVhazsKPiAt
Cj4gLQl9IHdoaWxlIChmbHVzaF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5yZXRpcmVfd29yaykp
Owo+IC0KPiAtCXJldHVybiBlcnI7Cj4gKwlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGk5
MTUpOwo+ICsJcmV0dXJuIGRybV9nZW1fY3JlYXRlX21tYXBfb2Zmc2V0KCZvYmotPmJhc2UpOwo+
ICAgfQo+ICAgCj4gICBpbnQKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
