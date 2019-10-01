Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47252C3778
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFAF6E5EA;
	Tue,  1 Oct 2019 14:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 261E16E7EC
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:31:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:31:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="194544154"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by orsmga003.jf.intel.com with ESMTP; 01 Oct 2019 07:31:42 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.184]) by
 irsmsx105.ger.corp.intel.com ([169.254.7.164]) with mapi id 14.03.0439.000;
 Tue, 1 Oct 2019 15:31:41 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Palli, Tapani"
 <tapani.palli@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/color: fix broken display in icl+
Thread-Index: AQHVeCMukPiq5Elp3E26CNhFbU4qd6dFXEgAgABpsYCAABNeYA==
Date: Tue, 1 Oct 2019 14:31:41 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D07693A1E8@IRSMSX106.ger.corp.intel.com>
References: <20191001063128.10566-1-swati2.sharma@intel.com>
 <87pnjgdhab.fsf@intel.com> <20191001142125.GL1208@intel.com>
In-Reply-To: <20191001142125.GL1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTRiMjBjOWYtZGZmYi00NWMyLWEyYTYtOTdkODBlNDU0MzVkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibmZuWDAwVlBsUU83OEdiWXhmWEN1UUZVZU9BYWUrcnhhUFR6YlU1Z2RjSE02bUwyUzlBMW1RSDY2cXNUT1VcLzYifQ==
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/color: fix broken display in icl+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SEksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmls
bGUgU3lyasOkbMOkDQo+IFNlbnQ6IHRpaXN0YWkgMS4gbG9rYWt1dXRhIDIwMTkgMTcuMjENCj4g
VG86IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTmF1dGl5YWwsIEFua2l0IEsgPGFua2l0LmsubmF1dGl5
YWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkx
NS9jb2xvcjogZml4IGJyb2tlbiBkaXNwbGF5IGluIGljbCsNCj4gDQo+IE9uIFR1ZSwgT2N0IDAx
LCAyMDE5IGF0IDExOjAzOjA4QU0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+IE9uIFR1
ZSwgMDEgT2N0IDIwMTksIFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+IHdy
b3RlOg0KPiA+ID4gUHJlbWF0dXJlIGdhbW1hIGx1dCBwcmVwcmF0aW9uIGFuZCBsb2FkaW5nIHdo
aWNoIHdhcyBnZXR0aW5nDQo+ID4gPiByZWZsZWN0ZWQgaW4gZmlyc3QgbW9kZXNldCBjYXVzaW5n
IGRpZmZlcmVudCBjb2xvcnMgb24gc2NyZWVuIGR1cmluZw0KPiA+ID4gYm9vdC4NCj4gPiA+DQo+
ID4gPiBJc3N1ZTogSW4gQklPUywgZ2FtbWEgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdC4gSG93ZXZl
ciwNCj4gPiA+IGxlZ2FjeV9yZWFkX2x1dHMoKSB3YXMgZ2V0dGluZyBjYWxsZWQgZXZlbiBiZWZv
cmUgdGhlDQo+ID4gPiBsZWdhY3lfbG9hZF9sdXRzKCkgd2hpY2ggd2FzIHNldHRpbmcgY3J0Y19z
dGF0ZS0+YmFzZS5nYW1tYV9sdXQgYW5kDQo+ID4gPiBnYW1tYV9sdXQgd2FzIHByb2dyYW1tZWQg
d2l0aCBqdW5rIHZhbHVlcyB3aGljaCBsZWQgdG8gdmlzdWFsDQo+ID4gPiBhcnRpZmFjdHMgKGRp
ZmZlcmVudCBjb2xvcmVkIHNjcmVlbnMgaW5zdGVhZCBvZiB1c3VhbCBibGFjayBkdXJpbmcgYm9v
dCkuDQo+ID4gPg0KPiA+ID4gRml4OiBDYWxsaW5nIHJlYWRfbHV0cygpIG9ubHkgd2hlbiBnYW1t
YSBpcyBlbmFibGVkIHdoaWNoIHdpbGwNCj4gPiA+IGhhcHBlbiBhZnRlciBmaXJzdCBtb2Rlc2V0
Lg0KPiA+ID4NCj4gPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTE4MDkNCj4gPg0KPiA+IEknbSBjb25mdXNlZC4gSXMgdGhlcmUgYSBj
dXJyZW50IHByb2JsZW0gdXBzdHJlYW0gYWZ0ZXIgdGhlIHJldmVydA0KPiA+IDFiODU4ODc0MWZk
YyAoIlJldmVydCAiZHJtL2k5MTUvY29sb3I6IEV4dHJhY3QgaWNsX3JlYWRfbHV0cygpIiIpPw0K
PiA+DQo+ID4gT3IgZG9lcyB0aGlzIGZpeCBhIHByb2JsZW0gdGhhdCBvbmx5IG9jY3VycyBpbiBj
b25qdW5jdGlvbiB3aXRoIHRoZQ0KPiA+IHJldmVydGVkIGNvbW1pdD8gVGhlbiBzYXkgc28uDQo+
ID4NCj4gPiBOb3RlIGlubGluZS4NCj4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hh
cm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKystDQo+ID4gPiAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4NCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiA+ID4gaW5kZXggZjEzMjhjMDhmNGFkLi5mODlhYTRiYjlmNDIgMTAwNjQ0DQo+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IEBA
IC0xMDUyOCw3ICsxMDUyOCw5IEBAIHN0YXRpYyBib29sIGhhc3dlbGxfZ2V0X3BpcGVfY29uZmln
KHN0cnVjdA0KPiBpbnRlbF9jcnRjICpjcnRjLA0KPiA+ID4gIAkJaTl4eF9nZXRfcGlwZV9jb2xv
cl9jb25maWcocGlwZV9jb25maWcpOw0KPiA+ID4gIAl9DQo+ID4gPg0KPiA+ID4gLQlpbnRlbF9j
b2xvcl9nZXRfY29uZmlnKHBpcGVfY29uZmlnKTsNCj4gPiA+ICsJaWYgKChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExICYmIChwaXBlX2NvbmZpZy0+Z2FtbWFfbW9kZSAmDQo+IFBPU1RfQ1NDX0dB
TU1BX0VOQUJMRSkpIHx8DQo+ID4gPiArCSAgIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgJiYg
KHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUpKSkNCj4gPiA+ICsJCQlpbnRlbF9jb2xvcl9nZXRf
Y29uZmlnKHBpcGVfY29uZmlnKTsNCj4gPg0KPiA+IFB1dCBhbGwgb2YgdGhlIGNvbmRpdGlvbnMg
aW5zaWRlIGludGVsX2NvbG9yX2dldF9jb25maWcoKS4NCj4gDQo+IEluIGZhY3QgaW5zaWRlIHRo
ZSAucmVhZF9sdXRzKCkgc2luY2UgdGhlc2UgY2hlY2tzIGFyZSBwbGF0Zm9ybSBzcGVjaWZpYy4N
Cj4gDQo+IEFsc28gdGhpcyBjaGVjayBpcyB3cm9uZyBmb3IgQ0hWIHNpbmNlIGl0IGhhcyBhIHNl
cGFyYXRlIGVuYWJsZSBrbm9iIGZvciB0aGUgQ0dNIExVVA0KPiAoZ2FtbWFfZW5hYmxlIG9ubHkg
ZGVhbHMgd2l0aCB0aGUgbGVnYWN5IExVVCkuDQpDb3VsZCB0aGlzIGJlIGFsc28gcmVhc29uIHRo
YXQgb24gQlNXIEkgd2FzIGFibGUgdG8gc2VlIHNvbWUgY29sb3IgaXNzdWUgd2l0aCBCU1cgb24g
bGF0ZXN0IGRybS10aXAgc3RpbGwgd2l0aCBUYXBhbmk/IA0KDQo+IA0KPiAtLQ0KPiBWaWxsZSBT
eXJqw6Rsw6QNCj4gSW50ZWwNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
