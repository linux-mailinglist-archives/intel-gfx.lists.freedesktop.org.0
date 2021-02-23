Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A5A3225F5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 07:33:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40D789B51;
	Tue, 23 Feb 2021 06:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9A789B51
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 06:33:41 +0000 (UTC)
IronPort-SDR: NkKnx7/XBytlnt2JuPj0EGuTwxzZ7Pyohwxs6cs36IeHYEvpFm5ouHm4zwMmE8Kw2j9Cik+IHL
 xahn2y26gMaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="204129573"
X-IronPort-AV: E=Sophos;i="5.81,199,1610438400"; d="scan'208";a="204129573"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 22:33:40 -0800
IronPort-SDR: d9tQ1Rtb4OU8McH6/Puc00hzZpIo+f3SvO+OVaQejrxjQ4//36H9uqKWxA54O1axzJMrMf0Lom
 4goeSuqExdLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,199,1610438400"; d="scan'208";a="441639887"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 22 Feb 2021 22:33:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 22:31:23 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 22:31:22 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Tue, 23 Feb 2021 08:31:20 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Richard Weinberger <richard@nod.at>
Thread-Topic: [RFC PATCH 0/9] drm/i915/spi: discrete graphics internal spi
Thread-Index: AQHXBJBTlGMG4b5GwU+w3NO1EU5QQapbRLqAgAC+HMCABjNiUB7bF+50/ww+PVA=
Date: Tue, 23 Feb 2021 06:31:20 +0000
Message-ID: <d2636c94015d40c199616947907b7148@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <CAFLxGvwP5-O5DHQ07Fs_GnG12dsK24mer8LJfhz2z2UqW9e5cQ@mail.gmail.com>
 <cb20e706d494458a8957252eeacfb1da@intel.com>
 <7601e7f0024c41fb9b454a3c50b02173@intel.com>
 <1279191970.19051.1614033504390.JavaMail.zimbra@nod.at>
In-Reply-To: <1279191970.19051.1614033504390.JavaMail.zimbra@nod.at>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 0/9] drm/i915/spi: discrete graphics
 internal spi
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQo+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0NCj4gPj4gPiBJJ20gbm90IHN1cmUg
d2hldGhlciB3ZSB3YW50IHRvIHRha2UgdGhhdCBwYXRoLg0KPiA+DQo+ID4gSGkgUmljaGFyZCBp
cyB0aGVyZSBhbnkgd2F5IHdlIGNhbiB0cnkgdG8gdW5jbHV0dGVyIHRoaXMgPw0KPiANCj4gT2Yg
Y291cnNlIHRoZXJlIGlzIGEgd2F5LiA6LSkNCj4gWW91ciB1c2UtY2FzZSByZWFsbHkgc2VlbXMg
dG8gYmUgc3BlY2lhbCBhbmQgTVREIG5lZWRzIGFuIGltcHJvdmVtZW50Lg0KPiBNaXF1ZWwsIFZp
Z25lc2ggYW5kIEkganVzdCBuZWVkIHRvIGNoZWNrIG1vcmUgaW50ZXJuYWxzIGFuZCBjb3JuZXIg
Y2FzZXMgaW4NCj4gTVRELg0KPiBXaXRoIHNvbWUgbHVjayB5b3VyIHBhdGNoIGNhbiBiZSB1c2Vk
IGFzLWlzIHdpdGggc29tZSBtaW5vciBhZGp1c3RtZW50cw0KPiBvbiB0b3AuDQpHcmVhdCwgd2Fp
dGluZyBmb3IgeW91ciBjb21tZW50cy4gDQpUaGFua3MNClRvbWFzDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
