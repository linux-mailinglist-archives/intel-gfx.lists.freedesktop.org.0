Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58944151401
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 02:42:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7933E6ED7C;
	Tue,  4 Feb 2020 01:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 556D96ED7C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 01:42:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 17:42:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="278914978"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Feb 2020 17:42:43 -0800
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 3 Feb 2020 17:42:42 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.117]) with mapi id 14.03.0439.000;
 Mon, 3 Feb 2020 17:42:27 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
Thread-Index: AQHV1jYN9v5B0+dK8kqC2NwA8qKD5qgCDLWAgAADrwCACMIAAA==
Date: Tue, 4 Feb 2020 01:42:27 +0000
Message-ID: <5092de826012c39d707bb47affe50fa4eec60808.camel@intel.com>
References: <20200128235241.169694-1-jose.souza@intel.com>
 <20200129114449.GS13686@intel.com> <20200129115800.GV13686@intel.com>
In-Reply-To: <20200129115800.GV13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.31]
Content-ID: <512B4130280EFD40BB7A331231C4C566@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTAxLTI5IGF0IDEzOjU4ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgSmFuIDI5LCAyMDIwIGF0IDAxOjQ0OjQ5UE0gKzAyMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToNCj4gPiBPbiBUdWUsIEphbiAyOCwgMjAyMCBhdCAwMzo1Mjo0MFBNIC0wODAw
LCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphDQo+ID4gd3JvdGU6DQo+ID4gPiBkR0ZYIGhhdmUgbG9j
YWwgbWVtb3J5IHNvIGl0IGRvIG5vdCBoYXZlIGFwZXJ0dXJlIGFuZCBkbyBub3QNCj4gPiA+IHN1
cHBvcnQNCj4gPiA+IENQVSBmZW5jZXMgYnV0IGV2ZW4gZm9yIGlHRlggaXQgaGF2ZSBhIHNtYWxs
IG51bWJlciBvZiBmZW5jZXMuDQo+ID4gPiANCj4gPiA+IEFzIHJlcGxhY2VtZW50IGZvciBmZW5j
ZXMgdG8gdHJhY2sgZnJvbnRidWZmZXIgbW9kaWZpY2F0aW9ucyBieQ0KPiA+ID4gQ1BVDQo+ID4g
PiB3ZSBoYXZlIGEgc29mdHdhcmUgdHJhY2tpbmcgdGhhdCBpcyBhbHJlYWR5IGluIHVzZWQgYnkg
RkJDIGFuZA0KPiA+ID4gUFNSLg0KPiA+ID4gUFNSIGRvbid0IHN1cHBvcnQgZmVuY2VzIHNvIGl0
IHNob3dzIHRoYXQgdGhpcyB0cmFja2luZyBpcw0KPiA+ID4gcmVsaWFibGUuDQo+ID4gPiANCj4g
PiA+IFNvIGxldHMgbWFrZSBmZW5jZXMgYSBuaWNlLXRvLWhhdmUgdG8gYWN0aXZhdGUgRkJDIGZv
ciBHRU45Kyhhcw0KPiA+ID4gd2UNCj4gPiA+IG9ubHkgaGF2ZSBhIGdvb2QgQ0kgY292ZXJhZ2Ug
Zm9yIEdFTjkrKSwgdGhpcyB3aWxsIGFsbG93IHVzIHRvDQo+ID4gPiBlbmFibGUNCj4gPiA+IEZC
QyBmb3IgZEdGWHMgYW5kIGlHRlhzIGV2ZW4gd2hlbiB0aGVyZSBpcyBubyBhdmFpbGFibGUgZmVu
Y2UuDQo+ID4gPiANCj4gPiA+IGludGVsX2ZiY19od190cmFja2luZ19jb3ZlcnNfc2NyZWVuKCkg
bWF5YmUgY2FuIGFsc28gaGF2ZSB0aGUNCj4gPiA+IHNhbWUNCj4gPiA+IHRyZWF0bWVudCBhcyBm
ZW5jZXMgYnV0IEJTcGVjIGlzIG5vdCBjbGVhciBpZiB0aGUgc2l6ZSBsaW1pdGF0aW9uDQo+ID4g
PiBpcw0KPiA+ID4gZm9yIGhhcmR3YXJlIHRyYWNraW5nIG9yIGdlbmVyYWwgdXNlIG9mIEZCQyBh
bmQgSSBkb24ndCBoYXZlIGEgNUsNCj4gPiA+IGRpc3BsYXkgdG8gdGVzdCBpdCwgc28ga2VlcGlu
ZyBhcyBpcyBmb3Igc2FmZXR5Lg0KPiA+ID4gDQo+ID4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+DQo+ID4gPiBDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhp
bmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMiArKysrKysrKy0t
LS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jDQo+ID4gPiBpbmRleCAyYTNmMTMzM2M4ZmYuLjFmMGQyNGExZGVjMSAxMDA2NDQNCj4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+IEBA
IC03MTcsMTEgKzcxNywxNSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0
cnVjdA0KPiA+ID4gaW50ZWxfY3J0YyAqY3J0YykNCj4gPiA+ICAJCXJldHVybiBmYWxzZTsNCj4g
PiA+ICAJfQ0KPiA+ID4gIA0KPiA+ID4gLQkvKiBUaGUgdXNlIG9mIGEgQ1BVIGZlbmNlIGlzIG1h
bmRhdG9yeSBpbiBvcmRlciB0byBkZXRlY3QNCj4gPiA+IHdyaXRlcw0KPiA+ID4gLQkgKiBieSB0
aGUgQ1BVIHRvIHRoZSBzY2Fub3V0IGFuZCB0cmlnZ2VyIHVwZGF0ZXMgdG8gdGhlIEZCQy4NCj4g
PiA+ICsJLyogVGhlIHVzZSBvZiBhIENQVSBmZW5jZSBpcyBvbmUgb2YgdHdvIHdheXMgdG8gZGV0
ZWN0IHdyaXRlcw0KPiA+ID4gYnkgdGhlDQo+ID4gPiArCSAqIENQVSB0byB0aGUgc2Nhbm91dCBh
bmQgdHJpZ2dlciB1cGRhdGVzIHRvIHRoZSBGQkMuDQo+ID4gPiArCSAqDQo+ID4gPiArCSAqIFRo
ZSBvdGhlciBtZXRob2QgaXMgYnkgc29mdHdhcmUgdHJhY2tpbmcoc2VlDQo+ID4gPiArCSAqIGlu
dGVsX2ZiY19pbnZhbGlkYXRlL2ZsdXNoKCkpLCBpdCB3aWxsIG1hbnVhbGx5IG5vdGlmeSBGQkMN
Cj4gPiA+IGFuZCBudWtlDQo+ID4gPiArCSAqIHRoZSBjdXJyZW50IGNvbXByZXNzZWQgYnVmZmVy
IGFuZCByZWNvbXByZXNzIGl0Lg0KPiA+ID4gIAkgKg0KPiA+ID4gIAkgKiBOb3RlIHRoYXQgaXMg
cG9zc2libGUgZm9yIGEgdGlsZWQgc3VyZmFjZSB0byBiZSB1bm1hcHBhYmxlDQo+ID4gPiAoYW5k
DQo+ID4gPiAtCSAqIHNvIGhhdmUgbm8gZmVuY2UgYXNzb2NpYXRlZCB3aXRoIGl0KSBkdWUgdG8g
YXBlcnR1cmUNCj4gPiA+IGNvbnN0YWludHMNCj4gPiA+ICsJICogc28gaGF2ZSBubyBmZW5jZSBh
c3NvY2lhdGVkIHdpdGggaXQpIGR1ZSB0byBhcGVydHVyZQ0KPiA+ID4gY29uc3RyYWludHMNCj4g
PiA+ICAJICogYXQgdGhlIHRpbWUgb2YgcGlubmluZy4NCj4gPiA+ICAJICoNCj4gPiA+ICAJICog
RklYTUUgd2l0aCA5MC8yNzAgZGVncmVlIHJvdGF0aW9uIHdlIHNob3VsZCB1c2UgdGhlIGZlbmNl
IG9uDQo+ID4gPiBAQCAtNzMwLDcgKzczNCw3IEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5f
YWN0aXZhdGUoc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ID4gIAkgKiBGb3Ig
bm93IHRoaXMgd2lsbCBlZmZlY2l2ZWx5IGRpc2FibGUgRkJDIHdpdGggOTAvMjcwIGRlZ3JlZQ0K
PiA+ID4gIAkgKiByb3RhdGlvbi4NCj4gPiA+ICAJICovDQo+ID4gPiAtCWlmIChjYWNoZS0+ZmVu
Y2VfaWQgPCAwKSB7DQo+ID4gPiArCWlmIChjYWNoZS0+ZmVuY2VfaWQgPCAwICYmIElOVEVMX0dF
TihkZXZfcHJpdikgPCA5KSB7DQo+ID4gDQo+ID4gTm90IGVub3VnaC4gV2UgbmVlZCB0byBjaGVj
ayB0aGF0IHRoZSB0aWxpbmcgZm9ybWF0IGlzIGFjdHVhbGx5DQo+ID4gc3VwcG9ydGVkLg0KPiAN
Cj4gQWN0dWFsbHkgbm90IHN1cmUgaWYgYWxsIG9mIHRoZW0gYXJlIG9yIG5vdC4gSUlSQyBzb21l
IGRvY3MganVzdCBzYWlkDQo+IFgvWSB0aWxlIGlzIHN1cHBvcnRlZCAoYW5kIGluIHNvbWUgb3Ro
ZXIgcGxhY2UgbGluZWFyIHdhcyBhbHNvDQo+IGxpc3RlZCkuDQoNCkRpZCBzb21lIHRlc3Rpbmcg
d2l0aCBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmcgYW5kIGxpbmVhciB3b3JrcyBhdA0KbGVhc3Qg
aW4gR0VOMTIgd2l0aCBmZW5jZXMgY29tcGxldGUgZGlzYWJsZWQsIHdpbGwgZG8gc29tZSB0ZXN0
aW5nIGluDQpHRU45IGFuZCBHRU4xMSB0b28gYW5kIHdpdGggdGhlIG90aGVyIHR5cGVzIG9mIHRp
bGluZy4NCg0KQW55IHRpcHMgdG8gZmluZCB0aGlzIGRvY3VtZW50cz8gSXQgd2FzIHJlbGV2YW50
IGZvciBHRU45Kz8NCk9ubHkgdGhpbmcgdGhhdCBCU3BlYyBzYXlzIGlzIHRoYXQgRkJDIGlzIG5v
dCBzdXBwb3J0ZWQgaW4gUkdCIDE2YnBwDQp3aXRoIHBsYW5lcyByb3RhdGVkIGJ5IDkwIG9yIDI3
MC4JDQoNCj4gDQo+ID4gQWxzbyB0aGUgdHJhY2tpbmcgc3R1ZmYgaXMgYnVzdGVkIGluIGludGVs
IGRkeCBzbyBuZWVkIHRvIGdldA0KPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNzA2MzYvIG1lcmdlZCBzb21laG93Lg0KDQpPdWNoLCBob3BlZnVsbHkgbm8gb25l
IHVzaW5nIEludGVsIEREWCBoYXZlIFBTUiBwYW5lbHMgb3RoZXJ3aXNlIHdlDQp3b3VsZCBoYXZl
IGJ1ZyByZXBvcnRzLg0KDQpXZWxsIG1heWJlIHVudGlsIHRoYXQgaXMgZmlndXJlIG91dCwgdGhl
IGNoZWNrIGFib3ZlIGNvdWxkIGJlDQpJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEsIGlmIEkgcmVt
ZW1iZXIgY29ycmVjdGx5IElDTCBpcyB0aGUgZmlyc3QNCnBsYXRmb3JtIG5vdCBzdXBwb3J0ZWQg
YnkgRERYLg0KDQo+ID4gDQo+ID4gPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAiZnJhbWVidWZm
ZXIgbm90IHRpbGVkIG9yIGZlbmNlZCI7DQo+ID4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiAg
CX0NCj4gPiA+IC0tIA0KPiA+ID4gMi4yNS4wDQo+ID4gPiANCj4gPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0DQo+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KPiA+
IA0KPiA+IC0tIA0KPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+IEludGVsDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
