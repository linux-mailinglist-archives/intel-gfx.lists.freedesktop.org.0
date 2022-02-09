Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2F94AE667
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 03:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5722810E133;
	Wed,  9 Feb 2022 02:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7071410E133
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 02:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644372127; x=1675908127;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IF+Z4Sm7IO/2eQ+nscbh/0xwSFFqOkVqkaIrD4VqJnU=;
 b=J/3qRpoXBJrYUQmNnXX/0tdvDngUtyCu/M6cMh7i5ighHhsWBjFXS4P/
 gpQc/Wq7Xz+DnYXDU3g7Z5P4XOO8QAzxnzPsnVB3lq2WkMjHmSrFosarH
 71x169bk0qdSUGdPlYdfor9crHnL2deocdvRN1ieqX+jYYjh8B1067Jnm
 Wr/mwm+jYG8OiNLRzqyel1kixIkln3L+MQOTO83cl4YQjoHK5UkRZm3YJ
 09/A/WrhlBaWBoPx/yCRZyCqgnst+Ynvjj1ED4OrfiarYSCUD9+rQVHb1
 oXS1jA4+T1J/WqZCcAmpKM+beAehIJ5YKBKUVmc60XYkmSn7wXW7X7cQV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="232664832"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="232664832"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 18:02:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="540882010"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 08 Feb 2022 18:02:06 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 18:02:06 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 18:02:06 -0800
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.020;
 Tue, 8 Feb 2022 18:02:06 -0800
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?utf-8?B?xYF1a2FzeiBCYXJ0b3Npaw==?= <lb@semihalf.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH v1] drm/i915: fix null pointer dereference
Thread-Index: AQHYF4EkwEGtu19PkEOaVkObz5w3hKx/XaIAgAsI9YCAABwvgA==
Date: Wed, 9 Feb 2022 02:02:05 +0000
Message-ID: <f43df8568a9a49cc9ee21f917ab4cb4a@intel.com>
References: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
 <87r18mtwn7.fsf@intel.com>
 <CAK8ByeKSWfeyUB73rVXQr2VKMFxNYZk9KxwYjsws3URFGfk50A@mail.gmail.com>
In-Reply-To: <CAK8ByeKSWfeyUB73rVXQr2VKMFxNYZk9KxwYjsws3URFGfk50A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: fix null pointer dereference
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "upstream@semihalf.com" <upstream@semihalf.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogxYF1a2FzeiBCYXJ0b3Np
ayA8bGJAc2VtaWhhbGYuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSA4LCAyMDIyIDg6
MjAgQU0NCj4gVG86IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+OyBK
b29uYXMgTGFodGluZW4NCj4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBWaXZp
LCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPjsNCj4gVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFNyaXBhZGEsIFJhZGhha3Jpc2hu
YSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmc7IHVwc3RyZWFtQHNlbWloYWxmLmNvbTsgVmlsbGUgU3lyasOkbMOkDQo+
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IFJvcGVyLCBNYXR0aGV3IEQNCj4gPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+OyBTcml2YXRzYSwgQW51c2hhIDxhbnVzaGEuc3JpdmF0
c2FAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYxXSBkcm0vaTkxNTogZml4IG51
bGwgcG9pbnRlciBkZXJlZmVyZW5jZQ0KPiANCj4gSGF2ZSB5b3UgaGFkIGEgY2hhbmNlIHRvIHJl
dmlldyB0aGUgcGF0Y2ggPyBUaGUgY3Jhc2ggaXMgc3RpbGwgdGhlcmUNCj4gb24gdjUuMTctcmMz
Lg0KPiANCj4gVGhhbmtzLA0KPiBMdWthc3oNCj4gDQo+IHd0LiwgMSBsdXQgMjAyMiBvIDE2OjQ5
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+IG5hcGlzYcWCKGEpOg0K
PiA+DQo+ID4NCj4gPiBUaGFua3MgZm9yIHRoZSBwYXRjaCwgYWRkaW5nIHNvbWUgQ2MncyBmcm9t
IHRoZSBjb21taXQgdGhhdCByZWdyZXNzZWQuDQo+ID4NCj4gPiBCUiwNCj4gPiBKYW5pLg0KPiA+
DQo+ID4gT24gVHVlLCAwMSBGZWIgMjAyMiwgTHVrYXN6IEJhcnRvc2lrIDxsYkBzZW1paGFsZi5j
b20+IHdyb3RlOg0KPiA+ID4gRnJvbTogxYF1a2FzeiBCYXJ0b3NpayA8bGJAc2VtaWhhbGYuY29t
Pg0KPiA+ID4NCj4gPiA+IEFzdXMgY2hyb21lYm9vayBDWDU1MCBjcmFzaGVzIGR1cmluZyBib290
IG9uIHY1LjE3LXJjMSBrZXJuZWwuDQo+ID4gPiBUaGUgcm9vdCBjYXVzZSBpcyBudWxsIHBvaW50
ZXIgZGVmZWZlcmVuY2Ugb2YgYmlfbmV4dA0KPiA+ID4gaW4gdGdsX2dldF9id19pbmZvKCkgaW4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jLg0KPiA+ID4NCj4gPiA+IEJV
Rzoga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczogMDAwMDAwMDAwMDAw
MDAyZQ0KPiA+ID4gUEdEIDAgUDREIDANCj4gPiA+IE9vcHM6IDAwMDIgWyMxXSBQUkVFTVBUIFNN
UCBOT1BUSQ0KPiA+ID4gQ1BVOiAwIFBJRDogMSBDb21tOiBzd2FwcGVyLzAgVGFpbnRlZDogRyAg
ICAgVSAgICAgICAgICAgIDUuMTcuMC1yYzENCj4gPiA+IEhhcmR3YXJlIG5hbWU6IEdvb2dsZSBE
ZWxiaW4vRGVsYmluLCBCSU9TIEdvb2dsZV9EZWxiaW4uMTM2NzIuMTU2LjMNCj4gMDUvMTQvMjAy
MQ0KPiA+ID4gUklQOiAwMDEwOnRnbF9nZXRfYndfaW5mbysweDJkZS8weDUxMA0KPiA+ID4gLi4u
DQo+ID4gPiBbICAgIDIuNTU0NDY3XSBDYWxsIFRyYWNlOg0KPiA+ID4gWyAgICAyLjU1NDQ2N10g
IDxUQVNLPg0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIGludGVsX2J3X2luaXRfaHcrMHgxNGEvMHg0
MzQNCj4gPiA+IFsgICAgMi41NTQ0NjddICA/IF9wcmludGsrMHg1OS8weDczDQo+ID4gPiBbICAg
IDIuNTU0NDY3XSAgPyBfZGV2X2VycisweDc3LzB4OTENCj4gPiA+IFsgICAgMi41NTQ0NjddICBp
OTE1X2RyaXZlcl9od19wcm9iZSsweDMyOS8weDMzZQ0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIGk5
MTVfZHJpdmVyX3Byb2JlKzB4NGM4LzB4NjM4DQo+ID4gPiBbICAgIDIuNTU0NDY3XSAgaTkxNV9w
Y2lfcHJvYmUrMHhmOC8weDE0ZQ0KPiA+ID4gWyAgICAyLjU1NDQ2N10gID8gX3Jhd19zcGluX3Vu
bG9ja19pcnFyZXN0b3JlKzB4MTIvMHgyYw0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIHBjaV9kZXZp
Y2VfcHJvYmUrMHhhYS8weDE0Mg0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIHJlYWxseV9wcm9iZSsw
eDEzZi8weDJmNA0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIF9fZHJpdmVyX3Byb2JlX2RldmljZSsw
eDllLzB4ZDMNCj4gPiA+IFsgICAgMi41NTQ0NjddICBkcml2ZXJfcHJvYmVfZGV2aWNlKzB4MjQv
MHg3Yw0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIF9fZHJpdmVyX2F0dGFjaCsweGJhLzB4Y2YNCj4g
PiA+IFsgICAgMi41NTQ0NjddICA/IGRyaXZlcl9hdHRhY2grMHgxZi8weDFmDQo+ID4gPiBbICAg
IDIuNTU0NDY3XSAgYnVzX2Zvcl9lYWNoX2RldisweDhjLzB4YzANCj4gPiA+IFsgICAgMi41NTQ0
NjddICBidXNfYWRkX2RyaXZlcisweDExYi8weDFmNw0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIGRy
aXZlcl9yZWdpc3RlcisweDYwLzB4ZWENCj4gPiA+IFsgICAgMi41NTQ0NjddICA/IG1pcGlfZHNp
X2J1c19pbml0KzB4MTYvMHgxNg0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIGk5MTVfaW5pdCsweDJj
LzB4YjkNCj4gPiA+IFsgICAgMi41NTQ0NjddICA/IG1pcGlfZHNpX2J1c19pbml0KzB4MTYvMHgx
Ng0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIGRvX29uZV9pbml0Y2FsbCsweDEyZS8weDJiMw0KPiA+
ID4gWyAgICAyLjU1NDQ2N10gIGRvX2luaXRjYWxsX2xldmVsKzB4ZDYvMHhmMw0KPiA+ID4gWyAg
ICAyLjU1NDQ2N10gIGRvX2luaXRjYWxscysweDRlLzB4NzkNCj4gPiA+IFsgICAgMi41NTQ0Njdd
ICBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweGVkLzB4MTRkDQo+ID4gPiBbICAgIDIuNTU0NDY3XSAg
PyByZXN0X2luaXQrMHhjMS8weGMxDQo+ID4gPiBbICAgIDIuNTU0NDY3XSAga2VybmVsX2luaXQr
MHgxYS8weDEyMA0KPiA+ID4gWyAgICAyLjU1NDQ2N10gIHJldF9mcm9tX2ZvcmsrMHgxZi8weDMw
DQo+ID4gPiBbICAgIDIuNTU0NDY3XSAgPC9UQVNLPg0KPiA+ID4gLi4uDQo+ID4gPiBLZXJuZWwg
cGFuaWMgLSBub3Qgc3luY2luZzogRmF0YWwgZXhjZXB0aW9uDQo+ID4gPg0KPiA+ID4gRml4ZXM6
IGM2NGE5YTdjMDViZSAoImRybS9pOTE1OiBVcGRhdGUgbWVtb3J5IGJhbmR3aWR0aCBmb3JtdWxh
ZSIpDQoNCkxHVE0sDQpSZXZpZXdlZC1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jp
c2huYS5zcmlwYWRhQGludGVsLmNvbT4NCg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBC
YXJ0b3NpayA8bGJAc2VtaWhhbGYuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgMTYgKysrKysrKysrLS0tLS0tLQ0KPiA+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gPg0K
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gaW5k
ZXggMmRhNGFhY2M5NTZiLi5iZDBlZDY4YjdmYWEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gQEAgLTQwNCwxNSArNDA0LDE3IEBA
IHN0YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgY29uc3Qgc3RydWN0IGludGVsDQo+ID4gPiAgICAgICAgICAgICAgIGludCBjbHBj
aGdyb3VwOw0KPiA+ID4gICAgICAgICAgICAgICBpbnQgajsNCj4gPiA+DQo+ID4gPiAtICAgICAg
ICAgICAgIGlmIChpIDwgbnVtX2dyb3VwcyAtIDEpDQo+ID4gPiAtICAgICAgICAgICAgICAgICAg
ICAgYmlfbmV4dCA9ICZkZXZfcHJpdi0+bWF4X2J3W2kgKyAxXTsNCj4gPiA+IC0NCj4gPiA+ICAg
ICAgICAgICAgICAgY2xwY2hncm91cCA9IChzYS0+ZGVidXJzdCAqIHFpLmRlaW50ZXJsZWF2ZSAv
IG51bV9jaGFubmVscykgPDwgaTsNCj4gPiA+DQo+ID4gPiAtICAgICAgICAgICAgIGlmIChpIDwg
bnVtX2dyb3VwcyAtIDEgJiYgY2xwY2hncm91cCA8IGNscGVyY2hncm91cCkNCj4gPiA+IC0gICAg
ICAgICAgICAgICAgICAgICBiaV9uZXh0LT5udW1fcGxhbmVzID0gKGlwcWRlcHRoIC0gY2xwY2hn
cm91cCkgLyBjbHBjaGdyb3VwICsgMTsNCj4gPiA+IC0gICAgICAgICAgICAgZWxzZQ0KPiA+ID4g
LSAgICAgICAgICAgICAgICAgICAgIGJpX25leHQtPm51bV9wbGFuZXMgPSAwOw0KPiA+ID4gKyAg
ICAgICAgICAgICBpZiAoaSA8IG51bV9ncm91cHMgLSAxKSB7DQo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgYmlfbmV4dCA9ICZkZXZfcHJpdi0+bWF4X2J3W2kgKyAxXTsNCj4gPiA+ICsNCj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoY2xwY2hncm91cCA8IGNscGVyY2hncm91cCkN
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJpX25leHQtPm51bV9wbGFuZXMg
PSAoaXBxZGVwdGggLSBjbHBjaGdyb3VwKSAvDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNscGNoZ3JvdXAgKyAxOw0KPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIGVsc2UNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGJpX25leHQtPm51bV9wbGFuZXMgPSAwOw0KPiA+ID4gKyAgICAgICAgICAgICB9DQo+ID4g
Pg0KPiA+ID4gICAgICAgICAgICAgICBiaS0+bnVtX3Fndl9wb2ludHMgPSBxaS5udW1fcG9pbnRz
Ow0KPiA+ID4gICAgICAgICAgICAgICBiaS0+bnVtX3BzZl9ndl9wb2ludHMgPSBxaS5udW1fcHNm
X3BvaW50czsNCj4gPg0KPiA+IC0tDQo+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcg0K
