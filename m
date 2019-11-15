Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C15DAFDE3B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F936E5CC;
	Fri, 15 Nov 2019 12:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4236F6E5CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:45:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 04:45:55 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199190800"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Nov 2019 04:45:54 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191114225736.616885-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <273f2ba3-02d5-f99b-03ba-f55868ea5259@linux.intel.com>
Date: Fri, 15 Nov 2019 12:45:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191114225736.616885-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: Wait for new requests in
 intel_gt_retire_requests()
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

Ck9uIDE0LzExLzIwMTkgMjI6NTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBPdXIgY2FsbGVycyBm
YWxsIGludG8gdHdvIGNhdGVnb3JpZXMsIHRob3NlIHBhc3NpbmcgdGltZW91dD0wIHdobyBqdXN0
Cj4gd2FudCB0byBmbHVzaCByZXF1ZXN0IHJldGlyZW1lbnRzIGFuZCB0aG9zZSBwYXNzaW5nIGEg
dGltZW91dCB0aGF0IG5lZWQKPiB0byB3YWl0IGZvciBzdWJtaXNzaW9uIGNvbXBsZXRpb24gKGUu
Zy4gaW50ZWxfZ3Rfd2FpdF9mb3JfaWRsZSgpKS4KPiBDdXJyZW50bHksIHdlIG9ubHkgd2FpdCBm
b3IgYSBzbmFwc2hvdCBvZiB0aW1lbGluZXMgYXQgdGhlIHN0YXJ0IG9mIHRoZQo+IHdhaXQgKGJ1
dCB0aGVyZSB3YXMgYW4gZXhwZWN0aW9uIHRoYXQgbmV3IHJlcXVlc3RzIHdvdWxkIGNhdXNlIHRp
bWVsaW5lcwoKZXhwZWN0YXRpb24/IGV4Y2VwdGlvbj8KCj4gdG8gYXBwZWFyIGF0IHRoZSBlbmQp
LiBIb3dldmVyLCBvdXIgY2FsbGVycywgc3VjaCBhcwo+IGludGVsX2d0X3dhaXRfZm9yX2lkbGUo
KSBiZWZvcmUgc3VzcGVuZCwgZG8gcmVxdWlyZSB1cyB0byB3YWl0IGZvciB0aGUKPiBwb3dlciBt
YW5hZ2VtZW50IHJlcXVlc3RzIGVtaXR0ZWQgYnkgcmV0aXJlbWVudCBhcyB3ZWxsLiBJZiB3ZSBk
b24ndCwKPiB0aGVuIGl0IHRha2VzIGFuIGV4dHJhIHNlY29uZCBvciB0d28gZm9yIHRoZSBiYWNr
Z3JvdW5kIHdvcmtlciB0byBmbHVzaAo+IHRoZSBxdWV1ZSBhbmQgbWFyayB0aGUgR1QgYXMgaWRs
ZS4KClNvIHdpdGggdGhpcyBjaGFuZ2Ugd2FpdF9mb3JfaWRsZSB3YWl0cyBmb3IgdGhlIGtlcm5l
bCBjb250ZXh0IHRvIGdldCAKcmV0aXJlZCBhcyB3ZWxsLiBBbmQgeW91IHNheSB0aGF0J3MgZmFz
dGVyIGJ5IGEgc2Vjb25kIG9yIHR3bz8gV2hpY2ggCmZsdXNoIGdldHMgc28gbXVjaCBzbG93ZXIs
IEkgbWVhbiBmcm9tIHdoZXJlLCBpZiB3ZSBkb24ndCB3YWl0IGhlcmU/CgpSZWdhcmRzLAoKVHZy
dGtvCgo+IAo+IEZpeGVzOiA3ZTgwNTc2MjY2NDAgKCJkcm0vaTkxNTogRHJvcCBzdHJ1Y3RfbXV0
ZXggZnJvbSBhcm91bmQgaTkxNV9yZXRpcmVfcmVxdWVzdHMoKSIpCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jIHwgMTEgKysrLS0tLS0tLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCj4gaW5kZXggYjczMjI5YTg0ZDg1Li5j
Y2JkZGRkYmJkNTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcmVxdWVzdHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3Jl
cXVlc3RzLmMKPiBAQCAtMzMsNyArMzMsNiBAQCBsb25nIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0
c190aW1lb3V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGxvbmcgdGltZW91dCkKPiAgIHsKPiAgIAlz
dHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmZ3QtPnRpbWVsaW5lczsKPiAg
IAlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsLCAqdG47Cj4gLQl1bnNpZ25lZCBsb25nIGFjdGl2
ZV9jb3VudCA9IDA7Cj4gICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAgIAlib29sIGludGVycnVw
dGlibGU7Cj4gICAJTElTVF9IRUFEKGZyZWUpOwo+IEBAIC00NiwxMCArNDUsOCBAQCBsb25nIGlu
dGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGxvbmcg
dGltZW91dCkKPiAgIAo+ICAgCXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZs
YWdzKTsKPiAgIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUodGwsIHRuLCAmdGltZWxpbmVzLT5h
Y3RpdmVfbGlzdCwgbGluaykgewo+IC0JCWlmICghbXV0ZXhfdHJ5bG9jaygmdGwtPm11dGV4KSkg
ewo+IC0JCQlhY3RpdmVfY291bnQrKzsgLyogcmVwb3J0IGJ1c3kgdG8gY2FsbGVyLCB0cnkgYWdh
aW4/ICovCj4gKwkJaWYgKCFtdXRleF90cnlsb2NrKCZ0bC0+bXV0ZXgpKQo+ICAgCQkJY29udGlu
dWU7Cj4gLQkJfQo+ICAgCj4gICAJCWludGVsX3RpbWVsaW5lX2dldCh0bCk7Cj4gICAJCUdFTV9C
VUdfT04oIXRsLT5hY3RpdmVfY291bnQpOwo+IEBAIC03NCw5ICs3MSw3IEBAIGxvbmcgaW50ZWxf
Z3RfcmV0aXJlX3JlcXVlc3RzX3RpbWVvdXQoc3RydWN0IGludGVsX2d0ICpndCwgbG9uZyB0aW1l
b3V0KQo+ICAgCj4gICAJCS8qIFJlc3VtZSBpdGVyYXRpb24gYWZ0ZXIgZHJvcHBpbmcgbG9jayAq
Lwo+ICAgCQlsaXN0X3NhZmVfcmVzZXRfbmV4dCh0bCwgdG4sIGxpbmspOwo+IC0JCWlmICgtLXRs
LT5hY3RpdmVfY291bnQpCj4gLQkJCWFjdGl2ZV9jb3VudCArPSAhIXJjdV9hY2Nlc3NfcG9pbnRl
cih0bC0+bGFzdF9yZXF1ZXN0LmZlbmNlKTsKPiAtCQllbHNlCj4gKwkJaWYgKCEtLXRsLT5hY3Rp
dmVfY291bnQpCj4gICAJCQlsaXN0X2RlbCgmdGwtPmxpbmspOwo+ICAgCj4gICAJCW11dGV4X3Vu
bG9jaygmdGwtPm11dGV4KTsKPiBAQCAtOTIsNyArODcsNyBAQCBsb25nIGludGVsX2d0X3JldGly
ZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGxvbmcgdGltZW91dCkKPiAg
IAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUodGwsIHRuLCAmZnJlZSwgbGluaykKPiAgIAkJX19p
bnRlbF90aW1lbGluZV9mcmVlKCZ0bC0+a3JlZik7Cj4gICAKPiAtCXJldHVybiBhY3RpdmVfY291
bnQgPyB0aW1lb3V0IDogMDsKPiArCXJldHVybiBsaXN0X2VtcHR5KCZ0aW1lbGluZXMtPmFjdGl2
ZV9saXN0KSA/IDAgOiB0aW1lb3V0Owo+ICAgfQo+ICAgCj4gICBpbnQgaW50ZWxfZ3Rfd2FpdF9m
b3JfaWRsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBsb25nIHRpbWVvdXQpCj4gCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
