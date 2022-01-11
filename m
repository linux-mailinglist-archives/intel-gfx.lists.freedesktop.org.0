Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E089A48B27C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 17:44:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4363610E57F;
	Tue, 11 Jan 2022 16:44:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE08F10E57F
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 16:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641919439; x=1673455439;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FMtQSW8AY/QHe7neFWvZh7pnEBJ2Qcx7RotYY7UbcwU=;
 b=EFsGaTKRPezdxfgKjuLLaVvTvbzzv4B0FRel2dXfRMp9OCJ/qli6v9M8
 4bZM/PIV+cQxQMzC+RtOdYpS8DDm8e6nrRzngZ4ppUX2/AkaRKJs81tlo
 7uEyQo7l/6p3QwkIC0CiAZOQAZr47avCXdgUkj6imbmBWdrxCuPYibsAN
 B6xFDfjhMznG2Sh/3XXAu0dImCfb1pLBNhiMFk0zbrExQ9sEDzkLthUPf
 mtJ56MmbozRPQYH4IMd83Zcz30JAfWShJTqP4xnMH3AqrO1wtEEg8CMC1
 kut1taxxyV5PoG+ypNslUOqiDs8D4pXamT0BYPf9ca/HVXKLBJxdVCvt5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="242344636"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="242344636"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:38:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="613273825"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Jan 2022 08:38:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 11 Jan 2022 16:38:18 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Tue, 11 Jan 2022 08:38:17 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Thread-Topic: [PATCH] drm/i915/snps: vswing value refined for SNPS phys
Thread-Index: AQHYBnwnmdJcG/UPHUmexnZjgiTpOaxejNoA
Date: Tue, 11 Jan 2022 16:38:17 +0000
Message-ID: <9fc25061bdf311a470ac916c5abbb421b574d8d8.camel@intel.com>
References: <20220110234520.6836-1-clinton.a.taylor@intel.com>
In-Reply-To: <20220110234520.6836-1-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <025EB2E0109BCD438EFAE11B51816962@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/snps: vswing value refined for
 SNPS phys
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTAxLTEwIGF0IDE1OjQ1IC0wODAwLCBjbGludG9uLmEudGF5bG9yQGludGVs
LmNvbSB3cm90ZToNCj4gRnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVs
LmNvbT4NCj4gDQo+IFVwZGF0ZWQgbmV3IHZhbHVlcyBmcm9tIEJTUEVDLg0KPiANCj4gQlNQRUM6
IDUzOTIwDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQoNCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
Q2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCA0MiArKysrKysrKyst
LS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGlfYnVmX3RyYW5zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaV9idWZfdHJhbnMuYw0KPiBpbmRleCAxZTY4OWQ1NzM1MTIuLjA5ZDZhYjEzNTM2YyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3Ry
YW5zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVm
X3RyYW5zLmMNCj4gQEAgLTk4NSwxNSArOTg1LDE1IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZGRpX2J1Zl90cmFucyBhZGxwX2RrbF9waHlfdHJhbnNfZHBfaGJyMl9oYnIzID0gew0KPiAg
fTsNCj4gIA0KPiAgc3RhdGljIGNvbnN0IHVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkg
X2RnMl9zbnBzX3RyYW5zW10gPSB7DQo+IC0JeyAuc25wcyA9IHsgMjYsIDAsIDAgfSB9LAkvKiBW
UyAwLCBwcmUtZW1waCAwICovDQo+IC0JeyAuc25wcyA9IHsgMzMsIDAsIDYgfSB9LAkvKiBWUyAw
LCBwcmUtZW1waCAxICovDQo+IC0JeyAuc25wcyA9IHsgMzgsIDAsIDEyIH0gfSwJLyogVlMgMCwg
cHJlLWVtcGggMiAqLw0KPiAtCXsgLnNucHMgPSB7IDQzLCAwLCAxOSB9IH0sCS8qIFZTIDAsIHBy
ZS1lbXBoIDMgKi8NCj4gLQl7IC5zbnBzID0geyAzOSwgMCwgMCB9IH0sCS8qIFZTIDEsIHByZS1l
bXBoIDAgKi8NCj4gLQl7IC5zbnBzID0geyA0NCwgMCwgOCB9IH0sCS8qIFZTIDEsIHByZS1lbXBo
IDEgKi8NCj4gLQl7IC5zbnBzID0geyA0NywgMCwgMTUgfSB9LAkvKiBWUyAxLCBwcmUtZW1waCAy
ICovDQo+IC0JeyAuc25wcyA9IHsgNTIsIDAsIDAgfSB9LAkvKiBWUyAyLCBwcmUtZW1waCAwICov
DQo+IC0JeyAuc25wcyA9IHsgNTEsIDAsIDEwIH0gfSwJLyogVlMgMiwgcHJlLWVtcGggMSAqLw0K
PiArCXsgLnNucHMgPSB7IDI1LCAwLCAwIH0gfSwJLyogVlMgMCwgcHJlLWVtcGggMCAqLw0KPiAr
CXsgLnNucHMgPSB7IDMyLCAwLCA2IH0gfSwJLyogVlMgMCwgcHJlLWVtcGggMSAqLw0KPiArCXsg
LnNucHMgPSB7IDM1LCAwLCAxMCB9IH0sCS8qIFZTIDAsIHByZS1lbXBoIDIgKi8NCj4gKwl7IC5z
bnBzID0geyA0MywgMCwgMTcgfSB9LAkvKiBWUyAwLCBwcmUtZW1waCAzICovDQo+ICsJeyAuc25w
cyA9IHsgMzUsIDAsIDAgfSB9LAkvKiBWUyAxLCBwcmUtZW1waCAwICovDQo+ICsJeyAuc25wcyA9
IHsgNDUsIDAsIDggfSB9LAkvKiBWUyAxLCBwcmUtZW1waCAxICovDQo+ICsJeyAuc25wcyA9IHsg
NDgsIDAsIDE0IH0gfSwJLyogVlMgMSwgcHJlLWVtcGggMiAqLw0KPiArCXsgLnNucHMgPSB7IDQ3
LCAwLCAwIH0gfSwJLyogVlMgMiwgcHJlLWVtcGggMCAqLw0KPiArCXsgLnNucHMgPSB7IDU1LCAw
LCA3IH0gfSwJLyogVlMgMiwgcHJlLWVtcGggMSAqLw0KPiAgCXsgLnNucHMgPSB7IDYyLCAwLCAw
IH0gfSwJLyogVlMgMywgcHJlLWVtcGggMCAqLw0KPiAgfTsNCj4gIA0KPiBAQCAtMTAwNSwyMSAr
MTAwNSwyMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgZGcyX3Nu
cHNfdHJhbnMgPSB7DQo+ICANCj4gIHN0YXRpYyBjb25zdCB1bmlvbiBpbnRlbF9kZGlfYnVmX3Ry
YW5zX2VudHJ5IF9kZzJfc25wc190cmFuc191aGJyW10gPSB7DQo+ICAJeyAuc25wcyA9IHsgNjIs
IDAsIDAgfSB9LAkvKiBwcmVzZXQgMCAqLw0KPiAtCXsgLnNucHMgPSB7IDU2LCAwLCA2IH0gfSwJ
LyogcHJlc2V0IDEgKi8NCj4gLQl7IC5zbnBzID0geyA1MSwgMCwgMTEgfSB9LAkvKiBwcmVzZXQg
MiAqLw0KPiAtCXsgLnNucHMgPSB7IDQ4LCAwLCAxNCB9IH0sCS8qIHByZXNldCAzICovDQo+IC0J
eyAuc25wcyA9IHsgNDMsIDAsIDE5IH0gfSwJLyogcHJlc2V0IDQgKi8NCj4gKwl7IC5zbnBzID0g
eyA1NSwgMCwgNyB9IH0sCS8qIHByZXNldCAxICovDQo+ICsJeyAuc25wcyA9IHsgNTAsIDAsIDEy
IH0gfSwJLyogcHJlc2V0IDIgKi8NCj4gKwl7IC5zbnBzID0geyA0NCwgMCwgMTggfSB9LAkvKiBw
cmVzZXQgMyAqLw0KPiArCXsgLnNucHMgPSB7IDM1LCAwLCAyMSB9IH0sCS8qIHByZXNldCA0ICov
DQo+ICAJeyAuc25wcyA9IHsgNTksIDMsIDAgfSB9LAkvKiBwcmVzZXQgNSAqLw0KPiAgCXsgLnNu
cHMgPSB7IDUzLCAzLCA2IH0gfSwJLyogcHJlc2V0IDYgKi8NCj4gLQl7IC5zbnBzID0geyA0OSwg
MywgMTAgfSB9LAkvKiBwcmVzZXQgNyAqLw0KPiAtCXsgLnNucHMgPSB7IDQ1LCAzLCAxNCB9IH0s
CS8qIHByZXNldCA4ICovDQo+IC0JeyAuc25wcyA9IHsgNDIsIDMsIDE3IH0gfSwJLyogcHJlc2V0
IDkgKi8NCj4gKwl7IC5zbnBzID0geyA0OCwgMywgMTEgfSB9LAkvKiBwcmVzZXQgNyAqLw0KPiAr
CXsgLnNucHMgPSB7IDQyLCA1LCAxNSB9IH0sCS8qIHByZXNldCA4ICovDQo+ICsJeyAuc25wcyA9
IHsgMzcsIDUsIDIwIH0gfSwJLyogcHJlc2V0IDkgKi8NCj4gIAl7IC5zbnBzID0geyA1NiwgNiwg
MCB9IH0sCS8qIHByZXNldCAxMCAqLw0KPiAtCXsgLnNucHMgPSB7IDUwLCA2LCA2IH0gfSwJLyog
cHJlc2V0IDExICovDQo+IC0JeyAuc25wcyA9IHsgNDcsIDYsIDkgfSB9LAkvKiBwcmVzZXQgMTIg
Ki8NCj4gLQl7IC5zbnBzID0geyA0MiwgNiwgMTQgfSB9LAkvKiBwcmVzZXQgMTMgKi8NCj4gLQl7
IC5zbnBzID0geyA0NiwgOCwgOCB9IH0sCS8qIHByZXNldCAxNCAqLw0KPiAtCXsgLnNucHMgPSB7
IDU2LCAzLCAzIH0gfSwJLyogcHJlc2V0IDE1ICovDQo+ICsJeyAuc25wcyA9IHsgNDgsIDcsIDcg
fSB9LAkvKiBwcmVzZXQgMTEgKi8NCj4gKwl7IC5zbnBzID0geyA0NSwgNywgMTAgfSB9LAkvKiBw
cmVzZXQgMTIgKi8NCj4gKwl7IC5zbnBzID0geyAzOSwgOCwgMTUgfSB9LAkvKiBwcmVzZXQgMTMg
Ki8NCj4gKwl7IC5zbnBzID0geyA0OCwgMTQsIDAgfSB9LAkvKiBwcmVzZXQgMTQgKi8NCj4gKwl7
IC5zbnBzID0geyA0NSwgNCwgNCB9IH0sCS8qIHByZXNldCAxNSAqLw0KPiAgfTsNCj4gIA0KPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zIGRnMl9zbnBzX3RyYW5zX3Vo
YnIgPSB7DQoNCg==
