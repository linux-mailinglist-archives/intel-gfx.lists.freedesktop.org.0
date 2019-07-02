Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 962B15D794
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 22:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C67C6E08C;
	Tue,  2 Jul 2019 20:42:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36ED6E08C
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 20:42:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 13:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="190805072"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 13:42:27 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX108.amr.corp.intel.com ([169.254.9.149]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 13:41:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "tjaalton@ubuntu.com" <tjaalton@ubuntu.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 2/2] drm/i915: Enable hotplug retry
Thread-Index: AQHVLfn2rXukNuFbJE2ei/QlmDEQLaa4OUuAgAAJyACAAANogA==
Date: Tue, 2 Jul 2019 20:41:53 +0000
Message-ID: <9f528f4dce800a23810f28eeb805a85d09159226.camel@intel.com>
References: <20190628213921.16879-1-jose.souza@intel.com>
 <20190628213921.16879-2-jose.souza@intel.com>
 <0129038bba889c74e6164913d45b78b16c42482f.camel@intel.com>
 <a22bb734-1400-325e-6aff-693a6337aab2@ubuntu.com>
In-Reply-To: <a22bb734-1400-325e-6aff-693a6337aab2@ubuntu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <7ED5F7599D5F0A46ADAB493E41A6C955@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: Enable hotplug retry
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA3LTAyIGF0IDIzOjI5ICswMzAwLCBUaW1vIEFhbHRvbmVuIHdyb3RlOg0K
PiBPbiAyLjcuMjAxOSAyMi41NCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gSGVyZSBhIGRtZXNn
IG91dHB1dCBvZiB0aGlzIHBhdGNoIHdvcmtpbmcgaW4gYSB1bnBvd2VyZWQgdHlwZS1jDQo+ID4g
ZG9uZ2xlOg0KPiA+IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL3plaG9ydGlnb3phLzkzYzU0YjAz
ZmI2NTIzN2NjMWEyZTE5M2FjZWY2MWE4DQo+ID4gDQo+ID4gV2l0aCB0aGUgbGF0ZXN0IHR5cGUt
YyBwYXRjaGVzIGZyb20gSW1yZSBpdCBpcyBiZWNvbWluZyByZWFsbHkgaGFyZA0KPiA+IHRvDQo+
ID4gcmVwcm9kdWNlIHRoaXMgYnV0IGlzIHN0aWxsIHBvc3NpYmxlLCBhbHNvIGxvb2tzIGxpa2Ug
ZHVlIHNvbWUNCj4gPiBpbnRlcm5hbA0KPiA+IGVycm9yIG9uIHRoZSBkb25nbGUgaXQgYmVpbmcg
cmUtZGlzY292ZXJlZCBieSBVU0Igc3ViLXN5c3RlbS4NCj4gPiANCj4gPiBJIGFkZGVkIHRoaXMg
dG8gdGhlIHBhdGNoZXMgYmVsbG93IGhhdmUgbW9yZSBsb2cgaW5mb3JtYXRpb246DQo+ID4gaHR0
cHM6Ly9naXN0LmdpdGh1Yi5jb20vemVob3J0aWdvemEvYmFlY2FiZWI3MDk3YjkzMjI3MjNiNmNh
ZjVhOWNlZDUNCj4gPiBMZXQgbWUga25vdyBpZiB5b3UgdGhpbmsgdGhpcyBvciBzb21ldGhpbmcg
c2ltaWxhciBzaG91bGQgYmUNCj4gPiBzcXVhc2hlZA0KPiA+IHRvIHRoaXMgcGF0Y2gsIEkgdGhp
bmsgaXQgaXMgbm90IG5lY2Vzc2FyeS4NCj4gDQo+IEZXSVcsIHdlJ3ZlIHRlc3RlZCB0aGVzZSBv
biBhIFdITCB3aGljaCBpcyBzdWZmZXJpbmcgZnJvbSBIRE1JIHVucGx1Zw0KPiBzdGlsbCBzaG93
aW5nIHRoZSBkaXNwbGF5IGNvbm5lY3RlZCwgYW5kIGl0J3Mgd29ya2luZyBmaW5lIG5vdy4NCj4g
DQo+IA0KDQpUaGFua3MsIEkgd2lsbCBhZGQgeW91cjoNCg0KVGVzdGVkLWJ5OiBUaW1vIEFhbHRv
bmVuIDx0amFhbHRvbkB1YnVudHUuY29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
