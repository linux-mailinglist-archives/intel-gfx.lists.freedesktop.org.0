Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7534563E40
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 01:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3956B89930;
	Tue,  9 Jul 2019 23:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B5289930
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 23:07:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 16:07:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="340896756"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2019 16:07:24 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.248]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 16:07:24 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/display/tgl: Bump up the
 plane/fb height to support 8K
Thread-Index: AQHVNp+ivS4gZtmVeEadvjbLSqR2S6bDXjuA
Date: Tue, 9 Jul 2019 23:07:23 +0000
Message-ID: <e2761d4e329bcedb0147aef45a7a28c48dc8a3ba.camel@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
 <20190709214735.16907-2-manasi.d.navare@intel.com>
In-Reply-To: <20190709214735.16907-2-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <1B0129D646B5DB439164D8FB09B24E85@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/tgl: Bump up the
 plane/fb height to support 8K
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA3LTA5IGF0IDE0OjQ3IC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOg0K
PiBPbiBUR0wrLCB0aGUgcGxhbmUgaGVpZ2h0IGZvciA4SyBwbGFuZXMgY2FuIGJlIDQzMjAsIHNv
IGJ1bXAgaXQgdXANCj4gVG8gc3VwcG9ydCA0MzIwLCB3ZSBuZWVkIHRvIGluY3JlYXNlIHRoZSBu
dW1iZXIgb2YgYml0cyB1c2VkIHRvDQo+IHJlYWQgcGxhbmVfaGVpZ2h0IHRvIDEzIGFzIG9wcG9z
ZWQgdG8gb2xkZXIgMTIgYml0cy4NCj4gDQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIxDQo+ICsrKysrKysrKysrKysrKysrKy0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGluZGV4IDBkNWM4YWYwMWY1NC4uYmU5YTU0Y2I1ZWNjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMzM0Myw2ICszMzQzLDE2
IEBAIHN0YXRpYyBpbnQgaWNsX21heF9wbGFuZV93aWR0aChjb25zdCBzdHJ1Y3QNCj4gZHJtX2Zy
YW1lYnVmZmVyICpmYiwNCj4gIAlyZXR1cm4gNTEyMDsNCj4gIH0NCj4gIA0KPiArc3RhdGljIGlu
dCBza2xfbWF4X3BsYW5lX2hlaWdodCh2b2lkKQ0KPiArew0KPiArCXJldHVybiA0MDk2Ow0KPiAr
fQ0KPiArDQo+ICtzdGF0aWMgaW50IHRnbF9tYXhfcGxhbmVfaGVpZ2h0KHZvaWQpDQo+ICt7DQo+
ICsJcmV0dXJuIDQzMjA7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29sIHNrbF9jaGVja19tYWlu
X2Njc19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBsYW5lX3N0YXRl
LA0KPiAgCQkJCQkgICBpbnQgbWFpbl94LCBpbnQgbWFpbl95LCB1MzINCj4gbWFpbl9vZmZzZXQp
DQo+ICB7DQo+IEBAIC0zMzkxLDkgKzM0MDEsMTMgQEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFp
bl9zdXJmYWNlKHN0cnVjdA0KPiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ICAJ
aW50IHcgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2Uuc3JjKSA+PiAxNjsNCj4g
IAlpbnQgaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPmJhc2Uuc3JjKSA+PiAxNjsN
Cj4gIAlpbnQgbWF4X3dpZHRoOw0KPiAtCWludCBtYXhfaGVpZ2h0ID0gNDA5NjsNCj4gKwlpbnQg
bWF4X2hlaWdodDsNCj4gIAl1MzIgYWxpZ25tZW50LCBvZmZzZXQsIGF1eF9vZmZzZXQgPSBwbGFu
ZV9zdGF0ZS0NCj4gPmNvbG9yX3BsYW5lWzFdLm9mZnNldDsNCj4gIA0KPiArCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKQ0KPiArCQltYXhfaGVpZ2h0ID0gdGdsX21heF9wbGFuZV9oZWln
aHQoKTsNCj4gKwllbHNlDQo+ICsJCW1heF9oZWlnaHQgPSBza2xfbWF4X3BsYW5lX2hlaWdodCgp
Ow0KDQpHaXZlIGEgbGluZSBiZXR3ZWVuIG1heF93aWR0aCBibG9jaywgYWxzbyBJIHdvdWxkIG1v
dmUgdGhlIGhlaWdodCBhZnRlcg0KdGhlIHdpZHRoLg0KDQo+ICAJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTEpDQo+ICAJCW1heF93aWR0aCA9IGljbF9tYXhfcGxhbmVfd2lkdGgoZmIsIDAs
IHJvdGF0aW9uKTsNCj4gIAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElT
X0dFTUlOSUxBS0UoZGV2X3ByaXYpKQ0KPiBAQCAtOTg2NSw3ICs5ODc5LDEwIEBAIHNreWxha2Vf
Z2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9jcnRjICpjcnRjLA0KPiAg
CW9mZnNldCA9IEk5MTVfUkVBRChQTEFORV9PRkZTRVQocGlwZSwgcGxhbmVfaWQpKTsNCj4gIA0K
PiAgCXZhbCA9IEk5MTVfUkVBRChQTEFORV9TSVpFKHBpcGUsIHBsYW5lX2lkKSk7DQo+IC0JZmIt
PmhlaWdodCA9ICgodmFsID4+IDE2KSAmIDB4ZmZmKSArIDE7DQo+ICsJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIpDQo+ICsJCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAweDFmZmYp
ICsgMTsNCj4gKwllbHNlDQo+ICsJCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAweGZmZikg
KyAxOw0KPiAgCWZiLT53aWR0aCA9ICgodmFsID4+IDApICYgMHgxZmZmKSArIDE7DQo+ICANCj4g
IAl2YWwgPSBJOTE1X1JFQUQoUExBTkVfU1RSSURFKHBpcGUsIHBsYW5lX2lkKSk7DQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
