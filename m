Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EBFE0556
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 15:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867326E7DB;
	Tue, 22 Oct 2019 13:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203966E7E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 13:41:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 06:41:56 -0700
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="191465496"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Oct 2019 06:41:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191022130221.20644-1-chris@chris-wilson.co.uk>
 <20191022130221.20644-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0e8497de-de88-f419-7bc5-f164c6a1e8cd@linux.intel.com>
Date: Tue, 22 Oct 2019 14:41:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022130221.20644-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Teach
 switch_to_context() to use the context
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

Ck9uIDIyLzEwLzIwMTkgMTQ6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgY29udGV4dCBk
ZXRhaWxzIHdoaWNoIGVuZ2luZXMgdG8gdXNlLCBzbyB1c2UgdGhlIGN0eC0+ZW5naW5lc1tdIHRv
Cj4gZ2VuZXJhdGUgdGhlIHJlcXVlc3RzIHRvIGNhdXNlIHRoZSBjb250ZXh0IHN3aXRjaC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jIHwgMTkgKysrKysrKysr
LS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMKPiBp
bmRleCA5N2Y4OWY3NDRlZTIuLjg0ZTdjYTc3OGI3YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jCj4gQEAgLTE1LDE2ICsxNSwxNSBAQAo+ICAgI2luY2x1
ZGUgImlndF9mbHVzaF90ZXN0LmgiCj4gICAjaW5jbHVkZSAibW9ja19kcm0uaCIKPiAgIAo+IC1z
dGF0aWMgaW50IHN3aXRjaF90b19jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LAo+IC0JCQkgICAgIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCj4gK3N0YXRpYyBpbnQg
c3dpdGNoX3RvX2NvbnRleHQoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKPiAgIHsKPiAt
CXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiAtCWVudW0gaW50ZWxfZW5naW5lX2lk
IGlkOwo+ICsJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBpdDsKPiArCXN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZTsKPiAgIAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQp
IHsKPiArCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2VtX2NvbnRleHRfbG9ja19lbmdp
bmVzKGN0eCksIGl0KSB7Cj4gICAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ICAgCj4gLQkJ
cnEgPSBpZ3RfcmVxdWVzdF9hbGxvYyhjdHgsIGVuZ2luZSk7Cj4gKwkJcnEgPSBpbnRlbF9jb250
ZXh0X2NyZWF0ZV9yZXF1ZXN0KGNlKTsKPiAgIAkJaWYgKElTX0VSUihycSkpCj4gICAJCQlyZXR1
cm4gUFRSX0VSUihycSk7Cj4gICAKPiBAQCAtMTQwLDcgKzEzOSw3IEBAIHN0YXRpYyBpbnQgaWd0
X2dlbV9zdXNwZW5kKHZvaWQgKmFyZykKPiAgIAllcnIgPSAtRU5PTUVNOwo+ICAgCWN0eCA9IGxp
dmVfY29udGV4dChpOTE1LCBmaWxlKTsKPiAgIAlpZiAoIUlTX0VSUihjdHgpKQo+IC0JCWVyciA9
IHN3aXRjaF90b19jb250ZXh0KGk5MTUsIGN0eCk7Cj4gKwkJZXJyID0gc3dpdGNoX3RvX2NvbnRl
eHQoY3R4KTsKPiAgIAlpZiAoZXJyKQo+ICAgCQlnb3RvIG91dDsKPiAgIAo+IEBAIC0xNTUsNyAr
MTU0LDcgQEAgc3RhdGljIGludCBpZ3RfZ2VtX3N1c3BlbmQodm9pZCAqYXJnKQo+ICAgCj4gICAJ
cG1fcmVzdW1lKGk5MTUpOwo+ICAgCj4gLQllcnIgPSBzd2l0Y2hfdG9fY29udGV4dChpOTE1LCBj
dHgpOwo+ICsJZXJyID0gc3dpdGNoX3RvX2NvbnRleHQoY3R4KTsKPiAgIG91dDoKPiAgIAltb2Nr
X2ZpbGVfZnJlZShpOTE1LCBmaWxlKTsKPiAgIAlyZXR1cm4gZXJyOwo+IEBAIC0xNzUsNyArMTc0
LDcgQEAgc3RhdGljIGludCBpZ3RfZ2VtX2hpYmVybmF0ZSh2b2lkICphcmcpCj4gICAJZXJyID0g
LUVOT01FTTsKPiAgIAljdHggPSBsaXZlX2NvbnRleHQoaTkxNSwgZmlsZSk7Cj4gICAJaWYgKCFJ
U19FUlIoY3R4KSkKPiAtCQllcnIgPSBzd2l0Y2hfdG9fY29udGV4dChpOTE1LCBjdHgpOwo+ICsJ
CWVyciA9IHN3aXRjaF90b19jb250ZXh0KGN0eCk7Cj4gICAJaWYgKGVycikKPiAgIAkJZ290byBv
dXQ7Cj4gICAKPiBAQCAtMTkwLDcgKzE4OSw3IEBAIHN0YXRpYyBpbnQgaWd0X2dlbV9oaWJlcm5h
dGUodm9pZCAqYXJnKQo+ICAgCj4gICAJcG1fcmVzdW1lKGk5MTUpOwo+ICAgCj4gLQllcnIgPSBz
d2l0Y2hfdG9fY29udGV4dChpOTE1LCBjdHgpOwo+ICsJZXJyID0gc3dpdGNoX3RvX2NvbnRleHQo
Y3R4KTsKPiAgIG91dDoKPiAgIAltb2NrX2ZpbGVfZnJlZShpOTE1LCBmaWxlKTsKPiAgIAlyZXR1
cm4gZXJyOwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
