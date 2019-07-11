Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0C166083
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 22:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2CDB6E268;
	Thu, 11 Jul 2019 20:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45FFF6E268
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 20:25:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 13:25:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="168123117"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga007.fm.intel.com with ESMTP; 11 Jul 2019 13:25:20 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jul 2019 13:25:20 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.214]) with mapi id 14.03.0439.000;
 Thu, 11 Jul 2019 13:25:20 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
Thread-Index: AQHVN8s6u18XhfEo0kuWcj/kjNqW06bGT1sAgAAD6QA=
Date: Thu, 11 Jul 2019 20:25:19 +0000
Message-ID: <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
In-Reply-To: <1562875878.2840.0.camel@HansenPartnership.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-ID: <E314B7807B550846AB0B42284365433D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA3LTExIGF0IDEzOjExIC0wNzAwLCBKYW1lcyBCb3R0b21sZXkgd3JvdGU6
DQo+IE9uIFRodSwgMjAxOS0wNy0xMSBhdCAxMDoyOSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Og0KPiA+IFF1b3RpbmcgSmFtZXMgQm90dG9tbGV5ICgyMDE5LTA2LTI5IDE5OjU2OjUyKQ0KPiA+
ID4gVGhlIHN5bXB0b21zIGFyZSByZWFsbHkgd2VpcmQ6IHRoZSBzY3JlZW4gaW1hZ2UgaXMgbG9j
a2VkIGluDQo+ID4gPiBwbGFjZS4gIFRoZSBtYWNoaW5lIGlzIHN0aWxsIGZ1bmN0aW9uYWwgYW5k
IGlmIEkgbG9nIGluIG92ZXIgdGhlDQo+ID4gPiBuZXR3b3JrIGNhbiBkbyBhbnl0aGluZyBJIGxp
a2UsIGluY2x1ZGluZyBraWxsaW5nIHRoZSBYIHNlcnZlcg0KPiA+ID4gYW5kDQo+ID4gPiB0aGUg
ZGlzcGxheSB3aWxsIG5ldmVyIGFsdGVyLiAgSXQgYWxzbyBzZWVtcyB0aGF0IHRoZSBzeXN0ZW0g
aXMNCj4gPiA+IGFjY2VwdGluZyBrZXlib2FyZCBpbnB1dCBiZWNhdXNlIHdoZW4gaXQgZnJlZXpl
cyBJIGNhbiBjYXQNCj4gPiA+IGluZm9ybWF0aW9uIHRvIGEgZmlsZSAoaWYgdGhlIG1vdXNlIHdh
cyBvdmVyIGFuIHh0ZXJtKSBhbmQgdmVyaWZ5DQo+ID4gPiBvdmVyIHRoZSBuZXR3b3JrIHRoZSBm
aWxlIGNvbnRlbnRzLiBOb3RoaW5nIHVudXN1YWwgYXBwZWFycyBpbg0KPiA+ID4gZG1lc2cgd2hl
biB0aGUgbG9ja3VwIGhhcHBlbnMuDQo+ID4gPiANCj4gPiA+IFRoZSBsYXN0IGtlcm5lbCBJIGJv
b3RlZCBzdWNjZXNzZnVsbHkgb24gdGhlIHN5c3RlbSB3YXMgNS4wLCBzbw0KPiA+ID4gSSdsbCB0
cnkgY29tcGlsaW5nIDUuMSB0byBuYXJyb3cgZG93biB0aGUgY2hhbmdlcy4NCj4gPiANCj4gPiBJ
dCdzIGxpa2VseSB0aGlzIGlzIHBhbmVsIHNlbGYtcmVmcmVzaCBnb2luZyBoYXl3aXJlLg0KPiA+
IA0KPiA+IGNvbW1pdCA4ZjZlODdkNmQ1NjFmMTBjZmE0OGE2ODczNDU1MTI0MTk4MzliNmQ4DQo+
ID4gQXV0aG9yOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gPiBEYXRlOiAgIFRodSBNYXIgNyAxNjowMDo1MCAyMDE5IC0wODAwDQo+ID4gDQo+ID4gICAg
IGRybS9pOTE1OiBFbmFibGUgUFNSMiBieSBkZWZhdWx0DQo+ID4gDQo+ID4gICAgIFRoZSBzdXBw
b3J0IGZvciBQU1IyIHdhcyBwb2xpc2hlZCwgSUdUIHRlc3RzIGZvciBQU1IyIHdhcyBhZGRlZA0K
PiA+IGFuZA0KPiA+ICAgICBpdCB3YXMgdGVzdGVkIHBlcmZvcm1pbmcgcmVndWxhciB1c2VyIHdv
cmtsb2FkcyBsaWtlIGJyb3dzaW5nLA0KPiA+ICAgICBlZGl0aW5nIGRvY3VtZW50cyBhbmQgY29t
cGlsaW5nIExpbnV4LCBzbyBpdCBpcyB0aW1lIHRvIGVuYWJsZQ0KPiA+IGl0DQo+ID4gYnkNCj4g
PiAgICAgZGVmYXVsdCBhbmQgZW5qb3kgZXZlbiBtb3JlIHBvd2VyLXNhdmluZ3MuDQo+ID4gDQo+
ID4gVGVtcG9yYXJ5IHdvcmthcm91bmQgd291bGQgYmUgdG8gc2V0IGk5MTUuZW5hYmxlX3Bzcj0w
DQo+IA0KPiBJdCBsb29rcyBwbGF1c2libGUuICBJIGhhdmUgdG8gc2F5IEkgd2FzIGp1c3QgYWJv
dXQgdG8gbWFyayBhIGJpc2VjdA0KPiBjb250YWluaW5nIHRoaXMgYXMgZ29vZCwgYnV0IHRoYXQg
cHJvYmFibHkgcmVmbGVjdHMgbXkgZGlmZmljdWx0eQ0KPiByZXByb2R1Y2luZyB0aGUgaXNzdWUu
DQoNClRha2UgYXQgbG9vayBvZiB3aGF0IFBTUiB2ZXJzaW9uIGlzIHN1cHBvcnRlZCBieSB5b3Vy
IHBhbmVsLCBpdCBsaWtlbHkNCnRoYXQgYSBub3RlYm9vayBzaGlwcGVkIHdpdGggU2t5bGFrZSB3
aWxsIGhhdmUgcGFuZWwgdGhhdCBzdXBwb3J0cyBvbmx5DQpQU1IxIHNvIHRoYXQgcGF0Y2ggaGFz
IG5vIGVmZmVjdCBvbiB5b3VyIG1hY2hpbmUuDQoNCnN1ZG8gbW9yZSAvc3lzL2tlcm5lbC9kZWJ1
Zy9kcmkvMC9pOTE1X2VkcF9wc3Jfc3RhdHVzDQpTaW5rIHN1cHBvcnQ6IHllcyBbMHgwMV0NCg0K
T25seSBpZiB5b3UgaGF2ZSAweDAzIHlvdXIgcGFuZWwgaGF2ZSBzdXBwb3J0IGZvciBQU1IyLg0K
DQpPciBjaGVjayB5b3VyIGRtZXNnOg0KW2RybTppbnRlbF9wc3JfaW5pdF9kcGNkIFtpOTE1XV0g
ZURQIHBhbmVsIHN1cHBvcnRzIFBTUiB2ZXJzaW9uIDENCg0KPiANCj4gSmFtZXMNCj4gDQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
