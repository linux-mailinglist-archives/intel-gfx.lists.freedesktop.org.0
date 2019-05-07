Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BB91620E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD0689F6F;
	Tue,  7 May 2019 10:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2958689F6F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:39:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:39:02 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 03:39:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
 <20190503152214.26517-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6e09e8fa-4381-da31-3084-daaac21d7cf9@linux.intel.com>
Date: Tue, 7 May 2019 11:39:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503152214.26517-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Assert breadcrumbs are
 correctly ordered in the signal handler
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

Ck9uIDAzLzA1LzIwMTkgMTY6MjIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbnNpZGUgdGhlIHNp
Z25hbCBoYW5kbGVyLCB3ZSBleHBlY3QgdGhlIHJlcXVlc3RzIHRvIGJlIG9yZGVyZWQgYnkgdGhl
aXIKPiBicmVhZGNydW1iIHN1Y2ggdGhhdCBubyBsYXRlciByZXF1ZXN0IG1heSBiZSBjb21wbGV0
ZSBpZiB3ZSBmaW5kIGFuCj4gZWFybGllciBpbmNvbXBsZXRlLiBBZGQgYW4gYXNzZXJ0IHRvIGNo
ZWNrIHRoYXQgdGhlIG5leHQgYnJlYWRjcnVtYgo+IHNob3VsZCBub3QgYmUgbG9naWNhbGx5IGJl
Zm9yZSB0aGUgY3VycmVudC4KPiAKPiB2MjogTW92ZSB0aGUgb3ZlcmhhbmdpbmcgbGluZSBpbnRv
IGl0cyBvd24gZnVuY3Rpb24gYW5kIHJldXNlIGl0IGFmdGVyCj4gZG9pbmcgdGhlIGluc2VydGlv
bi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMgfCAxOSAr
KysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1i
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwo+IGluZGV4
IDNjYmZmZDQwMGIxYi4uZmU0NTVmMDFhYTY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9icmVhZGNydW1icy5jCj4gQEAgLTgwLDYgKzgwLDIyIEBAIHN0YXRpYyBpbmxp
bmUgYm9vbCBfX3JlcXVlc3RfY29tcGxldGVkKGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
KQo+ICAgCXJldHVybiBpOTE1X3NlcW5vX3Bhc3NlZChfX2h3c3Bfc2Vxbm8ocnEpLCBycS0+ZmVu
Y2Uuc2Vxbm8pOwo+ICAgfQo+ICAgCj4gK19fbWF5YmVfdW51c2VkIHN0YXRpYyBib29sCj4gK2No
ZWNrX3NpZ25hbF9vcmRlcihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxKQo+ICt7Cj4gKwlpZiAoIWxpc3RfaXNfbGFzdCgmcnEtPnNpZ25hbF9saW5rLCAm
Y2UtPnNpZ25hbHMpICYmCj4gKwkgICAgaTkxNV9zZXFub19wYXNzZWQocnEtPmZlbmNlLnNlcW5v
LAo+ICsJCQkgICAgICBsaXN0X25leHRfZW50cnkocnEsIHNpZ25hbF9saW5rKS0+ZmVuY2Uuc2Vx
bm8pKQo+ICsJCXJldHVybiBmYWxzZTsKPiArCj4gKwlpZiAoIWxpc3RfaXNfZmlyc3QoJnJxLT5z
aWduYWxfbGluaywgJmNlLT5zaWduYWxzKSAmJgo+ICsJICAgIGk5MTVfc2Vxbm9fcGFzc2VkKGxp
c3RfcHJldl9lbnRyeShycSwgc2lnbmFsX2xpbmspLT5mZW5jZS5zZXFubywKPiArCQkJICAgICAg
cnEtPmZlbmNlLnNlcW5vKSkKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJcmV0dXJuIHRydWU7
Cj4gK30KPiArCj4gICB2b2lkIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgewo+ICAgCXN0cnVjdCBpbnRlbF9icmVhZGNydW1i
cyAqYiA9ICZlbmdpbmUtPmJyZWFkY3J1bWJzOwo+IEBAIC05OSw2ICsxMTUsOCBAQCB2b2lkIGlu
dGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQo+ICAgCQkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEgPQo+ICAgCQkJCWxpc3RfZW50cnkocG9z
LCB0eXBlb2YoKnJxKSwgc2lnbmFsX2xpbmspOwo+ICAgCj4gKwkJCUdFTV9CVUdfT04oIWNoZWNr
X3NpZ25hbF9vcmRlcihjZSwgcnEpKTsKPiArCj4gICAJCQlpZiAoIV9fcmVxdWVzdF9jb21wbGV0
ZWQocnEpKQo+ICAgCQkJCWJyZWFrOwo+ICAgCj4gQEAgLTI4Miw2ICszMDAsNyBAQCBib29sIGk5
MTVfcmVxdWVzdF9lbmFibGVfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAg
IAkJbGlzdF9hZGQoJnJxLT5zaWduYWxfbGluaywgcG9zKTsKPiAgIAkJaWYgKHBvcyA9PSAmY2Ut
PnNpZ25hbHMpIC8qIGNhdGNoIHRyYW5zaXRpb25zIGZyb20gZW1wdHkgbGlzdCAqLwo+ICAgCQkJ
bGlzdF9tb3ZlX3RhaWwoJmNlLT5zaWduYWxfbGluaywgJmItPnNpZ25hbGVycyk7Cj4gKwkJR0VN
X0JVR19PTighY2hlY2tfc2lnbmFsX29yZGVyKGNlLCBycSkpOwo+ICAgCj4gICAJCXNldF9iaXQo
STkxNV9GRU5DRV9GTEFHX1NJR05BTCwgJnJxLT5mZW5jZS5mbGFncyk7Cj4gICAJfQo+IAoKUmV2
aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdh
cmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
