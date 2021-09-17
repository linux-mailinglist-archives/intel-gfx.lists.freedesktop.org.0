Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1726040EE4C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 02:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991ED6E9BE;
	Fri, 17 Sep 2021 00:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3F06E9BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 00:14:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="202848783"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="202848783"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 17:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="610897962"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 16 Sep 2021 17:14:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 17:14:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 17:14:03 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 16 Sep 2021 17:14:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 01/16] Revert "drm/i915/display: Disable audio, DRRS and
 PSR before planes"
Thread-Index: AQHXqK3m6Vsz1GIV4EG6JPWGlpnnmKuinlCAgAEIdACAAP4aAIAACgoAgADQAACAAISlgIABG+qAgAC35wA=
Date: Fri, 17 Sep 2021 00:14:02 +0000
Message-ID: <12ac431434975df39ad05fa94db5c3cce8f7ce7d.camel@intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-2-ville.syrjala@linux.intel.com>
 <80815922ba68991fe0a4e8609d62464457d7c822.camel@intel.com>
 <YUBbUtDCL5p/zlW9@intel.com>
 <d81c249be2ac0c427ec7ecbb74b89436f8dac955.camel@intel.com>
 <7fd9904877943a744cb011c9f8668620b6fde508.camel@intel.com>
 <YUHnYowcolvx1z4D@intel.com>
 <35baca4ced0a0f0a045ddce0292aca1d5917551a.camel@intel.com>
 <YUNE0fd/iwOaNXW9@intel.com>
In-Reply-To: <YUNE0fd/iwOaNXW9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <9ACED482830AA94CB58F0A82F7992D8D@intel.com>
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

T24gVGh1LCAyMDIxLTA5LTE2IGF0IDE2OjIxICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgU2VwIDE1LCAyMDIxIGF0IDA4OjE5OjQxUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMS0wOS0xNSBhdCAxNTozMCArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBTZXAgMTUsIDIwMjEgYXQgMTI6MDA6MjhBTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIFR1ZSwgMjAyMS0wOS0xNCBhdCAx
NjozMCAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gPiBPbiBU
dWUsIDIwMjEtMDktMTQgYXQgMTE6MjAgKzAzMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4g
PiA+ID4gPiA+IE9uIE1vbiwgU2VwIDEzLCAyMDIxIGF0IDA0OjI4OjM1UE0gKzAwMDAsIFNvdXph
LCBKb3NlIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiBPbiBNb24sIDIwMjEtMDktMTMgYXQgMTc6NDQg
KzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+ID4gPiBEaXNhYmxpbmcgcGxhbmVzIGluIHRoZSBtaWRkbGUgb2YgdGhl
IG1vZGVzZXQgc2V1cW5lY2UgZG9lcyBub3QgbWFrZQ0KPiA+ID4gPiA+ID4gPiA+IHNlbnNlIHNp
bmNlIHVzZXJzcGFjZSBjYW4gYW55d2F5IGRpc2FibGUgcGxhbmVzIGJlZm9yZSB0aGUgbW9kZXNl
dA0KPiA+ID4gPiA+ID4gPiA+IGV2ZW4gc3RhcnRzLiBTbyB3aGVuIHRoZSBtb2Rlc2V0IHNldXFl
bmNlIHN0YXJ0cyB0aGUgc2V0IG9mIGVuYWJsZWQNCj4gPiA+ID4gPiA+ID4gPiBwbGFuZXMgaXMg
ZW50aXJlbHkgYXJiaXRyYXJ5LiBUcnlpbmcgdG8gc3ByaW5rbGUgdGhlIHBsYW5lIGRpc2FibGlu
Zw0KPiA+ID4gPiA+ID4gPiA+IGludG8gdGhlIG1vZGVzZXQgc2VxdWVuY2UganVzdCBtZWFucyBt
b3JlIHJhbmRvbW5lc3MgYW5kIHBvdGVudGlhbA0KPiA+ID4gPiA+ID4gPiA+IGZvciBoYXJkIHRv
IHJlcHJvZHVjZSBidWdzLg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gVGhlIHBhdGNo
IGJlaW5nIHJldmVydGVkIGRpZCBub3QgY2hhbmdlZCBhbnl0aGluZyBhYm91dCBwbGFuZSwgaXQg
b25seSBkaXNhYmxlcyBhdWRpbyBhbmQgUFNSIGJlZm9yZSBwaXBlIGlzIGRpc2FibGVkIGluIHRo
aXMgY2FzZS4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhlIGNvbW1pdCBtZXNzYWdlIG9u
bHkgdGFsa3MgYWJvdXQgcGxhbmVzLiBBbHNvIHdlIGFscmVhZHkgZGlzYWJsZQ0KPiA+ID4gPiA+
ID4gdGhlIHBpcGUgaW4gdGhlIHBvc3RfZGlzYWJsZSBob29rLCBzbyBQU1IvYXVkaW8gd2FzIGFs
d2F5cyBkaXNhYmxlZA0KPiA+ID4gPiA+ID4gYmVmb3JlIHRoZSBwaXBlIElJUkMuDQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gVGhhdCBpcyB0cnVlLCBteSBiYWQuDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiA+ID4gPiANCj4gPiA+ID4gU29ycnkgSSBtaXNzZWQgdGhlIGludGVsX2NydGNfZGlz
YWJsZV9wbGFuZXMoKSBjYWxsLCBzbyBoZXJlIGlzIHRoZSBwcm9ibGVtOg0KPiA+ID4gPiANCj4g
PiA+ID4gDQo+ID4gPiA+IGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKCkNCj4gPiA+ID4g
CWludGVsX29sZF9jcnRjX3N0YXRlX2Rpc2FibGVzKCkNCj4gPiA+ID4gCQlpbnRlbF9jcnRjX2Rp
c2FibGVfcGxhbmVzKCkNCj4gPiA+ID4gCQkJaW50ZWxfZGlzYWJsZV9wbGFuZSgpDQo+ID4gPiA+
IAkJZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19kaXNhYmxlKHN0YXRlLCBjcnRjKS9oc3dfY3J0Y19k
aXNhYmxlKCkNCj4gPiA+ID4gCQkJaW50ZWxfZW5jb2RlcnNfZGlzYWJsZSgpDQo+ID4gPiA+IAkJ
CQllbmNvZGVyLT5kaXNhYmxlKCkvaW50ZWxfZGlzYWJsZV9kZGkoKQ0KPiA+ID4gPiAJCQkJCWlu
dGVsX3Bzcl9kaXNhYmxlKCkNCj4gPiA+ID4gCQkJaW50ZWxfZW5jb2RlcnNfcG9zdF9kaXNhYmxl
KCkNCj4gPiA+ID4gCQkJCXBvc3RfZGlzYWJsZS9pbnRlbF9kZGlfcG9zdF9kaXNhYmxlKCkNCj4g
PiA+ID4gCQkJCQlpbnRlbF9kaXNhYmxlX3BpcGUoKQ0KPiA+ID4gPiANCj4gPiA+ID4gU28gYWxs
IHRoZSBwbGFuZXMgYXJlIGRpc2FibGVkIHdoaWxlIFBTUiBpcyBzdGlsbCBvbiwgdGhhdCBpcyB3
aHkgdGhpcyBwYXRjaCBmaXhlZCB0aGUgdW5kZXJydW4uDQo+ID4gPiA+IA0KPiA+ID4gPiBXZSBu
ZWVkIHRvIGNhbGwgdGhlIHByZV9kaXNhYmxlKCkgYmVmb3JlIGludGVsX2NydGNfZGlzYWJsZV9w
bGFuZXMoKSBhbmQgZm9yIHRoZSBjYXNlIHdoZXJlIHBpcGUgaXMgbm90IGRpc2FibGVkIGJ1dCBh
bGwgb2YgaXRzIHBsYW5lcyBhcmUgcmVxdWlyZXMNCj4gPiA+ID4gdGhlIHBlbmRpbmcgcGF0Y2gg
dGhhdCBJIGhhdmUuDQo+ID4gPiA+IA0KPiA+ID4gPiBPciBkbyB5b3UgaGF2ZSBvdGhlciBzdWdn
ZXN0aW9uPw0KPiA+ID4gDQo+ID4gPiBJIHdvdWxkIGxpa2UgdG8gZm9sbG93IHRoZSBzYW1lIHNl
cXVlbmNlIGFsd2F5cywgaWUuIGRpc2FibGUgcGxhbmVzDQo+ID4gPiBmaXJzdCAoYmUgaXQgZnJv
bSB1c2Vyc3BhY2Ugb3IgZnJvbSB0aGUga2VybmVsIGp1c3QgYmVmb3JlIHRoZSBtb2Rlc2V0KSwN
Cj4gPiA+IGFuZCB0aGVuIHdlIHRha2UgdGhlIGV4YWN0IHNhbWUgbWVhc3VyZXMgaW4gYm90aCBj
YXNlcyB0byBkZWFsIHdpdGgNCj4gPiA+IHdoYXRldmVyIGlzIHRoZSBwcm9ibGVtIHdpdGggUFNS
IHZzLiBkaXNhYmxlZCBwbGFuZXMuIFRoYXQgbWFrZXMgdGhlDQo+ID4gPiBzZXF1ZW5jZSBhcyBk
ZXRlcm1pbmlzdGljIGFzIHBvc3NpYmxlLCBhbmQgdGh1cyB3ZSBhdm9pZCBwb3RlbnRpYWwNCj4g
PiA+IHdlaXJkIGJ1Z3Mgc3RlbW1pbmcgZnJvbSB1c2Vyc3BhY2UgYmVoYXZpb3VyIHdydC4gZGlz
YWJsaW5nIHBsYW5lcy4NCj4gPiA+IA0KPiA+ID4gSG1tLiBPdXIgbW9kZXNldCBwbGFuZSBkaXNh
YmxlIGNvZGUgaXMgY2VydGFpbmx5IGEgYml0IGxhY2tsdXN0ZXIuDQo+ID4gPiBJdCBtaXNzZXMg
YSBidW5jaCBvZiBzdHVmZiB0aGF0IHdlIGRvIGZvciBub3JtYWwgcGxhbmUgdXBkYXRlcy4NCj4g
PiA+IFNvIHdlIG1pZ2h0IHdhbnQgdG8gcHV0IGEgZmV3IGV4dHJhIHRoaW5ncyBpbiB0aGVyZS4g
TWF5YmUgUFNSDQo+ID4gPiBuZWVkcyB0aGUgdmJsYW5rX2dldCtwc3JfaWRsZSB0cmljaz8gQW5k
IHdlIG1pZ2h0IHdhbnQgYQ0KPiA+ID4gdnJyX3B1c2gvZXRjLiBpbiB0aGVyZSBhcyB3ZWxsLCBu
b3Qgc3VyZS4NCj4gPiA+IA0KPiA+ID4gV2hhdCBleGFjdGx5IGlzIHlvdXIgc29sdXRpb24gdG8g
dGhlIGNhc2Ugd2hlcmUgdGhlIHBsYW5lcyBhcmUNCj4gPiA+IGFscmVhZHkgZGlzYWJsZWQgYnkg
dXNlcnNwYWNlPw0KPiA+IA0KPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS96ZWhvcnRpZ296YS9saW51
eC9jb21taXQvMDEzNDc4YTY3ZTBiOTZhYmJhZjZhYjJkMWI0YmUzMjRiMGZlNzM3Yg0KPiANCj4g
VGhhdCdzIG5vdCBnb2luZyB0byB3b3JrIGNvcnJlY3RseS4gWW91IGNhbid0IGRlcGVuZCBvbg0K
PiBjb25uZWN0b3JzIGJlaW5nIHBhcnQgb2YgdGhlIHN0YXRlIHNpbmNlIHRoYXQncyBub3QgdGhl
IGNhc2UgZm9yDQo+IHB1cmUgcGxhbmUgdXBkYXRlcy9ldGMuDQoNClRoYW5rcyBmb3IgY2F0Y2hp
bmcgaXQsIGZpeGVkIGhlcmU6IGh0dHBzOi8vZ2l0aHViLmNvbS96ZWhvcnRpZ296YS9saW51eC9j
b21taXQvNzdmM2RkMWUxZGNjZGYyNWQwNGNiNDJhNDViOTU1NzBiMmQzZDNlOA0KDQo+IA0KPiBJ
biBnZW5lcmFsIEkgcmVhbGx5IGRpc2xpa2UgdGhlIFBTUiBjb2RlJ3MgcmVsaWFuY2Ugb24gdGhl
DQo+IGVuY29kZXIvY29ubmVjdG9yLiBUaHQgbWFrZXMgaXQgcmVhbGx5IGhhcmQgdG8gZG8gdGhl
c2Ugc29ydHMNCj4gb2YgdGhpbmdzLiBTbyBJIHRoaW5rIHdlJ2QgaGF2ZSB0byByZWRlc2lnbiBp
dCB0byB0cnkgdG8NCj4gb3BlcmF0ZSBwdXJlbHkgb24gdGhlIGNydGMgYW5kIG5vdCBuZWVkIHRo
ZSBlbmNvZGVyL2Nvbm5lY3Rvci4NCg0KSSBjYW4gaGVscCB3aXRoIHJldmlld3MgaWYgeW91IHdh
bnQgdG8gZG8gdGhhdC4NCg0KPiANCj4gPiANCj4gPiBXaG9sZSBicmFuY2g6IGh0dHBzOi8vZ2l0
aHViLmNvbS96ZWhvcnRpZ296YS9saW51eC9jb21taXRzL3Vwc3RyZWFtLXBzcjItc2VsLWZldGNo
LW5ldw0KPiA+IA0KPiA+ID4gDQo+ID4gDQo+IA0KDQo=
