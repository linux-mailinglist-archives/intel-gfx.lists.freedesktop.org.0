Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B918F2DFCB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 16:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E8F66E339;
	Wed, 29 May 2019 14:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30CCA6E339
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 14:32:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 07:32:02 -0700
X-ExtLoop1: 1
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga006.fm.intel.com with ESMTP; 29 May 2019 07:32:01 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.166]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.129]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 15:32:01 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix off-by-one in looking up icl
 sseu slice
Thread-Index: AQHVFZDyp9ZTknhTp0K/aYJK1Mg2rqaBtJiAgABjowCAABMhcA==
Date: Wed, 29 May 2019 14:32:00 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D076709B92@IRSMSX106.ger.corp.intel.com>
References: <20190528200655.11605-1-chris@chris-wilson.co.uk>
 <87d0k1oed8.fsf@intel.com> <87zhn549wn.fsf@intel.com>
In-Reply-To: <87zhn549wn.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTZiMGI1NGItOTVlNi00ODY3LWE0MDctNTZhODY3ZGQyNzBkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVWdLaExrXC9LeTJ6TEZMd0tsR0NCNThlVDVrblh0VVZFOWMrUGs0YkhXVFRjek9QMkZxMk50VDBpMVNIdGs0T3oifQ==
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix off-by-one in looking up icl
 sseu slice
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

SEksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCBb
bWFpbHRvOmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxm
IE9mIEphbmkNCj4gTmlrdWxhDQo+IFNlbnQ6IGtlc2tpdmlpa2tvIDI5LiB0b3Vrb2t1dXRhIDIw
MTkgMTcuMjMNCj4gVG86IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsg
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdm
eF0gW1BBVENIXSBkcm0vaTkxNTogRml4IG9mZi1ieS1vbmUgaW4gbG9va2luZyB1cCBpY2wgc3Nl
dSBzbGljZQ0KPiANCj4gT24gV2VkLCAyOSBNYXkgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+ID4gT24gVHVlLCAyOCBNYXkgMjAxOSwgQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOg0KPiA+PiBXZSB3YW50
IHRoZSBpbmRleCBjb3JyZXNwb25kaW5nIHRvIHRoZSBzZXQgYml0IGJ1dCBmbHMoKSByZXR1cm5z
IHRoZQ0KPiA+PiAxLWluZGV4IHZhbHVlLg0KPiA+Pg0KPiA+PiBPdGhlcndpc2UsIHdlIHRyaWdn
ZXIgdGhlIHNhbml0eWNoZWNrDQo+ID4+IAlpbnRlbF9zc2V1X2dldF9zdWJzbGljZXM6NDYgR0VN
X0JVR19PTihzbGljZSA+PSBzc2V1LT5tYXhfc2xpY2VzKQ0KPiA+PiB3aGVuIHdlIGxvb2sgdXAg
dGhlIGludmFsaWQgc2xpY2UuDQo+ID4+DQo+ID4+IFRoZSBvbmx5IHJlbWFpbmluZyBxdWVzdGlv
biB0aGVuIGlzIGp1c3QgaG93IHJlbGlhYmxlIHRoZSByZXN0IG9mDQo+ID4+IGludGVsX2NhbGN1
bGF0ZV9tY3Jfc19zc19zZWxlY3QoKSBpcyAtLSBob3cgbWFueSBtb3JlIG9mIHRob3NlIGZscygp
DQo+ID4+IGFyZSBhbHNvIG9mZi1ieS1vbmUuDQo+ID4+DQo+ID4+IEZpeGVzOiAxYWMxNTllMjNj
MmMgKCJkcm0vaTkxNTogRXhwYW5kIHN1YnNsaWNlIG1hc2siKQ0KPiA+DQo+ID4gSSBzZW50IGEg
cmV2ZXJ0IG9mIHRoaXMgY29tbWl0IFsxXSBmb3IgcmVhc29ucyBleHBsYWluZWQgaW4gdGhlIGNv
bW1pdA0KPiA+IG1lc3NhZ2UuDQo+IA0KPiBJJ3ZlIGdvbmUgYWhlYWQgYW5kIHB1c2hlZCB0aGUg
cmV2ZXJ0Lg0KPiANCj4gV2UgY2FuIG5vdyBjYWxtbHkgZ2V0IGJhY2sgdG8gdGhlIGRyYXdpbmcg
Ym9hcmQsIGFuZCBnZXQgdGhpcyBzb3J0ZWQgb3V0Lg0KQWNrIDspDQoNCj4gDQo+IEJSLA0KPiBK
YW5pLg0KPiANCj4gDQo+ID4NCj4gPiBCUiwNCj4gPiBKYW5pLg0KPiA+DQo+ID4NCj4gPiBbMV0N
Cj4gPiBodHRwOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDUy
OTA4MjE1MC4zMTUyNi0xLWphDQo+ID4gbmkubmlrdWxhQGludGVsLmNvbQ0KPiA+DQo+ID4NCj4g
Pj4gRml4ZXM6IDFlNDBkNGFlYTU3YiAoImRybS9pOTE1L2NubDogSW1wbGVtZW50DQo+ID4+IFdh
UHJvZ3JhbU1nc3JGb3JDb3JyZWN0U2xpY2VTcGVjaWZpY01taW9SZWFkcyIpDQo+ID4+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KPiA+PiBD
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4NCj4gPj4gQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVs
LmNvbT4NCj4gPj4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+
DQo+ID4+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiA+
PiAtLS0NCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
fCAyICstDQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMNCj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jDQo+ID4+IGluZGV4IGZiYzg1MzA4NTgwOS4uNDg1Y2QxYzhlY2M0IDEwMDY0NA0K
PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+
ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4g
Pj4gQEAgLTc4MSw3ICs3ODEsNyBAQCB3YV9pbml0X21jcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgc3RydWN0DQo+IGk5MTVfd2FfbGlzdCAqd2FsKQ0KPiA+PiAgCQkgKiByZWFkIEZV
U0UzIGZvciBlbmFibGVkIEwzIEJhbmsgSURzLCBpZiBMMyBCYW5rIG1hdGNoZXMNCj4gPj4gIAkJ
ICogZW5hYmxlZCBzdWJzbGljZSwgbm8gbmVlZCB0byByZWRpcmVjdCBNQ1IgcGFja2V0DQo+ID4+
ICAJCSAqLw0KPiA+PiAtCQl1MzIgc2xpY2UgPSBmbHMoc3NldS0+c2xpY2VfbWFzayk7DQo+ID4+
ICsJCXUzMiBzbGljZSA9IF9fZmxzKHNzZXUtPnNsaWNlX21hc2spOw0KPiA+PiAgCQl1MzIgZnVz
ZTMgPQ0KPiA+PiAgCQkJaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwNCj4gR0VOMTBf
TUlSUk9SX0ZVU0UzKTsNCj4gPj4gIAkJdTMyIHNzX21hc2sgPSBpbnRlbF9zc2V1X2dldF9zdWJz
bGljZXMoc3NldSwgc2xpY2UpOw0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4g
U291cmNlIEdyYXBoaWNzIENlbnRlcg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
