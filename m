Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5C02E11C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 17:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D356E07B;
	Wed, 29 May 2019 15:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364506E07B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 15:31:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 08:31:34 -0700
X-ExtLoop1: 1
Received: from jmliden-mobl.ger.corp.intel.com (HELO [10.252.14.174])
 ([10.252.14.174])
 by orsmga003.jf.intel.com with ESMTP; 29 May 2019 08:31:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190529093407.31697-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <f32f684a-5fc0-deb7-ddf3-89bc03a8d045@intel.com>
Date: Wed, 29 May 2019 16:31:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190529093407.31697-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Avoid overflowing the WC stash
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

T24gMjkvMDUvMjAxOSAxMDozNCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEFuIGludGVyZXN0aW5n
IGlzc3VlIGNyb3BwZWQgd2l0aCBtYWtpbmcgdGhlIHBhZ2V0YWJsZXMgYmUgYWxsb2NhdGVkIGFu
ZAo+IGZyZWVkIGNvbmN1cnJlbnRseSAoaS5lLiByZW1vdmluZyB0aGVpciBncmFuZGVvdXMgc3Ry
dWN0X211dGV4IGd1YXJkKQo+IHdhcyB0aGF0IHdlIHdvdWxkIG92ZXJmbG93IHRoZSBwYWdlIHN0
YXNoLiBUaGlzIGhhcHBlbnMgd2hlbiB3ZSBoYXZlCj4gbXVsdGlwbGUgYWxsb2NhdG9ycyBncmFi
YmluZyBXQyBwYWdlcyBzdWNoIHRoYXQgd2UgZmlsbCB0aGUgdm0ncyBsb2NhbAo+IHBhZ2Ugc3Rh
c2ggYW5kIHRoZW4gd2hlbiB3ZSBmcmVlIGFub3RoZXIgcGFnZSwgdGhlIHBhZ2Ugc3Rhc2ggaXMg
YWxyZWFkeQo+IGZ1bGwgYW5kIHdlIG92ZXJmbG93Lgo+IAo+IFRoZSBmaXggaXMgcXVpdGUgc2lt
cGxlIHRvIGNoZWNrIGZvciBhIGZ1bGwgcGFnZSBzdGFzaCBiZWZvcmUgYWRkaW5nCj4gYW5vdGhl
ci4gVGhpcyByZXN1bHRzIGluIHVzIGtlZXBpbmcgYSB2bSBsb2NhbCBwYWdlIHN0YXNoIGFyb3Vu
ZCBmb3IKPiBtdWNoIGxvbmdlciB3aGljaCBpcyBib3RoIGEgYmxlc3NpbmcgYW5kIGEgY3Vyc2Uu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogSm9v
bmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMTAgKysrKysrLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYwo+IGluZGV4IDc0OTZjY2UwZDc5OC4uMmQ3YTk2OGQ0ZmQ1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBAQCAtMzQxLDExICszNDEsMTEg
QEAgc3RhdGljIHN0cnVjdCBwYWdlICpzdGFzaF9wb3BfcGFnZShzdHJ1Y3QgcGFnZXN0YXNoICpz
dGFzaCkKPiAgIAo+ICAgc3RhdGljIHZvaWQgc3Rhc2hfcHVzaF9wYWdldmVjKHN0cnVjdCBwYWdl
c3Rhc2ggKnN0YXNoLCBzdHJ1Y3QgcGFnZXZlYyAqcHZlYykKPiAgIHsKPiAtCWludCBucjsKPiAr
CXVuc2lnbmVkIGludCBucjsKPiAgIAo+ICAgCXNwaW5fbG9ja19uZXN0ZWQoJnN0YXNoLT5sb2Nr
LCBTSU5HTEVfREVQVEhfTkVTVElORyk7Cj4gICAKPiAtCW5yID0gbWluX3QoaW50LCBwdmVjLT5u
ciwgcGFnZXZlY19zcGFjZSgmc3Rhc2gtPnB2ZWMpKTsKPiArCW5yID0gbWluX3QodHlwZW9mKG5y
KSwgcHZlYy0+bnIsIHBhZ2V2ZWNfc3BhY2UoJnN0YXNoLT5wdmVjKSk7Cj4gICAJbWVtY3B5KHN0
YXNoLT5wdmVjLnBhZ2VzICsgc3Rhc2gtPnB2ZWMubnIsCj4gICAJICAgICAgIHB2ZWMtPnBhZ2Vz
ICsgcHZlYy0+bnIgLSBuciwKPiAgIAkgICAgICAgc2l6ZW9mKHB2ZWMtPnBhZ2VzWzBdKSAqIG5y
KTsKPiBAQCAtMzk5LDcgKzM5OSw4IEBAIHN0YXRpYyBzdHJ1Y3QgcGFnZSAqdm1fYWxsb2NfcGFn
ZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgZ2ZwX3QgZ2ZwKQo+ICAgCQlwYWdlID0g
c3RhY2sucGFnZXNbLS1zdGFjay5ucl07Cj4gICAKPiAgIAkJLyogTWVyZ2Ugc3BhcmUgV0MgcGFn
ZXMgdG8gdGhlIGdsb2JhbCBzdGFzaCAqLwo+IC0JCXN0YXNoX3B1c2hfcGFnZXZlYygmdm0tPmk5
MTUtPm1tLndjX3N0YXNoLCAmc3RhY2spOwo+ICsJCWlmIChzdGFjay5ucikKPiArCQkJc3Rhc2hf
cHVzaF9wYWdldmVjKCZ2bS0+aTkxNS0+bW0ud2Nfc3Rhc2gsICZzdGFjayk7Cj4gICAKPiAgIAkJ
LyogUHVzaCBhbnkgc3VycGx1cyBXQyBwYWdlcyBvbnRvIHRoZSBsb2NhbCBWTSBzdGFzaCAqLwo+
ICAgCQlpZiAoc3RhY2subnIpCj4gQEAgLTQ2OSw4ICs0NzAsOSBAQCBzdGF0aWMgdm9pZCB2bV9m
cmVlX3BhZ2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sIHN0cnVjdCBwYWdlICpwYWdl
KQo+ICAgCSAqLwo+ICAgCW1pZ2h0X3NsZWVwKCk7Cj4gICAJc3Bpbl9sb2NrKCZ2bS0+ZnJlZV9w
YWdlcy5sb2NrKTsKPiAtCWlmICghcGFnZXZlY19hZGQoJnZtLT5mcmVlX3BhZ2VzLnB2ZWMsIHBh
Z2UpKQo+ICsJaWYgKCFwYWdldmVjX3NwYWNlKCZ2bS0+ZnJlZV9wYWdlcy5wdmVjKSkKPiAgIAkJ
dm1fZnJlZV9wYWdlc19yZWxlYXNlKHZtLCBmYWxzZSk7Cj4gKwlwYWdldmVjX2FkZCgmdm0tPmZy
ZWVfcGFnZXMucHZlYywgcGFnZSk7Cj4gICAJc3Bpbl91bmxvY2soJnZtLT5mcmVlX3BhZ2VzLmxv
Y2spOwo+ICAgfQo+ICAgCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
