Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CED00103DB9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 15:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFD06EA5C;
	Wed, 20 Nov 2019 14:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AA986EA5C;
 Wed, 20 Nov 2019 14:50:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 06:50:57 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200739584"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 06:50:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rajat Jain <rajatja@google.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Chris
 Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>,
 =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, gregkh@linuxfoundation.org,
 mathewk@google.com, Daniel Thompson <daniel.thompson@linaro.org>, Jonathan
 Corbet <corbet@lwn.net>, Pavel Machek <pavel@denx.de>,
 seanpaul@google.com, Duncan Laurie <dlaurie@google.com>,
 jsbarnes@google.com, Thierry Reding <thierry.reding@gmail.com>
In-Reply-To: <20191104194147.185642-2-rajatja@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191023001206.15741-1-rajatja@google.com>
 <20191104194147.185642-1-rajatja@google.com>
 <20191104194147.185642-2-rajatja@google.com>
Date: Wed, 20 Nov 2019 16:50:46 +0200
Message-ID: <87tv6ywqih.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Lookup and attach ACPI
 device node for connectors
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
Cc: Rajat Jain <rajatja@google.com>, rajatxjain@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwNCBOb3YgMjAxOSwgUmFqYXQgSmFpbiA8cmFqYXRqYUBnb29nbGUuY29tPiB3cm90
ZToKPiBMb29rdXAgYW5kIGF0dGFjaCBBQ1BJIG5vZGVzIGZvciBpbnRlbCBjb25uZWN0b3JzLiBU
aGUgbG9va3VwIGlzIGRvbmUKPiBpbiBjb21wbGlhbmNlIHdpdGggQUNQSSBTcGVjIDYuMwo+IGh0
dHBzOi8vdWVmaS5vcmcvc2l0ZXMvZGVmYXVsdC9maWxlcy9yZXNvdXJjZXMvQUNQSV82XzNfZmlu
YWxfSmFuMzAucGRmCj4gKFJlZjogUGFnZXMgMTExOSAtIDExMjMpLgo+Cj4gVGhpcyBjYW4gYmUg
dXNlZnVsIGZvciBhbnkgY29ubmVjdG9yIHNwZWNpZmljIHBsYXRmb3JtIHByb3BlcnRpZXMuIChU
aGlzCj4gd2lsbCBiZSB1c2VkIGZvciBwcml2YWN5IHNjcmVlbiBpbiBuZXh0IHBhdGNoKS4KPgo+
IFNpZ25lZC1vZmYtYnk6IFJhamF0IEphaW4gPHJhamF0amFAZ29vZ2xlLmNvbT4KPiBDaGFuZ2Ut
SWQ6IEk3OThlNzA3MTRhNDQwMjU1NGM4Y2QyYThlNTgyNjgzNTNmNzU4MTRmCj4gLS0tCj4gdjI6
IGZvcm1lZCBieSBzcGxpdHRpbmcgdGhlIG9yaWdpbmFsIHBhdGNoIGludG8gQUNQSSBsb29rdXAs
IGFuZCBwcml2YWN5Cj4gICAgIHNjcmVlbiBwcm9wZXJ0eS4gQWxzbyBtb3ZlIGl0IGludG8gaTkx
NSBub3cgdGhhdCBJIGZvdW5kIGV4aXN0aW5nIGNvZGUKPiAgICAgaW4gaTkxNSB0aGF0IGNhbiBi
ZSByZS11c2VkLgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWNwaS5j
ICAgICB8IDUwICsrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hY3BpLmggICAgIHwgIDQgKy0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDMgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDQgKysKPiAgNCBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hY3BpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2FjcGkuYwo+IGluZGV4IDc0OGQ5YjMxMjVkZC4uMGMxMDUxNjQzMGIxIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWNwaS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hY3BpLmMKPiBAQCAtMjQzLDMgKzI0
Myw1MyBAQCB2b2lkIGludGVsX3BvcHVsYXRlX2FjcGlfaWRzX2Zvcl9hbGxfY29ubmVjdG9ycyhz
dHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldikKPiAgCX0KPiAgCWRybV9jb25uZWN0b3JfbGlzdF9p
dGVyX2VuZCgmY29ubl9pdGVyKTsKPiAgfQo+ICsKPiArLyoKPiArICogUmVmOiBBQ1BJIFNwZWMg
Ni4zCj4gKyAqIGh0dHBzOi8vdWVmaS5vcmcvc2l0ZXMvZGVmYXVsdC9maWxlcy9yZXNvdXJjZXMv
QUNQSV82XzNfZmluYWxfSmFuMzAucGRmCj4gKyAqIFBhZ2VzIDExMTkgLSAxMTIzIGRlc2NyaWJl
LCB3aGF0IEkgYmVsaWV2ZSwgYSBzdGFuZGFyZCB3YXkgb2YKPiArICogaWRlbnRpZnlpbmcgLyBh
ZGRyZXNzaW5nICJkaXNwbGF5IHBhbmVscyIgaW4gdGhlIEFDUEkuIEl0IHByb3ZpZGVzCj4gKyAq
IGEgd2F5IGZvciB0aGUgQUNQSSB0byBkZWZpbmUgZGV2aWNlcyBmb3IgdGhlIGRpc3BsYXkgcGFu
ZWxzIGF0dGFjaGVkCj4gKyAqIHRvIHRoZSBzeXN0ZW0uIEl0IHRodXMgcHJvdmlkZXMgYSB3YXkg
Zm9yIHRoZSBCSU9TIHRvIGV4cG9ydCBhbnkgcGFuZWwKPiArICogc3BlY2lmaWMgcHJvcGVydGll
cyB0byB0aGUgc3lzdGVtIHZpYSBBQ1BJIChsaWtlIGRldmljZSB0cmVlcykuCj4gKyAqCj4gKyAq
IFRoZSBmb2xsb3dpbmcgZnVuY3Rpb25zIGxvb2tzIHVwIHRoZSBBQ1BJIG5vZGUgZm9yIGEgY29u
bmVjdG9yIGFuZCByZXR1cm5zCj4gKyAqIGl0LiBUZWNobmljYWxseSBpdCBpcyBpbmRlcGVuZGVu
dCBmcm9tIHRoZSBpOTE1IGNvZGUsIGFuZAo+ICsgKiBpZGVhbGx5IG1heSBiZSBjYWxsZWQgZm9y
IGFsbCBjb25uZWN0b3JzLiBJdCBpcyBnZW5lcmFsbHkgYSBnb29kIGlkZWEgdG8KPiArICogYmUg
YWJsZSB0byBhdHRhY2ggYW4gQUNQSSBub2RlIHRvIGRlc2NyaWJlIGFueXRoaW5nIGlmIG5lZWRl
ZC4gKFRoaXMgY2FuCj4gKyAqIGhlbHAgaW4gZnV0dXJlIGZvciBvdGhlciBwYW5lbCBzcGVjaWZp
YyBmZWF0dXJlcyBtYXliZSkuIEhvd2V2ZXIsIGl0Cj4gKyAqIG5lZWRzIGFuIGFjcGkgZGV2aWNl
IElEIHdoaWNoIGlzIGJ1aWxkIHVzaW5nIGFuIGluZGV4IHdpdGhpbiBhIHBhcnRpY3VsYXIKPiAr
ICogdHlwZSBvZiBwb3J0IChSZWYgdG8gdGhlIHBhZ2VzIG9mIHNwZWMgbWVudGlvbmVkIGFib3Zl
LCBhbmQgdG8gY29kZSBpbgo+ICsgKiBpbnRlbF9wb3B1bGF0ZV9hY3BpX2lkc19mb3JfYWxsX2Nv
bm5lY3RvcnMoKSkuIFRoaXMgZGV2aWNlIGluZGV4Cj4gKyAqIHVuZm9ydHVuYXRlbHkgaXMgbm90
IGF2YWlsYWJsZSBpbiBEUk0gY29kZSwgc28gY3VycmVudGx5IGl0cyBjYWxsIGlzCj4gKyAqIG9y
aWdpbmF0ZWQgZnJvbSBpOTE1IGRyaXZlci4gSWYgaW4gZnV0dXJlIHRoaXMgaXMgdXNlZnVsIGZv
ciBvdGhlciBkcml2ZXJzCj4gKyAqIGFuZCB3ZSBjYW4gZmluZCBhIGdlbmVyaWMgd2F5IG9mIGdl
dHRpbmcgYSBkZXZpY2UgaW5kZXgsIHdlIHNob3VsZCBtb3ZlIHRoaXMKPiArICogZnVuY3Rpb24g
dG8gZHJtIGNvZGUsIG1heWJlLgo+ICsgKi8KPiArdm9pZCBpbnRlbF9jb25uZWN0b3JfbG9va3Vw
X2FjcGlfbm9kZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IpCgpOaXRw
aWNrLCBJJ2QgZXhwZWN0IGEgImxvb2t1cCIgZnVuY3Rpb24gdG8gcmV0dXJuIHdoYXRldmVyIGl0
IGlzIGxvb2tpbmcKdXAsIG5vdCBtb2RpZnkgaXRzIGFyZ3VtZW50LgoKPiArewo+ICsJc3RydWN0
IGRybV9kZXZpY2UgKmRybV9kZXYgPSBpbnRlbF9jb25uZWN0b3ItPmJhc2UuZGV2Owo+ICsJc3Ry
dWN0IGRldmljZSAqZGV2ID0gJmRybV9kZXYtPnBkZXYtPmRldjsKPiArCXN0cnVjdCBhY3BpX2Rl
dmljZSAqY29ubl9kZXY7Cj4gKwl1NjQgY29ubl9hZGRyOwo+ICsKPiArCS8qCj4gKwkgKiBSZXBv
cHVsYXRlIEFDUEkgSURzIGZvciBhbGwgY29ubmVjdG9ycyBpcyBuZWVkZWQgYmVjYXVzZSB0aGUg
ZGlzcGxheQo+ICsJICogaW5kZXggbWF5IGhhdmUgY2hhbmdlZCBhcyBhIHJlc3VsdCBvZiBob3Rw
bHVnZ2luZyBhbmQgdW5wbHVnZ2luZwo+ICsJICogY29ubmVjdG9ycwo+ICsJICovCgpJIHRoaW5r
IHRoYXQgY2FuIG9ubHkgYmUgdHJ1ZSBmb3IgRFAgTVNULiBGb3IgZXZlcnl0aGluZyBlbHNlLCBJ
IGRvbid0CnRoaW5rIHNvLiBBbnl3YXksIHdoeSBhcmUgd2UgZG9pbmcgaXQgaGVyZSB0aGVuLCBk
ZXBlbmRpbmcgb24gd2hldGhlcgpzb21lb25lIGNhbGxzIHRoaXMgZnVuY3Rpb24gb3Igbm90PyBJ
ZiBpdCBtYXR0ZXJzLCB3ZSBzaG91bGQgYmUgZG9pbmcKdGhpcyB3aGVuZXZlciB0aGVyZSdzIGEg
Y2hhbmNlIHRoZXkndmUgY2hhbmdlZCwgcmlnaHQ/Cgo+ICsJaW50ZWxfcG9wdWxhdGVfYWNwaV9p
ZHNfZm9yX2FsbF9jb25uZWN0b3JzKGRybV9kZXYpOwo+ICsKPiArCS8qIEJ1aWxkIHRoZSBfQURS
IHRvIGxvb2sgZm9yICovCj4gKwljb25uX2FkZHIgPSBpbnRlbF9jb25uZWN0b3ItPmFjcGlfZGV2
aWNlX2lkOwo+ICsJY29ubl9hZGRyIHw9IEFDUElfREVWSUNFX0lEX1NDSEVNRTsKPiArCWNvbm5f
YWRkciB8PSBBQ1BJX0JJT1NfQ0FOX0RFVEVDVDsKPiArCj4gKwlEUk1fREVWX0lORk8oZGV2LCAi
TG9va2luZyBmb3IgY29ubmVjdG9yIEFDUEkgbm9kZSBhdCBfQURSPSVsbFhcbiIsCj4gKwkJICAg
ICBjb25uX2FkZHIpOwo+ICsKPiArCS8qIExvb2sgdXAgdGhlIGNvbm5lY3RvciBkZXZpY2UsIHVu
ZGVyIHRoZSBQQ0kgZGV2aWNlICovCj4gKwljb25uX2RldiA9IGFjcGlfZmluZF9jaGlsZF9kZXZp
Y2UoQUNQSV9DT01QQU5JT04oZGV2KSwgY29ubl9hZGRyLAo+ICsJCQkJCSAgZmFsc2UpOwo+ICsJ
aW50ZWxfY29ubmVjdG9yLT5hY3BpX2hhbmRsZSA9IGNvbm5fZGV2ID8gY29ubl9kZXYtPmhhbmRs
ZSA6IE5VTEw7CgpXaHkgZG9uJ3Qgd2UgZG8gdGhpcyBhcyBwYXJ0IG9mCmludGVsX3BvcHVsYXRl
X2FjcGlfaWRzX2Zvcl9hbGxfY29ubmVjdG9ycygpIG9yIHdoYXRldmVyIGl0J2xsIGJlCmNhbGxl
ZD8KCj4gK30KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hY3BpLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FjcGkuaAo+IGlu
ZGV4IDhmNmQ4NTBkZjZmYS4uNjFhNDM5MmZhYzRhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWNwaS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hY3BpLmgKPiBAQCAtOSwxNCArOSwxNiBAQAo+ICAjaW5jbHVkZSAi
aW50ZWxfZGlzcGxheV90eXBlcy5oIgo+ICAKPiAgI2lmZGVmIENPTkZJR19BQ1BJCj4gK3ZvaWQg
aW50ZWxfY29ubmVjdG9yX2xvb2t1cF9hY3BpX25vZGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKTsKPiAgdm9pZCBpbnRlbF9yZWdpc3Rlcl9kc21faGFuZGxlcih2b2lkKTsKPiAg
dm9pZCBpbnRlbF91bnJlZ2lzdGVyX2RzbV9oYW5kbGVyKHZvaWQpOwo+ICB2b2lkIGludGVsX3Bv
cHVsYXRlX2FjcGlfaWRzX2Zvcl9hbGxfY29ubmVjdG9ycyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
X2Rldik7Cj4gICNlbHNlCj4gK3N0YXRpYyBpbmxpbmUgdm9pZAo+ICtpbnRlbF9jb25uZWN0b3Jf
bG9va3VwX2FjcGlfbm9kZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpIHsgcmV0
dXJuOyB9Cj4gIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9yZWdpc3Rlcl9kc21faGFuZGxlcih2
b2lkKSB7IHJldHVybjsgfQo+ICBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfdW5yZWdpc3Rlcl9k
c21faGFuZGxlcih2b2lkKSB7IHJldHVybjsgfQo+ICBzdGF0aWMgaW5saW5lIHZvaWQKPiAtc3Rh
dGljIGlubGluZSB2b2lkCgpXaG9vcHMuCgo+ICBpbnRlbF9wb3B1bGF0ZV9hY3BpX2lkc19mb3Jf
YWxsX2Nvbm5lY3RvcnMoc3RydWN0IGRybV9kZXZpY2UgKmRybV9kZXYpIHsgfQo+ICAjZW5kaWYg
LyogQ09ORklHX0FDUEkgKi8KPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBpbmRleCA0NDlhYmFlYTYxOWYuLmMyNzA2YWZj
MDY5YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oCj4gQEAgLTQwMCw2ICs0MDAsOSBAQCBzdHJ1Y3QgaW50ZWxfY29ubmVj
dG9yIHsKPiAgCS8qIEFDUEkgZGV2aWNlIGlkIGZvciBBQ1BJIGFuZCBkcml2ZXIgY29vcGVyYXRp
b24gKi8KPiAgCXUzMiBhY3BpX2RldmljZV9pZDsKPiAgCj4gKwkvKiBBQ1BJIGhhbmRsZSBjb3Jy
ZXNwb25kaW5nIHRvIHRoaXMgY29ubmVjdG9yIGRpc3BsYXksIGlmIGZvdW5kICovCj4gKwl2b2lk
ICphY3BpX2hhbmRsZTsKPiArCj4gIAkvKiBSZWFkcyBvdXQgdGhlIGN1cnJlbnQgaHcsIHJldHVy
bmluZyB0cnVlIGlmIHRoZSBjb25uZWN0b3IgaXMgZW5hYmxlZAo+ICAJICogYW5kIGFjdGl2ZSAo
aS5lLiBkcG1zIE9OIHN0YXRlKS4gKi8KPiAgCWJvb2wgKCpnZXRfaHdfc3RhdGUpKHN0cnVjdCBp
bnRlbF9jb25uZWN0b3IgKik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+IGluZGV4IGY4NjU2MTUxNzJhNS4uNGZhYzQwOGE0Mjk5IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC00NSw2ICs0NSw3IEBACj4gICNpbmNsdWRl
ICJpOTE1X2RlYnVnZnMuaCIKPiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gICNpbmNsdWRlICJp
OTE1X3RyYWNlLmgiCj4gKyNpbmNsdWRlICJpbnRlbF9hY3BpLmgiCj4gICNpbmNsdWRlICJpbnRl
bF9hdG9taWMuaCIKPiAgI2luY2x1ZGUgImludGVsX2F1ZGlvLmgiCj4gICNpbmNsdWRlICJpbnRl
bF9jb25uZWN0b3IuaCIKPiBAQCAtNjMzMyw2ICs2MzM0LDcgQEAgaW50ZWxfZHBfYWRkX3Byb3Bl
cnRpZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3QKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShjb25uZWN0b3ItPmRldik7Cj4gIAllbnVtIHBvcnQgcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGlu
dGVsX2RwKS0+YmFzZS5wb3J0Owo+ICsJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29u
bmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4gIAo+ICAJaWYgKCFJU19H
NFgoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9SVF9BKQo+ICAJCWludGVsX2F0dGFjaF9mb3JjZV9h
dWRpb19wcm9wZXJ0eShjb25uZWN0b3IpOwo+IEBAIC02MzU0LDYgKzYzNTYsOCBAQCBpbnRlbF9k
cF9hZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciAqY29ubmVjdAo+ICAKPiAgCQljb25uZWN0b3ItPnN0YXRlLT5zY2FsaW5nX21vZGUg
PSBEUk1fTU9ERV9TQ0FMRV9BU1BFQ1Q7Cj4gIAo+ICsJCS8qIExvb2t1cCB0aGUgQUNQSSBub2Rl
IGNvcnJlc3BvbmRpbmcgdG8gdGhlIGNvbm5lY3RvciAqLwo+ICsJCWludGVsX2Nvbm5lY3Rvcl9s
b29rdXBfYWNwaV9ub2RlKGludGVsX2Nvbm5lY3Rvcik7CgpUaGlzIGlzIGFuIG9kZCBwbGFjZSB0
byBkbyB0aGlzLCBpc24ndCBpdD8gSXQncyBvbmx5IGNhbGxlZCBvbmNlLCBidXQKeW91IHNheSB0
aGUgYWNwaSBpZCBtYXkgY2hhbmdlIGF0IGhvdHBsdWcuCgpCUiwKSmFuaS4KCj4gIAl9Cj4gIH0K
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
