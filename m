Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2545B13676
	for <lists+intel-gfx@lfdr.de>; Sat,  4 May 2019 02:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6458B89471;
	Sat,  4 May 2019 00:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5643589471
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2019 00:09:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 17:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="170426007"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga001.fm.intel.com with ESMTP; 03 May 2019 17:09:21 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 17:09:20 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.238]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.24]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 17:09:20 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/4] drm/i915/icl: Assign Master slave
 crtc links for Transcoder Port Sync
Thread-Index: AQHU+evYeFISssk6XECJf9x3LD4If6ZaJldQ
Date: Sat, 4 May 2019 00:09:20 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B07348062085@ORSMSX108.amr.corp.intel.com>
References: <20190423154901.15222-1-manasi.d.navare@intel.com>
 <20190423154901.15222-2-manasi.d.navare@intel.com>
In-Reply-To: <20190423154901.15222-2-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODQwZjM3NzktMDA1Mi00NGIyLWFmNWYtZmM1ZDJmZDNmYWUxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibjJscVlucFwvUjQ5ZVJcL2s3RG9MV2pVcHBCaG5UVFZ1OGpnclBUbkljaWFWbkM5dG5YMjViSndCUFhIcnZiRkpsIn0=
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/icl: Assign Master slave
 crtc links for Transcoder Port Sync
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mDQo+
TWFuYXNpIE5hdmFyZQ0KPlNlbnQ6IFR1ZXNkYXksIEFwcmlsIDIzLCAyMDE5IDg6NDkgQU0NCj5U
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPg0KPlN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2MiAx
LzRdIGRybS9pOTE1L2ljbDogQXNzaWduIE1hc3RlciBzbGF2ZSBjcnRjIGxpbmtzIGZvcg0KPlRy
YW5zY29kZXIgUG9ydCBTeW5jDQo+DQo+SW4gY2FzZSBvZiB0aWxlZCBkaXNwbGF5cyB3aGVuIHRo
ZSB0d28gdGlsZXMgYXJlIHNlbnQgYWNyb3NzIHR3byBDUlRDcyBvdmVyIHR3bw0KPnNlcGFyYXRl
IERQIFNTVCBjb25uZWN0b3JzLCB3ZSBuZWVkIGEgbWVjaGFuaXNtIHRvIHN5bmNocm9uaXplIHRo
ZSB0d28gQ1JUQ3MNCj5hbmQgdGhlaXIgY29ycmVzcG9uZGluZyB0cmFuc2NvZGVycy4NCj5TbyB1
c2UgdGhlIG1hc3Rlci1zbGF2ZSBtb2RlIHdoZXJlIHRoZXJlIGlzIG9uZSBtYXN0ZXIgY29ycmVz
cG9uZGluZyB0byBsYXN0DQo+aG9yaXpvbnRhbCBhbmQgdmVydGljYWwgdGlsZSB0aGF0IG5lZWRz
IHRvIGJlIGdlbmxvY2tlZCB3aXRoIGFsbCBvdGhlciBzbGF2ZSB0aWxlcy4NCj5UaGlzIHBhdGNo
IGlkZW50aWZpZXMgc2F2ZXMgdGhlIG1hc3RlciBDUlRDIHBvaW50ZXIgaW4gYWxsIHRoZSBzbGF2
ZSBDUlRDIHN0YXRlcy4NCj5UaGlzIHBvaW50ZXIgaXMgbmVlZGVkIHRvIHNlbGVjdCB0aGUgbWFz
dGVyIENSVEMvdHJhbnNjb2RlciB3aGlsZSBjb25maWd1cmluZw0KPnRyYW5zY29kZXIgcG9ydCBz
eW5jIGZvciB0aGUgY29ycmVzcG9uZGluZyBzbGF2ZXMuDQo+DQo+djI6DQo+KiBNb3ZlIHRoaXMg
dG8gaW50ZWxfbW9kZV9zZXRfcGlwZV9jb25maWcoSmFuaSBOLCBWaWxsZSkNCj4qIFVzZSBzbGF2
ZV9iaXRtYXNrIHRvIHNhdmUgYXNzb2NpYXRlZCBzbGF2ZXMgaW4gbWFzdGVyIGNydGMgc3RhdGUg
KFZpbGxlKQ0KPg0KPkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPg0K
PkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPkNj
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0K
PkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPlNpZ25lZC1vZmYt
Ynk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+LS0tDQo+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8IDg5ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAgIHwgIDYg
KysNCj4gMiBmaWxlcyBjaGFuZ2VkLCA5NSBpbnNlcnRpb25zKCspDQo+DQo+ZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYw0KPmIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGlzcGxheS5jDQo+aW5kZXggYjI3NjM0NTc3OWU2Li45MmRlYTIyMzE0OTkg
MTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jDQo+Kysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jDQo+QEAgLTExMzE2LDYgKzEx
MzE2LDg2IEBAIHN0YXRpYyBpbnQgaWNsX2NoZWNrX252MTJfcGxhbmVzKHN0cnVjdA0KPmludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IAlyZXR1cm4gMDsNCj4gfQ0KPg0KPitzdGF0aWMg
aW50IGljbF9hZGRfZ2VubG9ja19jcnRjcyhzdHJ1Y3QgZHJtX2NydGMgKmNydGMsDQo+KwkJCQkg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+KwkJCQkgc3RydWN0IGRybV9h
dG9taWNfc3RhdGUgKnN0YXRlKQ0KPit7DQo+KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPmJhc2UuY3J0Yy0+ZGV2KTsNCj4rCXN0cnVjdCBk
cm1fY29ubmVjdG9yICptYXN0ZXJfY29ubmVjdG9yLCAqY29ubmVjdG9yOw0KPisJc3RydWN0IGRy
bV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5lY3Rvcl9zdGF0ZTsNCj4rCXN0cnVjdCBkcm1fY29ubmVj
dG9yX2xpc3RfaXRlciBjb25uX2l0ZXI7DQo+KwlzdHJ1Y3QgZHJtX2NydGMgKm1hc3Rlcl9jcnRj
ID0gTlVMTDsNCj4rCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqbWFzdGVyX2NydGNfc3RhdGU7DQo+
KwlpbnQgaSwgdGlsZV9ncm91cF9pZDsNCj4rDQo+KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8
IDExKQ0KPisJCXJldHVybiAwOw0KPisNCj4rCS8qDQo+KwkgKiBJbiBjYXNlIG9mIHRpbGVkIGRp
c3BsYXlzIHRoZXJlIGNvdWxkIGJlIG9uZSBvciBtb3JlIHNsYXZlcyBidXQgdGhlcmUgaXMNCj4r
CSAqIG9ubHkgb25lIG1hc3Rlci4gTGV0cyBtYWtlIHRoZSBDUlRDIHVzZWQgYnkgdGhlIGNvbm5l
Y3Rvcg0KPmNvcnJlc3BvbmRpbmcNCj4rCSAqIHRvIHRoZSBsYXN0IGhvcml6b25hbCBhbmQgbGFz
dCB2ZXJ0aWNhbCB0aWxlIGEgbWFzdGVyL2dlbmxvY2sgQ1JUQy4NCj4rCSAqIEFsbCB0aGUgb3Ro
ZXIgQ1JUQ3MgY29ycmVzcG9uZGluZyB0byBvdGhlciB0aWxlcyBvZiB0aGUgc2FtZSBUaWxlIGdy
b3VwDQo+KwkgKiBhcmUgdGhlIHNsYXZlIENSVENzIGFuZCBob2xkIGEgcG9pbnRlciB0byB0aGVp
ciBnZW5sb2NrIENSVEMuDQo+KwkgKi8NCj4rCWZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3Rh
dGUoc3RhdGUsIGNvbm5lY3RvciwgY29ubmVjdG9yX3N0YXRlLCBpKQ0KPnsNCj4rCQlpZiAoY29u
bmVjdG9yX3N0YXRlLT5jcnRjICE9IGNydGMpDQo+KwkJCWNvbnRpbnVlOw0KPisJCWlmICghY29u
bmVjdG9yLT5oYXNfdGlsZSkNCj4rCQkJY29udGludWU7DQo+KwkJaWYgKGNvbm5lY3Rvci0+dGls
ZV9oX2xvYyA9PSBjb25uZWN0b3ItPm51bV9oX3RpbGUgLSAxICYmDQo+KwkJICAgIGNvbm5lY3Rv
ci0+dGlsZV92X2xvYyA9PSBjb25uZWN0b3ItPm51bV92X3RpbGUgLSAxKQ0KPisJCQljb250aW51
ZTsNCj4rCQljcnRjX3N0YXRlLT5tYXN0ZXJfY3J0YyA9IE5VTEw7DQo+KwkJdGlsZV9ncm91cF9p
ZCA9IGNvbm5lY3Rvci0+dGlsZV9ncm91cC0+aWQ7DQo+KwkJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0
ZXJfYmVnaW4oJmRldl9wcml2LT5kcm0sICZjb25uX2l0ZXIpOw0KPisJCWRybV9mb3JfZWFjaF9j
b25uZWN0b3JfaXRlcihtYXN0ZXJfY29ubmVjdG9yLCAmY29ubl9pdGVyKSB7DQo+KwkJCXN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICptYXN0ZXJfY29ubl9zdGF0ZSA9DQo+TlVMTDsNCj4rDQo+
KwkJCWlmICghbWFzdGVyX2Nvbm5lY3Rvci0+aGFzX3RpbGUpDQo+KwkJCQljb250aW51ZTsNCj4r
CQkJaWYgKG1hc3Rlcl9jb25uZWN0b3ItPnRpbGVfaF9sb2MgIT0gbWFzdGVyX2Nvbm5lY3Rvci0N
Cj4+bnVtX2hfdGlsZSAtIDEgfHwNCj4rCQkJICAgIG1hc3Rlcl9jb25uZWN0b3ItPnRpbGVfdl9s
b2MgIT0gbWFzdGVyX2Nvbm5lY3Rvci0NCj4+bnVtX3ZfdGlsZSAtIDEpDQoNCldpbGwgdGhpcyBl
dmVyIGJlIHRydWU/IFdpdGggdGhlIGNoZWNrcyBhYm92ZSAoZm9yIHNsYXZlcykgd2UgaGF2ZSBp
dGVyYXRlZCBvdmVyIGFsbCBzbGF2ZXMgYW5kIHBvdGVudGlhbGx5IGxlZnQgd2l0aCBvbmx5IG1h
c3Rlci9sYXN0IHRpbGUgcmlnaHQ/DQoNCkFudXNoYSANCg0KPisJCQkJY29udGludWU7DQo+KwkJ
CWlmIChtYXN0ZXJfY29ubmVjdG9yLT50aWxlX2dyb3VwLT5pZCAhPSB0aWxlX2dyb3VwX2lkKQ0K
PisJCQkJY29udGludWU7DQo+Kw0KPisJCQltYXN0ZXJfY29ubl9zdGF0ZSA9DQo+ZHJtX2F0b21p
Y19nZXRfY29ubmVjdG9yX3N0YXRlKHN0YXRlLA0KPisNCj5tYXN0ZXJfY29ubmVjdG9yKTsNCj4r
CQkJaWYgKElTX0VSUihtYXN0ZXJfY29ubl9zdGF0ZSkpIHsNCj4rCQkJCWRybV9jb25uZWN0b3Jf
bGlzdF9pdGVyX2VuZCgmY29ubl9pdGVyKTsNCj4rCQkJCXJldHVybiBQVFJfRVJSKG1hc3Rlcl9j
b25uX3N0YXRlKTsNCj4rCQkJfQ0KPisJCQlpZiAobWFzdGVyX2Nvbm5fc3RhdGUtPmNydGMpIHsN
Cj4rCQkJCW1hc3Rlcl9jcnRjID0gbWFzdGVyX2Nvbm5fc3RhdGUtPmNydGM7DQo+KwkJCQlicmVh
azsNCj4rCQkJfQ0KPisJCX0NCj4rCQlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5f
aXRlcik7DQo+Kw0KPisJCWlmICghbWFzdGVyX2NydGMpIHsNCj4rCQkJRFJNX0RFQlVHX0tNUygi
Q291bGQgbm90IGFkZCBNYXN0ZXIgQ1JUQyBmb3INCj5TbGF2ZSBDUlRDICVkXG4iLA0KPisJCQkJ
ICAgICAgY29ubmVjdG9yX3N0YXRlLT5jcnRjLT5iYXNlLmlkKTsNCj4rCQkJcmV0dXJuIC1FSU5W
QUw7DQo+KwkJfQ0KPisNCj4rCQltYXN0ZXJfY3J0Y19zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X2Ny
dGNfc3RhdGUoc3RhdGUsDQo+KwkJCQkJCQkgICAgICBtYXN0ZXJfY3J0Yyk7DQo+KwkJaWYgKElT
X0VSUihtYXN0ZXJfY3J0Y19zdGF0ZSkpDQo+KwkJCXJldHVybiBQVFJfRVJSKG1hc3Rlcl9jcnRj
X3N0YXRlKTsNCj4rDQo+KwkJY3J0Y19zdGF0ZS0+bWFzdGVyX2NydGMgPSB0b19pbnRlbF9jcnRj
KG1hc3Rlcl9jcnRjKTsNCj4rCQl0b19pbnRlbF9jcnRjX3N0YXRlKG1hc3Rlcl9jcnRjX3N0YXRl
KS0+dHJhbnNfcG9ydF9zeW5jX3NsYXZlcw0KPnw9DQo+KwkJCUJJVCh0b19pbnRlbF9jcnRjKGNy
dGMpLT5waXBlKTsNCj4rCQlEUk1fREVCVUdfS01TKCJNYXN0ZXIgQ1JUQyA9ICVkIGFkZGVkIGZv
ciBTbGF2ZSBDUlRDID0NCj4lZFxuLCBzbGF2ZSBiaXRtYXN0ID0gJWQiLA0KPisJCQkgICAgICBt
YXN0ZXJfY3J0Yy0+YmFzZS5pZCwNCj4rCQkJICAgICAgY3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5i
YXNlLmlkLA0KPisJCQkgICAgICB0b19pbnRlbF9jcnRjX3N0YXRlKG1hc3Rlcl9jcnRjX3N0YXRl
KS0NCj4+dHJhbnNfcG9ydF9zeW5jX3NsYXZlcyk7DQo+Kwl9DQo+Kw0KPisJcmV0dXJuIDA7DQo+
K30NCj4rDQo+IHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soc3RydWN0IGRybV9j
cnRjICpjcnRjLA0KPiAJCQkJICAgc3RydWN0IGRybV9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAg
eyBAQCAtDQo+MTE3OTUsNiArMTE4NzUsOSBAQCBjbGVhcl9pbnRlbF9jcnRjX3N0YXRlKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAJaWYgKElTX0c0WChkZXZfcHJpdikg
fHwNCj4gCSAgICBJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9w
cml2KSkNCj4gCQlzYXZlZF9zdGF0ZS0+d20gPSBjcnRjX3N0YXRlLT53bTsNCj4rCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPisJCXNhdmVkX3N0YXRlLT50cmFuc19wb3J0X3N5bmNf
c2xhdmVzID0NCj4rCQkJY3J0Y19zdGF0ZS0+dHJhbnNfcG9ydF9zeW5jX3NsYXZlczsNCj4NCj4g
CS8qIEtlZXAgYmFzZSBkcm1fY3J0Y19zdGF0ZSBpbnRhY3QsIG9ubHkgY2xlYXIgb3VyIGV4dGVu
ZGVkIHN0cnVjdCAqLw0KPiAJQlVJTERfQlVHX09OKG9mZnNldG9mKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlLCBiYXNlKSk7IEBAIC0xMTg4OCw2DQo+KzExOTcxLDEyIEBAIGludGVsX21vZGVzZXRf
cGlwZV9jb25maWcoc3RydWN0IGRybV9jcnRjICpjcnRjLA0KPiAJZHJtX21vZGVfc2V0X2NydGNp
bmZvKCZwaXBlX2NvbmZpZy0+YmFzZS5hZGp1c3RlZF9tb2RlLA0KPiAJCQkgICAgICBDUlRDX1NU
RVJFT19ET1VCTEUpOw0KPg0KPisJcmV0ID0gaWNsX2FkZF9nZW5sb2NrX2NydGNzKGNydGMsIHBp
cGVfY29uZmlnLCBzdGF0ZSk7DQo+KwlpZiAocmV0KSB7DQo+KwkJRFJNX0RFQlVHX0tNUygiXG44
SyBEZWJ1ZzogQ2Fubm90IGFzc2lnbiBnZW5sb2NrIGNydGNzIik7DQo+KwkJcmV0dXJuIHJldDsN
Cj4rCX0NCj4rDQo+IAkvKiBQYXNzIG91ciBtb2RlIHRvIHRoZSBjb25uZWN0b3JzIGFuZCB0aGUg
Q1JUQyB0byBnaXZlIHRoZW0gYSBjaGFuY2UNCj50bw0KPiAJICogYWRqdXN0IGl0IGFjY29yZGlu
ZyB0byBsaW1pdGF0aW9ucyBvciBjb25uZWN0b3IgcHJvcGVydGllcywgYW5kIGFsc28NCj4gCSAq
IGEgY2hhbmNlIHRvIHJlamVjdCB0aGUgbW9kZSBlbnRpcmVseS4NCj5kaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcnYuaA0KPmluZGV4IGEzOGI5Y2ZmNWNkMC4uOGFlOWNiNjYyZTI4IDEwMDY0NA0KPi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oDQo+KysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHJ2LmgNCj5AQCAtMTA4Miw2ICsxMDgyLDEyIEBAIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlIHsNCj4NCj4gCS8qIEZvcndhcmQgRXJyb3IgY29ycmVjdGlvbiBTdGF0ZSAqLw0K
PiAJYm9vbCBmZWNfZW5hYmxlOw0KPisNCj4rCS8qIFBvaW50ZXIgdG8gbWFzdGVyIGNydGMgaW4g
Y2FzZSBvZiB0aWxlZCBkaXNwbGF5cyAqLw0KPisJc3RydWN0IGludGVsX2NydGMgKm1hc3Rlcl9j
cnRjOw0KPisNCj4rCS8qIEJpdG1hc2sgdG8gaW5kaWNhdGUgc2xhdmVzIGF0dGFjaGVkICovDQo+
Kwl1OCB0cmFuc19wb3J0X3N5bmNfc2xhdmVzOw0KPiB9Ow0KPg0KPiBzdHJ1Y3QgaW50ZWxfY3J0
YyB7DQo+LS0NCj4yLjE5LjENCj4NCj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj5JbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
