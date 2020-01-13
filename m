Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF85139010
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 12:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45066E05A;
	Mon, 13 Jan 2020 11:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C878A6E05A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 11:27:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 03:27:53 -0800
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="397131428"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 03:27:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200110181123.14536-1-vivek.kasireddy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <3c13b232-e477-c4c6-c937-74323d53b607@redhat.com>
 <20200110181123.14536-1-vivek.kasireddy@intel.com>
Date: Mon, 13 Jan 2020 13:27:48 +0200
Message-ID: <87r203mw97.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Parse the I2C element from
 the VBT MIPI sequence block (v3)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMCBKYW4gMjAyMCwgVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50
ZWwuY29tPiB3cm90ZToKPiBQYXJzaW5nIHRoZSBpMmMgZWxlbWVudCBpcyBtYWlubHkgZG9uZSB0
byB0cmFuc2ZlciB0aGUgcGF5bG9hZCBmcm9tIHRoZQo+IE1JUEkgc2VxdWVuY2UgYmxvY2sgdG8g
dGhlIHJlbGV2YW50IHNsYXZlIGRldmljZS4gSW4gc29tZSBjYXNlcywgdGhlCj4gY29tbWFuZHMg
dGhhdCBhcmUgcGFydCBvZiB0aGUgcGF5bG9hZCBjYW4gYmUgdXNlZCB0byB0dXJuIG9uIHRoZSBi
YWNrbGlnaHQuCj4KPiBUaGlzIHBhdGNoIGlzIGFjdHVhbGx5IGEgcmVmYWN0b3JlZCB2ZXJzaW9u
IG9mIHRoaXMgb2xkIHBhdGNoOgo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hp
dmVzL2ludGVsLWdmeC8yMDE0LURlY2VtYmVyLzA1Njg5Ny5odG1sCj4KPiBJbiBhZGRpdGlvbiB0
byB0aGUgcmVmYWN0b3JpbmcsIHRoZSBvcmlnaW5hbCBwYXRjaCBpcyBhdWdtZW50ZWQgYnkgbG9v
a2luZyB1cAo+IHRoZSBpMmMgYnVzIGZyb20gQUNQSSBOUyBpbnN0ZWFkIG9mIHJlbHlpbmcgb24g
dGhlIGJ1cyBudW1iZXIgcHJvdmlkZWQKPiBpbiB0aGUgVkJULgoKQWxsIHRoaXMgYWNwaSBidXNp
bmVzcyBpbiB0aGUgcGF0Y2ggd2lsbCBmYWlsIHRoZSBidWlsZCBvbgpDT05GSUdfQUNQST1uLgoK
QlIsCkphbmkuCgo+Cj4gVGhpcyBwYXRjaCB3YXMgdGVzdGVkIG9uIEFhdmEgTW9iaWxlJ3MgSW5h
cmkgMTAgdGFibGV0LiBJdCBlbmFibGVkCj4gdHVybmluZyBvbiB0aGUgYmFja2xpZ2h0IGJ5IHRy
YW5zZmVyaW5nIHRoZSBwYXlsb2FkIHRvIHRoZSBkZXZpY2UuCj4KPiB2MjoKPiAtIEFkZCBEUk1f
REVWX0VSUk9SIGZvciBpbnZhbGlkIGFkYXB0ZXIgYW5kIGZhaWxlZCB0cmFuc2ZlciBhbmQgYWxz
bwo+ICAgZHJvcCB0aGUgRFJNX0RFQlVHIHRoYXQgZXhpc3RlZCBvcmlnaW5hbGx5LiAoSGFucykK
PiAtIEFkZCB0d28gZ290b3MgaW5zdGVhZCBvZiBvbmUgdG8gY2xlYW4gdGhpbmdzIHVwIHByb3Bl
cmx5Lgo+Cj4gdjM6Cj4gLSBJZGVudGlmeSB0aGUgZGV2aWNlIG9uIHdoaWNoIHRoaXMgcGF0Y2gg
d2FzIHRlc3RlZCBpbiB0aGUgY29tbWl0Cj4gICBtZXNzYWdlIChWaWxsZSkKPgo+IENjOiBIYW5z
IGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+IENjOiBOYWJlbmR1IE1haXRpIDxuYWJl
bmR1LmJpa2FzaC5tYWl0aUBpbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+Cj4gQ2M6IEJvYiBQYWF1d2UgPGJvYi5qLnBhYXV3ZUBpbnRlbC5jb20+
Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
UmV2aWV3ZWQtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5oICAgICB8ICAzICsK
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2lfdmJ0LmMgfCA5OSArKysr
KysrKysrKysrKysrKysrLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwMCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNpLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5o
Cj4gaW5kZXggNzQ4MWE1YWEzMDg0Li42Y2VmMTM1NmI0ZTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2kuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpLmgKPiBAQCAtNjksNiArNjksOSBAQCBzdHJ1Y3QgaW50
ZWxfZHNpIHsKPiAgCS8qIG51bWJlciBvZiBEU0kgbGFuZXMgKi8KPiAgCXVuc2lnbmVkIGludCBs
YW5lX2NvdW50Owo+ICAKPiArCS8qIGkyYyBidXMgYXNzb2NpYXRlZCB3aXRoIHRoZSBzbGF2ZSBk
ZXZpY2UgKi8KPiArCWludCBpMmNfYnVzX251bTsKPiArCj4gIAkvKgo+ICAJICogdmlkZW8gbW9k
ZSBwaXhlbCBmb3JtYXQKPiAgCSAqCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNpX3ZidC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2lfdmJ0LmMKPiBpbmRleCAwMDMyMTYxZTBmNzYuLjg5ZmIwZDkwYjY5NCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaV92YnQuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpX3ZidC5jCj4gQEAgLTg2
LDYgKzg2LDEyIEBAIHN0YXRpYyBzdHJ1Y3QgZ3Bpb19tYXAgdmx2X2dwaW9fdGFibGVbXSA9IHsK
PiAgCXsgVkxWX0dQSU9fTkNfMTFfUEFORUwxX0JLTFRDVEwgfSwKPiAgfTsKPiAgCj4gK3N0cnVj
dCBpMmNfYWRhcHRlcl9sb29rdXAgewo+ICsJdTE2IHNsYXZlX2FkZHI7Cj4gKwlzdHJ1Y3QgaW50
ZWxfZHNpICppbnRlbF9kc2k7Cj4gKwlhY3BpX2hhbmRsZSBkZXZfaGFuZGxlOwo+ICt9Owo+ICsK
PiAgI2RlZmluZSBDSFZfR1BJT19JRFhfU1RBUlRfTgkJMAo+ICAjZGVmaW5lIENIVl9HUElPX0lE
WF9TVEFSVF9FCQk3Mwo+ICAjZGVmaW5lIENIVl9HUElPX0lEWF9TVEFSVF9TVwkJMTAwCj4gQEAg
LTM3OCwxMSArMzg0LDk4IEBAIHN0YXRpYyBjb25zdCB1OCAqbWlwaV9leGVjX2dwaW8oc3RydWN0
IGludGVsX2RzaSAqaW50ZWxfZHNpLCBjb25zdCB1OCAqZGF0YSkKPiAgCXJldHVybiBkYXRhOwo+
ICB9Cj4gIAo+ICtzdGF0aWMgaW50IGkyY19hZGFwdGVyX2xvb2t1cChzdHJ1Y3QgYWNwaV9yZXNv
dXJjZSAqYXJlcywgdm9pZCAqZGF0YSkKPiArewo+ICsJc3RydWN0IGkyY19hZGFwdGVyX2xvb2t1
cCAqbG9va3VwID0gZGF0YTsKPiArCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGxvb2t1
cC0+aW50ZWxfZHNpOwo+ICsJc3RydWN0IGFjcGlfcmVzb3VyY2VfaTJjX3NlcmlhbGJ1cyAqc2I7
Cj4gKwlzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXB0ZXI7Cj4gKwlhY3BpX2hhbmRsZSBhZGFwdGVy
X2hhbmRsZTsKPiArCWFjcGlfc3RhdHVzIHN0YXR1czsKPiArCj4gKwlpZiAoaW50ZWxfZHNpLT5p
MmNfYnVzX251bSA+PSAwIHx8Cj4gKwkgICAgIWkyY19hY3BpX2dldF9pMmNfcmVzb3VyY2UoYXJl
cywgJnNiKSkKPiArCQlyZXR1cm4gMTsKPiArCj4gKwlpZiAobG9va3VwLT5zbGF2ZV9hZGRyICE9
IHNiLT5zbGF2ZV9hZGRyZXNzKQo+ICsJCXJldHVybiAxOwo+ICsKPiArCXN0YXR1cyA9IGFjcGlf
Z2V0X2hhbmRsZShsb29rdXAtPmRldl9oYW5kbGUsCj4gKwkJCQkgc2ItPnJlc291cmNlX3NvdXJj
ZS5zdHJpbmdfcHRyLAo+ICsJCQkJICZhZGFwdGVyX2hhbmRsZSk7Cj4gKwlpZiAoQUNQSV9GQUlM
VVJFKHN0YXR1cykpCj4gKwkJcmV0dXJuIDE7Cj4gKwo+ICsJYWRhcHRlciA9IGkyY19hY3BpX2Zp
bmRfYWRhcHRlcl9ieV9oYW5kbGUoYWRhcHRlcl9oYW5kbGUpOwo+ICsJaWYgKGFkYXB0ZXIpCj4g
KwkJaW50ZWxfZHNpLT5pMmNfYnVzX251bSA9IGFkYXB0ZXItPm5yOwo+ICsKPiArCXJldHVybiAx
Owo+ICt9Cj4gKwo+ICBzdGF0aWMgY29uc3QgdTggKm1pcGlfZXhlY19pMmMoc3RydWN0IGludGVs
X2RzaSAqaW50ZWxfZHNpLCBjb25zdCB1OCAqZGF0YSkKPiAgewo+IC0JRFJNX0RFQlVHX0tNUygi
U2tpcHBpbmcgSTJDIGVsZW1lbnQgZXhlY3V0aW9uXG4iKTsKPiArCXN0cnVjdCBkcm1fZGV2aWNl
ICpkcm1fZGV2ID0gaW50ZWxfZHNpLT5iYXNlLmJhc2UuZGV2Owo+ICsJc3RydWN0IGRldmljZSAq
ZGV2ID0gJmRybV9kZXYtPnBkZXYtPmRldjsKPiArCXN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcHRl
cjsKPiArCXN0cnVjdCBhY3BpX2RldmljZSAqYWNwaV9kZXY7Cj4gKwlzdHJ1Y3QgbGlzdF9oZWFk
IHJlc291cmNlX2xpc3Q7Cj4gKwlzdHJ1Y3QgaTJjX2FkYXB0ZXJfbG9va3VwIGxvb2t1cDsKPiAr
CXN0cnVjdCBpMmNfbXNnIG1zZzsKPiArCWludCByZXQ7Cj4gKwl1OCB2YnRfaTJjX2J1c19udW0g
PSAqKGRhdGEgKyAyKTsKPiArCXUxNiBzbGF2ZV9hZGRyID0gKih1MTYgKikoZGF0YSArIDMpOwo+
ICsJdTggcmVnX29mZnNldCA9ICooZGF0YSArIDUpOwo+ICsJdTggcGF5bG9hZF9zaXplID0gKihk
YXRhICsgNik7Cj4gKwl1OCAqcGF5bG9hZF9kYXRhOwo+ICsKPiArCWlmIChpbnRlbF9kc2ktPmky
Y19idXNfbnVtIDwgMCkgewo+ICsJCWludGVsX2RzaS0+aTJjX2J1c19udW0gPSB2YnRfaTJjX2J1
c19udW07Cj4gKwo+ICsJCWFjcGlfZGV2ID0gQUNQSV9DT01QQU5JT04oZGV2KTsKPiArCQlpZiAo
YWNwaV9kZXYpIHsKPiArCQkJbWVtc2V0KCZsb29rdXAsIDAsIHNpemVvZihsb29rdXApKTsKPiAr
CQkJbG9va3VwLnNsYXZlX2FkZHIgPSBzbGF2ZV9hZGRyOwo+ICsJCQlsb29rdXAuaW50ZWxfZHNp
ID0gaW50ZWxfZHNpOwo+ICsJCQlsb29rdXAuZGV2X2hhbmRsZSA9IGFjcGlfZGV2aWNlX2hhbmRs
ZShhY3BpX2Rldik7Cj4gKwo+ICsJCQlJTklUX0xJU1RfSEVBRCgmcmVzb3VyY2VfbGlzdCk7Cj4g
KwkJCWFjcGlfZGV2X2dldF9yZXNvdXJjZXMoYWNwaV9kZXYsICZyZXNvdXJjZV9saXN0LAo+ICsJ
CQkJCSAgICAgICBpMmNfYWRhcHRlcl9sb29rdXAsCj4gKwkJCQkJICAgICAgICZsb29rdXApOwo+
ICsJCQlhY3BpX2Rldl9mcmVlX3Jlc291cmNlX2xpc3QoJnJlc291cmNlX2xpc3QpOwo+ICsJCX0K
PiArCX0KPiAgCj4gLQlyZXR1cm4gZGF0YSArICooZGF0YSArIDYpICsgNzsKPiArCWFkYXB0ZXIg
PSBpMmNfZ2V0X2FkYXB0ZXIoaW50ZWxfZHNpLT5pMmNfYnVzX251bSk7Cj4gKwlpZiAoIWFkYXB0
ZXIpIHsKPiArCQlEUk1fREVWX0VSUk9SKGRldiwgIkNhbm5vdCBmaW5kIGEgdmFsaWQgaTJjIGJ1
cyBmb3IgeGZlclxuIik7Cj4gKwkJZ290byBlcnJfYnVzOwo+ICsJfQo+ICsKPiArCXBheWxvYWRf
ZGF0YSA9IGt6YWxsb2MocGF5bG9hZF9zaXplICsgMSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXBh
eWxvYWRfZGF0YSkKPiArCQlnb3RvIGVycl9hbGxvYzsKPiArCj4gKwlwYXlsb2FkX2RhdGFbMF0g
PSByZWdfb2Zmc2V0Owo+ICsJbWVtY3B5KCZwYXlsb2FkX2RhdGFbMV0sIChkYXRhICsgNyksIHBh
eWxvYWRfc2l6ZSk7Cj4gKwo+ICsJbXNnLmFkZHIgPSBzbGF2ZV9hZGRyOwo+ICsJbXNnLmZsYWdz
ID0gMDsKPiArCW1zZy5sZW4gPSBwYXlsb2FkX3NpemUgKyAxOwo+ICsJbXNnLmJ1ZiA9IHBheWxv
YWRfZGF0YTsKPiArCj4gKwlyZXQgPSBpMmNfdHJhbnNmZXIoYWRhcHRlciwgJm1zZywgMSk7Cj4g
KwlpZiAocmV0IDwgMCkKPiArCQlEUk1fREVWX0VSUk9SKGRldiwKPiArCQkJICAgICAgIkZhaWxl
ZCB0byB4ZmVyIHBheWxvYWQgb2Ygc2l6ZSAoJXUpIHRvIHJlZyAoJXUpXG4iLAo+ICsJCQkgICAg
ICBwYXlsb2FkX3NpemUsIHJlZ19vZmZzZXQpOwo+ICsKPiArCWtmcmVlKHBheWxvYWRfZGF0YSk7
Cj4gK2Vycl9hbGxvYzoKPiArCWkyY19wdXRfYWRhcHRlcihhZGFwdGVyKTsKPiArZXJyX2J1czoK
PiArCXJldHVybiBkYXRhICsgcGF5bG9hZF9zaXplICsgNzsKPiAgfQo+ICAKPiAgc3RhdGljIGNv
bnN0IHU4ICptaXBpX2V4ZWNfc3BpKHN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSwgY29uc3Qg
dTggKmRhdGEpCj4gQEAgLTY4Myw2ICs3NzYsOCBAQCBib29sIGludGVsX2RzaV92YnRfaW5pdChz
dHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2ksIHUxNiBwYW5lbF9pZCkKPiAgCWludGVsX2RzaS0+
cGFuZWxfb2ZmX2RlbGF5ID0gcHBzLT5wYW5lbF9vZmZfZGVsYXkgLyAxMDsKPiAgCWludGVsX2Rz
aS0+cGFuZWxfcHdyX2N5Y2xlX2RlbGF5ID0gcHBzLT5wYW5lbF9wb3dlcl9jeWNsZV9kZWxheSAv
IDEwOwo+ICAKPiArCWludGVsX2RzaS0+aTJjX2J1c19udW0gPSAtMTsKPiArCj4gIAkvKiBhIHJl
Z3VsYXIgZHJpdmVyIHdvdWxkIGdldCB0aGUgZGV2aWNlIGluIHByb2JlICovCj4gIAlmb3JfZWFj
aF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Cj4gIAkJbWlwaV9kc2lfYXR0YWNo
KGludGVsX2RzaS0+ZHNpX2hvc3RzW3BvcnRdLT5kZXZpY2UpOwoKLS0gCkphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
