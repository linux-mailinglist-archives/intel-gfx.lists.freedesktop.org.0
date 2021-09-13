Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 967DF40A117
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 00:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE3E6E2A3;
	Mon, 13 Sep 2021 22:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A917A6E2A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 22:54:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="282816562"
X-IronPort-AV: E=Sophos;i="5.85,291,1624345200"; 
 d="scan'208,223";a="282816562"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 15:54:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,291,1624345200"; 
 d="scan'208,223";a="551934436"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 13 Sep 2021 15:54:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 15:54:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 15:54:15 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Mon, 13 Sep 2021 15:54:15 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH CI 1/2] drm/i915/display/skl+: Drop frontbuffer rendering
 support
Thread-Index: AQHXpbMIFedAMa5Zo0aadx8lp+7gQ6ucmi+AgAACUgD////sgIAGc5gA
Date: Mon, 13 Sep 2021 22:54:14 +0000
Message-ID: <2a05f1b5555f5d5d0e66f447e4a8c51a4bb2905b.camel@intel.com>
References: <20210909194917.66433-1-jose.souza@intel.com>
 <YTpsh3WkLIDm96h7@intel.com>
 <32357a14fd9926ac5c332868e3aadfbb8105caf9.camel@intel.com>
 <YTpuaUI6rpPzHDFS@intel.com>
In-Reply-To: <YTpuaUI6rpPzHDFS@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: multipart/mixed;
 boundary="_002_2a05f1b5555f5d5d0e66f447e4a8c51a4bb2905bcamelintelcom_"
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH CI 1/2] drm/i915/display/skl+: Drop
 frontbuffer rendering support
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

--_002_2a05f1b5555f5d5d0e66f447e4a8c51a4bb2905bcamelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <DE8B7FD557467B43BD0D33150D8557AC@intel.com>
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDIxLTA5LTA5IGF0IDIzOjI4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgU2VwIDA5LCAyMDIxIGF0IDA4OjIzOjIwUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMS0wOS0wOSBhdCAyMzoyMCArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVGh1LCBTZXAgMDksIDIwMjEgYXQgMTI6NDk6MTZQTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gQnkgbm93IGFsbCB0
aGUgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyBzaG91bGQgaGF2ZSBtaWdyYXRlZCB0byBhdG9taWMN
Cj4gPiA+ID4gb3IgYXQgbGVhc3QgYmUgY2FsbGluZyBEUk1fSU9DVExfTU9ERV9ESVJUWUZCLg0K
PiA+ID4gPiANCj4gPiA+ID4gV2l0aCB0aGF0IHdlIGNhbiBraWxsIGZyb250YnVmZmVyIHJlbmRl
cmluZyBzdXBwb3J0IGluIGk5MTUgZm9yDQo+ID4gPiA+IG1vZGVybiBwbGF0Zm9ybXMuDQo+ID4g
PiA+IA0KPiA+ID4gPiBTbyBoZXJlIGNvbnZlcnRpbmcgbGVnYWN5IEFQSXMgaW50byBhdG9taWMg
Y29tbWl0cyBzbyBpdCBjYW4gYmUNCj4gPiA+ID4gcHJvcGVybHkgaGFuZGxlZCBieSBkcml2ZXIg
aTkxNS4NCj4gPiA+ID4gDQo+ID4gPiA+IFNldmVyYWwgSUdUIHRlc3RzIHdpbGwgZmFpbCB3aXRo
IHRoaXMgY2hhbmdlcywgYmVjYXVzZSBzb21lIHRlc3RzDQo+ID4gPiA+IHdlcmUgc3RyZXNzaW5n
IHRob3NlIGZyb250YnVmZmVyIHJlbmRlcmluZyBzY2VuYXJpb3MgdGhhdCBubyB1c2Vyc3BhY2UN
Cj4gPiA+ID4gc2hvdWxkIGJlIHVzaW5nIGJ5IG5vdywgZml4ZXMgdG8gSUdUIHNob3VsZCBiZSBz
ZW50IHNvb24uDQo+ID4gPiA+IA0KPiA+ID4gDQo+ID4gPiBJIGp1c3QgZ2F2ZSB0aGlzIGEgdHJ5
IGhlcmUgYW5kIGl0J3MgdW51c2FibGUuIGdseGdlYXJzIHdlbnQgZnJvbQ0KPiA+ID4gOTAwMCB0
byAxMjAgZnBzICh3YXMgZXhwZWN0aW5nIDYwZnBzIHRiaCwgbm90IHN1cmUgd2h5IEkgZ2V0DQo+
ID4gPiBkb3VibGUpLCBldmVyeXRoaW5nIGxhZ3MgbGlrZSBtYWQsIGlmIEkgZHJhZyBhIHdpbmRv
dyBhcm91bmQNCj4gPiA+IGdseGdlYXJzL290aGVyIHdpbmRvd3Mgc3RvcCB1cGRhdGluZyBlbnRp
cmVseSwgZXRjLiBOQUsNCj4gPiANCj4gPiBDYW4geW91IHNoYXJlIHlvdXIgc2V0dXA/IFdoYXQg
R1BVPyBEZXNrdG9wIGVudmlyb25tZW50PyBNZXNhIHZlcnNpb24/IHJlc29sdXRpb25zIG9mIHNp
bmtzPw0KPiA+IFdpbGwgdHJ5IGl0IGluIG15IGVuZC4NCj4gDQo+IERvZXNuJ3QgcmVhbGx5IG1h
dHRlciBhcyBsb25nIGFzIHlvdSBkb24ndCBoYXZlIGEgY29tcG9zaXRvciBtYWtpbmcgYQ0KPiBt
ZXNzIG9mIHRoaW5ncy4gVGhpcyBtYWNoaW5lIGlzIGEgY2ZsIHJ1bm5pbmcgbWF0ZSB3LyBjb21w
b3NpdG9yIG9mZiwNCj4gYW5kIHNvbWUgMTkyMHgxMjAwIGRpc3BsYXkuDQo+IA0KDQpNYWtpbmcg
ZHJtX2F0b21pY19oZWxwZXJfZGlydHlmYigpIGRvIGEgbm9uLWJsb2NraW5nIGF0b21pYyBjb21t
aXQgbWFrZXMgdXNlciBleHBlcmllbmNlIHByZXR0eSBzaW1pbGFyIHRvIHRoZSBvbmUgd2l0aCBj
b21wb3NpdGluZyBlbmFibGVkOg0KZHJtX2F0b21pY19jb21taXQoKSArIGNvbXBvc2l0b3Igb2Zm
OiBodHRwczovL3lvdXR1LmJlL05CdDZzbVhzOTlVDQpkcm1fYXRvbWljX25vbmJsb2NraW5nX2Nv
bW1pdCgpICsgY29tcG9zaXRvciBvZmY6IGh0dHBzOi8veW91dHUuYmUvUWlNaGtlR1hfTDgNCmRy
bV9hdG9taWNfbm9uYmxvY2tpbmdfY29tbWl0KCkgKyBjb21wb3NpdG9yIG9uOiBodHRwczovL3lv
dXR1LmJlL0tkcEp5SjVrNnNRDQoNCg0KSSBkbyBub3QgY29tcGxldGx5IGFncmVlIHdpdGggdGhl
IGNvbW1lbnQgaW4gZHJtX2F0b21pY19oZWxwZXJfZGlydHlmYigpIGFib3V0IHdoeSBpdCB1c2Vz
IGEgYmxvY2tpbmcgaW1wbGVtZW50YXRpb24uDQpXaXRoIGZyb250YnVmZmVyIHJlbmRlcmluZyB0
aGUgcmVnaXN0ZXJzIGFyZSBwcm9ncmFtbWVkIGJ1dCB0aGUgY29udGVudCBjb3VsZCBvbmx5IHNo
b3cgdXAgZm9yIHVzZXIgYSB3aG9sZSBmcmFtZSBsYXRlci4NCg0KUGVyaGFwcyBpZiB0aGlzIHNv
bHV0aW9ucyBpcyBhY2NldGFibGUgd2UgY291bGQgaGF2ZSBhIG5vbi1ibG9ja2luZyB2ZXJzaW9u
IG9mIGRybV9hdG9taWNfaGVscGVyX2RpcnR5ZmIoKSBzbyB0aGUgZHJpdmVycyBjdXJyZW50IHVz
aW5nIGl0IGRvbid0IGhhdmUNCnRoZWlyIGJlaGF2aW9yIGNoYW5nZWQuDQo=

--_002_2a05f1b5555f5d5d0e66f447e4a8c51a4bb2905bcamelintelcom_
Content-Type: text/x-patch;
	name="0001-HACK-Make-drm_atomic_helper_dirtyfb-non-blocking.patch"
Content-Description: 0001-HACK-Make-drm_atomic_helper_dirtyfb-non-blocking.patch
Content-Disposition: attachment;
	filename="0001-HACK-Make-drm_atomic_helper_dirtyfb-non-blocking.patch";
	size=1244; creation-date="Mon, 13 Sep 2021 22:54:14 GMT";
	modification-date="Mon, 13 Sep 2021 22:54:14 GMT"
Content-ID: <F483D7650A5025419995A5590150D048@intel.com>
Content-Transfer-Encoding: base64

RnJvbSA0N2M1YjFmOTE4MzYzNjg2Y2Q4Y2Y1MTIzOWEyOThkZDc4ZjlmYWU2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/Sm9zPUMzPUE5PTIwUm9iZXJ0bz0yMGRlPTIw
U291emE/PSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkRhdGU6IE1vbiwgMTMgU2VwIDIwMjEgMTQ6
MTY6MzEgLTA3MDAKU3ViamVjdDogW1BBVENIXSBIQUNLOiBNYWtlIGRybV9hdG9taWNfaGVscGVy
X2RpcnR5ZmIoKSBub24tYmxvY2tpbmcKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiB0
ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CkNvbnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQK
CkhhY2sganVzdCB0byBzaG93IHVwIHRoYXQgbWFraW5nIG5vbi1ibG9ja2luZyBhdG9taWMgY29t
bWl0cyBoZWxwcwp0byBjb21wZW5zYXRlIHRoZSBwZXJmb3JtYW5jZSByZWdyZXNzaW9ucyB3aGVu
IGNvbnZlcnRpbmcgZnJvdGJ1ZmZlcgpkaXJ0eSBjYWxscyB0byBkcm1fYXRvbWljX2hlbHBlcl9k
aXJ0eWZiKCkgaW4gZGVza3RvcCBlbnZpcm9tZW50cwp3aXRob3V0IGNvbXBvc2l0aW5nLgoKSSBr
bm93IHRoYXQgdGhpcyBnb2VzIGFnYWluc3QgdGhlIGRvY3VtZW50YXRpb24gaW4KZHJtX2F0b21p
Y19oZWxwZXJfZGlydHlmYigpLgoKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9kYW1hZ2Vf
aGVscGVyLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RhbWFnZV9oZWxwZXIuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZGFtYWdlX2hlbHBlci5jCmluZGV4IDhlZWZmMGM3YmRkNDcu
LjE3NDAxNDQ2NzRjZTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZGFtYWdlX2hl
bHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZGFtYWdlX2hlbHBlci5jCkBAIC0xNzcs
NyArMTc3LDcgQEAgaW50IGRybV9hdG9taWNfaGVscGVyX2RpcnR5ZmIoc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmIsCiAJCQkJCSAgZGFtYWdlKTsKIAl9CiAKLQlyZXQgPSBkcm1fYXRvbWljX2Nv
bW1pdChzdGF0ZSk7CisJcmV0ID0gZHJtX2F0b21pY19ub25ibG9ja2luZ19jb21taXQoc3RhdGUp
OwogCiBvdXQ6CiAJaWYgKHJldCA9PSAtRURFQURMSykgewotLSAKMi4zMy4wCgo=

--_002_2a05f1b5555f5d5d0e66f447e4a8c51a4bb2905bcamelintelcom_--
