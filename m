Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD78A4B148
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 07:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348616E28E;
	Wed, 19 Jun 2019 05:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0266E28C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 05:21:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 22:21:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,391,1557212400"; d="scan'208";a="160263181"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2019 22:21:33 -0700
Received: from bgsmsx154.gar.corp.intel.com (10.224.48.47) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Jun 2019 22:21:32 -0700
Received: from bgsmsx110.gar.corp.intel.com ([169.254.11.133]) by
 BGSMSX154.gar.corp.intel.com ([169.254.7.244]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 10:51:29 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "'intel-gfx@lists.freedesktop.org'"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
Thread-Index: AQHVJhBzgW2UfYT690aPrEfH92MBp6aib+YggAABH6A=
Date: Wed, 19 Jun 2019 05:21:28 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B7FF42CF4@BGSMSX110.gar.corp.intel.com>
References: <20190618200000.15847-1-jose.souza@intel.com>
 <20190618200000.15847-2-jose.souza@intel.com>
 <57510F3E2013164E925CD03ED7512A3B7FF42CDC@BGSMSX110.gar.corp.intel.com>
In-Reply-To: <57510F3E2013164E925CD03ED7512A3B7FF42CDC@BGSMSX110.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODA0YjI0MWMtNTIyYS00ZDcwLTg1Y2MtNjM2NmUyYjY3ZWQ2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJ2MDdhM2pXcGswa2Y2UnNzZmcyWk9QTHE3ZW1oNFZubXV4bDljUjdaTFZnV2JjR0NjRFJlN252N1crU25EZkRFIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3Vsa2FybmksIFZhbmRp
dGENCj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDE5LCAyMDE5IDEwOjQ5IEFNDQo+IFRvOiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQQVRDSCAyLzJdIGRybS9pOTE1
L2VobC9kc2k6IEVuYWJsZSBBRkUgb3ZlciBQUEkgc3RyYXANCj4gDQo+ID4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+ID4gSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YQ0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxOSwgMjAxOSAxOjMwIEFNDQo+ID4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDIv
Ml0gZHJtL2k5MTUvZWhsL2RzaTogRW5hYmxlIEFGRSBvdmVyIFBQSQ0KPiA+IHN0cmFwDQo+ID4N
Cj4gPiBUaGUgb3RoZXIgYWRkaXRpb25hbCBzdGVwIGluIHRoZSBEU0kgc2VxdXFlbmNlIGZvciBF
SEwuDQpBIGNvcnJlY3Rpb24gaW4gInNlcXVlbmNlIiB3aWxsIGJlIG5lZWRlZCB0aG91Z2guDQoN
ClRoYW5rcywNClZhbmRpdGENCj4gPg0KPiA+IEJTcGVjOiAyMDU5Nw0KPiA+IENjOiBVbWEgU2hh
bmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiBMb29rcyBnb29kIHRvIG1lLg0K
PiBSZXZpZXdlZC1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5j
b20+DQo+IA0KPiBUaGFua3MuDQo+IFZhbmRpdGENCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMgfCA4ICsrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgIHwgNCArKysrDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5z
ZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaWNsX2RzaS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9k
c2kuYw0KPiA+IGluZGV4IGVlODU0MjhiMzA5Zi4uM2E2MDFjNzM5ZmM2IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gPiBAQCAtNTQyLDYgKzU0Miwx
NCBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1pbmdzKHN0cnVjdA0KPiA+
IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ID4gIAkJCUk5MTVfV1JJVEUoRFNJX1RBX1RJTUlO
R19QQVJBTShwb3J0KSwgdG1wKTsNCj4gPiAgCQl9DQo+ID4gIAl9DQo+ID4gKw0KPiA+ICsJaWYg
KElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgew0KPiA+ICsJCWZvcl9lYWNoX2RzaV9wb3J0KHBv
cnQsIGludGVsX2RzaS0+cG9ydHMpIHsNCj4gPiArCQkJdG1wID0gSTkxNV9SRUFEKElDTF9EUEhZ
X0NIS04ocG9ydCkpOw0KPiA+ICsJCQl0bXAgfD0gSUNMX0RQSFlfQ0hLTl9BRkVfT1ZFUl9QUElf
U1RSQVA7DQo+ID4gKwkJCUk5MTVfV1JJVEUoSUNMX0RQSFlfQ0hLTihwb3J0KSwgdG1wKTsNCj4g
PiArCQl9DQo+ID4gKwl9DQo+ID4gIH0NCj4gPg0KPiA+ICBzdGF0aWMgdm9pZCBnZW4xMV9kc2lf
Z2F0ZV9jbG9ja3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpIGRpZmYNCj4gPiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggaW5kZXgNCj4gPiAxZjJjM2ViZGY4N2IuLmRjN2IzNGNmOGI0MiAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IEBAIC0xOTkzLDYgKzE5OTMs
MTAgQEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgew0KPiA+ICAjZGVmaW5lICAgTl9TQ0FMQVIo
eCkJCQkoKHgpIDw8IDI0KQ0KPiA+ICAjZGVmaW5lICAgTl9TQ0FMQVJfTUFTSwkJCSgweDdGIDw8
IDI0KQ0KPiA+DQo+ID4gKyNkZWZpbmUgX0lDTF9EUEhZX0NIS05fUkVHCQkJMHgxOTQNCj4gPiAr
I2RlZmluZSBJQ0xfRFBIWV9DSEtOKHBvcnQpDQo+ID4gCV9NTUlPKF9JQ0xfQ09NQk9QSFkocG9y
dCkgKyBfSUNMX0RQSFlfQ0hLTl9SRUcpDQo+ID4gKyNkZWZpbmUgICBJQ0xfRFBIWV9DSEtOX0FG
RV9PVkVSX1BQSV9TVFJBUAkoMSA8PCA3KQ0KPiA+ICsNCj4gPiAgI2RlZmluZSBNR19QSFlfUE9S
VF9MTihsbiwgcG9ydCwgbG4wcDEsIGxuMHAyLCBsbjFwMSkgXA0KPiA+ICAJX01NSU8oX1BPUlQo
KHBvcnQpIC0gUE9SVF9DLCBsbjBwMSwgbG4wcDIpICsgKGxuKSAqICgobG4xcDEpIC0NCj4gPiAo
bG4wcDEpKSkNCj4gPg0KPiA+IC0tDQo+ID4gMi4yMi4wDQo+ID4NCj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
