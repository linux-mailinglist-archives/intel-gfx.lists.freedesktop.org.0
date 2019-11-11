Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C73F7380
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 13:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116666E8D5;
	Mon, 11 Nov 2019 12:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB636E8D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 12:01:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 04:01:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="228900272"
Received: from jccincog-mobl.amr.corp.intel.com (HELO [10.251.131.15])
 ([10.251.131.15])
 by fmsmga004.fm.intel.com with ESMTP; 11 Nov 2019 04:01:55 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-17-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <42e0b52a-bf41-cb4a-cd81-e5c23d56a794@intel.com>
Date: Mon, 11 Nov 2019 12:01:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191110185806.17413-17-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/25] drm/i915/selftests: Fill all the
 drm_vma_manager holes
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

T24gMTAvMTEvMjAxOSAxODo1NywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFRvIHRlc3QgbW1hcF9v
ZmZzZXRfZXhoYXVzdGlvbiwgd2UgZmlyc3QgaGF2ZSB0byBmaWxsIHRoZSBlbnRpcmUgdm1hCj4g
bWFuYWdlciBsZWF2aW5nIGEgc2luZ2xlIHBhZ2UuIERvbid0IGFzc3VtZSB0aGF0IHRoZSB2bWEg
bWFuYWdlciBpcyBub3QKPiBhbHJlYWR5IGZyYWdtZW50LCBhbmQgZmlsbCBhbGwgdGhlIGhvbGVz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CgpXaHkgaXMg
dGhlcmUgYW55dGhpbmcgaW4gdm1fYWRkcl9zcGFjZV9tbSBhdCB0aGlzIHBvaW50PyBKdXN0IGxl
ZnRvdmVycyAKZnJvbSBhIHByZXZpb3VzIHRlc3Qgd2hpY2ggaGF2ZSB5ZXQgdG8gYmUgY2xlYW5l
ZCB1cD8KCj4gLS0tCj4gICAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFu
LmMgICAgfCA0NSArKysrKysrKysrKysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMzMgaW5z
ZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMKPiBpbmRleCBjYWJmNDViMTQwM2Yu
LmIzMDc1NzRlM2YzYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCj4gQEAgLTYwNywyOCArNjA3LDQzIEBAIHN0YXRpYyBp
bnQgaWd0X21tYXBfb2Zmc2V0X2V4aGF1c3Rpb24odm9pZCAqYXJnKQo+ICAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwo+ICAgCXN0cnVjdCBkcm1fbW0gKm1tID0gJmk5MTUt
PmRybS52bWFfb2Zmc2V0X21hbmFnZXItPnZtX2FkZHJfc3BhY2VfbW07Cj4gICAJc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiAtCXN0cnVjdCBkcm1fbW1fbm9kZSByZXN2LCAqaG9s
ZTsKPiAtCXU2NCBob2xlX3N0YXJ0LCBob2xlX2VuZDsKPiArCXN0cnVjdCBkcm1fbW1fbm9kZSAq
aG9sZSwgKm5leHQ7Cj4gICAJaW50IGxvb3AsIGVycjsKPiAgIAo+ICAgCS8qIERpc2FibGUgYmFj
a2dyb3VuZCByZWFwZXIgKi8KPiAgIAlkaXNhYmxlX3JldGlyZV93b3JrZXIoaTkxNSk7Cj4gICAJ
R0VNX0JVR19PTighaTkxNS0+Z3QuYXdha2UpOwo+ICsJaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3Rz
KCZpOTE1LT5ndCk7Cj4gKwlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGk5MTUpOwo+ICAg
Cj4gICAJLyogVHJpbSB0aGUgZGV2aWNlIG1tYXAgc3BhY2UgdG8gb25seSBhIHBhZ2UgKi8KPiAt
CW1lbXNldCgmcmVzdiwgMCwgc2l6ZW9mKHJlc3YpKTsKPiAtCWRybV9tbV9mb3JfZWFjaF9ob2xl
KGhvbGUsIG1tLCBob2xlX3N0YXJ0LCBob2xlX2VuZCkgewo+IC0JCXJlc3Yuc3RhcnQgPSBob2xl
X3N0YXJ0Owo+IC0JCXJlc3Yuc2l6ZSA9IGhvbGVfZW5kIC0gaG9sZV9zdGFydCAtIDE7IC8qIFBB
R0VfU0laRSB1bml0cyAqLwo+IC0JCW1tYXBfb2Zmc2V0X2xvY2soaTkxNSk7Cj4gLQkJZXJyID0g
ZHJtX21tX3Jlc2VydmVfbm9kZShtbSwgJnJlc3YpOwo+IC0JCW1tYXBfb2Zmc2V0X3VubG9jayhp
OTE1KTsKPiArCW1tYXBfb2Zmc2V0X2xvY2soaTkxNSk7Cj4gKwlsb29wID0gMTsgLyogUEFHRV9T
SVpFIHVuaXRzICovCj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoaG9sZSwgbmV4dCwgJm1t
LT5ob2xlX3N0YWNrLCBob2xlX3N0YWNrKSB7Cj4gKwkJc3RydWN0IGRybV9tbV9ub2RlICpyZXN2
Owo+ICsKPiArCQlyZXN2ID0ga3phbGxvYyhzaXplb2YoKnJlc3YpLCBHRlBfTk9XQUlUKTsKPiAr
CQlpZiAoIXJlc3YpIHsKPiArCQkJZXJyID0gLUVOT01FTTsKPiArCQkJZ290byBvdXRfcGFyazsK
PiArCQl9Cj4gKwo+ICsJCXJlc3YtPnN0YXJ0ID0gZHJtX21tX2hvbGVfbm9kZV9zdGFydChob2xl
KSArIGxvb3A7Cj4gKwkJcmVzdi0+c2l6ZSA9IGhvbGUtPmhvbGVfc2l6ZSAtIGxvb3A7Cj4gKwkJ
cmVzdi0+Y29sb3IgPSAtMXVsOwo+ICsJCWxvb3AgPSAwOwoKUHJheWluZyB0aGF0IHRoZXJlIGlz
bid0IGEgb25lIHBhZ2UgaG9sZSBhdCB0aGUgc3RhcnQuClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cgo+ICsKPiArCQlwcl9kZWJ1ZygiUmVzZXJ2aW5n
IGhvbGUgWyVsbHggKyAlbGx4XVxuIiwKPiArCQkJIHJlc3YtPnN0YXJ0LCByZXN2LT5zaXplKTsK
PiArCj4gKwkJZXJyID0gZHJtX21tX3Jlc2VydmVfbm9kZShtbSwgcmVzdik7Cj4gICAJCWlmIChl
cnIpIHsKPiAgIAkJCXByX2VycigiRmFpbGVkIHRvIHRyaW0gVk1BIG1hbmFnZXIsIGVycj0lZFxu
IiwgZXJyKTsKCmtmcmVlKHJlc3YpOwoKPiAgIAkJCWdvdG8gb3V0X3Bhcms7Cj4gICAJCX0KPiAt
CQlicmVhazsKPiAgIAl9Cj4gKwlHRU1fQlVHX09OKCFsaXN0X2lzX3Npbmd1bGFyKCZtbS0+aG9s
ZV9zdGFjaykpOwo+ICsJbW1hcF9vZmZzZXRfdW5sb2NrKGk5MTUpOwo+ICAgCj4gICAJLyogSnVz
dCBmaXRzISAqLwo+ICAgCWlmICghYXNzZXJ0X21tYXBfb2Zmc2V0KGk5MTUsIFBBR0VfU0laRSwg
MCkpIHsKPiBAQCAtNjg1LDkgKzcwMCwxNSBAQCBzdGF0aWMgaW50IGlndF9tbWFwX29mZnNldF9l
eGhhdXN0aW9uKHZvaWQgKmFyZykKPiAgIAo+ICAgb3V0Ogo+ICAgCW1tYXBfb2Zmc2V0X2xvY2so
aTkxNSk7Cj4gLQlkcm1fbW1fcmVtb3ZlX25vZGUoJnJlc3YpOwo+IC0JbW1hcF9vZmZzZXRfdW5s
b2NrKGk5MTUpOwo+ICAgb3V0X3Bhcms6Cj4gKwlkcm1fbW1fZm9yX2VhY2hfbm9kZV9zYWZlKGhv
bGUsIG5leHQsIG1tKSB7Cj4gKwkJaWYgKGhvbGUtPmNvbG9yICE9IC0xdWwpCj4gKwkJCWNvbnRp
bnVlOwo+ICsKPiArCQlkcm1fbW1fcmVtb3ZlX25vZGUoaG9sZSk7Cj4gKwkJa2ZyZWUoaG9sZSk7
Cj4gKwl9Cj4gKwltbWFwX29mZnNldF91bmxvY2soaTkxNSk7Cj4gICAJcmVzdG9yZV9yZXRpcmVf
d29ya2VyKGk5MTUpOwo+ICAgCXJldHVybiBlcnI7Cj4gICBlcnJfb2JqOgo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
