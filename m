Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B64A63A6DBF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 19:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E066E091;
	Mon, 14 Jun 2021 17:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A616E091;
 Mon, 14 Jun 2021 17:55:08 +0000 (UTC)
IronPort-SDR: Z3QnAwU5WIgApGiVIHYf+X1r/Vp19wOtt55gdQnARvUzMTb5tE/XL83dJBhjXAL6vv/IiaOWck
 Xs1oQAlZyv/g==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="205884325"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="205884325"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:55:07 -0700
IronPort-SDR: OdkTgfodYosXjprdpGEfivCkP3/p5RVOX8VRcmyl2D7V6qdXc9K9f7L2QJBl2R4ie/2zj+mEmr
 vBcftT8ajgEg==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="553434325"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO [10.249.254.50])
 ([10.249.254.50])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:55:06 -0700
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 ramalingam.c@intel.com
References: <20210614162612.294869-1-thomas.hellstrom@linux.intel.com>
 <20210614162612.294869-11-thomas.hellstrom@linux.intel.com>
Message-ID: <0e309744-4d13-69de-2ad8-ee0df5cd46c1@linux.intel.com>
Date: Mon, 14 Jun 2021 19:55:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210614162612.294869-11-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 10/12] drm/i915/ttm: accelerated move
 implementation
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMTQvMjEgNjoyNiBQTSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gRnJvbTogUmFt
YWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+Cj4gSW52b2tlcyB0aGUgcGlwZWxp
bmVkIHBhZ2UgbWlncmF0aW9uIHRocm91Z2ggYmx0LCBmb3IKPiBpOTE1X3R0bV9tb3ZlIHJlcXVl
c3RzIG9mIGV2aWN0aW9uIGFuZCBhbHNvIG9iaiBjbGVhci4KPgo+IFNpZ25lZC1vZmYtYnk6IFJh
bWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiAtLS0KPiB2MjoKPiAgIC0gc3Vi
ZnVuY3Rpb24gZm9yIGFjY2VsX21vdmUgKFRob21hcykKPiAgIC0gZW5naW5lX3BtX2dldC9wdXQg
YXJvdW5kIGNvbnRleHRfbW92ZS9jbGVhciAoVGhvbWFzKQo+ICAgLSBJbnZhbGlkYXRpb24gYXQg
YWNjZWxfY2xlYXIgKFRob21hcykKPiB2MzoKPiAgIC0gY29uZmxpY3QgcmVzb2x1dGlvbiBzLyZi
by0+bWVtL2JvLT5yZXNvdXJjZS9nCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdHRtLmMgfCA4NyArKysrKysrKysrKysrKysrKysrKystLS0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gaW5kZXggYmYzMzcyNGJlZDVjLi4wOGI3MmMy
ODBjYjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0
bS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gQEAg
LTE1LDYgKzE1LDkgQEAKPiAgICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fdHRtLmgiCj4gICAjaW5j
bHVkZSAiZ2VtL2k5MTVfZ2VtX21tYW4uaCIKPiAgIAo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfbWln
cmF0ZS5oIgo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3BtLmgiCj4gKwo+ICAgI2RlZmlu
ZSBJOTE1X1BMX0xNRU0wIFRUTV9QTF9QUklWCj4gICAjZGVmaW5lIEk5MTVfUExfU1lTVEVNIFRU
TV9QTF9TWVNURU0KPiAgICNkZWZpbmUgSTkxNV9QTF9TVE9MRU4gVFRNX1BMX1ZSQU0KPiBAQCAt
MjgyLDYgKzI4NSw2MSBAQCBpOTE1X3R0bV9yZXNvdXJjZV9nZXRfc3Qoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKPiAgIAlyZXR1cm4gaW50ZWxfcmVnaW9uX3R0bV9ub2RlX3RvX3N0
KG9iai0+bW0ucmVnaW9uLCByZXMpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBpbnQgaTkxNV90dG1f
YWNjZWxfbW92ZShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+ICsJCQkgICAgICAgc3Ry
dWN0IHR0bV9yZXNvdXJjZSAqZHN0X21lbSwKPiArCQkJICAgICAgIHN0cnVjdCBzZ190YWJsZSAq
ZHN0X3N0KQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGNvbnRhaW5l
cl9vZihiby0+YmRldiwgdHlwZW9mKCppOTE1KSwKPiArCQkJCQkJICAgICBiZGV2KTsKPiArCXN0
cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlciAqc3JjX21hbiA9Cj4gKwkJdHRtX21hbmFnZXJfdHlw
ZShiby0+YmRldiwgYm8tPnJlc291cmNlLT5tZW1fdHlwZSk7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqID0gaTkxNV90dG1fdG9fZ2VtKGJvKTsKPiArCXN0cnVjdCBzZ190YWJs
ZSAqc3JjX3N0Owo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gKwlpbnQgcmV0Owo+ICsK
PiArCWlmICghaTkxNS0+Z3QubWlncmF0ZS5jb250ZXh0KQo+ICsJCXJldHVybiAtRUlOVkFMOwo+
ICsKPiArCWlmICghYm8tPnR0bSB8fCAhdHRtX3R0X2lzX3BvcHVsYXRlZChiby0+dHRtKSkgewo+
ICsJCWlmIChiby0+dHlwZSA9PSB0dG1fYm9fdHlwZV9rZXJuZWwpCj4gKwkJCXJldHVybiAtRUlO
VkFMOwo+ICsKPiArCQlpZiAoYm8tPnR0bSAmJgo+ICsJCSAgICAhKGJvLT50dG0tPnBhZ2VfZmxh
Z3MgJiBUVE1fUEFHRV9GTEFHX1pFUk9fQUxMT0MpKQo+ICsJCQlyZXR1cm4gMDsKPiArCj4gKwkJ
aW50ZWxfZW5naW5lX3BtX2dldChpOTE1LT5ndC5taWdyYXRlLmNvbnRleHQtPmVuZ2luZSk7Cj4g
KwkJcmV0ID0gaW50ZWxfY29udGV4dF9taWdyYXRlX2NsZWFyKGk5MTUtPmd0Lm1pZ3JhdGUuY29u
dGV4dCwgTlVMTCwKPiArCQkJCQkJICBkc3Rfc3QtPnNnbCwgSTkxNV9DQUNIRV9OT05FLAo+ICsJ
CQkJCQkgIGRzdF9tZW0tPm1lbV90eXBlID49IFRUTV9QTF9QUklWLApIZXJlIHdlIHNob3VsZCBw
cm9iYWJseSB1c2UgSTkxNV9QTF9MTUVNMCBpbnN0ZWFkIG9mIFRUTV9QTF9QUklWLCBidXQgCnNp
bmNlIHRoaXMgdGVzdMKgIHdpbGwgcmVwbGFjZWQgYnkgZ3B1X2JpbmRzX2lvbWVtKCkgaW4gYW4g
dXBjb21pbmcgCnBhdGNoLCBkb2Vzbid0IG1hdHRlciByZWFsbHkuCj4gKwkJCQkJCSAgMCwgJnJx
KTsKPiArCj4gKwkJaWYgKCFyZXQgJiYgcnEpIHsKPiArCQkJaTkxNV9yZXF1ZXN0X3dhaXQocnEs
IDAsIEhaKTsKQ291bGQgYmUgYSBNQVhfU0NIRURVTEVfVElNRU9VVCBoZXJlIHRvIGF2b2lkIHN1
cnByaXNlcyBpbiBjYXNlIHRoZSAKcXVldWUgdG8gdGhlIGJsaXR0ZXIgaXMgZ2V0dGluZyBsb25n
Pwo+ICsJCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKPiArCQl9Cj4gKwkJaW50ZWxfZW5naW5lX3Bt
X3B1dChpOTE1LT5ndC5taWdyYXRlLmNvbnRleHQtPmVuZ2luZSk7Cj4gKwl9IGVsc2Ugewo+ICsJ
CXNyY19zdCA9IHNyY19tYW4tPnVzZV90dCA/IGk5MTVfdHRtX3R0X2dldF9zdChiby0+dHRtKSA6
Cj4gKwkJCQkJCW9iai0+dHRtLmNhY2hlZF9pb19zdDsKPiArCj4gKwkJaW50ZWxfZW5naW5lX3Bt
X2dldChpOTE1LT5ndC5taWdyYXRlLmNvbnRleHQtPmVuZ2luZSk7Cj4gKwkJcmV0ID0gaW50ZWxf
Y29udGV4dF9taWdyYXRlX2NvcHkoaTkxNS0+Z3QubWlncmF0ZS5jb250ZXh0LAo+ICsJCQkJCQkg
TlVMTCwgc3JjX3N0LT5zZ2wsIEk5MTVfQ0FDSEVfTk9ORSwKPiArCQkJCQkJIGJvLT5yZXNvdXJj
ZS0+bWVtX3R5cGUgPj0gVFRNX1BMX1BSSVYsCj4gKwkJCQkJCSBkc3Rfc3QtPnNnbCwgSTkxNV9D
QUNIRV9OT05FLAo+ICsJCQkJCQkgZHN0X21lbS0+bWVtX3R5cGUgPj0gVFRNX1BMX1BSSVYsICZy
cSk7Cj4gKwkJaWYgKCFyZXQgJiYgcnEpIHsKPiArCQkJaTkxNV9yZXF1ZXN0X3dhaXQocnEsIDAs
IEhaKTsKU2FtZSB0aGluZyBoZXJlLgoKCldpdGggdGhhdCBmaXhlZCwKClJldmlld2VkLWJ5OiBU
aG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
