Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C33539A4B4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 17:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E446F4B2;
	Thu,  3 Jun 2021 15:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB9BF6F4B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 15:37:27 +0000 (UTC)
IronPort-SDR: wENFFIqI6fBrlHZiuLLD/f6W4ZPwuk8GC/rg7Qgcs3J4lDYSjzcYMgeU5RJQZaqv//r9QxXhKS
 j7DP/ajxUTbg==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="265241854"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="265241854"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 08:37:27 -0700
IronPort-SDR: g9TwlqhyxgczOSiFwWwCexfjyMo8vtc96nbXVwvJSL+CSYLA1Z/vYS2t3D9N1es3Ies++kGijc
 D0e6+JERZxSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="417419368"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 03 Jun 2021 08:37:26 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 08:37:25 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 21:07:23 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Thu, 3 Jun 2021 21:07:22 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in DSC
 disable
Thread-Index: AQHXWEerkFFEh6R0kUCekRWWk2uIg6sBidmAgABuaXD//7Q1gIAAcXSQ///VHYCAAGMKkA==
Date: Thu, 3 Jun 2021 15:37:22 +0000
Message-ID: <a608d8131b314604bf3714e311ab94b9@intel.com>
References: <20210603065356.15435-1-vandita.kulkarni@intel.com>
 <eedaa66fa17944aeb96aa353c58db2e9@intel.com>
 <1e70025aa4e04a5396721ad4e7609340@intel.com> <87czt3p9oc.fsf@intel.com>
 <86877ca0c9ff4ebab0b269b91b6c3979@intel.com>
 <0935357a1cd94cc7a115eca8e7a5fce9@intel.com>
In-Reply-To: <0935357a1cd94cc7a115eca8e7a5fce9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
 DSC disable
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYW5uYSwgQW5pbWVzaCA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDMsIDIwMjEgNzoy
NCBQTQ0KPiBUbzogS3Vsa2FybmksIFZhbmRpdGEgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29t
PjsgTmlrdWxhLCBKYW5pDQo+IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBTYWFyaW5lbiwgSmFu
aSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogTmF2YXJlLCBNYW5hc2kgRCA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNv
bT4NCj4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZHNjOiBSZW1v
dmUgcmVkdW5kYW50IGNoZWNrcyBpbg0KPiBEU0MgZGlzYWJsZQ0KPiANCj4gDQo+IA0KPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogS3Vsa2FybmksIFZhbmRpdGEgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDMsIDIw
MjEgNDo1NSBQTQ0KPiA+IFRvOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IFNhYXJpbmVuLCBKYW5pDQo+ID4gPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPjsgaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBOYXZhcmUsIE1hbmFzaSBEDQo+ID4gPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+DQo+ID4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUv
ZHNjOiBSZW1vdmUgcmVkdW5kYW50IGNoZWNrcw0KPiA+IGluIERTQyBkaXNhYmxlDQo+ID4NCj4g
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDMsIDIw
MjEgMzoxMSBQTQ0KPiA+ID4gVG86IEt1bGthcm5pLCBWYW5kaXRhIDx2YW5kaXRhLmt1bGthcm5p
QGludGVsLmNvbT47IFNhYXJpbmVuLCBKYW5pDQo+ID4gPiA8amFuaS5zYWFyaW5lbkBpbnRlbC5j
b20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBDYzogTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgTmF2YXJlLCBNYW5hc2kgRA0KPiA+ID4g
PG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSRTogW0ludGVsLWdm
eF0gW1BBVENIXSBkcm0vaTkxNS9kc2M6IFJlbW92ZSByZWR1bmRhbnQNCj4gPiA+IGNoZWNrcyBp
biBEU0MgZGlzYWJsZQ0KPiA+ID4NCj4gPiA+IE9uIFRodSwgMDMgSnVuIDIwMjEsICJLdWxrYXJu
aSwgVmFuZGl0YSINCj4gPiA+IDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4gPiA+IHdy
b3RlOg0KPiA+ID4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4+IEZyb206
IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT4NCj4gPiA+ID4+IFNlbnQ6
IFRodXJzZGF5LCBKdW5lIDMsIDIwMjEgMTowNyBQTQ0KPiA+ID4gPj4gVG86IEt1bGthcm5pLCBW
YW5kaXRhIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT47IGludGVsLQ0KPiA+ID4gPj4gZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiA+ID4gPj4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQQVRD
SF0gZHJtL2k5MTUvZHNjOiBSZW1vdmUgcmVkdW5kYW50DQo+ID4gPiA+PiBjaGVja3MgaW4gRFND
IGRpc2FibGUNCj4gPiA+ID4+DQo+ID4gPiA+PiBIaSwNCj4gPiA+ID4+ID4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91
bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uDQo+ID4gPiA+PiA+IEJlaGFsZiBPZiBWYW5k
aXRhIEt1bGthcm5pDQo+ID4gPiA+PiA+IFNlbnQ6IHRvcnN0YWkgMy4ga2Vzw6RrdXV0YSAyMDIx
IDkuNTQNCj4gPiA+ID4+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiA+ID4+ID4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4g
Pj4gPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2RzYzogUmVtb3ZlIHJl
ZHVuZGFudA0KPiA+ID4gPj4gPiBjaGVja3MgaW4gRFNDIGRpc2FibGUNCj4gPiA+ID4+ID4NCj4g
PiA+ID4+ID4gVGhlcmUgY2FuIGJlIGEgY2hhbmNlIHRoYXQgcHJlIG9zIGhhcyBlbmFibGVkIERT
QyBhbmQgZHJpdmVyJ3MNCj4gPiA+ID4+ID4gY29tcHV0ZSBjb25maWcgd291bGQgbm90IG5lZWQg
ZHNjIHRvIGJlIGVuYWJsZWQsIGluIHN1Y2ggY2FzZQ0KPiA+ID4gPj4gPiBpZiB3ZSBjaGVjayBv
biBjb21wdXRlIGNvbmZpZydzIGNvbXByZXNzaW9uIHN0YXRlIHRvIGRpc2FibGUsDQo+ID4gPiA+
PiA+IHdlIG1pZ2h0IGVuZCB1cCBpbiBzdGF0ZQ0KPiA+ID4gPj4gbWlzbWF0Y2guDQo+ID4gPiA+
Pg0KPiA+ID4gPj4gSSBhc3N1bWUgdGhpcyBmaXhlcyByZWFsIGdpdGxhYiBpc3N1ZSB0b28/DQo+
ID4gPiA+IE9rYXksIHdpbGwgYWRkIHRoZSB0YWcNCj4gPiA+ID4gQ2xvc2VzOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzM1MzcNCj4gPiA+DQo+ID4g
PiBTZWUgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci84N2ZzeHpwOXF4LmZzZkBpbnRlbC5jb20N
Cj4gPiA+DQo+ID4gPiBUaGUgcHJvYmxlbSBpcyB3aXRoIC0+Ymlnam9pbmVyLCBub3QgdGhlIGVu
dGlyZSBzdGF0ZW1lbnQuDQo+ID4gVGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dCwgdHJ1ZSB0
aGF0IGJpZ2pvaW5lciBub3QgYmVpbmcgZW5hYmxlZA0KPiA+IHdpbGwgc3RvcCBkc2MgZGlzYWJs
aW5nLg0KPiA+IFRoZSBiaWdqb2luZXIgY2hlY2sgd2FzIG1ha2luZyB0aGUgZW50aXJlIGNvbmRp
dGlvbiBjaGVjayB1bm5lY2Vzc2FyeS4NCj4gPg0KPiA+IFdpbGwgdXBkYXRlIGFuZCByZWZsb2F0
Lg0KPiANCj4gSGkgSmFuaS9WYW5kaXRhLA0KPiANCj4gRm9yIHVuY29tcHJlc3NlZCBiaWdqb2lu
ZXIgY2FzZSBpZiB3ZSB3YW50IHRvIHVzZSB0aGUgc2FtZSBmdW5jdGlvbiB0bw0KPiBjbGVhciB0
aGUgZHNjX2N0cmwxIHJlZ2lzdGVyIHdlIG1heSBuZWVkIHRvIHJlbW92ZSBib3RoIHRoZSBjb25k
aXRpb24NCj4gY2hlY2suDQo+IEFzIGZvciB1bmNvbXByZXNzZWQgYmlnam9pbmVyIGNhc2UsIGNv
bXByZXNzaW9uX2VuYWJsZSBXaWxsIGJlIDAgYW5kIHdpbGwNCj4gYmxvY2sgaW4gY2xlYXJpbmcg
dGhlIGRzc19jdGwxX3JlZy4NCg0KWWVzLCBJIHdhcyBnb2luZyB0aHJvdWdoIGFuZCBmb3VuZCB0
aGF0IGJpdCAyMCBhbmQgMjEgb2YgZHNzX2N0bDEgYXJlIGJlaW5nIHVzZWQNCmZvciB1bmNvbXBy
ZXNzZWQgam9pbmVyLg0KU28gd2hlbiBkc2MgaXMgbm90IGVuYWJsZWQgdG8gYXZvaWQgd3JpdGlu
ZyB0aGUgcmVnaXN0ZXIgd2UgY291bGQgYWRkDQpiZWxvdyBjb2RlIC4NCg0KaWYgKGRzYykNCglj
bGVhciBkc3NfY3RsMg0KaWYgKCBiaWdqb2luZXIgfCBkc2MpDQoJY2xlYXIgZHNzX2N0bDE7DQpy
ZXR1cm47DQoNCmJpZ2pvaW5lciA9IDEgYW5kIGRzYyA9IDAgIC0gdW5jb21wcmVzc2VkICwgSSB0
aGluayB0aGVyZSBpcyBubyBoYXJtIGluIGNsZWFyaW5nIGRzYyBiaXRzIGFnYWluDQpiaWdqb2lu
ZXIgPSAxIGFuZCBkc2MgPSAxIC0gY29tcHJlc3NlZCAtIHVuY29tcHJlc3NlZCBiaXRzIGFyZSBh
bHJlYWR5IDANCmJpZ2pvaW5lciA9IDAgYW5kIGRzYz0gMSAtIGp1c3QgZHNjICAtIGNsZWFyIGRz
YyByZXN0IGFyZSAwcyBhbHJlYWR5DQpiaWdqb2luZXIgPSAwIGFuZCBkc2MgPSAwICBkbyBub3Ro
aW5nLCByZXR1cm4NCg0KSWYgSSBoYXZlIG1pc3NlZCBhbnkgY29ybmVyIGNhc2UsIHBsZWFzZSBs
ZXQgbWUga25vdy4NCg0KVGhhbmtzLA0KVmFuZGl0YQ0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVz
aA0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+IFZhbmRpdGENCj4gPiA+DQo+ID4gPg0KPiA+ID4gQlIs
DQo+ID4gPiBKYW5pLg0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gVGhhbmtzLA0KPiA+ID4gPiBW
YW5kaXRhDQo+ID4gPiA+Pg0KPiA+ID4gPj4gPg0KPiA+ID4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBW
YW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4gPiA+ID4+ID4g
LS0tDQo+ID4gPiA+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2Mu
YyB8IDQgLS0tLQ0KPiA+ID4gPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pDQo+
ID4gPiA+PiA+DQo+ID4gPiA+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYw0KPiA+ID4gPj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmRzYy5jDQo+ID4gPiA+PiA+IGluZGV4IDE5Y2Q5NTMxYzExNS4uYjA1YTk2
MDExZDkzIDEwMDY0NA0KPiA+ID4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zkc2MuYw0KPiA+ID4gPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYw0KPiA+ID4gPj4gPiBAQCAtMTE2MSwxMCArMTE2MSw2IEBAIHZv
aWQgaW50ZWxfZHNjX2Rpc2FibGUoY29uc3Qgc3RydWN0DQo+ID4gPiA+PiA+IGludGVsX2NydGNf
c3RhdGUNCj4gPiA+ID4+ID4gKm9sZF9jcnRjX3N0YXRlKQ0KPiA+ID4gPj4gPiAgCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0NCj4gPnVhcGku
Y3J0Yyk7DQo+ID4gPiA+PiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjcnRjLQ0KPiA+YmFzZS5kZXYpOw0KPiA+ID4gPj4gPg0KPiA+ID4gPj4gPiAtCWlm
ICghKG9sZF9jcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlICYmDQo+ID4gPiA+PiA+
IC0JICAgICAgb2xkX2NydGNfc3RhdGUtPmJpZ2pvaW5lcikpDQo+ID4gPiA+PiA+IC0JCXJldHVy
bjsNCj4gPiA+ID4+ID4gLQ0KPiA+ID4gPj4gPiAgCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBk
c3NfY3RsMV9yZWcob2xkX2NydGNfc3RhdGUpLCAwKTsNCj4gPiA+ID4+ID4gIAlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgZHNzX2N0bDJfcmVnKG9sZF9jcnRjX3N0YXRlKSwgMCk7ICB9DQo+ID4g
PiA+PiA+IC0tDQo+ID4gPiA+PiA+IDIuMjEuMC41LmdhZWI1ODJhDQo+ID4gPiA+PiA+DQo+ID4g
PiA+PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
ID4gPiA+PiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiA+ID4+ID4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KPiA+ID4NCj4gPiA+IC0tDQo+ID4gPiBK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
