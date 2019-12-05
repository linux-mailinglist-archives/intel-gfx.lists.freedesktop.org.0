Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81538113CF8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 09:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800BE6F5D4;
	Thu,  5 Dec 2019 08:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E1E6F5D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 08:25:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 00:25:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,280,1571727600"; d="scan'208";a="214061525"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 05 Dec 2019 00:25:17 -0800
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Dec 2019 00:25:17 -0800
Received: from bgsmsx102.gar.corp.intel.com (10.223.4.172) by
 fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Dec 2019 00:25:16 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX102.gar.corp.intel.com ([169.254.2.130]) with mapi id 14.03.0439.000;
 Thu, 5 Dec 2019 13:55:13 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 08/13] drm/i915/dsi: abstract afe_clk calculation
Thread-Index: AQHVpF+IA2gu0yk/vUOBCoj7im2UyKerQOKQ
Date: Thu, 5 Dec 2019 08:25:12 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809D9D72@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <545d639dd91beececd6a85c6e39864ad41718151.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <545d639dd91beececd6a85c6e39864ad41718151.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWI2MWMzZTMtMmI2My00ZGM3LWEzZDktYjQxZTU3ZjU0MjM3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJwS1lRMXRTZzZjejlyQ3J0aStBdThmQjdVNUN4ek0zRGRrNFloT0lSUnpHeE01ZkZLbTg3d3FJTEJmQ1BHTHlaIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 08/13] drm/i915/dsi: abstract afe_clk
 calculation
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSA3OjEz
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEt1bGthcm5pLCBWYW5kaXRhDQo+IDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAwOC8xM10gZHJtL2k5MTUvZHNp
OiBhYnN0cmFjdCBhZmVfY2xrIGNhbGN1bGF0aW9uDQo+IA0KPiBXZSdsbCBtYWtlIG1vcmUgdXNl
IG9mIGl0IGluIHRoZSBmdXR1cmUuDQo+IA0KPiBDYzogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0
YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KDQpMb29rcyBnb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFZhbmRp
dGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KDQpUaGFua3MsDQpWYW5k
aXRhDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCAx
OCArKysrKysrKysrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaWNsX2RzaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMNCj4gaW5kZXggZWY1M2VkNmQzZWNmLi5kZTM3NDMyMzNkY2IgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+IEBAIC0zMDEsMTggKzMwMSwyNiBAQCBz
dGF0aWMgdm9pZCBjb25maWd1cmVfZHVhbF9saW5rX21vZGUoc3RydWN0DQo+IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ICAJSTkxNV9XUklURShEU1NfQ1RMMSwgZHNzX2N0bDEpOw0KPiAgfQ0K
PiANCj4gKy8qIGFrYSBEU0kgOFggY2xvY2sgKi8NCj4gK3N0YXRpYyBpbnQgYWZlX2NsayhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcikgew0KPiArCXN0cnVjdCBpbnRlbF9kc2kgKmludGVs
X2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVuY29kZXItPmJhc2UpOw0KPiArCWludCBicHA7DQo+
ICsNCj4gKwlicHAgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRfdG9fYnBwKGludGVsX2RzaS0+cGl4
ZWxfZm9ybWF0KTsNCj4gKw0KPiArCXJldHVybiBESVZfUk9VTkRfQ0xPU0VTVChpbnRlbF9kc2kt
PnBjbGsgKiBicHAsDQo+ICtpbnRlbF9kc2ktPmxhbmVfY291bnQpOyB9DQo+ICsNCj4gIHN0YXRp
YyB2b2lkIGdlbjExX2RzaV9wcm9ncmFtX2VzY19jbGtfZGl2KHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyKSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2Rz
aSA9IGVuY190b19pbnRlbF9kc2koJmVuY29kZXItPmJhc2UpOw0KPiAgCWVudW0gcG9ydCBwb3J0
Ow0KPiAtCXUzMiBicHAgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRfdG9fYnBwKGludGVsX2RzaS0+
cGl4ZWxfZm9ybWF0KTsNCj4gLQl1MzIgYWZlX2Nsa19raHo7IC8qIDhYIENsb2NrICovDQo+ICsJ
aW50IGFmZV9jbGtfa2h6Ow0KPiAgCXUzMiBlc2NfY2xrX2Rpdl9tOw0KPiANCj4gLQlhZmVfY2xr
X2toeiA9IERJVl9ST1VORF9DTE9TRVNUKGludGVsX2RzaS0+cGNsayAqIGJwcCwNCj4gLQkJCQkJ
aW50ZWxfZHNpLT5sYW5lX2NvdW50KTsNCj4gLQ0KPiArCWFmZV9jbGtfa2h6ID0gYWZlX2Nsayhl
bmNvZGVyKTsNCj4gIAllc2NfY2xrX2Rpdl9tID0gRElWX1JPVU5EX1VQKGFmZV9jbGtfa2h6LCBE
U0lfTUFYX0VTQ19DTEspOw0KPiANCj4gIAlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9k
c2ktPnBvcnRzKSB7DQo+IC0tDQo+IDIuMjAuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
