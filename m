Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9120D4100C0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 23:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B0DE6E064;
	Fri, 17 Sep 2021 21:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ED4A6E064
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 21:34:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="308423407"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="308423407"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 14:34:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="434231708"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 17 Sep 2021 14:34:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 14:33:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 14:33:59 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 17 Sep 2021 14:33:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
Thread-Index: AQHXqa47Y9mVfs3M+0eviC8Dq7E/pqulpjoAgAA5fYCAATzGAIAAQiiAgAFMggCAAEPvgIAAC30AgABAaIA=
Date: Fri, 17 Sep 2021 21:33:59 +0000
Message-ID: <2e523c6b149091fb9418bbfd44bde129fb20b7f0.camel@intel.com>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <20210914212507.177511-3-jose.souza@intel.com> <YUIKDNuiNBPHKQ96@intel.com>
 <edd67a4450497f8d60acd147726ef7adf1641539.camel@intel.com>
 <YUNEAE86LBNdEKqD@intel.com>
 <1fb0554d051d0c98ae7282110c6690de4619a970.camel@intel.com>
 <YUSSbMQKuQxQ7Ug9@intel.com>
 <c347299ba2b7bdcb2de79ee60569977058aeb51a.camel@intel.com>
 <YUTVDPKmGezFAt+d@intel.com>
In-Reply-To: <YUTVDPKmGezFAt+d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <09689B37F0C3974AB91C09779D5E6E95@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
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

T24gRnJpLCAyMDIxLTA5LTE3IGF0IDIwOjQ5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgU2VwIDE3LCAyMDIxIGF0IDA1OjAyOjIxUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIEZyaSwgMjAyMS0wOS0xNyBhdCAxNjowNCArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVGh1LCBTZXAgMTYsIDIwMjEgYXQgMDU6MDk6MDhQTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIFRodSwgMjAyMS0wOS0xNiBhdCAx
NjoxNyArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9uIFdlZCwgU2Vw
IDE1LCAyMDIxIGF0IDA2OjE4OjM1UE0gKzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4g
PiA+ID4gT24gV2VkLCAyMDIxLTA5LTE1IGF0IDE3OjU4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6DQo+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgU2VwIDE0LCAyMDIxIGF0IDAyOjI1OjA1UE0g
LTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gTm90
IHN1cmUgd2h5IGJ1dCB3aGVuIG1vdmluZyB0aGUgY3Vyc29yIGZhc3QgaXQgY2F1c2VzIHNvbWUg
YXJ0aWZhY3RzDQo+ID4gPiA+ID4gPiA+ID4gb2YgdGhlIGN1cnNvciB0byBiZSBsZWZ0IGluIHRo
ZSBjdXJzb3IgcGF0aCwgYWRkaW5nIHNvbWUgcGl4ZWxzIGFib3ZlDQo+ID4gPiA+ID4gPiA+ID4g
dGhlIGN1cnNvciB0byB0aGUgZGFtYWdlZCBhcmVhIGZpeGVzIHRoZSBpc3N1ZSwgc28gbGVhdmlu
ZyB0aGlzIGFzIGENCj4gPiA+ID4gPiA+ID4gPiB3b3JrYXJvdW5kIHVudGlsIHByb3BlciBmaXgg
aXMgZm91bmQuDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBIYXZlIHlvdSB0cmllZCB3
YXJwaW5nIHRoZSBjdXJzb3IgY2xlYXIgYWNyb3NzIHRoZSBzY3JlZW4gd2hpbGUNCj4gPiA+ID4g
PiA+ID4gYSBwYXJ0aWFsIHVwZGF0ZSBpcyBhbHJlYWR5IHBlbmRpbmc/IEkgdGhpbmsgaXQgd2ls
bCBnbyBiYWRseS4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gWW91IG1lYW4gbW92ZSB0aGUg
Y3Vyc29yIGZvciBleGFtcGxlIGZyb20gMHgwIHRvIDUwMHg1MDAgaW4gb25lIGZyYW1lPw0KPiA+
ID4gPiA+ID4gSXQgd2lsbCBtYXJrIGFzIGRhbWFnZWQgdGhlIHByZXZpb3VzIGFyZWEgYW5kIHRo
ZSBuZXcgb25lLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IExlZ2FjeSBjdXJzb3IgdXBkYXRlcyBi
eXBhc3MgYWxsIHRoYXQgc3R1ZmYgc28geW91J3JlIG5vdCBnb2luZyB0bw0KPiA+ID4gPiA+IHVw
ZGF0aW5nIHRoZSBzZWwgZmV0Y2ggYXJlYSBmb3IgdGhlIG90aGVyIHBsYW5lcy4NCj4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gSW4gZmFjdCBJ
J20gdGhpbmtpbmcgdGhlIG1haWxib3ggc3R5bGUgbGVnYWN5IGN1cnNvciB1cGRhdGVzIGFyZSBq
dXN0DQo+ID4gPiA+ID4gPiA+IGZ1bmRlbWVudGFsbHkgaW5jb21wYXRpYmxlIHdpdGggcGFydGlh
bCB1cGRhdGVzIHNpbmNlIHRoZSBjdXJzb3INCj4gPiA+ID4gPiA+ID4gY2FuIG1vdmUgb3V0c2lk
ZSBvZiB0aGUgYWxyZWFkeSBjb21taXR0ZWQgdXBkYXRlIHJlZ2lvbiBhbnkgdGltZS4NCj4gPiA+
ID4gPiA+ID4gSWUuIEkgc3VzcGVjdCB3aGlsZSB0aGUgY3Vyc29yIGlzIHZpc2libGUgd2Ugc2lt
cGx5IGNhbid0IGRvIHBhcnRpYWwNCj4gPiA+ID4gPiA+ID4gdXBkYXRlcy4NCj4gPiA+ID4gPiA+
IA0KPiA+ID4gPiA+ID4gUHJvYmFibHkgSSBkaWQgbm90IHVuZGVyc3RhbmQgd2hhdCB5b3Ugd2Fu
dCB0byBzYXksIGJ1dCBlYWNoIGN1cnNvciB1cGRhdGUgd2lsbCBiZSBpbiBvbmUgZnJhbWUsIHVw
ZGF0aW5nIHRoZSBuZWNlc3NhcnkgYXJlYS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBUaGUgbGVn
YWN5IGN1cnNvciB1c2VzIG1haWxib3ggdXBkYXRlcyBzbyB0aGVyZSBpcyBubyAxOjEgcmVsYXRp
b25zaGlwDQo+ID4gPiA+ID4gYmV0d2VlbiBhY3R1YWwgc2Nhbm5lZCBvdXQgZnJhbWVzIGFuZCBj
dXJzb3IgaW9jdGwgY2FsbHMuIFlvdSBjYW4NCj4gPiA+ID4gPiBoYXZlIHVtcHRlZW4gdGhvdXNh
bmQgY3Vyc29yIHVwZGF0ZXMgcGVyIGZyYW1lLg0KPiA+ID4gPiANCj4gPiA+ID4gTm90IGlmIGlu
dGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRlKCkgaXMgY2hhbmdlZCB0byBnbyB0byB0aGUgc2xvdyBw
YXRoIGFuZCBkbyBvbmUgYXRvbWljIGNvbW1pdCBmb3IgZWFjaCBtb3ZlLg0KPiA+ID4gPiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDUzMTkyLz9zZXJpZXM9OTQ1MjIm
cmV2PTENCj4gPiA+IA0KPiA+ID4gVGhhdCdzIG5vdCBnb2luZyB0byBmbHkuIFRoZSB3aG9sZSBy
ZWFzb24gZm9yIHRoZSBsZWdhY3kgY3Vyc29yIHRoaW5nIGlzDQo+ID4gPiB0aGF0IFggbGlrZXMg
dG8gZG8gdGhvdXNhbmRzIG9mIGN1cnNvciB1cGRhdGVzIHBlciBmcmFtZS4NCj4gPiANCj4gPiBG
cm9tIHVzZXIgZXhwZXJpZW5jZSBwZXJzcGVjdGl2ZSB0aGVyZSBpcyBubyBpc3N1ZXMgaW4gY29u
dmVydGluZyB0byBhdG9taWMgY29tbWl0LCB0aG9zZSAzIHZpZGVvcyB0aGF0IEkgc2hhcmVkIHdp
dGggeW91IGhhdmUgdGhpcyBjb252ZXJzaW9uLiANCj4gDQo+IEkgZG9uJ3Qga25vdyB3aGF0IHlv
dSd2ZSB0ZXN0ZWQgYnV0IHRoZSBsZWdhY3kgY3Vyc29yIGZhc3RwYXRoIGlzIHZlcnkNCj4gbXVj
aCBuZWVkZWQuIFdlJ3ZlIGhhdmUgbnVtZXJvdXMgYnVnIHJlcG9ydHMgd2hlbmV2ZXIgaXQgaGFz
DQo+IGFjY2lkZW50YWxseSByZWdyZXNzZWQsIGFuZCBJJ3ZlIHdpdG5lc3NlZCB0aGUgY2FybmFn
ZSBteXNlbGYgYXMgd2VsbC4NCj4gSG1tLCBJIGd1ZXNzIHlvdSBkaWRuJ3QgYWN0dWFsbHkgZGlz
YWJsZSBpdCBmdWxseS4gVG8gZG8gdGhhdCB5b3UNCj4gd291bGQgaGF2ZSB0byBjbGVhciBzdGF0
ZS0+bGVnYWN5X2N1cnNvcl91cGRhdGUgZXhwbGljaXRseSBzb21ld2hlcmUuDQoNClRoYW5rcyBm
b3IgcG9pbnRpbmcgb3V0IHN0YXRlLT5sZWdhY3lfY3Vyc29yX3VwZGF0ZSBhbmQgeWVzIHNldHRp
bmcgaXQgdG8gZmFsc2UgbWFrZXMgY2F1c2VzIHRoZSBjdXJzb3IgdG8gbGFnLg0KDQo+IA0KPiBF
aXRoZXIgd2F5IEkganVzdCByZXRlc3RlZCB0aGUgZWFybGllciBwYXRjaGVzIGp1c3Qgd2l0aCB0
aGUgbm9uYmxvY2tpbmcNCj4gY29tbWl0IGZvciBkaXJ0eWZiIGhhY2tlZCBpbiwgYW5kIEkgbGVm
dCB0aGUgY3Vyc29yIGNvZGUgdXNpbmcgdGhlDQo+IGhhbGYgZmFzdCBwYXRoIHlvdSBtYWRlIGl0
IHRha2UuIFRoZSB1c2VyIGV4cGVyaWVuY2UgaXMgc3RpbGwgYXMgYmFkDQo+IGFzIGJlZm9yZS4g
SnVzdCBtb3ZpbmcgdGhlIG1vdXNlIGFyb3VuZCBtYWtlcyBnbHhnZWFycyBzdHV0dGVyLCBhbmQg
dGhlDQo+IHJlcG9ydGVkIGZwcyBkcm9wcyB0byB+NDAwIGZyb20gdGhhdCBhbG9uZS4gQW5kIGRv
aW5nIGFueXRoaW5nIG1vcmUNCj4gaW52b2x2ZWQgbGlrZSBtb3Zpbmcgd2luZG93cyBhcm91bmQg
aXMgc3RpbGwgYSB0b3RhbCBmYWlsLg0KDQpJIGhhdmUgdGVzdGVkIGl0IGluIGEgVEdMIGFuZCBB
REwtUCwgd2lsbCB0cnkgdG8gZ2V0IHNvbWUgZ2VuOSB0byB0cnkgaXQuDQpPdGhlciB0aGFuIHRo
YXQgSSBkb24ndCBrbm93IHdoYXQgY291bGQgdGhpcyBiaWcgZGlmZmVyZW5jZSBiZXR3ZWVuIG91
ciBzZXR1cHMuDQpJJ20gdXNpbmcgTWF0ZSBsaWtlIHlvdSB3aXRoICdlbmFibGUgc29mdHdhcmUg
Y29tcG9zaXRpbmcgd2luZG93IG1hbmFnZXInIGRpc2FibGVkLg0KDQo+IA0KDQo=
