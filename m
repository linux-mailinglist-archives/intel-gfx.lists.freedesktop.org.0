Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD4142AE56
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 22:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B286E833;
	Tue, 12 Oct 2021 20:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7E196E02D;
 Tue, 12 Oct 2021 20:58:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="226042471"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="226042471"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 13:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="659263857"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 12 Oct 2021 13:58:30 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 13:58:30 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 02:28:27 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Wed, 13 Oct 2021 02:28:27 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Pekka Paalanen <ppaalanen@gmail.com>, "harry.wentland@amd.com"
 <harry.wentland@amd.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "brian.starkey@arm.com" <brian.starkey@arm.com>,
 "sebastian@sebastianwick.net" <sebastian@sebastianwick.net>,
 "Shashank.Sharma@amd.com" <Shashank.Sharma@amd.com>
Thread-Topic: [RFC v2 01/22] drm: RFC for Plane Color Hardware Pipeline
Thread-Index: AQHXo2JKczsaELBrPkmGEyuwyN6iXqvPBXOAgADt7XA=
Date: Tue, 12 Oct 2021 20:58:27 +0000
Message-ID: <92af78eb53c04d67ac66b77f8b098cc0@intel.com>
References: <20210906213904.27918-1-uma.shankar@intel.com>
 <20210906213904.27918-2-uma.shankar@intel.com>
 <20211006155559.606521de@eldfell>
In-Reply-To: <20211006155559.606521de@eldfell>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: harry.wentland@amd.com,ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v2 01/22] drm: RFC for Plane Color Hardware
 Pipeline
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGVra2EgUGFhbGFuZW4g
PHBwYWFsYW5lbkBnbWFpbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgMTIsIDIwMjEg
NDowMSBQTQ0KPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IENj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnOyANCj4gaGFycnkud2VudGxhbmRAYW1kLmNvbTsgdmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb207IA0KPiBicmlhbi5zdGFya2V5QGFybS5jb207IHNlYmFzdGlhbkBzZWJhc3Rp
YW53aWNrLm5ldDsgDQo+IFNoYXNoYW5rLlNoYXJtYUBhbWQuY29tDQo+IFN1YmplY3Q6IFJlOiBb
UkZDIHYyIDAxLzIyXSBkcm06IFJGQyBmb3IgUGxhbmUgQ29sb3IgSGFyZHdhcmUgUGlwZWxpbmUN
Cj4gDQo+IE9uIFR1ZSwgIDcgU2VwIDIwMjEgMDM6MDg6NDMgKzA1MzANCj4gVW1hIFNoYW5rYXIg
PHVtYS5zaGFua2FyQGludGVsLmNvbT4gd3JvdGU6DQo+IA0KPiA+IFRoaXMgaXMgYSBSRkMgcHJv
cG9zYWwgZm9yIHBsYW5lIGNvbG9yIGhhcmR3YXJlIGJsb2Nrcy4NCj4gPiBJdCBleHBvc2VzIHRo
ZSBwcm9wZXJ0eSBpbnRlcmZhY2UgdG8gdXNlcnNwYWNlIGFuZCBjYWxscyBvdXQgdGhlIA0KPiA+
IGRldGFpbHMgb3IgaW50ZXJmYWNlcyBjcmVhdGVkIGFuZCB0aGUgaW50ZW5kZWQgcHVycG9zZS4N
Cj4gPg0KPiA+IENyZWRpdHM6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgRG9jdW1lbnRhdGlvbi9ncHUvcmZjL2RybV9jb2xvcl9w
aXBlbGluZS5yc3QgfCAxNjcNCj4gPiArKysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxNjcgaW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1l
bnRhdGlvbi9ncHUvcmZjL2RybV9jb2xvcl9waXBlbGluZS5yc3QNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9yZmMvZHJtX2NvbG9yX3BpcGVsaW5lLnJzdA0KPiA+IGIv
RG9jdW1lbnRhdGlvbi9ncHUvcmZjL2RybV9jb2xvcl9waXBlbGluZS5yc3QNCj4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMGQxY2E4NTg3ODNiDQo+ID4g
LS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L3JmYy9kcm1fY29sb3Jf
cGlwZWxpbmUucnN0DQo+ID4gQEAgLTAsMCArMSwxNjcgQEANCj4gPiArPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gPiArRGlzcGxheSBDb2xvciBQ
aXBlbGluZTogUHJvcG9zZWQgRFJNIFByb3BlcnRpZXMNCj4gDQo+IEhpLA0KPiBpcyB0aGVyZSBh
IHByYWN0aXNlIG9mIGxhbmRpbmcgcHJvcG9zYWwgZG9jdW1lbnRzIGluIHRoZSBrZXJuZWw/IEhv
dyANCj4gZG9lcyB0aGF0IHdvcmssIHdpbGwgYSBrZXJuZWwgdHJlZSBjYXJyeSB0aGUgcGF0Y2gg
ZmlsZXM/DQo+IE9yIHNob3VsZCB0aGlzIGRvY3VtZW50IGJlIHdvcmRlZCBsaWtlIGRvY3VtZW50
YXRpb24gZm9yIGFuIGFjY2VwdGVkIA0KPiBmZWF0dXJlLCBhbmQgdGhlbiB0aGUgcGF0Y2hlcyBl
aXRoZXIgbGFuZCBvciBkb24ndD8NCj4gDQoNCkEgdGhyZWFkIGlzIGZvcmtlZCBmb3IgdGhpcyBx
dWVyeSwgd2Ugd2lsbCBjb25jbHVkZSB0aGVyZS4NCg0KPiA+ICs9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiA+ICsNCj4gPiArVGhpcyBpcyBob3cg
YSB0eXBpY2FsIGRpc3BsYXkgY29sb3IgaGFyZHdhcmUgcGlwZWxpbmUgbG9va3MgbGlrZToNCj4g
DQo+IFR5cGljYWwsIG9yIHNob3VsZCB3ZSBzYXkgdGhhdCB0aGlzIGlzIHRoZSBhYnN0cmFjdCBj
b2xvciBwaXBlbGluZSB0aGF0IEtNUyBhc3N1bWVzPw0KPiANCj4gVGhlbiBkcml2ZXJzIG1hcCB0
aGlzIHRvIHBpZWNlcyBvZiBoYXJkd2FyZSB0aGUgYmVzdCB0aGV5IGNhbiBhbmQgDQo+IHJlamVj
dCBvciBkbyBub3QgZXhwb3NlIHRoZSBwYXJ0cyB0aGV5IGNhbm5vdC4NCg0KWWVhaCBzdXJlIFBl
a2thLCBJIHdpbGwgcmV3b3JkIHRoaXMgdG8gYmUgY2xlYXIuDQoNCj4gPiArICstLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiA+ICsgfCAgICAgICAgICAgICAg
ICBSQU0gICAgICAgICAgICAgICAgICAgICAgICB8DQo+ID4gKyB8ICArLS0tLS0tKyAgICArLS0t
LS0tLS0tKyAgICArLS0tLS0tLS0tKyAgIHwNCj4gPiArIHwgIHwgRkIgMSB8ICAgIHwgIEZCIDIg
ICB8ICAgIHwgRkIgTiAgICB8ICAgfA0KPiA+ICsgfCAgKy0tLS0tLSsgICAgKy0tLS0tLS0tLSsg
ICAgKy0tLS0tLS0tLSsgICB8DQo+ID4gKyArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSsNCj4gPiArICAgICAgIHwgIFBsYW5lIENvbG9yIEhhcmR3YXJlIEJsb2Nr
IHwNCj4gPiArICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsN
Cj4gPiArIHwgKy0tLXYtLS0tLSsgICArLS0tdi0tLS0tLS0rICAgKy0tLXYtLS0tLS0rIHwNCj4g
PiArIHwgfCBQbGFuZSBBIHwgICB8IFBsYW5lIEIgICB8ICAgfCBQbGFuZSBOICB8IHwNCj4gPiAr
IHwgfCBEZUdhbW1hIHwgICB8IERlZ2FtbWEgICB8ICAgfCBEZWdhbW1hICB8IHwNCj4gPiArIHwg
Ky0tLSstLS0tLSsgICArLS0tKy0tLS0tLS0rICAgKy0tLSstLS0tLS0rIHwNCj4gPiArIHwgICAg
IHwgICAgICAgICAgICAgfCAgICAgICAgICAgICAgIHwgICAgICAgIHwNCj4gPiArIHwgKy0tLXYt
LS0tLSsgICArLS0tdi0tLS0tLS0rICAgKy0tLXYtLS0tLS0rIHwNCj4gPiArIHwgfFBsYW5lIEEg
IHwgICB8IFBsYW5lIEIgICB8ICAgfCBQbGFuZSBOICB8IHwNCj4gPiArIHwgfENTQy9DVE0gIHwg
ICB8IENTQy9DVE0gICB8ICAgfCBDU0MvQ1RNICB8IHwNCj4gPiArIHwgKy0tLSstLS0tLSsgICAr
LS0tLSstLS0tLS0rICAgKy0tLS0rLS0tLS0rIHwNCj4gPiArIHwgICAgIHwgICAgICAgICAgICAg
IHwgICAgICAgICAgICAgICB8ICAgICAgIHwNCj4gPiArIHwgKy0tLXYtLS0tLSsgICArLS0tLXYt
LS0tLS0rICAgKy0tLS12LS0tLS0rIHwNCj4gPiArIHwgfCBQbGFuZSBBIHwgICB8IFBsYW5lIEIg
ICB8ICAgfCBQbGFuZSBOICB8IHwNCj4gPiArIHwgfCBHYW1tYSAgIHwgICB8IEdhbW1hICAgICB8
ICAgfCBHYW1tYSAgICB8IHwNCj4gPiArIHwgKy0tLSstLS0tLSsgICArLS0tLSstLS0tLS0rICAg
Ky0tLS0rLS0tLS0rIHwNCj4gPiArIHwgICAgIHwgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICB8ICAgICAgIHwNCj4gPiArICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLSsNCj4gPiArKy0tLS0tLXYtLS0tLS0tLS0tLS0tLXYtLS0tLS0tLS0tLS0tLS12LS0t
LS0tLXwNCj4gPiArfHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fHwNCj4gPiArfHwgICAgICAgICAgIFBpcGUgQmxlbmRlciAgICAgICAgICAgICAgICAgICAgfHwN
Cj4gPiArKy0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj4g
PiArfCAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gPiAr
fCAgICAgICAgKy0tLS0tLS0tLS0tdi0tLS0tLS0tLS0rICAgICAgICAgICAgIHwNCj4gPiArfCAg
ICAgICAgfCAgUGlwZSBEZUdhbW1hICAgICAgICB8ICAgICAgICAgICAgIHwNCj4gPiArfCAgICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgIHwNCj4gPiArfCAgICAgICAg
Ky0tLS0tLS0tLS0tKy0tLS0tLS0tLS0rICAgICAgICAgICAgIHwNCj4gPiArfCAgICAgICAgICAg
ICAgICAgICAgfCAgICAgICAgICAgIFBpcGUgQ29sb3IgIHwNCj4gPiArfCAgICAgICAgKy0tLS0t
LS0tLS0tdi0tLS0tLS0tLS0rIEhhcmR3YXJlICAgIHwNCj4gPiArfCAgICAgICAgfCAgUGlwZSBD
U0MvQ1RNICAgICAgICB8ICAgICAgICAgICAgIHwNCj4gPiArfCAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICB8ICAgICAgICAgICAgIHwNCj4gPiArfCAgICAgICAgKy0tLS0tLS0tLS0tKy0t
LS0tLS0tLS0rICAgICAgICAgICAgIHwNCj4gPiArfCAgICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgIHwNCj4gPiArfCAgICAgICAgKy0tLS0tLS0tLS0tdi0tLS0tLS0t
LS0rICAgICAgICAgICAgIHwNCj4gPiArfCAgICAgICAgfCAgUGlwZSBHYW1tYSAgICAgICAgICB8
ICAgICAgICAgICAgIHwNCj4gPiArfCAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICB8ICAg
ICAgICAgICAgIHwNCj4gPiArfCAgICAgICAgKy0tLS0tLS0tLS0tKy0tLS0tLS0tLS0rICAgICAg
ICAgICAgIHwNCj4gPiArfCAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgIHwNCj4gPiArKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgfA0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICB2DQo+ID4gKyAgICAgICAgICAgICAgIFBpcGUgT3V0cHV0DQo+ID4gKw0KPiA+ICtQcm9wb3Nh
bCBpcyB0byBoYXZlIGJlbG93IHByb3BlcnRpZXMgZm9yIGEgcGxhbmU6DQo+ID4gKw0KPiA+ICsq
IFBsYW5lIERlZ2FtbWEgb3IgUHJlLUN1cnZlOg0KPiA+ICsJKiBUaGlzIHdpbGwgYmUgdXNlZCB0
byBsaW5lYXJpemUgdGhlIGlucHV0IGZyYW1lYnVmZmVyIGRhdGEuDQo+ID4gKwkqIEl0IHdpbGwg
YXBwbHkgdGhlIHJldmVyc2Ugb2YgdGhlIGNvbG9yIHRyYW5zZmVyIGZ1bmN0aW9uLg0KPiA+ICsJ
KiBJdCBjYW4gYmUgYSBkZWdhbW1hIGN1cnZlIG9yIE9FVEYgZm9yIEhEUi4NCj4gDQo+IEFzIHlv
dSB3YW50IHRvIHByb2R1Y2UgbGlnaHQtbGluZWFyIHZhbHVlcywgeW91IHVzZSBFT1RGIG9yIGlu
dmVyc2UgT0VURi4NCj4gDQo+IFRoZSB0ZXJtIE9FVEYgaGFzIGEgYnVpbHQtaW4gYXNzdW1wdGlv
biB0aGF0IHRoYXQgaGFwcGVucyBpbiBhIGNhbWVyYToNCj4gaXQgdGFrZXMgaW4gbGlnaHQgYW5k
IHByb2R1Y2VzIGFuZCBlbGVjdHJpY2FsIHNpZ25hbC4gTGF0ZWx5IEkgaGF2ZSANCj4gcGVyc29u
YWxseSBzdGFydGVkIHRhbGtpbmcgYWJvdXQgbm9uLWxpbmVhciBlbmNvZGluZyBvZiBjb2xvciB2
YWx1ZXMsIA0KPiBzaW5jZSBFT1RGIGlzIG9mdGVuIGFzc29jaWF0ZWQgd2l0aCBkaXNwbGF5cyBp
ZiBub3RoaW5nIGVsc2UgaXMgc2FpZCAodGFraW5nIGluIGFuIGVsZWN0cmljYWwgc2lnbmFsIGFu
ZCBwcm9kdWNpbmcgbGlnaHQpLg0KPiANCj4gU28gdGhpcyB3b3VsZCBiZSBkZWNvZGluZyB0aGUg
Y29sb3IgdmFsdWVzIGludG8gbGlnaHQtbGluZWFyIGNvbG9yIA0KPiB2YWx1ZXMuIFRoYXQgaXMg
d2hhdCBhbiBFT1RGIGRvZXMsIHllcywgYnV0IEkgZmVlbCB0aGVyZSBpcyBhIG51YW5jZWQgDQo+
IGRpZmZlcmVuY2UuIEEgcGllY2Ugb2YgZXF1aXBtZW50IGltcGxlbWVudHMgYW4gRU9URiBieSB0
dXJuaW5nIGFuIA0KPiBlbGVjdHJpY2FsIHNpZ25hbCBpbnRvIGxpZ2h0LCBoZW5jZSBFT1RGIG9m
dGVuIHJlZmVycyB0byBzcGVjaWZpYyANCj4gZXF1aXBtZW50LiBZb3UgY291bGQgdGFsayBhYm91
dCBjb250ZW50IEVPVEYgdG8gZGVub3RlIGNvbnRlbnQgdmFsdWUgDQo+IGVuY29kaW5nLCBhcyBv
cHBvc2VkIHRvIG91dHB1dCBvciBkaXNwbGF5IEVPVEYsIGJ1dCB0aGF0IG1pZ2h0IGJlIA0KPiBj
b25mdXNpbmcgaWYgeW91IGxvb2sgYXQgZS5nLiB0aGUgZGlhZ3JhbXMgaW4gQlQuMjEwMDogaXMg
aXQgdGhlIEVPVEYgb3IgaXMgaXQgdGhlIGludmVyc2UgT0VURj8gSXMgdGhlIChpbnZlcnNlPykg
T09URiBpbmNsdWRlZD8NCj4gDQo+IFNvIEkgdHJ5IHRvIHNpZGUtc3RlcCB0aG9zZSBxdWVzdGlv
bnMgYnkgdGFsa2luZyBhYm91dCBlbmNvZGluZy4NCg0KVGhlIGlkZWEgaGVyZSBpcyB0aGF0IGZy
YW1lIGJ1ZmZlciBwcmVzZW50ZWQgdG8gZGlzcGxheSBwbGFuZSBlbmdpbmUgd2lsbCBiZSBub24t
bGluZWFyLg0KU28gb3V0cHV0IG9mIGEgbWVkaWEgZGVjb2RlIHNob3VsZCByZXN1bHQgaW4gY29u
dGVudCB3aXRoIEVPVEYgYXBwbGllZC4NClBsYXliYWNrIHRyYW5zZmVyIGZ1bmN0aW9uIChFT1RG
KTogaW52ZXJzZSBPRVRGIHBsdXMgcmVuZGVyaW5nIGludGVudCBnYW1tYS4gDQoNClRvIG1ha2Ug
aXQgbGluZWFyLCB3ZSBzaG91bGQgYXBwbHkgdGhlIE9FVEYuIENvbmZ1c2lvbiBpcyB3aGV0aGVy
IE9FVEYgaXMgZXF1aXZhbGVudCB0bw0KaW52ZXJzZSBFT1RGLCB3ZSBjb3VsZCBjaGVjayB0aGlz
IG9uZSBvdXQgdG8gY29uZmlybS4NCg0KSGVyZSBzaW5jZSB0aGUgdmFsdWVzIGZvciB0aGUgcHJl
LWN1cnZlIChvciBkZWdhbW1hIGFzIHdlIGhhdmUgY2FsbGVkIGl0IGluIHBhc3QpLA0KYWNjZXB0
cyBwcm9ncmFtbWFibGUgbHV0IHZhbHVlcyB3aGljaCBtYWtlcyBpdCBmbGV4aWJsZSBlbm91Z2gg
dG8gYWNjb21tb2RhdGUgYW55IHZhbHVlcy4NClRoaXMgd2lsbCBob2xkIGZvciBIRFIgYXMgd2Vs
bCBhcyB0cmFkaXRpb25hbCBnYW1tYSBlbmNvZGVkIFNSR0IgZGF0YSBhcyB3ZWxsLg0KDQo+ID4g
KwkqIFRoaXMgbGluZWFyIGRhdGEgY2FuIGJlIGZ1cnRoZXIgYWN0ZWQgb24gYnkgdGhlIGZvbGxv
d2luZw0KPiA+ICsJKiBjb2xvciBoYXJkd2FyZSBibG9ja3MgaW4gdGhlIGRpc3BsYXkgaGFyZHdh
cmUgcGlwZWxpbmUNCj4gDQo+IEkgdGhpbmsgdGhpcyBhbmQgdGhlIGFib3ZlIGRlc2NyaXB0aW9u
IHRpZXMgdGhlIGludGVuZGVkIHVzZSBkb3duIHRvbyANCj4gbXVjaC4gVGhpcyBpcyBvbmUgcG9z
c2libGUgd2F5IHRvIHVzZSBkZWdhbW1hLCB5ZXMsIGJ1dCB0aGVyZSBtYXkgYmUgDQo+IG90aGVy
cy4gUGFydGljdWxhcmx5IGlmIENUTSBjYW4gYmUgcmVwbGFjZWQgd2l0aCBhIDNEIExVVCwgdGhl
biB0aGUgDQo+IGRlZ2FtbWEgaXMgbW9yZSBsaWtlbHkgYSBzaGFwZXIgKG5vbi1saW5lYXIgYWRq
dXN0bWVudCB0byAzRCBMVVQgdGFwIHBvc2l0aW9ucykuDQoNClllYWggYWdyZWUsIHRoaXMgaXMg
anVzdCBvbmUgb2YgdGhlIHVzZWNhc2VzLiBJdHMganVzdCBhIGx1dCB0YWJsZSB3aGljaCBjYW4g
YmUgdXNlZCBmb3INCm90aGVyIHB1cnBvc2VzIGFzIHdlbGwgYW5kIGlzIG5vdCBqdXN0IGxpbWl0
ZWQgdG8gYSBsaW5lYXJpemF0aW9uIG9wZXJhdGlvbi4gSSB3aWxsIHVwZGF0ZSB0aGlzLg0KDQo+
IEkgd291bGQgcHJlZmVyIHRoZSBuYW1lIHByZS1jdXJ2ZSB0byB1bmRlcmxpbmUgdGhhdCB0aGlz
IGNhbiBiZSANCj4gd2hhdGV2ZXIgb25lIHdhbnRzIGl0IHRvIGJlLCBidXQgSSB1bmRlcnN0YW5k
IHRoYXQgcGVvcGxlIG1heSBiZSBtb3JlIGZhbWlsaWFyIHdpdGggdGhlIG5hbWUgZGVnYW1tYS4N
Cg0KSSBmZWVsIHByZS1jdXJ2ZSBzaG91bGQgYmUgZmluZSBidXQgeWVhaCBpdCBkZXZpYXRlcyBm
cm9tIG5hbWluZyBvZiBsZWdhY3kgY3J0Yy9waXBlIGNvbG9yIHByb3BlcnRpZXMuDQpNYXkgYmUg
d2UgY2FuIHN0YXkgd2l0aCBsZWdhY3kgbmFtaW5nIHdpdGggbW9yZSBkb2N1bWVudGF0aW9uIHRv
IGhhdmUgaXRzIHVzZWNhc2VzIGNsZWFybHkgY2FsbGVkIG91dC4NCg0KPiA+ICsNCj4gPiArVUFQ
SSBOYW1lOiBQTEFORV9ERUdBTU1BX01PREUNCj4gPiArRGVzY3JpcHRpb246IEVudW0gcHJvcGVy
dHkgd2l0aCB2YWx1ZXMgYXMgYmxvYl9pZCdzIHdoaWNoIA0KPiA+ICthZHZlcnRpemVzDQo+ID4g
dGhlDQo+IA0KPiBJcyBlbnVtIHdpdGggYmxvYiBpZCB2YWx1ZXMgZXZlbiBhIHRoaW5nPw0KDQpZ
ZWFoIHdlIGNvdWxkIGhhdmUuIFRoaXMgaXMgYSBkeW5hbWljIGVudW0gY3JlYXRlZCB3aXRoIGJs
b2JzLiBFYWNoIGVudHJ5IGNvbnRhaW5zDQp0aGUgZGF0YSBzdHJ1Y3R1cmUgdG8gZXh0cmFjdCB0
aGUgZnVsbCBjb2xvciBjYXBhYmlsaXRpZXMgb2YgdGhlIGhhcmR3YXJlLiBJdOKAmXMgYSB2ZXJ5
DQppbnRlcmVzdGluZyBwbGF5IHdpdGggYmxvYnMgKEB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbSBicmFpbmNoaWxkKQ0KDQo+ID4gKwkgICAgcG9zc2libGUgZGVnYW1tYSBtb2RlcyBhbmQg
bHV0IHJhbmdlcyBzdXBwb3J0ZWQgYnkgdGhlIHBsYXRmb3JtLg0KPiA+ICsJICAgIFRoaXMgIGFs
bG93cyB1c2Vyc3BhY2UgdG8gcXVlcnkgYW5kIGdldCB0aGUgcGxhbmUgZGVnYW1tYSBjb2xvcg0K
PiA+ICsJICAgIGNhcHMgYW5kIGNob29zZSB0aGUgYXBwcm9wcmlhdGUgZGVnYW1tYSBtb2RlIGFu
ZCBjcmVhdGUgbHV0IHZhbHVlcw0KPiA+ICsJICAgIGFjY29yZGluZ2x5Lg0KPiANCj4gSSBhZ3Jl
ZSB0aGF0IHNvbWUgc29ydCBvZiAibW9kZSIgc3dpdGNoIGlzIG5lY2Vzc2FyeSwgYW5kIA0KPiBh
ZHZlcnRpc2VtZW50IG9mIGNhcGFiaWxpdGllcyBhcyB3ZWxsLg0KPiANCg0KVGhpcyBlbnVtIHdp
dGggYmxvYiBpZCdzIGlzIGFuIGludGVyZXN0aW5nIHdheSB0byBhZHZlcnRpc2Ugc2VnbWVudGVk
IGx1dCB0YWJsZXMuDQoNCj4gPiArDQo+ID4gK1VBUEkgTmFtZTogUExBTkVfREVHQU1NQV9MVVQN
Cj4gPiArRGVzY3JpcHRpb246IEJsb2IgcHJvcGVydHkgd2hpY2ggYWxsb3dzIGEgdXNlcnNwYWNl
IHRvIHByb3ZpZGUgTFVUIHZhbHVlcw0KPiA+ICsJICAgICB0byBhcHBseSBkZWdhbW1hIGN1cnZl
IHVzaW5nIHRoZSBoL3cgcGxhbmUgZGVnYW1tYSBwcm9jZXNzaW5nDQo+ID4gKwkgICAgIGVuZ2lu
ZSwgdGhlcmVieSBtYWtpbmcgdGhlIGNvbnRlbnQgYXMgbGluZWFyIGZvciBmdXJ0aGVyIGNvbG9y
DQo+ID4gKwkgICAgIHByb2Nlc3NpbmcuIFVzZXJzcGFjZSBnZXRzIHRoZSBzaXplIG9mIExVVCBh
bmQgcHJlY2lzaW9uIGV0Yw0KPiA+ICsJICAgICBmcm9tIFBMQU5FX0RFR0FNQV9NT0RFX1BST1BF
UlRZDQo+IA0KPiBTbyBhbGwgZGVnYW1tYSBtb2RlcyB3aWxsIGFsd2F5cyBiZSBzb21lIGtpbmQg
b2YgTFVUPyBUaGF0IG1heSBiZSBhIA0KPiBiaXQgcmVzdHJpY3RpdmUsIGFzIEkgdW5kZXJzdGFu
ZCBBTUQgbWF5IGhhdmUgcHJlZGVmaW5lZCBvciANCj4gcGFyYW1ldGVyaXNlZCBjdXJ2ZXMgdGhh
dCBhcmUgbm90IExVVHMuIFNvIHRoZXJlIHNob3VsZCBiZSByb29tIGZvciBhbiANCj4gYXJiaXRy
YXJ5IHN0cnVjdHVyZSBvZiBwYXJhbWV0ZXJzLCB3aGljaCBjYW4gYmUgcGFzc2VkIGluIGFzIGEg
YmxvYiANCj4gaWQsIGFuZCB0aGUgY29udGVudHMgZGVmaW5lZCBieSB0aGUgZGVnYW1tYSBtb2Rl
Lg0KDQpGb3IgSW50ZWwncyBoYXJkd2FyZSB0aGVzZSBhcmUgbHV0cyBidXQgeWVhaCBBTUQgaGFy
ZHdhcmUgc2VlbXMgdG8gaGF2ZSB0aGVzZQ0KYXMgZml4ZWQgZnVuY3Rpb24gdW5pdHMuIFdlIHNo
b3VsZCB0aGluayBvZiBhIHdheSB0byBoYXZlIHRoaXMgb3B0aW9uIGFzIHdlbGwgaW4gdGhlDQpV
QVBJLiBXZSBjb3VsZCBleHRlbmQgdGhlIERFR0FNTUFfTU9ERSBwcm9wZXJ0eSB0byBoYXZlIGFs
bCB0aGUgaW5mbywgYW5kDQpERUdBTU1BX0xVVF9QUk9QRVJUWSBtYXkgbm90IGJlIG5lZWRlZCBi
YXNlZCBvbiBzb21lIG9mIHRoZSBhdHRyaWJ1dGVzDQpwYXNzZWQgdmlhIERFR0FNTUFfTU9ERS4g
VGhpcyBjYW4gYmUgb25lIHdheSB0byBoYXZlIHJvb20gZm9yIGJvdGguDQpAaGFycnkud2VudGxh
bmRAYW1kLmNvbSB0aG91Z2h0cyA/DQoNCj4gDQo+IExVVCBzaXplLCBwcmVjaXNpb24sIGFuZCBv
dGhlciBkZXRhaWxzIG9mIGVhY2ggZGVnYW1tYSBtb2RlIHdvdWxkIGJlIA0KPiBnb29kIHRvIGV4
cG9zZSBzb21laG93LiBJIGtpbmQgb2YgZXhwZWN0ZWQgdGhvc2Ugd291bGQgaGF2ZSBiZWVuIA0K
PiBleHBvc2VkIHRocm91Z2ggdGhlIGFib3ZlIG1lbnRpb25lZCAiZW51bSB3aXRoIGJsb2IgaWQg
dmFsdWVzIiB3aGVyZSANCj4gZWFjaCBibG9iIGNvbnRlbnQgc3RydWN0dXJlIGlzIGRlZmluZWQg
YnkgdGhlIHJlc3BlY3RpdmUgZW51bSB2YWx1ZS4NCg0KWWVzLCB5b3UgYXJlIHNwb3Qgb24gaGVy
ZS4NCg0KPiA+ICsNCj4gPiArKiBQbGFuZSBDVE0NCj4gPiArCSogVGhpcyBpcyBhIFByb3BlcnR5
IHRvIHByb2dyYW0gdGhlIGNvbG9yIHRyYW5zZm9ybWF0aW9uIG1hdHJpeC4NCj4gDQo+IE5vIG1v
ZGUgcHJvcGVydHkgaGVyZT8gSXMgdGhlcmUgYW55IGhhcmR3YXJlIHdpdGggc29tZXRoaW5nIGVs
c2UgdGhhbiANCj4gYSBtYXRyaXggYXQgdGhpcyBwb2ludD8NCg0KTm90IHRoYXQgSSBhbSBhd2Fy
ZSBvZi4NCg0KPiBTaG91bGQgd2UgYXNzdW1lIHRoZXJlIHdpbGwgYmUgaGFyZHdhcmUgd2l0aCBz
b21ldGhpbmcgZWxzZSwgYW5kIGhhdmUgDQo+IGEgQ1NDIG1vZGUgcHJvcGVydHkgd2l0aCBvbmx5
IGEgc2luZ2xlIGVudW0gdmFsdWUgZGVmaW5lZCBzbyBmYXI6DQo+ICJtYXRyaXgiPyBPciBkbyB3
ZSBzYXkgUExBTkVfQ1RNIGlzIGEgbWF0cml4IGFuZCBpZiB5b3UgaGF2ZSBzb21ldGhpbmcgDQo+
IGVsc2UgaW4gaGFyZHdhcmUsIHRoZW4gaW52ZW50IGEgbmV3IHByb3BlcnR5IGZvciBpdD8NCg0K
SSB0aGluayB0aGlzIHNob3VsZCBiZSBnb29kIGFzIHdlIGhhdmUgdGhpcyBmb3IgY3J0YyB3aXRo
IG5vIG9uZSBjb21wbGFpbmluZy4NClRoZXJlIG1heSBiZSBoYXJkd2FyZSB3aXRoIGZpeGVkIGZ1
bmN0aW9uIG9wZXJhdGlvbiBmb3IgdGhlIENTQyBidXQgdGhlbg0KaXRzIG5vdCBhIG1hdHJpeCBh
bmQgaXQgd291bGQgYmUgcHJldHR5IGhhcmR3YXJlIGRlcGVuZGVudCwgc28gd2UgY2FuIGxlYXZl
DQp0aGF0IGZyb20gYSBnZW5lcmljIFVBUEkuDQoNCj4gPiArCSogVGhpcyBjYW4gYmUgdXNlZCB0
byBwZXJmb3JtIGEgY29sb3Igc3BhY2UgY29udmVyc2lvbiBsaWtlDQo+ID4gKwkqIEJUMjAyMCB0
byBCVDcwOSBvciBCVDYwMSBldGMuDQo+ID4gKwkqIFRoaXMgYmxvY2sgaXMgZ2VuZXJhbGx5IGtl
cHQgYWZ0ZXIgdGhlIGRlZ2FtbWEgdW5pdCBzbyB0aGF0DQo+IA0KPiBOb3QgImdlbmVyYWxseSIu
IElmIGJsb2NrcyBjYW4gY2hhbmdlIHBsYWNlcywgdGhlbiBpdCBiZWNvbWVzIA0KPiBpbnRyYWN0
YWJsZSBmb3IgZ2VuZXJpYyB1c2Vyc3BhY2UgdG8gcHJvZ3JhbS4NCg0KU3VyZSwgd2lsbCBkcm9w
IHRoaXMgd29yZGluZyBoZXJlLiBCdXQgb25lIG9wZW4gd2lsbCBzdGlsbCByZW1haW4gZm9yIHVz
ZXJzcGFjZSwNCmFzIHRvIGhvdyBpdCBnZXRzIHRoZSBwaXBlbGluZSBkeW5hbWljYWxseSBmb3Ig
YSByZXNwZWN0aXZlIGhhcmR3YXJlLg0KQ3VycmVudGx5IHdlIGhhdmUgYXNzdW1lZCB0aGF0IHRo
aXMgd291bGQgYmUgdGhlIGxvZ2ljYWwgZml4ZWQgb3JkZXIgb2YNCmhhcmR3YXJlIHVuaXRzLg0K
DQo+ID4gKwkqIGxpbmVhciBkYXRhIGNhbiBiZSBmZWQgdG8gaXQgZm9yIGNvbnZlcnNpb24uDQo+
ID4gKw0KPiA+ICtVQVBJIE5hbWU6IFBMQU5FX0NUTQ0KPiA+ICtEZXNjcmlwdGlvbjogQmxvYiBw
cm9wZXJ0eSB3aGljaCBhbGxvd3MgYSB1c2Vyc3BhY2UgdG8gcHJvdmlkZSBDVE0gY29lZmZpY2ll
bnRzDQo+ID4gKwkgICAgIHRvIGRvIGNvbG9yIHNwYWNlIGNvbnZlcnNpb24gb3IgYW55IG90aGVy
IGVuaGFuY2VtZW50IGJ5IGRvaW5nIGENCj4gPiArCSAgICAgbWF0cml4IG11bHRpcGxpY2F0aW9u
IHVzaW5nIHRoZSBoL3cgQ1RNIHByb2Nlc3NpbmcgZW5naW5lDQo+ID4gKw0KPiANCj4gU3BlYWtp
bmcgb2YgY29sb3Igc3BhY2UgY29udmVyc2lvbnMsIHdlIHNob3VsZCBwcm9iYWJseSBkZWZpbmUg
d2hhdCANCj4gaGFwcGVucyB0byBvdXQtb2YtcmFuZ2UgY29sb3IgdmFsdWVzLiBDb252ZXJ0aW5n
IGNvbG9yIGludG8gc21hbGxlciANCj4gZ2FtdXQgb3Igc21hbGxlciBkeW5hbWljIHJhbmdlIGFs
d2F5cyBoYXMgdGhlIHJpc2sgb2YgZW5kaW5nIHVwIHdpdGggDQo+IG91dC1vZi1yYW5nZSB2YWx1
ZXMuIEkgc3VwcG9zZSB0aG9zZSBnZXQgc2ltcGx5IGNsaXBwZWQgaW5kZXBlbmRlbnRseSBvbiBl
YWNoIGNvbG9yIGNoYW5uZWwsIHJpZ2h0Pw0KDQpXZSBoYXZlIHN0YW5kYXJkIG1hdHJpeCB0byBj
b252ZXJ0IGNvbG9yc3BhY2VzLiBUaGlzIGlzIGp1c3QgdGhlIHByb3BlcnR5IG9mIHRoZSBjb2xv
cnNwYWNlLA0KSSBndWVzcyBjbGlwcGluZyB3aWxsIGJlIHRoZSBvbmx5IG9wdGlvbiBoZXJlIChp
cnJlc3BlY3RpdmUgb2YgaGFyZHdhcmUpDQoNCj4gU3VjaCBjbGlwcGluZyBjYW4gY2hhbmdlIGh1
ZSwgc28gdXNlcnNwYWNlIHdvdWxkIGJlIGJldHRlciBhdm9pZCANCj4gdHJpZ2dlcmluZyBjbGlw
cGluZyBhdCBhbGwsIGJ1dCB3ZSBzdGlsbCBuZWVkIHRvIGtub3cgd2hhdCB3b3VsZCBoYXBwZW4g
d2l0aCBvdXQtb2YtcmFuZ2UgdmFsdWVzLg0KPiANCj4gV2Ugd291bGQgYWxzbyBuZWVkIHRvIGtu
b3cgd2hlbiBjbGlwcGluZyB3aWxsIGhhcHBlbi4gSWYgRlAxNg0KPiAoaGFsZi1mbG9hdCkgRkIg
cHJvZHVjZXMgb3V0LW9mLXJhbmdlIHZhbHVlcyBhbmQgZGVnYW1tYSBzdGFnZSBpcyBub3QgDQo+
IHVzZWQsIHdpbGwgdGhlIENUTSBzZWUgb3JpZ2luYWwgb3IgY2xpcHBlZCB2YWx1ZXM/IE9yIGlz
IHRoYXQgDQo+IHNvbWV0aGluZyB3ZSBoYXZlIHRvIGRlZmluZSBhcyBoYXJkd2FyZS1zcGVjaWZp
Yz8NCj4gDQo+IEdlbmVyaWMgdXNlcnNwYWNlIHdpbGwgdHJ5IGhhcmQgdG8gYXZvaWQgdHJpZ2dl
cmluZyBoYXJkd2FyZS1zcGVjaWZpYyANCj4gYmVoYXZpb3VyLCBzbyB5b3UgY2FuIGV4cGVjdCBz
dWNoIGJlaGF2aW91ciB0byBnbyB1bnVzZWQuDQoNCkhlcmUgaGFyZHdhcmUgc2hvdWxkIGp1c3Qg
b3BlcmF0ZSBvbiB0aGUgbWF0cml4IHZhbHVlcyBwcm9ncmFtbWVkLiBUaGlzIHNob3VsZA0KYmUg
dGhlIGxpbWl0YXRpb24gb2YgdGhlIGNvbG9yIHNwYWNlIGNvbnZlcnNpb24gb3BlcmF0aW9uIGFu
ZCBoYXJkd2FyZSBtYXkgbm90IGhhdmUNCmFueSByb2xlIHRvIHBsYXkgYXBhcnQgZnJvbSBqdXN0
IGhvbm9yaW5nIHRoZSBtYXRyaXggdmFsdWVzIGFuZCBwcm9kdWNpbmcgdGhlDQpyZXN1bHRhbnQg
b3V0cHV0Lg0KDQo+ID4gKyogUGxhbmUgR2FtbWEgb3IgUG9zdC1DdXJ2ZQ0KPiA+ICsJKiBUaGlz
IGNhbiBiZSB1c2VkIHRvIHBlcmZvcm0gMiBvcGVyYXRpb25zOg0KPiA+ICsJCSogbm9uLWxpbmVy
YWxpemUgdGhlIGZyYW1lYnVmZmVyIGRhdGEuIENhbiBiZSB1c2VkIGZvcg0KPiA+ICsJCSogbm9u
IGxpbmVhciBibGVuZGluZy4gSXQgY2FuIGJlIGEgZ2FtbWEgY3VydmUgb3IgRU9URg0KPiA+ICsJ
CSogZm9yIEhEUi4NCj4gPiArCQkqIFBlcmZvcm0gVG9uZSBNYXBwaW5nIG9wZXJhdGlvbi4gVGhp
cyBpcyBhbiBvcGVyYXRpb24NCj4gPiArCQkqIGRvbmUgd2hlbiBibGVuZGluZyBpcyBkb25lIHdp
dGggSERSIGFuZCBTRFIgY29udGVudC4NCj4gDQo+IEkgbGlrZSB0aGlzIHdvcmRpbmcgYmV0dGVy
IHRoYW4gdGhlIHdvcmRpbmcgZm9yIHByZS1jdXJ2ZTogImNhbiIsIG5vdCANCj4gIndpbGwiLiBJ
dCBsZWF2ZXMgcm9vbSBmb3IgY3JlYXRpdmUgdXNlIG9mIHRoaXMgcHJvY2Vzc2luZyBibG9jay4N
Cg0KT2sgdGhhbmtzLCB3aWxsIHVwZGF0ZSBwcmUtY3VydmUgc2VjdGlvbiBhcyB3ZWxsLg0KDQo+
IA0KPiBUb25lLW1hcHBpbmcgaXMgbmVlZGVkIGFsd2F5cyB3aGVuIGR5bmFtaWMgcmFuZ2UgZGlm
ZmVycywgc28gYWxzbyBmb3IgDQo+IEhEUiB0byBIRFIsIG5vdCBqdXN0IFNEUiB0by9mcm9tIEhE
Ui4NCg0KWWVzIGNvcnJlY3QsIHdpbGwgdXBkYXRlLg0KDQo+ID4gKw0KPiA+ICtVQVBJIE5hbWU6
IFBMQU5FX0dBTU1BX01PREUNCj4gPiArRGVzY3JpcHRpb246IEVudW0gcHJvcGVydHkgd2l0aCB2
YWx1ZXMgYXMgYmxvYl9pZCdzIHdoaWNoIGFkdmVydGl6ZXMgdGhlDQo+ID4gKwkgICAgcG9zc2li
bGUgZ2FtbWEgbW9kZXMgYW5kIGx1dCByYW5nZXMgc3VwcG9ydGVkIGJ5IHRoZSBwbGF0Zm9ybS4N
Cj4gPiArCSAgICBUaGlzICBhbGxvd3MgdXNlcnNwYWNlIHRvIHF1ZXJ5IGFuZCBnZXQgdGhlIHBs
YW5lIGdhbW1hIGNvbG9yDQo+ID4gKwkgICAgY2FwcyBhbmQgY2hvb3NlIHRoZSBhcHByb3ByaWF0
ZSBnYW1tYSBtb2RlIGFuZCBjcmVhdGUgbHV0IHZhbHVlcw0KPiA+ICsJICAgIGFjY29yZGluZ2x5
Lg0KPiA+ICsNCj4gPiArVUFQSSBOYW1lOiBQTEFORV9HQU1NQV9MVVQNCj4gPiArRGVzY3JpcHRp
b246IEJsb2IgcHJvcGVydHkgd2hpY2ggYWxsb3dzIGEgdXNlcnNwYWNlIHRvIHByb3ZpZGUgTFVU
IHZhbHVlcw0KPiA+ICsJICAgICB0byBhcHBseSBnYW1tYSBjdXJ2ZSBvciBwZXJmb3JtIHRvbmUg
bWFwcGluZyB1c2luZyB0aGUgaC93IHBsYW5lDQo+ID4gKwkgICAgIGdhbW1hIHByb2Nlc3Npbmcg
ZW5naW5lLCB0aGVyZWJ5IG1ha2luZyB0aGUgY29udGVudCBhcyBsaW5lYXINCj4gPiArCSAgICAg
Zm9yIGZ1cnRoZXIgY29sb3IgcHJvY2Vzc2luZy4gVXNlcnNwYWNlIGdldHMgdGhlIHNpemUgb2Yg
TFVUIGFuZA0KPiA+ICsJICAgICBwcmVjaXNpb24gZXRjIGZyb20gUExBTkVfR0FNQV9NT0RFX1BS
T1BFUlRZDQo+IA0KPiBUaGUgc2FtZSBjb21tZW50cyBoZXJlIGFzIHdpdGggREVHQU1NQS4NCg0K
Tm90ZWQuDQoNCj4gPiArDQo+ID4gK1RoaXMgaXMgcGFydCBvZiBvbmUgcGxhbmUgZW5naW5lLiBE
YXRhIGZyb20gbXVsdGlwbGUgcGxhbmVzIHdpbGwgYmUgDQo+ID4gK3RoZW4gZmVkIHRvIHBpcGUg
d2hlcmUgaXQgd2lsbCBnZXQgYmxlbmRlZC4gVGhlcmUgaXMgYSBzaW1pbGFyIHNldCANCj4gPiAr
b2YgcHJvcGVydGllcyBhdmFpbGFibGUgYXQgY3J0YyBsZXZlbCB3aGljaCBhY3RzIG9uIHRoaXMg
YmxlbmRlZCBkYXRhLg0KPiA+ICsNCj4gPiArQmVsb3cgaXMgYSBzYW1wbGUgdXNlY2FzZToNCj4g
PiArDQo+ID4gKyAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQICAg
ICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQICAgICDilIzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCj4g4pSM4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQDQo+ID4gKyAg4pSCRkIxICAgICAgICAg
4pSCICAgICAg4pSCRGVnYW1tYSBCbG9ja+KUgiAgICAg4pSCIENUTSBNYXRyaXggIOKUgiAgICAg
4pSCIEdhbW1hIEJsb2NrIOKUgg0KPiA+ICsgIOKUgiAgICAgICAgICAgIOKUnOKUgOKUgOKUgOKU
gOKUgOKWuuKUgkxpbmVhcml6ZS0gICDilJzilIDilIDilIDilIDilrrilIIgQlQ3MDkgdG8gICAg
4pSc4pSA4pSA4pSA4pSA4pa64pSCIFNEUiB0byBIRFIgIOKUgg0KPiA+ICsgIOKUgkJUNzA5IFNE
UiAgIOKUgiAgICAgIOKUgkJUNzA5IGludmVyc2XilIIgICAgIOKUgiBCVDIwMjAgICAgICDilIIg
ICAgIOKUgiBUb25lDQo+IE1hcHBpbmfilJzilIDilIDilIDilIDilIDilIDilIDilIDilJANCj4g
PiArICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJggICAgICDilJTi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJggICAgIOKUlOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KPiDilJTilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilJggICAgICAgIOKUgg0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAg4pSCDQo+ID4gKyAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSQICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSQICAgICDilIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJAN
Cj4g4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQICAgICAgICDi
lIINCj4gPiArICDilIJGQjIgICAgICAgICDilIIgICAgICDilIJEZWdhbW1hIEJsb2Nr4pSCICAg
ICDilIIgQ1RNIE1hdHJpeCAg4pSCICAgICDilIIgR2FtbWEgQmxvY2sg4pSCICAgICAgICDilIIN
Cj4gPiArICDilIIgICAgICAgICAgICDilJzilIDilIDilIDilIDilIDilrrilIJMaW5lYXJpemUt
ICAg4pSc4pSA4pSA4pSA4pSA4pa64pSCIEJUNjAxIHRvICAgIOKUnOKUgOKUgOKUgOKUgOKWuuKU
giBTRFIgdG8gSERSDQo+IOKUnOKUgOKUgOKUgOKUgOKUgOKUkCAg4pSCDQo+ID4gKyAg4pSCQlQ2
MDEgU0RSICAg4pSCICAgICAg4pSCQlQ2MDEgaW52ZXJzZeKUgiAgICAg4pSCIEJUMjAyMCAgICAg
IOKUgiAgICAg4pSCIFRvbmUgTWFwcGluZ+KUgiAgICAg4pSCICDilIINCj4gPiArICDilJTilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJggICAgICDilJTilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilJggICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KPiDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilJggICAgIOKUgiAg4pSCDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICDilIIgIOKUgg0KPiA+ICsgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUkCAgICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkCAg
ICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQDQo+IOKUjOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkCAgICAg4pSCICDilIINCj4g
PiArICDilIJGQjMgICAgICAgICDilIIgICAgICDilIJEZWdhbW1hIEJsb2Nr4pSCICAgICDilIIg
Q1RNIE1hdHJpeCAg4pSCICAgICDilIIgR2FtbWEgQmxvY2sg4pSCICAgICDilIIgIOKUgg0KPiA+
ICsgIOKUgiAgICAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKWuuKUgkxpbmVhcml6ZS0gICDi
lJzilIDilIDilIDilIDilrrilIIgTk9QIChEYXRhIGlu4pSc4pSA4pSA4pSA4pSA4pa64pSCIE5P
UCAoRGF0YQ0KPiBpbuKUnOKUgOKUgOKUgOKUkCDilIIgIOKUgg0KPiA+ICsgIOKUgkJUMjAyMCBI
RFIgIOKUgiAgICAgIOKUgkhEUiBPRVRGICAgICDilIIgICAgIOKUgiBCVDIwMjApICAgICDilIIg
ICAgIOKUgiBIRFIpICAgICAgICDilIIgICDilIIg4pSCICDilIINCj4gPiArICDilJTilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJggICAgICDilJTilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilJggICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUmA0KPiDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilJggICDilIIg4pSCICDilIINCj4gDQo+IEVPVEYsIG5vdCBPRVRGLCBzaW5jZSBp
dCBpcyBjb252ZXJ0aW5nIEUgdG8gTywgZWxlY3RyaWNhbCB0byBvcHRpY2FsLg0KDQpJIHRoaW5r
IG1lZGlhIGRlY29kZSB3b3VsZCBoYXZlIGdpdmVuIGEgRU9URiBhcHBsaWVkIGRhdGEgdG8gYmUg
ZGlyZWN0bHkgY29uc3VtZWQgYnkgZGlzcGxheQ0Kc2luayAoaW4gY2FzZSB3ZSBoYXZlIGNob3Nl
biBhIGRpc3BsYXkgcGFzcyB0aHJvdWdoKS4gTm90IHN1cmUgaGVyZSB0aG91Z2gsIGl04oCZcyBh
IGJpdCBjb25mdXNpbmcuDQoNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCj4gPiArIOKU
giDilIIgIOKUgg0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KPiA+ICsg4pSCIOKUgiAg
4pSCDQo+ID4gKw0KPiA+ICvilIIg4pSCICDilIINCj4gPg0KPiAr4pSM4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSADQo+IOKUgOKUgA0KPiA+ICvilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilLTilIDilLTilIDilIDilJgNCj4gPiAr4pSCDQo+ID4gK+KUgiDilIzilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJAgICAgICDilIzilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilJAgICAgICDilIzilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilJANCj4gPiAr4pSCIOKUgiBDUlRDIERlZ2FtbWHilIIg
ICAgICDilIIgQ1JUQyBDVE0gICAg4pSCICAgICAg4pSCIENSVEMgR2FtbWEgICAg4pSCDQo+ID4g
K+KUlOKUgOKUpCBVc2UgdG8gbWFrZSDilJzilIDilIDilIDilIDilIDilrrilIIgVXNlIGZvciBh
bnkg4pSc4pSA4pSA4pSA4pSA4pSA4pa64pSCIFVzZSBmb3IgVG9uZSAg4pSc4pSA4pSA4pSA4pSA
4pSA4pa6DQo+IFRPIFBvcnQNCj4gPiArICDilIIgZGF0YSBsaW5lYXIg4pSCICAgICAg4pSCIENv
bG9yIFNwYWNlIOKUgiAgICAgIOKUgiBNYXBwaW5nL2FwcGx5IOKUgg0KPiA+ICsgIOKUgiBhZnRl
ciBibGVuZCDilIIgICAgICDilIIgQ29udmVyc2lvbiAg4pSCICAgICAg4pSCIHRyYW5zZmVyIGZ1
bmMg4pSCDQo+ID4gKyAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSYICAgICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSYICAg
ICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSYDQo+
IA0KPiBCbGVuZGluZyBkb2VzIG5vdCBjaGFuZ2Ugd2hldGhlciB0aGUgZGF0YSBpcyBsaW5lYXIg
b3Igbm90LiBJIHN1cHBvc2UgDQo+IGluIHRoaXMgZXhhbXBsZSwgQ1JUQyBkZWdhbW1hIGFuZCBD
VE0gd291bGQgYmUgcGFzc3Rocm91Z2gsIGFuZCBnYW1tYSANCj4gd291bGQgYmUgdGhlIGludmVy
c2UgZGlzcGxheSBFT1RGIGZvciBlbmNvZGluZyBjb2xvciB2YWx1ZXMgaW50byB3aGF0IHRoZSBt
b25pdG9yIGV4cGVjdHMuDQoNClllYWgsIHdpbGwgdXBkYXRlIHRoaXMgdG8gbWFrZSBpdCBjbGVh
ci4NCg0KPiA+ICsNCj4gPiArDQo+ID4gK1RoaXMgcGF0Y2ggc2VyaWVzIGFkZHMgcHJvcGVydGll
cyBmb3IgcGxhbmUgY29sb3IgZmVhdHVyZXMuIEl0IGFkZHMgDQo+ID4gK3Byb3BlcnRpZXMgZm9y
IGRlZ2FtbWEgdXNlZCB0byBsaW5lYXJpemUgZGF0YSBhbmQgQ1NDIHVzZWQgZm9yIA0KPiA+ICtn
YW11dCBjb252ZXJzaW9uLiBJdCBhbHNvIGluY2x1ZGVzIEdhbW1hIHN1cHBvcnQgdXNlZCB0byBh
Z2FpbiANCj4gPiArbm9uLWxpbmVhcml6ZSBkYXRhIGFzIHBlciBwYW5lbCBzdXBwb3J0ZWQgY29s
b3Igc3BhY2UuIFRoZXNlIGNhbiBiZSANCj4gPiArdXRpbGl6ZSBieSB1c2VyIHNwYWNlIHRvIGNv
bnZlcnQgcGxhbmVzIGZyb20gb25lIGZvcm1hdCB0byBhbm90aGVyLCANCj4gPiArb25lIGNvbG9y
IHNwYWNlIHRvIGFub3RoZXIgZXRjLg0KPiANCj4gRldJVywgdGhpcyBpcyBleGFjdGx5IHRoZSBz
dHJ1Y3R1cmUgSSBoYXZlIGFzc3VtZWQgaW4gdGhlIFdlc3RvbiBDTSZIRFIgd29yay4NCg0KVGhp
cyBpcyBncmVhdCB0byBoZWFyIHRoYXQgd2UgYXJlIGFsaWduZWQgd3J0IGhvdyB0aGUgcGlwZWxp
bmUgc2hvdWxkIHdvcmsuDQoNClRoYW5rcyBQZWtrYSBmb3IgdGFraW5nIHRpbWUgb3V0IGFuZCBw
cm92aWRpbmcgdGhlIGZlZWRiYWNrLg0KDQpAaGFycnkud2VudGxhbmRAYW1kLmNvbSBXZSBjYW4g
d29yayB0b2dldGhlciBhbmQgYnVpbGQgb3VyIGRlc2lnbiB0byBhY2NvbW1vZGF0ZQ0KYm90aCBJ
bnRlbCBhbmQgQU1EJ3MgaGFyZHdhcmUgbmVlZHMuIFRoaXMgd2lsbCBhbHNvIG1ha2UgdGhpbmdz
IGdlbmVyaWMgZW5vdWdoIGZvciBhbnkNCm90aGVyIGhhcmR3YXJlIHZlbmRvciBhcyB3ZWxsLg0K
DQpUaGFua3MgJiBSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0KPiA+ICsNCj4gPiArVXNlcnNwYWNl
IGNhbiB0YWtlIHNtYXJ0IGJsZW5kaW5nIGRlY2lzaW9ucyBhbmQgdXRpbGl6ZSB0aGVzZSANCj4g
PiAraGFyZHdhcmUgc3VwcG9ydGVkIHBsYW5lIGNvbG9yIGZlYXR1cmVzIHRvIGdldCBhY2N1cmF0
ZSBjb2xvciANCj4gPiArcHJvZmlsZS4gVGhlIHNhbWUgY2FuIGhlbHAgaW4gY29uc2lzdGVudCBj
b2xvciBxdWFsaXR5IGZyb20gc291cmNlIA0KPiA+ICt0byBwYW5lbCB0YWtpbmcgYWR2YW50YWdl
IG9mIGFkdmFuY2VkIGNvbG9yIGZlYXR1cmVzIGluIGhhcmR3YXJlLg0KPiA+ICsNCj4gPiArVGhl
c2UgcGF0Y2hlcyBhZGQgdGhlIHByb3BlcnR5IGludGVyZmFjZXMgYW5kIGVuYWJsZSBoZWxwZXIg
ZnVuY3Rpb25zLg0KPiA+ICtUaGlzIHNlcmllcyBhZGRzIEludGVsJ3MgWEVfTFBEIGh3IHNwZWNp
ZmljIHBsYW5lIGdhbW1hIGZlYXR1cmUuIFdlIA0KPiA+ICtjYW4gYnVpbGQgdXAgYW5kIGFkZCBv
dGhlciBwbGF0Zm9ybS9oYXJkd2FyZSBzcGVjaWZpYyANCj4gPiAraW1wbGVtZW50YXRpb24gb24g
dG9wIG9mIHRoaXMgc2VyaWVzLg0KPiA+ICsNCj4gPiArQ3JlZGl0czogU3BlY2lhbCBtZW50aW9u
IGFuZCBjcmVkaXRzIHRvIFZpbGxlIFN5cmphbGEgZm9yIGNvbWluZyB1cCANCj4gPiArd2l0aCBh
IGRlc2lnbiBmb3IgdGhpcyBmZWF0dXJlIGFuZCBpbnB1dHMuIFRoaXMgc2VyaWVzIGlzIGJhc2Vk
IG9uIA0KPiA+ICtoaXMgb3JpZ2luYWwgZGVzaWduIGFuZCBpZGVhLg0KPiANCj4gDQo+IFRoYW5r
cywNCj4gcHENCg==
