Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35DEE83D9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 10:08:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121B46E193;
	Tue, 29 Oct 2019 09:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE08F6E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 09:08:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 02:08:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="202783128"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 29 Oct 2019 02:08:10 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 02:08:08 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 02:08:08 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.191]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 14:38:05 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/9] drm/i915: Expose 10:10:10 XRGB formats
 on SNB-BDW sprites
Thread-Index: AQHVffOG6uy/rEuQx0ShjeahC7OciadxbY8w
Date: Tue, 29 Oct 2019 09:08:05 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227D9FE@BGSMSX104.gar.corp.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWJiZTk2YTQtZDc0Ny00OWQ0LTljNTMtZjA1OGJhMWQ2NDUwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieTVqczQ1dXVUSFpNalhnREltQzc3RXdhK1p5bk54ajhjZm9qR01KanRKUG9FZjEzNTBLWHRxWGJMd2szaDY5aCJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Expose 10:10:10 XRGB formats
 on SNB-BDW sprites
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPlNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgOCwgMjAxOSA5OjQ1IFBNDQo+VG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5TdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MS85XSBkcm0vaTkxNTogRXhwb3NlIDEwOjEwOjEwIFhSR0IgZm9ybWF0cyBvbiBTTkItDQo+QkRX
IHNwcml0ZXMNCj4NCj5Gcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPg0KPlNOQi1CRFcgc3VwcG9ydCAxMDoxMDoxMCBmb3JtYXRzIG9uIHRoZSBz
cHJpdGUgcGxhbmVzLiBMZXQncyBleHBvc2UgdGhlbS4NCj4NCj5TaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPi0tLQ0KPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIHwgMTYgKysrKysrKysrKysr
KysrKw0KPiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQ0KPg0KPmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+Yi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+aW5kZXggNjMzZmE4MDY5MzQ4
Li45MGIwZTY1NDIwYTUgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuYw0KPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMNCj5AQCAtMTA1NCw2ICsxMDU0LDEyIEBAIHN0YXRpYyB1MzIgaXZiX3Nwcml0
ZV9jdGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4qY3J0Y19zdGF0ZSwNCj4gCWNh
c2UgRFJNX0ZPUk1BVF9YUkdCODg4ODoNCj4gCQlzcHJjdGwgfD0gU1BSSVRFX0ZPUk1BVF9SR0JY
ODg4Ow0KPiAJCWJyZWFrOw0KPisJY2FzZSBEUk1fRk9STUFUX1hCR1IyMTAxMDEwOg0KPisJCXNw
cmN0bCB8PSBTUFJJVEVfRk9STUFUX1JHQlgxMDEwMTAgfA0KPlNQUklURV9SR0JfT1JERVJfUkdC
WDsNCj4rCQlicmVhazsNCj4rCWNhc2UgRFJNX0ZPUk1BVF9YUkdCMjEwMTAxMDoNCj4rCQlzcHJj
dGwgfD0gU1BSSVRFX0ZPUk1BVF9SR0JYMTAxMDEwOw0KPisJCWJyZWFrOw0KPiAJY2FzZSBEUk1f
Rk9STUFUX1lVWVY6DQo+IAkJc3ByY3RsIHw9IFNQUklURV9GT1JNQVRfWVVWNDIyIHwgU1BSSVRF
X1lVVl9PUkRFUl9ZVVlWOw0KPiAJCWJyZWFrOw0KPkBAIC0xMjg4LDYgKzEyOTQsMTIgQEAgc3Rh
dGljIHUzMiBnNHhfc3ByaXRlX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPipj
cnRjX3N0YXRlLA0KPiAJY2FzZSBEUk1fRk9STUFUX1hSR0I4ODg4Og0KPiAJCWR2c2NudHIgfD0g
RFZTX0ZPUk1BVF9SR0JYODg4Ow0KPiAJCWJyZWFrOw0KPisJY2FzZSBEUk1fRk9STUFUX1hCR1Iy
MTAxMDEwOg0KPisJCWR2c2NudHIgfD0gRFZTX0ZPUk1BVF9SR0JYMTAxMDEwIHwgRFZTX1JHQl9P
UkRFUl9YQkdSOw0KPisJCWJyZWFrOw0KPisJY2FzZSBEUk1fRk9STUFUX1hSR0IyMTAxMDEwOg0K
PisJCWR2c2NudHIgfD0gRFZTX0ZPUk1BVF9SR0JYMTAxMDEwOw0KPisJCWJyZWFrOw0KPiAJY2Fz
ZSBEUk1fRk9STUFUX1lVWVY6DQo+IAkJZHZzY250ciB8PSBEVlNfRk9STUFUX1lVVjQyMiB8IERW
U19ZVVZfT1JERVJfWVVZVjsNCj4gCQlicmVhazsNCj5AQCAtMTk4Myw2ICsxOTk1LDggQEAgc3Rh
dGljIGNvbnN0IHU2NCBpOXh4X3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNbXSA9IHsgIHN0YXRpYw0K
PmNvbnN0IHUzMiBzbmJfcGxhbmVfZm9ybWF0c1tdID0gew0KPiAJRFJNX0ZPUk1BVF9YQkdSODg4
OCwNCj4gCURSTV9GT1JNQVRfWFJHQjg4ODgsDQo+KwlEUk1fRk9STUFUX1hSR0IyMTAxMDEwLA0K
PisJRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwNCg0KVGhlIG9yZGVyIHNlZW1zIGluY29uc2lzdGVu
dCB3aXRoIDg4ODggYnV0IEkgZ3Vlc3MgeW91IGhhdmUgYSBwYXRjaCBmaXhpbmcgdGhlDQpvcmRl
cmluZywgc28gc2hvdWxkIGJlIG9rLiANCg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+DQoNCj4gCURSTV9GT1JNQVRfWVVZViwNCj4gCURSTV9GT1JNQVRf
WVZZVSwNCj4gCURSTV9GT1JNQVRfVVlWWSwNCj5AQCAtMjE5Myw2ICsyMjA3LDggQEAgc3RhdGlj
IGJvb2wgc25iX3Nwcml0ZV9mb3JtYXRfbW9kX3N1cHBvcnRlZChzdHJ1Y3QNCj5kcm1fcGxhbmUg
Kl9wbGFuZSwNCj4gCXN3aXRjaCAoZm9ybWF0KSB7DQo+IAljYXNlIERSTV9GT1JNQVRfWFJHQjg4
ODg6DQo+IAljYXNlIERSTV9GT1JNQVRfWEJHUjg4ODg6DQo+KwljYXNlIERSTV9GT1JNQVRfWFJH
QjIxMDEwMTA6DQo+KwljYXNlIERSTV9GT1JNQVRfWEJHUjIxMDEwMTA6DQo+IAljYXNlIERSTV9G
T1JNQVRfWVVZVjoNCj4gCWNhc2UgRFJNX0ZPUk1BVF9ZVllVOg0KPiAJY2FzZSBEUk1fRk9STUFU
X1VZVlk6DQo+LS0NCj4yLjIxLjANCj4NCj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj5JbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
