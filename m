Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7520AD4724
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADED6E421;
	Fri, 11 Oct 2019 18:03:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B22C6E421
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 18:03:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 11:03:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,285,1566889200"; d="scan'208";a="224411748"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 11 Oct 2019 11:03:04 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 11 Oct 2019 11:03:04 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.151]) with mapi id 14.03.0439.000;
 Fri, 11 Oct 2019 11:03:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 7/7] drm/dp-mst: fix warning on unused var
Thread-Index: AQHVf9CL4HFb4Z6MdEqbeYOiopkHyadWMfYA
Date: Fri, 11 Oct 2019 18:03:03 +0000
Message-ID: <d55118af7ac922ca3b4b6f115a5d333fcadaf161.camel@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-8-lucas.demarchi@intel.com>
In-Reply-To: <20191011010907.103309-8-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.128]
Content-ID: <3FFFC451B986864CA514ADE2ABEC3022@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/dp-mst: fix warning on unused var
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

UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQpPbiBUaHUsIDIwMTktMTAtMTAgYXQgMTg6MDkgLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3
cm90ZToNCj4gRml4ZXM6IDgzZmE5ODQyYWZlNyAoImRybS9kcC1tc3Q6IERyb3AgY29ubmVjdGlv
bl9tdXRleCBjaGVjayIpDQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0
X3RvcG9sb2d5LmMgfCAyIC0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYw0KPiBpbmRleCA5MzY0ZTRm
NDI5NzUuLjljY2NjNWU2MzMwOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9k
cF9tc3RfdG9wb2xvZ3kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3Bv
bG9neS5jDQo+IEBAIC00MTg0LDggKzQxODQsNiBAQCBFWFBPUlRfU1lNQk9MKGRybV9kcF9tc3Rf
dG9wb2xvZ3lfc3RhdGVfZnVuY3MpOw0KPiAgc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfc3Rh
dGUNCj4gKmRybV9hdG9taWNfZ2V0X21zdF90b3BvbG9neV9zdGF0ZShzdHJ1Y3QgZHJtX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJCQkJCSAgICBzdHINCj4gdWN0IGRybV9kcF9tc3RfdG9w
b2xvZ3lfbWdyICptZ3IpDQo+ICB7DQo+IC0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IG1nci0+
ZGV2Ow0KPiAtDQo+ICAJcmV0dXJuDQo+IHRvX2RwX21zdF90b3BvbG9neV9zdGF0ZShkcm1fYXRv
bWljX2dldF9wcml2YXRlX29ial9zdGF0ZShzdGF0ZSwNCj4gJm1nci0+YmFzZSkpOw0KPiAgfQ0K
PiAgRVhQT1JUX1NZTUJPTChkcm1fYXRvbWljX2dldF9tc3RfdG9wb2xvZ3lfc3RhdGUpOw0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
