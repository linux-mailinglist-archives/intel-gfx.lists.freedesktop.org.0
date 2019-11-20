Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF10F10404B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:07:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F163E6E856;
	Wed, 20 Nov 2019 16:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545236E856
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:07:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 08:07:16 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200765217"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 08:07:15 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
 <20191120152150.3853368-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <126971b1-987a-c93b-e222-eee81602bae6@linux.intel.com>
Date: Wed, 20 Nov 2019 16:07:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120152150.3853368-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Remove the timeline as the
 last step of retiring
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

Ck9uIDIwLzExLzIwMTkgMTU6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBCZWZvcmUgd2UgcmVt
b3ZlIGZyb20gdGhlIHRpbWVsaW5lLCBmaW5pc2ggZmx1c2hpbmcgdGhlIGNvbnRleHQgc3RhdGUu
Cj4gQXMgdGhlIHRpbWVsaW5lIG1heSBiZSBwZWVrZWQgdXBvbiBieSBhbm90aGVyIENQVSwgd2Ug
ZG9uJ3Qgd2FudCB0bwo+IHJlbW92ZSByZXF1ZXN0IGZyb20gdGhlIHRpbWVsaW5lIHVudGlsIHdl
IGhhdmUgZmluaXNoZWQgd29ya2luZyBvbiBpdC4KCkkgaGF2ZSB0byBhc2sgd2h5IEknbSBhZnJh
aWQuCgpSZWdhcmRzLAoKVHZydGtvCgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmMgfCA3ICsrKystLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVx
dWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiBpbmRleCAwMDAx
MWY5NTMzYjYuLjI0NDVhMDY5MzI4NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jCj4gQEAgLTI2OSwxMiArMjY5LDEzIEBAIGJvb2wgaTkxNV9yZXF1ZXN0X3JldGlyZShzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAgIAlHRU1fQlVHX09OKCFsaXN0X2VtcHR5KCZycS0+ZXhl
Y3V0ZV9jYikpOwo+ICAgCXNwaW5fdW5sb2NrX2lycSgmcnEtPmxvY2spOwo+ICAgCj4gLQlyZW1v
dmVfZnJvbV9jbGllbnQocnEpOwo+IC0JbGlzdF9kZWwoJnJxLT5saW5rKTsKPiAtCj4gICAJaW50
ZWxfY29udGV4dF9leGl0KHJxLT5od19jb250ZXh0KTsKPiAgIAlpbnRlbF9jb250ZXh0X3VucGlu
KHJxLT5od19jb250ZXh0KTsKPiAgIAo+ICsJLyogQW5kIGZpbmFsbHkgYWZ0ZXIgZmx1c2hpbmcg
dGhlIHN0YXRlLCByZW1vdmUgZnJvbSBwcnlpbmcgZXllcy4gKi8KPiArCXJlbW92ZV9mcm9tX2Ns
aWVudChycSk7Cj4gKwlsaXN0X2RlbCgmcnEtPmxpbmspOwo+ICsKPiAgIAlmcmVlX2NhcHR1cmVf
bGlzdChycSk7Cj4gICAJaTkxNV9zY2hlZF9ub2RlX2ZpbmkoJnJxLT5zY2hlZCk7Cj4gICAJaTkx
NV9yZXF1ZXN0X3B1dChycSk7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
