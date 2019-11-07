Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B056FF2BDD
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 11:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BD36E3F7;
	Thu,  7 Nov 2019 10:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC2F6E3F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 10:10:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19112426-1500050 for multiple; Thu, 07 Nov 2019 10:10:15 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191105144414.30470-1-ramalingam.c@intel.com>
References: <20191105144414.30470-1-ramalingam.c@intel.com>
Message-ID: <157312141427.26738.1545059612719681540@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 07 Nov 2019 10:10:14 +0000
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: FB backing gem obj should
 reside in LMEM
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMTEtMDUgMTQ6NDQ6MTQpCj4gSWYgTG9jYWwgbWVt
b3J5IGlzIHN1cHBvcnRlZCBieSBoYXJkd2FyZSwgd2Ugd2FudCBmcmFtZWJ1ZmZlciBiYWNraW5n
Cj4gZ2VtIG9iamVjdHMgZnJvbSBsb2NhbCBtZW1vcnkuCj4gCj4gaWYgdGhlIGJhY2tpbmcgb2Jq
IGlzIG5vdCBmcm9tIExNRU0sIHBpbl90b19kaXNwbGF5IGlzIGZhaWxlZC4KPiAKPiB2MjoKPiAg
IG1lbW9yeSByZWdpb25zIGFyZSBjb3JyZWN0bHkgYXNzaWduZWQgdG8gb2JqLT5tZW1vcnlfcmVn
aW9ucyBbdHZydGtvXQo+ICAgbWlncmF0aW9uIGZhaWx1cmUgaXMgcmVwb3J0ZWQgYXMgZGVidWcg
bG9nIFtUdnJ0a29dCj4gdjM6Cj4gICBNaWdyYXRpb24gaXMgZHJvcHBlZC4gb25seSBlcnJvciBp
cyByZXBvcnRlZCBbRGFuaWVsXQo+ICAgbWVtIHJlZ2lvbiBjaGVjayBpcyBtb3ZlIHRvIHBpbl90
b19kaXNwbGF5IFtDaHJpc10KPiB2NDoKPiAgIHMvZGV2X3ByaXYvaTkxNSBbY2hyaXNdCj4gdjU6
Cj4gICBpOTE1X2dlbV9vYmplY3RfaXNfbG1lbSBpcyB1c2VkIGZvciBkZXRlY3RpbmcgdGhlIG9i
aiBtZW0gdHlwZS4gW01hdHRdCj4gCj4gY2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4u
YyB8IDkgKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gaW5kZXggOTkzN2I0
YzM0MWYxLi5iNmI1YzQzNDgzOTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RvbWFpbi5jCj4gQEAgLTEyLDYgKzEyLDcgQEAKPiAgI2luY2x1ZGUgImk5MTVfZ2Vt
X2lvY3Rscy5oIgo+ICAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0LmgiCj4gICNpbmNsdWRlICJp
OTE1X3ZtYS5oIgo+ICsjaW5jbHVkZSAiaTkxNV9nZW1fbG1lbS5oIgo+ICAKPiAgc3RhdGljIHZv
aWQgX19pOTE1X2dlbV9vYmplY3RfZmx1c2hfZm9yX2Rpc3BsYXkoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKPiAgewo+IEBAIC00MTksMTEgKzQyMCwxOSBAQCBpOTE1X2dlbV9vYmpl
Y3RfcGluX3RvX2Rpc3BsYXlfcGxhbmUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGk5MTVf
Z2d0dF92aWV3ICp2aWV3LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
bnNpZ25lZCBpbnQgZmxhZ3MpCj4gIHsKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKPiAgICAgICAgIHN0cnVjdCBpOTE1X3Zt
YSAqdm1hOwo+ICAgICAgICAgaW50IHJldDsKPiAgCj4gICAgICAgICBhc3NlcnRfb2JqZWN0X2hl
bGQob2JqKTsKPiAgCj4gKyAgICAgICAvKiBHRU0gT2JqIGZvciBmcmFtZSBidWZmZXIgaXMgZXhw
ZWN0ZWQgdG8gYmUgaW4gTE1FTS4gKi8KPiArICAgICAgIGlmIChIQVNfTE1FTShpOTE1KSkKPiAr
ICAgICAgICAgICAgICAgaWYgKCFpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmopKSB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgRFJNX0RFQlVHX0tNUygiT0JKIGlzIG5vdCBmcm9tIExNRU1c
biIpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+
ICsgICAgICAgICAgICAgICB9CgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
