Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976EABDFE1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 16:18:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB4DC6EBD0;
	Wed, 25 Sep 2019 14:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95DFC6EBD1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 14:18:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 07:18:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="183270836"
Received: from timmpete-desk1.ger.corp.intel.com (HELO [10.252.55.52])
 ([10.252.55.52])
 by orsmga008.jf.intel.com with ESMTP; 25 Sep 2019 07:18:10 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-5-maarten.lankhorst@linux.intel.com>
 <20190925130111.GY1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <f085dc0a-462c-fdb5-315f-c78ddab57e80@linux.intel.com>
Date: Wed, 25 Sep 2019 16:18:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190925130111.GY1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/23] drm/i915: Complete sw/hw split
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjUtMDktMjAxOSBvbSAxNTowMSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBGcmks
IFNlcCAyMCwgMjAxOSBhdCAwMTo0MjoxN1BNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gTm93IHRoYXQgd2Ugc2VwYXJhdGVkIGV2ZXJ5dGhpbmcgaW50byB1YXBpIGFuZCBodywg
aXQncwo+PiB0aW1lIHRvIG1ha2UgdGhlIHNwbGl0IGRlZmluaXRpdmUuIFJlbW92ZSB0aGUgdW5p
b24gYW5kCj4+IG1ha2UgYSBjb3B5IG9mIHRoZSBodyBzdGF0ZSBvbiBtb2Rlc2V0IGFuZCBmYXN0
c2V0Lgo+Pgo+PiBDb2xvciBibG9icyBhcmUgY29waWVkIGluIGNydGMgYXRvbWljX2NoZWNrKCks
IHJpZ2h0Cj4+IGJlZm9yZSBjb2xvciBtYW5hZ2VtZW50IGlzIGNoZWNrZWQuCj4gRG9uJ3QgbGlr
ZS4gSU1PIHRoZXJlIHNob3VsZCBiZSBvbmUgYW5kIG9ubHkgb25lIHBsYWNlIHdoZXJlIGNvcHkg
b3Zlcgo+IHRoZSB1YXBpIHN0YXRlIGludG8gdGhlIGh3IHN0YXRlLiBPdGhlcndpc2UgaXQncyBh
IG1lc3MgYmVjYXVzZSB5b3UKPiBjb25zdGFudGx5IGhhdmUgdG8gcmVtaW5kIHlvdXJzZWxmIHdo
aWNoIGJpdHMgb2Ygc3RhdGUgYWxyZWFkeSBnb3QKPiBjb3BpZWQgYW5kIHdoaWNoIGRpZG4ndC4K
Ck9oIG5vdyBJIHJlbWVtYmVyLCBiZWNhdXNlIGJpZ2pvaW5lciBpcyBhc3NpZ25lZCBsYXRlciBv
biB3ZSBjYW4ndCBjb3B5IGJsb2JzIHlldAoKYW5kIGJpZ2pvaW5lciB3YXMgdGhlIHdob2xlIHJl
YW9uIHdlIHdhbnRlZCBzZXBhcmF0ZSBibG9icyBzbyBpdCBkaWRuJ3QgaGF2ZSB0byBsb29rIGF0
IHRoZSBvdGhlciBjcnRjX3N0YXRlLi4KCldvdWxkIGl0IGhlbHAgaWYgSSBjb3B5IHRoZSBibG9i
cyBpbiBpbnRlbF9jb2xvcl9jaGVjaygpIGluc3RlYWQ/Cgo+PiBTaWduZWQtb2ZmLWJ5OiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+PiAtLS0K
Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8IDQ0ICsr
KysrKysrKysrKysrKysrKysKPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljLmggICB8ICAyICsKPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jICB8IDM5ICsrKysrKysrKysrKystLS0KPj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA4ICsrLS0KPj4gIDQgZmlsZXMgY2hhbmdlZCwg
ODUgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCj4+IGluZGV4IGY0NDQwZWRlOTVjNS4uZmI1NTBk
M2NlYTdmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pYy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRv
bWljLmMKPj4gQEAgLTE5NSw2ICsxOTUsMTQgQEAgaW50ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUo
c3RydWN0IGRybV9jcnRjICpjcnRjKQo+PiAgCj4+ICAJX19kcm1fYXRvbWljX2hlbHBlcl9jcnRj
X2R1cGxpY2F0ZV9zdGF0ZShjcnRjLCAmY3J0Y19zdGF0ZS0+dWFwaSk7Cj4+ICAKPj4gKwkvKiBj
b3B5IGNvbG9yIGJsb2JzICovCj4+ICsJaWYgKGNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0KQo+
PiArCQlkcm1fcHJvcGVydHlfYmxvYl9nZXQoY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQpOwo+
PiArCWlmIChjcnRjX3N0YXRlLT5ody5jdG0pCj4+ICsJCWRybV9wcm9wZXJ0eV9ibG9iX2dldChj
cnRjX3N0YXRlLT5ody5jdG0pOwo+PiArCWlmIChjcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQpCj4+
ICsJCWRybV9wcm9wZXJ0eV9ibG9iX2dldChjcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQpOwo+PiAr
Cj4+ICAJY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUgPSBmYWxzZTsKPj4gIAljcnRjX3N0YXRlLT5k
aXNhYmxlX2xwX3dtID0gZmFsc2U7Cj4+ICAJY3J0Y19zdGF0ZS0+ZGlzYWJsZV9jeHNyID0gZmFs
c2U7Cj4+IEBAIC0yMDksNiArMjE3LDQxIEBAIGludGVsX2NydGNfZHVwbGljYXRlX3N0YXRlKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YykKPj4gIAlyZXR1cm4gJmNydGNfc3RhdGUtPnVhcGk7Cj4+ICB9
Cj4+ICAKPj4gK3N0YXRpYyB2b2lkIGludGVsX2NydGNfcHV0X2NvbG9yX2Jsb2JzKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiArewo+PiArCWRybV9wcm9wZXJ0eV9ibG9i
X3B1dChjcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCk7Cj4+ICsJZHJtX3Byb3BlcnR5X2Jsb2Jf
cHV0KGNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCk7Cj4+ICsJZHJtX3Byb3BlcnR5X2Jsb2JfcHV0
KGNydGNfc3RhdGUtPmh3LmN0bSk7Cj4+ICt9Cj4+ICsKPj4gK3ZvaWQgaW50ZWxfY3J0Y19mcmVl
X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiArewo+PiAr
CWludGVsX2NydGNfcHV0X2NvbG9yX2Jsb2JzKGNydGNfc3RhdGUpOwo+PiArfQo+PiArCj4+ICt2
b2lkIGludGVsX2NydGNfY29weV9jb2xvcl9ibG9icyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkKPj4gK3sKPj4gKwlpbnRlbF9jcnRjX3B1dF9jb2xvcl9ibG9icyhjcnRjX3N0
YXRlKTsKPj4gKwo+PiArCWlmIChjcnRjX3N0YXRlLT51YXBpLmRlZ2FtbWFfbHV0KQo+PiArCQlj
cnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCA9Cj4+ICsJCQlkcm1fcHJvcGVydHlfYmxvYl9nZXQo
Y3J0Y19zdGF0ZS0+dWFwaS5kZWdhbW1hX2x1dCk7Cj4+ICsJZWxzZQo+PiArCQljcnRjX3N0YXRl
LT5ody5kZWdhbW1hX2x1dCA9IE5VTEw7Cj4+ICsKPj4gKwlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5n
YW1tYV9sdXQpCj4+ICsJCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9Cj4+ICsJCQlkcm1fcHJv
cGVydHlfYmxvYl9nZXQoY3J0Y19zdGF0ZS0+dWFwaS5nYW1tYV9sdXQpOwo+PiArCWVsc2UKPj4g
KwkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gTlVMTDsKPj4gKwo+PiArCWlmIChjcnRjX3N0
YXRlLT51YXBpLmN0bSkKPj4gKwkJY3J0Y19zdGF0ZS0+aHcuY3RtID0KPj4gKwkJCWRybV9wcm9w
ZXJ0eV9ibG9iX2dldChjcnRjX3N0YXRlLT51YXBpLmN0bSk7Cj4+ICsJZWxzZQo+PiArCQljcnRj
X3N0YXRlLT5ody5jdG0gPSBOVUxMOwo+PiArfQo+PiArCj4+ICAvKioKPj4gICAqIGludGVsX2Ny
dGNfZGVzdHJveV9zdGF0ZSAtIGRlc3Ryb3kgY3J0YyBzdGF0ZQo+PiAgICogQGNydGM6IGRybSBj
cnRjCj4+IEBAIC0yMjQsNiArMjY3LDcgQEAgaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlKHN0cnVj
dCBkcm1fY3J0YyAqY3J0YywKPj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoc3RhdGUpOwo+PiAgCj4+ICAJX19kcm1fYXRvbWljX2hl
bHBlcl9jcnRjX2Rlc3Ryb3lfc3RhdGUoJmNydGNfc3RhdGUtPnVhcGkpOwo+PiArCWludGVsX2Ny
dGNfZnJlZV9od19zdGF0ZShjcnRjX3N0YXRlKTsKPj4gIAlrZnJlZShjcnRjX3N0YXRlKTsKPj4g
IH0KPj4gIAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdG9taWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgK
Pj4gaW5kZXggNTgwNjVkMzE2MWEzLi40MmJlOTFlMDc3MmEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgKPj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaAo+PiBAQCAtMzUsNiArMzUsOCBAQCBp
bnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9kdXBsaWNhdGVfc3RhdGUoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3Rvcik7Cj4+ICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmludGVsX2NydGNfZHVw
bGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fY3J0YyAqY3J0Yyk7Cj4+ICB2b2lkIGludGVsX2NydGNf
ZGVzdHJveV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4+ICAJCQkgICAgICAgc3RydWN0
IGRybV9jcnRjX3N0YXRlICpzdGF0ZSk7Cj4+ICt2b2lkIGludGVsX2NydGNfZnJlZV9od19zdGF0
ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4+ICt2b2lkIGludGVsX2Ny
dGNfY29weV9jb2xvcl9ibG9icyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7
Cj4+ICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqaW50ZWxfYXRvbWljX3N0YXRlX2FsbG9jKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpOwo+PiAgdm9pZCBpbnRlbF9hdG9taWNfc3RhdGVfY2xlYXIo
c3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKTsKPj4gIAo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiBpbmRleCAzMmJiYjViZjQ4ZjMuLmU0
MDQ4NWExZTUwMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPj4gQEAgLTExNCw2ICsxMTQsNyBAQCBzdGF0aWMgY29uc3QgdTY0IGN1cnNv
cl9mb3JtYXRfbW9kaWZpZXJzW10gPSB7Cj4+ICAJRFJNX0ZPUk1BVF9NT0RfSU5WQUxJRAo+PiAg
fTsKPj4gIAo+PiArc3RhdGljIHZvaWQgY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPj4gIHN0YXRpYyB2b2lkIGk5eHhfY3J0Y19jbG9j
a19nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4+ICAJCQkJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKnBpcGVfY29uZmlnKTsKPj4gIHN0YXRpYyB2b2lkIGlyb25sYWtlX3BjaF9jbG9ja19n
ZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4+IEBAIC03MDk3LDYgKzcwOTgsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9jcnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGRybV9jcnRjICpjcnRj
LAo+PiAgCWNydGMtPmVuYWJsZWQgPSBmYWxzZTsKPj4gIAljcnRjLT5zdGF0ZS0+Y29ubmVjdG9y
X21hc2sgPSAwOwo+PiAgCWNydGMtPnN0YXRlLT5lbmNvZGVyX21hc2sgPSAwOwo+PiArCWNvcHlf
dWFwaV90b19od19zdGF0ZSh0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPnN0YXRlKSk7Cj4+ICAK
Pj4gIAlmb3JfZWFjaF9lbmNvZGVyX29uX2NydGMoY3J0Yy0+ZGV2LCBjcnRjLCBlbmNvZGVyKQo+
PiAgCQllbmNvZGVyLT5iYXNlLmNydGMgPSBOVUxMOwo+PiBAQCAtMTE4MDQsNiArMTE4MDYsOSBA
QCBzdGF0aWMgaW50IGludGVsX2NydGNfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY3J0YyAqX2Ny
dGMsCj4+ICAKPj4gIAlpZiAobW9kZV9jaGFuZ2VkIHx8IGNydGNfc3RhdGUtPnVwZGF0ZV9waXBl
IHx8Cj4+ICAJICAgIGNydGNfc3RhdGUtPnVhcGkuY29sb3JfbWdtdF9jaGFuZ2VkKSB7Cj4+ICsJ
CS8qIENvcHkgY29sb3IgYmxvYnMgdG8gaHcgc3RhdGUgKi8KPj4gKwkJaW50ZWxfY3J0Y19jb3B5
X2NvbG9yX2Jsb2JzKGNydGNfc3RhdGUpOwo+PiArCj4+ICAJCXJldCA9IGludGVsX2NvbG9yX2No
ZWNrKGNydGNfc3RhdGUpOwo+PiAgCQlpZiAocmV0KQo+PiAgCQkJcmV0dXJuIHJldDsKPj4gQEAg
LTEyMjUxLDYgKzEyMjU2LDIyIEBAIHN0YXRpYyBib29sIGNoZWNrX2RpZ2l0YWxfcG9ydF9jb25m
bGljdHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4+ICAJcmV0dXJuIHJldDsK
Pj4gIH0KPj4gIAo+PiArc3RhdGljIHZvaWQgY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiArewo+PiArCWNydGNfc3RhdGUtPmh3LmVu
YWJsZSA9IGNydGNfc3RhdGUtPnVhcGkuZW5hYmxlOwo+PiArCWNydGNfc3RhdGUtPmh3LmFjdGl2
ZSA9IGNydGNfc3RhdGUtPnVhcGkuYWN0aXZlOwo+PiArCWNydGNfc3RhdGUtPmh3Lm1vZGUgPSBj
cnRjX3N0YXRlLT51YXBpLm1vZGU7Cj4+ICsJY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSA9
IGNydGNfc3RhdGUtPnVhcGkuYWRqdXN0ZWRfbW9kZTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZv
aWQgY29weV9od190b191YXBpX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQo+PiArewo+PiArCWNydGNfc3RhdGUtPnVhcGkuZW5hYmxlID0gY3J0Y19zdGF0ZS0+aHcu
ZW5hYmxlOwo+PiArCWNydGNfc3RhdGUtPnVhcGkuYWN0aXZlID0gY3J0Y19zdGF0ZS0+aHcuYWN0
aXZlOwo+PiArCWNydGNfc3RhdGUtPnVhcGkubW9kZSA9IGNydGNfc3RhdGUtPmh3Lm1vZGU7Cj4+
ICsJY3J0Y19zdGF0ZS0+dWFwaS5hZGp1c3RlZF9tb2RlID0gY3J0Y19zdGF0ZS0+aHcuYWRqdXN0
ZWRfbW9kZTsKPj4gK30KPj4gKwo+PiAgc3RhdGljIGludAo+PiAgY2xlYXJfaW50ZWxfY3J0Y19z
dGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPj4gIHsKPj4gQEAgLTEy
MjY3LDYgKzEyMjg4LDcgQEAgY2xlYXJfaW50ZWxfY3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPj4gIAkgKiBmaXhlZCwgc28gdGhhdCB0aGUgY3J0Y19zdGF0
ZSBjYW4gYmUgc2FmZWx5IGR1cGxpY2F0ZWQuIEZvciBub3csCj4+ICAJICogb25seSBmaWVsZHMg
dGhhdCBhcmUga25vdyB0byBub3QgY2F1c2UgcHJvYmxlbXMgYXJlIHByZXNlcnZlZC4gKi8KPj4g
IAo+PiArCXNhdmVkX3N0YXRlLT51YXBpID0gY3J0Y19zdGF0ZS0+dWFwaTsKPj4gIAlzYXZlZF9z
dGF0ZS0+c2NhbGVyX3N0YXRlID0gY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlOwo+PiAgCXNhdmVk
X3N0YXRlLT5zaGFyZWRfZHBsbCA9IGNydGNfc3RhdGUtPnNoYXJlZF9kcGxsOwo+PiAgCXNhdmVk
X3N0YXRlLT5kcGxsX2h3X3N0YXRlID0gY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZTsKPj4gQEAg
LTEyMjc3LDExICsxMjI5OSw5IEBAIGNsZWFyX2ludGVsX2NydGNfc3RhdGUoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+ICAJICAgIElTX1ZBTExFWVZJRVcoZGV2X3ByaXYp
IHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQo+PiAgCQlzYXZlZF9zdGF0ZS0+d20gPSBjcnRj
X3N0YXRlLT53bTsKPj4gIAo+PiAtCS8qIEtlZXAgYmFzZSBkcm1fY3J0Y19zdGF0ZSBpbnRhY3Qs
IG9ubHkgY2xlYXIgb3VyIGV4dGVuZGVkIHN0cnVjdCAqLwo+PiAtCUJVSUxEX0JVR19PTihvZmZz
ZXRvZihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSwgdWFwaSkpOwo+PiAtCUJVSUxEX0JVR19PTihv
ZmZzZXRvZihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSwgaHcpKTsKPj4gLQltZW1jcHkoJmNydGNf
c3RhdGUtPnVhcGkgKyAxLCAmc2F2ZWRfc3RhdGUtPnVhcGkgKyAxLAo+PiAtCSAgICAgICBzaXpl
b2YoKmNydGNfc3RhdGUpIC0gc2l6ZW9mKGNydGNfc3RhdGUtPnVhcGkpKTsKPj4gKwlpbnRlbF9j
cnRjX2ZyZWVfaHdfc3RhdGUoY3J0Y19zdGF0ZSk7Cj4+ICsJbWVtY3B5KGNydGNfc3RhdGUsIHNh
dmVkX3N0YXRlLCBzaXplb2YoKmNydGNfc3RhdGUpKTsKPj4gKwljb3B5X3VhcGlfdG9faHdfc3Rh
dGUoY3J0Y19zdGF0ZSk7Cj4+ICAKPj4gIAlrZnJlZShzYXZlZF9zdGF0ZSk7Cj4+ICAJcmV0dXJu
IDA7Cj4+IEBAIC0xMjQyMSw2ICsxMjQ0MSw5IEBAIGludGVsX21vZGVzZXRfcGlwZV9jb25maWco
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQo+PiAgCURSTV9ERUJVR19LTVMo
Imh3IG1heCBicHA6ICVpLCBwaXBlIGJwcDogJWksIGRpdGhlcmluZzogJWlcbiIsCj4+ICAJCSAg
ICAgIGJhc2VfYnBwLCBwaXBlX2NvbmZpZy0+cGlwZV9icHAsIHBpcGVfY29uZmlnLT5kaXRoZXIp
Owo+PiAgCj4+ICsJLyogdWFwaSB3YW50cyBhIGNvcHkgb2YgdGhlIGFkanVzdGVkX21vZGUgZm9y
IHZibGFuayBib29ra2VlcGluZyAqLwo+PiArCXBpcGVfY29uZmlnLT51YXBpLmFkanVzdGVkX21v
ZGUgPSBwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZTsKPj4gKwo+PiAgCXJldHVybiAwOwo+
PiAgfQo+PiAgCj4+IEBAIC0xMzE0Miw2ICsxMzE2NSw4IEBAIHZlcmlmeV9jcnRjX3N0YXRlKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+PiAgCj4+ICAJc3RhdGUgPSBvbGRfY3J0Y19zdGF0ZS0+
dWFwaS5zdGF0ZTsKPj4gIAlfX2RybV9hdG9taWNfaGVscGVyX2NydGNfZGVzdHJveV9zdGF0ZSgm
b2xkX2NydGNfc3RhdGUtPnVhcGkpOwo+PiArCWludGVsX2NydGNfZnJlZV9od19zdGF0ZShvbGRf
Y3J0Y19zdGF0ZSk7Cj4+ICsKPj4gIAlwaXBlX2NvbmZpZyA9IG9sZF9jcnRjX3N0YXRlOwo+PiAg
CW1lbXNldChwaXBlX2NvbmZpZywgMCwgc2l6ZW9mKCpwaXBlX2NvbmZpZykpOwo+PiAgCXBpcGVf
Y29uZmlnLT51YXBpLmNydGMgPSAmY3J0Yy0+YmFzZTsKPj4gQEAgLTEzNTY4LDYgKzEzNTkzLDcg
QEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwK
Pj4gIAo+PiAgCQlpZiAoIW5ld19jcnRjX3N0YXRlLT51YXBpLmVuYWJsZSkgewo+PiAgCQkJYW55
X21zID0gdHJ1ZTsKPj4gKwkJCWNsZWFyX2ludGVsX2NydGNfc3RhdGUobmV3X2NydGNfc3RhdGUp
Owo+PiAgCQkJY29udGludWU7Cj4+ICAJCX0KPj4gIAo+PiBAQCAtMTY2ODYsNiArMTY3MTIsNyBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9k
ZXZpY2UgKmRldikKPj4gIAkJCXRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7
Cj4+ICAKPj4gIAkJX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX2Rlc3Ryb3lfc3RhdGUoJmNydGNf
c3RhdGUtPnVhcGkpOwo+PiArCQlpbnRlbF9jcnRjX2ZyZWVfaHdfc3RhdGUoY3J0Y19zdGF0ZSk7
Cj4+ICAJCW1lbXNldChjcnRjX3N0YXRlLCAwLCBzaXplb2YoKmNydGNfc3RhdGUpKTsKPj4gIAkJ
X19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3Jlc2V0KCZjcnRjLT5iYXNlLCAmY3J0Y19zdGF0ZS0+
dWFwaSk7Cj4+ICAKPj4gQEAgLTE2ODAyLDYgKzE2ODI5LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxf
bW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4+ICAJCQlj
cnRjLT5iYXNlLm1vZGUudmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5waXBlX3NyY19oOwo+PiAgCQkJ
aW50ZWxfbW9kZV9mcm9tX3BpcGVfY29uZmlnKCZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2Rl
LAo+PiAgCQkJCQkJICAgIGNydGNfc3RhdGUpOwo+PiArCQkJY3J0Y19zdGF0ZS0+aHcubW9kZSA9
IGNydGMtPmJhc2UubW9kZTsKPj4gIAkJCVdBUk5fT04oZHJtX2F0b21pY19zZXRfbW9kZV9mb3Jf
Y3J0YyhjcnRjLT5iYXNlLnN0YXRlLCAmY3J0Yy0+YmFzZS5tb2RlKSk7Cj4+ICAKPj4gIAkJCS8q
Cj4+IEBAIC0xNjg0Nyw2ICsxNjg3NSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX21vZGVzZXRfcmVh
ZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+PiAgCj4+ICAJCWludGVsX2J3
X2NydGNfdXBkYXRlKGJ3X3N0YXRlLCBjcnRjX3N0YXRlKTsKPj4gIAo+PiArCQljb3B5X2h3X3Rv
X3VhcGlfc3RhdGUoY3J0Y19zdGF0ZSk7Cj4+ICAJCWludGVsX3BpcGVfY29uZmlnX3Nhbml0eV9j
aGVjayhkZXZfcHJpdiwgY3J0Y19zdGF0ZSk7Cj4+ICAJfQo+PiAgfQo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+PiBpbmRleCAy
YzM1NjcwODFlMTYuLmU4MWI3ODVjYzhmMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPj4gQEAgLTc0OSw3ICs3NDks
NiBAQCBlbnVtIGludGVsX291dHB1dF9mb3JtYXQgewo+PiAgfTsKPj4gIAo+PiAgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgewo+PiAtCXVuaW9uIHsKPj4gIAkvKgo+PiAgCSAqIHVhcGkgKGRybSkg
c3RhdGUuIFRoaXMgaXMgdGhlIHNvZnR3YXJlIHN0YXRlIHNob3duIHRvIHVzZXJzcGFjZS4KPj4g
IAkgKiBJbiBwYXJ0aWN1bGFyLCB0aGUgZm9sbG93aW5nIG1lbWJlcnMgYXJlIHVzZWQgZm9yIGJv
b2trZWVwaW5nOgo+PiBAQCAtNzcyLDggKzc3MSwxMSBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSB7Cj4+ICAJICoKPj4gIAkgKiBEdXJpbmcgaW5pdGlhbCBodyByZWFkb3V0LCB0aGV5IG5lZWQg
dG8gYmUgY29waWVkIHRvIHVhcGkuCj4+ICAJICovCj4+IC0Jc3RydWN0IGRybV9jcnRjX3N0YXRl
IGh3Owo+PiAtCX07Cj4+ICsJc3RydWN0IHsKPj4gKwkJYm9vbCBhY3RpdmUsIGVuYWJsZTsKPj4g
KwkJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpkZWdhbW1hX2x1dCwgKmdhbW1hX2x1dCwgKmN0
bTsKPj4gKwkJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgbW9kZSwgYWRqdXN0ZWRfbW9kZTsKPj4g
Kwl9IGh3Owo+PiAgCj4+ICAJLyoqCj4+ICAJICogcXVpcmtzIC0gYml0ZmllbGQgd2l0aCBodyBz
dGF0ZSByZWFkb3V0IHF1aXJrcwo+PiAtLSAKPj4gMi4yMC4xCj4+Cj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
