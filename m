Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A31E88102
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 19:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101EB89815;
	Fri,  9 Aug 2019 17:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90A989815
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 17:16:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 10:16:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="374549305"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 09 Aug 2019 10:16:04 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 9 Aug 2019 10:16:04 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.69]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.91]) with mapi id 14.03.0439.000;
 Fri, 9 Aug 2019 10:16:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "pebolle@tiscali.nl" <pebolle@tiscali.nl>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
Thread-Index: AQHVN8s6u18XhfEo0kuWcj/kjNqW06bGT1sAgAAD6QCAAADBAIAAGPCAgAAIRACAAANRAIAABuIAgAAHAoCAAANkgIAA9aWAgAACeQCABSUwAIAACPCAgAE98wCAAeSegIAAAIsAgArdJICAABICAIAAA0IAgBjsbIA=
Date: Fri, 9 Aug 2019 17:16:03 +0000
Message-ID: <54f0979debcd4459ca9d9f25941d4fa29a1aab06.camel@intel.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
 <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
 <1562876880.2840.12.camel@HansenPartnership.com>
 <1562882235.13723.1.camel@HansenPartnership.com>
 <dad073fb4b06cf0abb7ab702a9474b9c443186eb.camel@intel.com>
 <1562884722.15001.3.camel@HansenPartnership.com>
 <2c4edfabf49998eb5da3a6adcabc006eb64bfe90.camel@tiscali.nl>
 <55f4d1c242d684ca2742e8c14613d810a9ee9504.camel@intel.com>
 <1562888433.2915.0.camel@HansenPartnership.com>
 <1562941185.3398.1.camel@HansenPartnership.com>
 <68472c5f390731e170221809a12d88cb3bc6460e.camel@tiscali.nl>
 <143142cad4a946361a0bf285b6f1701c81096c7b.camel@intel.com>
 <595d9bc87bf47717c8675eb5b1a1cbb2bc463752.camel@tiscali.nl>
 <a10f009fc160f05077760ff59cd86a9c99006b39.camel@intel.com>
 <9ef8fc1ae2c3a9bad588899488a781333af4449a.camel@tiscali.nl>
 <1563398966.3438.5.camel@HansenPartnership.com>
 <b22cf290b089cb1174ec0fdeb15bdf2e90bf51dc.camel@tiscali.nl>
 <d084df248afc1943e06c50d391a775d117064743.camel@intel.com>
 <df4d83e5c5650ea2f1afde1469c9dc82d6120644.camel@tiscali.nl>
In-Reply-To: <df4d83e5c5650ea2f1afde1469c9dc82d6120644.camel@tiscali.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.51]
Content-ID: <38ED6E999C8D6C40A3152AADC7FF2B2D@intel.com>
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

Rml4IHJlbGVhc2VkIG9uIExpbnV4IDUuMi44DQoNCk9uIFdlZCwgMjAxOS0wNy0yNCBhdCAyMjoz
OSArMDIwMCwgUGF1bCBCb2xsZSB3cm90ZToNCj4gSGkgSm9zZSwNCj4gDQo+IFNvdXphLCBKb3Nl
IHNjaHJlZWYgb3Agd28gMjQtMDctMjAxOSBvbSAyMDoyNyBbKzAwMDBdOg0KPiA+IFdlIGZpeGVk
IHRoZSBwYXRjaCBpbnN0ZWFkIG9mIHJldmVydCBpdCwgaXQgaXMgbWVyZ2VkIG9uIGRybS10aXAN
Cj4gPiBhbmQgb24NCj4gPiBoaXMgd2F5IHRvIGxpbnV4LXN0YWJsZS4NCj4gDQo+IFRoYXQgc2hv
dWxkIGJlIChkcm0tdGlwKSBjb21taXQgYjVlYTljOTMzNzAwICgiZHJtL2k5MTUvdmJ0OiBGaXgg
VkJUDQo+IHBhcnNpbmcNCj4gZm9yIHRoZSBQU1Igc2VjdGlvbiIpLiBDb3JyZWN0Pw0KPiANCj4g
PiBIdWdlIHRoYW5rcyBhZ2Fpbg0KPiANCj4gWW91J3JlIHdlbGNvbWUuDQo+IA0KPiANCj4gUGF1
bCBCb2xsZQ0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
