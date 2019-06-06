Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB39336D31
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91831897FB;
	Thu,  6 Jun 2019 07:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 703A389798;
 Thu,  6 Jun 2019 07:18:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 00:18:41 -0700
X-ExtLoop1: 1
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2019 00:18:40 -0700
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 IRSMSX106.ger.corp.intel.com (163.33.3.31) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 6 Jun 2019 08:18:39 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.125]) with mapi id 14.03.0415.000;
 Thu, 6 Jun 2019 08:18:39 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t 1/4] tests: add libatomic dependency
Thread-Index: AQHVGgM0BTQQHnzFGEGX9Y2/gIIQwKaOK1kA
Date: Thu, 6 Jun 2019 07:18:38 +0000
Message-ID: <a5f5b7c277c99682721fc998932895ebbb5646fe.camel@intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
In-Reply-To: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <FF0851F9A0E65848BA89F282D1454635@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] tests: add libatomic
 dependency
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA2LTAzIGF0IDEyOjU0ICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBBZGQgZGVwZW5kZW5jeSB0byBsaWJhdG9taWMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0byB1
c2UgdGhlIF9fYXRvbWljXyoNCj4gZnVuY3Rpb25zIGluc3RlYWQgb2YgdGhlIG9sZGVyIF9fc3lu
Y18qIG9uZXMuICBUaGlzIGlzIHRvIGVuYWJsZQ0KPiBhdG9taWMgb3BlcmF0aW9ucyBvbiBhIHdp
ZGVyIG51bWJlciBvZiBhcmNoaXRlY3R1cmVzIGluY2x1ZGluZyBNSVBTLg0KDQpUaGFua3MgZm9y
IHlvdXIgcGF0Y2ghIEkgaGF2ZSBhIGZldyBxdWVzdGlvbnMgYmVjYXVzZSBJIGRvbid0IGtub3cg
d2VsbA0KaG93IGxpYmF0b21pYyB3b3Jrcy4NCg0KRG8gd2Ugd2FudCB0byBhbHdheXMgbGluayBh
Z2FpbnN0IGxpYmF0b21pYz8gRm9yIGluc3RhbmNlIExMVk0gdHJpZXMgdG8NCmNvbXBpbGUgYSBw
cm9ncmFtIHdpdGggYXRvbWljIGJlZm9yZSBmYWxsaW5nIGJhY2sgdG8gbGliYXRvbWljOg0KaHR0
cHM6Ly9naXRodWIuY29tL2xsdm0tbWlycm9yL2xsdm0vYmxvYi9tYXN0ZXIvY21ha2UvbW9kdWxl
cy9DaGVja0F0b21pYy5jbWFrZQ0KDQpTaG91bGQgdGhpcyBkZXBlbmRlbmN5IGJlIG1hbmRhdG9y
eT8NCg0KPiBTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxndWlsbGF1bWUudHVja2Vy
QGNvbGxhYm9yYS5jb20+DQo+IC0tLQ0KPiAgbWVzb24uYnVpbGQgICAgICAgfCAxICsNCj4gIHRl
c3RzL21lc29uLmJ1aWxkIHwgMiArLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tZXNvbi5idWlsZCBiL21lc29u
LmJ1aWxkDQo+IGluZGV4IDYyNjhjNThkMzYzNC4uNGU1YmIzMjNmYTQ5IDEwMDY0NA0KPiAtLS0g
YS9tZXNvbi5idWlsZA0KPiArKysgYi9tZXNvbi5idWlsZA0KPiBAQCAtMTc5LDYgKzE3OSw3IEBA
IG1hdGggPSBjYy5maW5kX2xpYnJhcnkoJ20nKQ0KPiAgcmVhbHRpbWUgPSBjYy5maW5kX2xpYnJh
cnkoJ3J0JykNCj4gIGRsc3ltID0gY2MuZmluZF9saWJyYXJ5KCdkbCcpDQo+ICB6bGliID0gY2Mu
ZmluZF9saWJyYXJ5KCd6JykNCj4gK2xpYmF0b21pYyA9IGNjLmZpbmRfbGlicmFyeSgnYXRvbWlj
JykNCj4gIA0KPiAgaWYgY2MuaGFzX2hlYWRlcignbGludXgva2QuaCcpDQo+ICAJY29uZmlnLnNl
dCgnSEFWRV9MSU5VWF9LRF9IJywgMSkNCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL21lc29uLmJ1aWxk
IGIvdGVzdHMvbWVzb24uYnVpbGQNCj4gaW5kZXggODA2NzY2ZTUxNjY3Li42ODc3Y2NkNTkyMzUg
MTAwNjQ0DQo+IC0tLSBhL3Rlc3RzL21lc29uLmJ1aWxkDQo+ICsrKyBiL3Rlc3RzL21lc29uLmJ1
aWxkDQo+IEBAIC0yMzMsNyArMjMzLDcgQEAgaTkxNV9wcm9ncyA9IFsNCj4gIAknaTkxNV9zdXNw
ZW5kJywNCj4gIF0NCj4gIA0KPiAtdGVzdF9kZXBzID0gWyBpZ3RfZGVwcyBdDQo+ICt0ZXN0X2Rl
cHMgPSBbIGlndF9kZXBzLCBsaWJhdG9taWMgXQ0KPiAgDQo+ICBpZiBsaWJkcm1fbm91dmVhdS5m
b3VuZCgpDQo+ICAJdGVzdF9wcm9ncyArPSBbDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
