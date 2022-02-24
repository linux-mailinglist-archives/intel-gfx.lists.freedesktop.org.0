Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0F74C2E01
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 15:16:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7586110E87F;
	Thu, 24 Feb 2022 14:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F103B10E87F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 14:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645712159; x=1677248159;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zI8lirKu2RDUcwREF4bUFCFMJ7lYJ7cekw3XFhEBiUs=;
 b=mrVJLJM2Na00eKZcOzJ5tRZ5+9dS8LiCwngTFtdiwLvfy6FM3DQUBJ7y
 UJssianE3H/Wvpb8FdD36uUJXmYEuQW9+1hcVA8yUjGTFsuFtjGMCAZbJ
 eoIOnm6ZICkBUOAgXCsUD1kZk6AC8kgj5tTZl9f5GhHQ1v9G9XRe/vMHV
 f47Ze7yQWiFd7noP7CDvZQsVEJlsv2gjDCg5dybsVVU8SloC7oykWJ83A
 XOONoDWLFNpRq2q653J5cxL6nUgbeqj5AtUrbCqyEHLZEclGhZYR3J1C/
 OuMY0fIsoiwwdYkCMUzUrpj74NYWOyYGLZT73eTczouflMJ8thaaSscHw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="239638107"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="239638107"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:15:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="777065272"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 24 Feb 2022 06:15:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 06:15:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 24 Feb 2022 06:15:44 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Thu, 24 Feb 2022 06:15:44 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Allow users to disable PSR2
Thread-Index: AQHYKOz7fWJqCeQPZEycxfqlgPgbDqyjAkWAgAAv4gCAAADIAIAAAUUAgAASuAA=
Date: Thu, 24 Feb 2022 14:15:44 +0000
Message-ID: <f1a70a21b762017c9a1af38721095506fb147389.camel@intel.com>
References: <20220223194103.715109-1-jose.souza@intel.com>
 <YhdaA6hbK0bhjWsQ@intel.com>
 <6dfd659cd15317139cade1c4c1e2825475167940.camel@intel.com>
 <YheC1ujieOVpAHjV@intel.com> <YheD5iiAFhLD5SMu@intel.com>
In-Reply-To: <YheD5iiAFhLD5SMu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <AAD5518A0EEB0940AF75B034A239BA48@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Allow users to disable
 PSR2
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KyBSb2RyaWdvDQoNCk9uIFRodSwgMjAyMi0wMi0yNCBhdCAxNToxMSArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiBPbiBUaHUsIEZlYiAyNCwgMjAyMiBhdCAwMzowNjozMFBNICswMjAw
LCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gT24gVGh1LCBGZWIgMjQsIDIwMjIgYXQgMDE6
MDE6MjRQTSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiBPbiBUaHUsIDIwMjItMDIt
MjQgYXQgMTI6MTIgKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+ID4gT24gV2Vk
LCBGZWIgMjMsIDIwMjIgYXQgMTE6NDE6MDNBTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSB3cm90ZToNCj4gPiA+ID4gPiBTb21lIHVzZXJzIGFyZSBzdWZmZXJpbmcgd2l0aCBQU1IyIGlz
c3VlcyB0aGF0IGFyZSB1bmRlciBkZWJ1ZyBvcg0KPiA+ID4gPiA+IGlzc3VlcyB0aGF0IHdlcmUg
cm9vdCBjYXVzZWQgdG8gcGFuZWwgZmlybXdhcmUsIHRvIG1ha2UgbGlmZSBvZiB0aG9zZQ0KPiA+
ID4gPiA+IHVzZXJzIGVhc2llciBoZXJlIGFkZGluZyBhIG9wdGlvbiB0byBkaXNhYmxlIFBTUjEg
d2l0aCBrZXJuZWwNCj4gPiA+ID4gPiBwYXJhbWV0ZXIuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
VXNpbmcgdGhlIHNhbWUgZW5hYmxlX3BzciB0aGF0IGlzIGN1cnJlbnQgdXNlZCB0byB0dXJuIFBT
UjEgYW5kIFBTUjINCj4gPiA+ID4gPiBvZmYgb3Igb24gYW5kIGFkZGluZyBhIG5ldyB2YWx1ZSB0
byBvbmx5IGRpc2FibGUgUFNSMi4NCj4gPiA+ID4gPiBUaGUgcHJldmlvdXMgdmFsaWQgdmFsdWVz
IGRpZCBub3QgaGFkIHRoZWlyIGJlaGF2aW9yIGNoYW5nZWQuDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gTGluazogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vl
cy80OTUxDQo+ID4gPiA+ID4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNCArKysrDQo+ID4gPiA+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgICAgICAgfCAyICstDQo+ID4gPiA+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gPiA+ID4gaW5kZXggMmUwYjA5MmY0YjZiZS4uZmM2YjY4NGJiN2JlYyAxMDA2NDQNCj4gPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
ID4gPiA+IEBAIC0xMDAsMTEgKzEwMCwxNSBAQCBzdGF0aWMgYm9vbCBwc3JfZ2xvYmFsX2VuYWJs
ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gIHN0
YXRpYyBib29sIHBzcjJfZ2xvYmFsX2VuYWJsZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gPiA+ID4gPiAgew0KPiA+ID4gPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gIAlzd2l0Y2gg
KGludGVsX2RwLT5wc3IuZGVidWcgJiBJOTE1X1BTUl9ERUJVR19NT0RFX01BU0spIHsNCj4gPiA+
ID4gPiAgCWNhc2UgSTkxNV9QU1JfREVCVUdfRElTQUJMRToNCj4gPiA+ID4gPiAgCWNhc2UgSTkx
NV9QU1JfREVCVUdfRk9SQ0VfUFNSMToNCj4gPiA+ID4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4g
PiA+ID4gIAlkZWZhdWx0Og0KPiA+ID4gPiA+ICsJCWlmIChpOTE1LT5wYXJhbXMuZW5hYmxlX3Bz
ciA9PSAyKQ0KPiA+ID4gPiA+ICsJCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ID4gIAkJcmV0dXJu
IHRydWU7DQo+ID4gPiA+ID4gIAl9DQo+ID4gPiA+ID4gIH0NCj4gPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGFyYW1zLmMNCj4gPiA+ID4gPiBpbmRleCBlZWEzNTVjMmZjMjhhLi5hOWI5N2U2
ZWIzZGYwIDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGFyYW1zLmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFt
cy5jDQo+ID4gPiA+ID4gQEAgLTk0LDcgKzk0LDcgQEAgaTkxNV9wYXJhbV9uYW1lZF91bnNhZmUo
ZW5hYmxlX2hhbmdjaGVjaywgYm9vbCwgMDQwMCwNCj4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gIGk5
MTVfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9wc3IsIGludCwgMDQwMCwNCj4gPiA+ID4gPiAg
CSJFbmFibGUgUFNSICINCj4gPiA+ID4gPiAtCSIoMD1kaXNhYmxlZCwgMT1lbmFibGVkKSAiDQo+
ID4gPiA+ID4gKwkiKDA9ZGlzYWJsZWQsIDE9ZW5hYmxlIHVwIHRvIFBTUjIgaWYgc3VwcG9ydGVk
LCAyPWVuYWJsZSB1cCB0byBQU1IxKSAiDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGF0IHNlZW1zIHZl
cnkgdW5pbnR1aXRpdmUuIEkgd291bGQganVzdCBtYWtlIGl0IDE9PVBTUjEgYW5kIDI9PVBTUjIu
DQo+ID4gPiANCj4gPiA+IFRoaXMgd2lsbCBicmVhayBjdXJyZW50IGJlaGF2aW9yLg0KPiA+IA0K
PiA+IEl0J3MgYSBtb2RwYXJhbS4gV2Ugcm91dGluZWx5IGJyZWFrIHRob3NlIHNpbmNlIHRoZXkg
YXJlIG5vdCBtZWFudA0KPiA+IHRvIHVzZWQgYnkgbm9ybWFsIHVzZXJzIGFzIGFueSBraW5kIG9m
IHBlcm1hbmVudCAibWFrZSBteSBtYWNoaW5lDQo+ID4gd29yayIga25vYi4NCj4gDQo+IEJ1dCBJ
IGd1ZXNzIGlmIHdlIHdhbnQgdG8gbWFrZSBpdCBhIGJpdCBsZXNzIHBhaW5mdWwgeW91ciBpZGVh
IG9mIGEgbmV3DQo+IG1vZHBhcmFtIG1pZ2h0IHdvcmsuICsgZGVwcmVjYXRlIHRoZSBvbGQgcGFy
YW0gYW5kIHJlbW92ZSBhZnRlciBvbmUgb3INCj4gdHdvIGtlcm5lbCByZWxlYXNlcy4NCg0KV2Fz
IHRoaW5raW5nIGFib3V0IGEgbmV3IG9uZSB0byBsaW1pdCB0aGUgdmVyc2lvbiBvZiBQU1I6DQoN
CmVuYWJsZV9wc3JfdmVyc2lvbg0KZGVmYXVsdCA9IDAocGVyLWNoaXAgZGVmYXVsdCksIDEgPSB1
cCB0byBQU1IxLCAyID0gUFNSMg0KDQo+IA0KDQo=
