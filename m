Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6031E36D5E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4FE897F9;
	Thu,  6 Jun 2019 07:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D236897F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 07:32:27 +0000 (UTC)
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 06 Jun 2019 16:32:26 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id EA1D3180B3C;
 Thu,  6 Jun 2019 16:32:26 +0900 (JST)
Received: from 10.213.24.1 (10.213.24.1) by m-FILTER with ESMTP;
 Thu, 6 Jun 2019 16:32:26 +0900
Received: from SOC-EX01V.e01.socionext.com (10.213.24.21) by
 SOC-EX03V.e01.socionext.com (10.213.24.23) with Microsoft SMTP Server (TLS)
 id 15.0.995.29; Thu, 6 Jun 2019 16:32:26 +0900
Received: from SOC-EX01V.e01.socionext.com ([10.213.24.21]) by
 SOC-EX01V.e01.socionext.com ([10.213.24.21]) with mapi id 15.00.0995.028;
 Thu, 6 Jun 2019 16:32:26 +0900
From: <yamada.masahiro@socionext.com>
To: <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: rename header test build commands to avoid
 conflicts
Thread-Index: AQHVG6Exq5HwiPn7ikO/32HBBlJ4A6aN7xbA//+0nICAAJa7QA==
Date: Thu, 6 Jun 2019 07:32:25 +0000
Message-ID: <a1ee368a8fe343788163a85b61b565e5@SOC-EX01V.e01.socionext.com>
References: <20190605132137.11818-1-jani.nikula@intel.com>
 <e7f4bcc2f5e64a429b547e2473786abb@SOC-EX01V.e01.socionext.com>
 <878suf2n2a.fsf@intel.com>
In-Reply-To: <878suf2n2a.fsf@intel.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-securitypolicycheck: OK by SHieldMailChecker v2.5.2
x-shieldmailcheckerpolicyversion: POLICY190117
x-originating-ip: [10.213.24.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: rename header test build commands
 to avoid conflicts
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
Cc: masahiroy@kernel.org, sam@ravnborg.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuaSwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5p
a3VsYSBbbWFpbHRvOmphbmkubmlrdWxhQGludGVsLmNvbV0NCj4gU2VudDogVGh1cnNkYXksIEp1
bmUgMDYsIDIwMTkgNDoyNSBQTQ0KPiBUbzogWWFtYWRhLCBNYXNhaGlyby/lsbHnlLAg55yf5byY
IDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT47DQo+IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IGxrcEBpbnRlbC5jb207IGNocmlzQGNocmlzLXdpbHNvbi5jby51
azsgc2FtQHJhdm5ib3JnLm9yZzsNCj4gbWFzYWhpcm95QGtlcm5lbC5vcmcNCj4gU3ViamVjdDog
UkU6IFtQQVRDSF0gZHJtL2k5MTU6IHJlbmFtZSBoZWFkZXIgdGVzdCBidWlsZCBjb21tYW5kcyB0
byBhdm9pZA0KPiBjb25mbGljdHMNCj4gDQo+IE9uIFRodSwgMDYgSnVuIDIwMTksIDx5YW1hZGEu
bWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4gd3JvdGU6DQo+ID4gSGksDQo+ID4NCj4gPj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogSmFuaSBOaWt1bGEgW21haWx0bzpqYW5p
Lm5pa3VsYUBpbnRlbC5jb21dDQo+ID4+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAwNSwgMjAxOSAx
MDoyMiBQTQ0KPiA+PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+PiBD
YzogamFuaS5uaWt1bGFAaW50ZWwuY29tOyBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNv
bT47IENocmlzDQo+IFdpbHNvbg0KPiA+PiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsgWWFt
YWRhLCBNYXNhaGlyby/lsbHnlLAg55yf5byYDQo+ID4+IDx5YW1hZGEubWFzYWhpcm9Ac29jaW9u
ZXh0LmNvbT47IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4NCj4gPj4gU3ViamVjdDog
W1BBVENIXSBkcm0vaTkxNTogcmVuYW1lIGhlYWRlciB0ZXN0IGJ1aWxkIGNvbW1hbmRzIHRvIGF2
b2lkDQo+ID4+IGNvbmZsaWN0cw0KPiA+Pg0KPiA+PiBXZSBoYXZlIGEgbG9jYWwgaGFjayB0byB0
ZXN0IGlmIGhlYWRlcnMgYXJlIHNlbGYtY29udGFpbmVkLCB3aGlsZQ0KPiA+PiB1cHN0cmVhbWlu
ZyBhIHByb3BlciBnZW5lcmljIHNvbHV0aW9uIGluIGtidWlsZCBbMV0uIE5vdyB0aGF0IGJvdGgg
aGF2ZQ0KPiA+PiBmb3VuZCB0aGVtc2VsdmVzIGluIGxpbnV4LW5leHQsIHRoZSBpZGVudGljYWwg
Y21kX2hlYWRlcl90ZXN0IGJ1aWxkDQo+ID4+IGNvbW1hbmRzIGNvbmZsaWN0LCBsZWFkaW5nIHRv
IGVycm9ycyBzdWNoIGFzOg0KPiA+Pg0KPiA+PiA+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9oZWFk
ZXJfdGVzdF9pbnRlbF9hdWRpby5jOjE6MTA6IGZhdGFsIGVycm9yOg0KPiA+PiA+PiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9hdWRpby5oOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQo+
ID4+ICAgICAjaW5jbHVkZSAiZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYXVkaW8uaCINCj4g
Pj4gCSAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+ID4+DQo+ID4+
IFJlbmFtZSB0aGUgaTkxNSBsb2NhbCBidWlsZCBjb21tYW5kIHVudGlsIHRoZSBwcm9wZXIga2J1
aWxkIHNvbHV0aW9uDQo+ID4+IGZpbmRzIGl0cyB3YXkgdG8gTGludXMnIG1hc3RlciBhbmQgZ2V0
cyBiYWNrcG9ydGVkIHRvIG91ciB0cmVlLCBhbmQgd2UNCj4gPj4gY2FuIGZpbmFsbHkgc3dpdGNo
IG92ZXIuDQo+ID4+DQo+ID4+IE5vdGUgdGhhdCBzaW5jZSB0aGUga2J1aWxkIGhlYWRlciB0ZXN0
IHJlcXVpcmVzIENPTkZJR19IRUFERVJfVEVTVD15LA0KPiA+PiBhbmQgb3VyIGhhY2sgcmVxdWly
ZXMgb3VyIGRlYnVnIG9wdGlvbiBDT05GSUdfRFJNX0k5MTVfV0VSUk9SPXksIHRoaXMNCj4gaXMN
Cj4gPj4gbGlrZWx5IGhpdCBvbmx5IGJ5IGJ1aWxkIHRlc3QgYm90cy4NCj4gPj4NCj4gPj4gWzFd
IGh0dHA6Ly9tYXJjLmluZm8vP2k9MjAxOTA2MDQxMjQyNDguNTU2NC0xLWphbmkubmlrdWxhQGlu
dGVsLmNvbQ0KPiA+Pg0KPiA+PiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBp
bnRlbC5jb20+DQo+ID4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4NCj4gPj4gQ2M6IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1hc2FoaXJvQHNvY2lvbmV4dC5j
b20+DQo+ID4+IENjOiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+DQo+ID4+IFNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4+IC0tLQ0K
PiA+DQo+ID4NCj4gPiBUaGlzIGlzIG5vdCByZWFsbHkgcXVldWVkIHVwIHlldC4NCj4gPg0KPiA+
IFNvLCB3ZSBjYW4gc3F1YXNoIGZpeC11cCB0byBhdm9pZCAwZGF5IGJvdCByZXBvcnQuDQo+IA0K
PiBFeGNlcHQgSSBkb24ndCB0aGluayB5b3VyIGxpbnV4LWtidWlsZC5naXQgYmFzZWxpbmUgaGFz
IHRoZSBmaWxlcyB5b3UncmUNCj4gcGF0Y2hpbmcgYmVsb3cuIFRoZSBwcm9ibGVtIG9ubHkgZXhp
c3RzIGF0IHRoZSBtZXJnZSBvZiBvdXIgdHJlZXMsDQo+IGN1cnJlbnRseSBvbmx5IGxpbnV4LW5l
eHQsIGFuZCBub3QgImZvciByZWFsIiB1bnRpbCB0aGUgdjUuMyBtZXJnZQ0KPiB3aW5kb3cuIFNv
IEkgdGhpbmsgdGhlIHNhbmUgb3B0aW9uIGlzIHRvIHBhdGNoIGl0IHVwIGluIG91ciB0cmVlLg0K
DQoNCkkgZG8gbm90IHVuZGVyc3RhbmQuDQoNClRoaXMgaXMgYSBfcmVhbF8gcHJvYmxlbSBzaW5j
ZQ0KICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdA0KZXhpc3RzIGlu
IExpbnVzJyB0cmVlLg0KDQoNClRoZSAwLWRheSBib3QgcmVwb3J0ZWQgdGhlIGJ1aWxkIGVycm9y
IGFnYWluc3QgbXkgdHJlZSwNCnNvIEkgbXVzdCBmaXggaXQgaW4gbXkgdHJlZS4NCg0KDQo+IEkg
d2FudCB0byB1c2Ugb3VyIGxvY2FsIGhhY2sgdW50aWwgd2UgY2FuIGdldCB0aGUgYmFja21lcmdl
IGZyb20NCj4gdjUuMy1yYzEsIGJlY2F1c2UgaXQncyA3LTggd2Vla3MgYXdheSwgYW5kIEkgd2Fu
dCB0byByZXRhaW4gb3VyIG93bg0KPiBwcmUtbWVyZ2UgYnVpbGQgdGVzdCBjb3ZlcmFnZSB1bnRp
bCB0aGVuIHJhdGhlciB0aGFuIHJlbHlpbmcgb24gMGRheQ0KPiBwb3N0LW1lcmdlIHRlc3Rpbmcg
b24gbGludXgtbmV4dC4NCg0KDQpOZWl0aGVyIG9mIG15IHBhdGNoZXMgYnJlYWtzIHlvdXIgdGVz
dCBjb3ZlcmFnZS4NCkNPTkZJR19EUk1fSTkxNV9XRVJST1Igc3RpbGwgd29ya3MgaW4gbGludXgt
bmV4dCB0b28uDQoNCldoYXQgYW0gSSBtaXNzaW5nPw0KDQoNCg0KVGhhbmtzLg0KDQpNYXNhaGly
byBZYW1hZGENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
