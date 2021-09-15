Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEEF40CDD8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 22:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B713B6EA1F;
	Wed, 15 Sep 2021 20:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716996EA1F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 20:19:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="219235743"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="219235743"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 13:19:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="471073574"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 15 Sep 2021 13:19:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 13:19:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 13:19:41 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 15 Sep 2021 13:19:41 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 01/16] Revert "drm/i915/display: Disable audio, DRRS and
 PSR before planes"
Thread-Index: AQHXqK3m6Vsz1GIV4EG6JPWGlpnnmKuinlCAgAEIdACAAP4aAIAACgoAgADQAACAAISlgA==
Date: Wed, 15 Sep 2021 20:19:41 +0000
Message-ID: <35baca4ced0a0f0a045ddce0292aca1d5917551a.camel@intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-2-ville.syrjala@linux.intel.com>
 <80815922ba68991fe0a4e8609d62464457d7c822.camel@intel.com>
 <YUBbUtDCL5p/zlW9@intel.com>
 <d81c249be2ac0c427ec7ecbb74b89436f8dac955.camel@intel.com>
 <7fd9904877943a744cb011c9f8668620b6fde508.camel@intel.com>
 <YUHnYowcolvx1z4D@intel.com>
In-Reply-To: <YUHnYowcolvx1z4D@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <4C584B6CDB7B0E44A56B5076C614D11C@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/16] Revert "drm/i915/display: Disable
 audio, DRRS and PSR before planes"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA5LTE1IGF0IDE1OjMwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgU2VwIDE1LCAyMDIxIGF0IDEyOjAwOjI4QU0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMS0wOS0xNCBhdCAxNjozMCAtMDcwMCwgSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgMjAyMS0wOS0xNCBhdCAxMToyMCAr
MDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiBPbiBNb24sIFNlcCAxMywgMjAy
MSBhdCAwNDoyODozNVBNICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4gPiA+ID4gPiBPbiBN
b24sIDIwMjEtMDktMTMgYXQgMTc6NDQgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6DQo+ID4g
PiA+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBEaXNhYmxpbmcgcGxhbmVzIGluIHRoZSBt
aWRkbGUgb2YgdGhlIG1vZGVzZXQgc2V1cW5lY2UgZG9lcyBub3QgbWFrZQ0KPiA+ID4gPiA+ID4g
c2Vuc2Ugc2luY2UgdXNlcnNwYWNlIGNhbiBhbnl3YXkgZGlzYWJsZSBwbGFuZXMgYmVmb3JlIHRo
ZSBtb2Rlc2V0DQo+ID4gPiA+ID4gPiBldmVuIHN0YXJ0cy4gU28gd2hlbiB0aGUgbW9kZXNldCBz
ZXVxZW5jZSBzdGFydHMgdGhlIHNldCBvZiBlbmFibGVkDQo+ID4gPiA+ID4gPiBwbGFuZXMgaXMg
ZW50aXJlbHkgYXJiaXRyYXJ5LiBUcnlpbmcgdG8gc3ByaW5rbGUgdGhlIHBsYW5lIGRpc2FibGlu
Zw0KPiA+ID4gPiA+ID4gaW50byB0aGUgbW9kZXNldCBzZXF1ZW5jZSBqdXN0IG1lYW5zIG1vcmUg
cmFuZG9tbmVzcyBhbmQgcG90ZW50aWFsDQo+ID4gPiA+ID4gPiBmb3IgaGFyZCB0byByZXByb2R1
Y2UgYnVncy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBUaGUgcGF0Y2ggYmVpbmcgcmV2ZXJ0ZWQg
ZGlkIG5vdCBjaGFuZ2VkIGFueXRoaW5nIGFib3V0IHBsYW5lLCBpdCBvbmx5IGRpc2FibGVzIGF1
ZGlvIGFuZCBQU1IgYmVmb3JlIHBpcGUgaXMgZGlzYWJsZWQgaW4gdGhpcyBjYXNlLg0KPiA+ID4g
PiANCj4gPiA+ID4gVGhlIGNvbW1pdCBtZXNzYWdlIG9ubHkgdGFsa3MgYWJvdXQgcGxhbmVzLiBB
bHNvIHdlIGFscmVhZHkgZGlzYWJsZQ0KPiA+ID4gPiB0aGUgcGlwZSBpbiB0aGUgcG9zdF9kaXNh
YmxlIGhvb2ssIHNvIFBTUi9hdWRpbyB3YXMgYWx3YXlzIGRpc2FibGVkDQo+ID4gPiA+IGJlZm9y
ZSB0aGUgcGlwZSBJSVJDLg0KPiA+ID4gDQo+ID4gPiBUaGF0IGlzIHRydWUsIG15IGJhZC4NCj4g
PiA+IA0KPiA+ID4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiA+IA0KPiA+IFNvcnJ5IEkgbWlzc2VkIHRoZSBpbnRlbF9jcnRjX2Rp
c2FibGVfcGxhbmVzKCkgY2FsbCwgc28gaGVyZSBpcyB0aGUgcHJvYmxlbToNCj4gPiANCj4gPiAN
Cj4gPiBpbnRlbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcygpDQo+ID4gCWludGVsX29sZF9jcnRj
X3N0YXRlX2Rpc2FibGVzKCkNCj4gPiAJCWludGVsX2NydGNfZGlzYWJsZV9wbGFuZXMoKQ0KPiA+
IAkJCWludGVsX2Rpc2FibGVfcGxhbmUoKQ0KPiA+IAkJZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19k
aXNhYmxlKHN0YXRlLCBjcnRjKS9oc3dfY3J0Y19kaXNhYmxlKCkNCj4gPiAJCQlpbnRlbF9lbmNv
ZGVyc19kaXNhYmxlKCkNCj4gPiAJCQkJZW5jb2Rlci0+ZGlzYWJsZSgpL2ludGVsX2Rpc2FibGVf
ZGRpKCkNCj4gPiAJCQkJCWludGVsX3Bzcl9kaXNhYmxlKCkNCj4gPiAJCQlpbnRlbF9lbmNvZGVy
c19wb3N0X2Rpc2FibGUoKQ0KPiA+IAkJCQlwb3N0X2Rpc2FibGUvaW50ZWxfZGRpX3Bvc3RfZGlz
YWJsZSgpDQo+ID4gCQkJCQlpbnRlbF9kaXNhYmxlX3BpcGUoKQ0KPiA+IA0KPiA+IFNvIGFsbCB0
aGUgcGxhbmVzIGFyZSBkaXNhYmxlZCB3aGlsZSBQU1IgaXMgc3RpbGwgb24sIHRoYXQgaXMgd2h5
IHRoaXMgcGF0Y2ggZml4ZWQgdGhlIHVuZGVycnVuLg0KPiA+IA0KPiA+IFdlIG5lZWQgdG8gY2Fs
bCB0aGUgcHJlX2Rpc2FibGUoKSBiZWZvcmUgaW50ZWxfY3J0Y19kaXNhYmxlX3BsYW5lcygpIGFu
ZCBmb3IgdGhlIGNhc2Ugd2hlcmUgcGlwZSBpcyBub3QgZGlzYWJsZWQgYnV0IGFsbCBvZiBpdHMg
cGxhbmVzIGFyZSByZXF1aXJlcw0KPiA+IHRoZSBwZW5kaW5nIHBhdGNoIHRoYXQgSSBoYXZlLg0K
PiA+IA0KPiA+IE9yIGRvIHlvdSBoYXZlIG90aGVyIHN1Z2dlc3Rpb24/DQo+IA0KPiBJIHdvdWxk
IGxpa2UgdG8gZm9sbG93IHRoZSBzYW1lIHNlcXVlbmNlIGFsd2F5cywgaWUuIGRpc2FibGUgcGxh
bmVzDQo+IGZpcnN0IChiZSBpdCBmcm9tIHVzZXJzcGFjZSBvciBmcm9tIHRoZSBrZXJuZWwganVz
dCBiZWZvcmUgdGhlIG1vZGVzZXQpLA0KPiBhbmQgdGhlbiB3ZSB0YWtlIHRoZSBleGFjdCBzYW1l
IG1lYXN1cmVzIGluIGJvdGggY2FzZXMgdG8gZGVhbCB3aXRoDQo+IHdoYXRldmVyIGlzIHRoZSBw
cm9ibGVtIHdpdGggUFNSIHZzLiBkaXNhYmxlZCBwbGFuZXMuIFRoYXQgbWFrZXMgdGhlDQo+IHNl
cXVlbmNlIGFzIGRldGVybWluaXN0aWMgYXMgcG9zc2libGUsIGFuZCB0aHVzIHdlIGF2b2lkIHBv
dGVudGlhbA0KPiB3ZWlyZCBidWdzIHN0ZW1taW5nIGZyb20gdXNlcnNwYWNlIGJlaGF2aW91ciB3
cnQuIGRpc2FibGluZyBwbGFuZXMuDQo+IA0KPiBIbW0uIE91ciBtb2Rlc2V0IHBsYW5lIGRpc2Fi
bGUgY29kZSBpcyBjZXJ0YWlubHkgYSBiaXQgbGFja2x1c3Rlci4NCj4gSXQgbWlzc2VzIGEgYnVu
Y2ggb2Ygc3R1ZmYgdGhhdCB3ZSBkbyBmb3Igbm9ybWFsIHBsYW5lIHVwZGF0ZXMuDQo+IFNvIHdl
IG1pZ2h0IHdhbnQgdG8gcHV0IGEgZmV3IGV4dHJhIHRoaW5ncyBpbiB0aGVyZS4gTWF5YmUgUFNS
DQo+IG5lZWRzIHRoZSB2YmxhbmtfZ2V0K3Bzcl9pZGxlIHRyaWNrPyBBbmQgd2UgbWlnaHQgd2Fu
dCBhDQo+IHZycl9wdXNoL2V0Yy4gaW4gdGhlcmUgYXMgd2VsbCwgbm90IHN1cmUuDQo+IA0KPiBX
aGF0IGV4YWN0bHkgaXMgeW91ciBzb2x1dGlvbiB0byB0aGUgY2FzZSB3aGVyZSB0aGUgcGxhbmVz
IGFyZQ0KPiBhbHJlYWR5IGRpc2FibGVkIGJ5IHVzZXJzcGFjZT8NCg0KaHR0cHM6Ly9naXRodWIu
Y29tL3plaG9ydGlnb3phL2xpbnV4L2NvbW1pdC8wMTM0NzhhNjdlMGI5NmFiYmFmNmFiMmQxYjRi
ZTMyNGIwZmU3MzdiDQoNCldob2xlIGJyYW5jaDogaHR0cHM6Ly9naXRodWIuY29tL3plaG9ydGln
b3phL2xpbnV4L2NvbW1pdHMvdXBzdHJlYW0tcHNyMi1zZWwtZmV0Y2gtbmV3DQoNCj4gDQoNCg==
