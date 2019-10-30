Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA12E9DFE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 15:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67096EA56;
	Wed, 30 Oct 2019 14:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD1D6EA56
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 14:55:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 07:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; d="scan'208";a="230471012"
Received: from cepartan-mobl3.ger.corp.intel.com (HELO [10.249.40.248])
 ([10.249.40.248])
 by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2019 07:55:51 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191029145526.10308-1-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <2a493957-6a1b-1221-48a1-726e9e26587f@linux.intel.com>
Date: Wed, 30 Oct 2019 15:55:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029145526.10308-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop frobbing crtc->base.mode
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjktMTAtMjAxOSBvbSAxNTo1NSBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFRoZSBjb3Jl
IG5vIGxvbmdlciB1c2VzIGRybV9jcnRjX3N0YXRlOjptb2RlIHdpdGggYXRvbWljIGRyaXZlcnMs
Cj4gc28gbGV0J3Mgc3RvcCBmcm9iYmluZyBpdCBpbiB0aGUgZHJpdmVyLiBGb3IgdGhlIHVzZXIg
bW9kZSByZWFkb3V0Cj4gd2UnbGwganVzdCB1c2UgYW4gb24gc3RhY2sgbW9kZS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MTggKysrKysrKysrLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDkgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IGluZGV4IGU1NmE3NWMwNzA0My4uOTZmNzZhYmIyZDM3IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTQxMjcs
OSArMTQxMjcsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9waXBlX2Zhc3RzZXQoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAo+ICAJc3RydWN0IGludGVsX2NydGMg
KmNydGMgPSB0b19pbnRlbF9jcnRjKG5ld19jcnRjX3N0YXRlLT5iYXNlLmNydGMpOwo+ICAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7
Cj4gIAo+IC0JLyogZHJtX2F0b21pY19oZWxwZXJfdXBkYXRlX2xlZ2FjeV9tb2Rlc2V0X3N0YXRl
IG1pZ2h0IG5vdCBiZSBjYWxsZWQuICovCj4gLQljcnRjLT5iYXNlLm1vZGUgPSBuZXdfY3J0Y19z
dGF0ZS0+YmFzZS5tb2RlOwo+IC0KPiAgCS8qCj4gIAkgKiBVcGRhdGUgcGlwZSBzaXplIGFuZCBh
ZGp1c3QgZml0dGVyIGlmIG5lZWRlZDogdGhlIHJlYXNvbiBmb3IgdGhpcyBpcwo+ICAJICogdGhh
dCBpbiBjb21wdXRlX21vZGVfY2hhbmdlcyB3ZSBjaGVjayB0aGUgbmF0aXZlIG1vZGUgKG5vdCB0
aGUgcGZpdAo+IEBAIC0xNzM5NCwxMyArMTczOTEsMTYgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9k
ZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gIAkJc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZTsKPiAgCQlpbnQgbWluX2NkY2xrID0gMDsKPiAgCj4gLQkJbWVt
c2V0KCZjcnRjLT5iYXNlLm1vZGUsIDAsIHNpemVvZihjcnRjLT5iYXNlLm1vZGUpKTsKPiAgCQlp
ZiAoY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUpIHsKPiAtCQkJaW50ZWxfbW9kZV9mcm9tX3BpcGVf
Y29uZmlnKCZjcnRjLT5iYXNlLm1vZGUsIGNydGNfc3RhdGUpOwo+IC0JCQljcnRjLT5iYXNlLm1v
ZGUuaGRpc3BsYXkgPSBjcnRjX3N0YXRlLT5waXBlX3NyY193Owo+IC0JCQljcnRjLT5iYXNlLm1v
ZGUudmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5waXBlX3NyY19oOwo+IC0JCQlpbnRlbF9tb2RlX2Zy
b21fcGlwZV9jb25maWcoJmNydGNfc3RhdGUtPmJhc2UuYWRqdXN0ZWRfbW9kZSwgY3J0Y19zdGF0
ZSk7Cj4gLQkJCVdBUk5fT04oZHJtX2F0b21pY19zZXRfbW9kZV9mb3JfY3J0YygmY3J0Y19zdGF0
ZS0+YmFzZSwgJmNydGMtPmJhc2UubW9kZSkpOwo+ICsJCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZSBtb2RlOwo+ICsKPiArCQkJaW50ZWxfbW9kZV9mcm9tX3BpcGVfY29uZmlnKCZjcnRjX3N0YXRl
LT5iYXNlLmFkanVzdGVkX21vZGUsCj4gKwkJCQkJCSAgICBjcnRjX3N0YXRlKTsKPiArCj4gKwkJ
CW1vZGUgPSBjcnRjX3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGU7Cj4gKwkJCW1vZGUuaGRpc3Bs
YXkgPSBjcnRjX3N0YXRlLT5waXBlX3NyY193Owo+ICsJCQltb2RlLnZkaXNwbGF5ID0gY3J0Y19z
dGF0ZS0+cGlwZV9zcmNfaDsKPiArCQkJV0FSTl9PTihkcm1fYXRvbWljX3NldF9tb2RlX2Zvcl9j
cnRjKCZjcnRjX3N0YXRlLT5iYXNlLCAmbW9kZSkpOwo+ICAKPiAgCQkJLyoKPiAgCQkJICogVGhl
IGluaXRpYWwgbW9kZSBuZWVkcyB0byBiZSBzZXQgaW4gb3JkZXIgdG8ga2VlcAoKSGV5LAoKV2Ug
dXNlZCB0byBkbyB0aGlzIG5vdCBmb3IgdGhlIGNvcmUsIGJ1dCBiZWNhdXNlIGk5MTUgc3RpbGwg
dXNlZCBjcnRjLT5iYXNlLm1vZGUgaW4gc29tZSBjYXNlcy4gSSBndWVzcyB3ZSBubyBsb25nZXIg
ZG8sIHNvIHRoaXMgaXMgZmluZS4KClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKfk1hYXJ0ZW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
