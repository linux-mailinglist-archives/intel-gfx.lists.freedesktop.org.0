Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D76269D35
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 23:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9F32897EE;
	Mon, 15 Jul 2019 21:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0237C897EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2019 21:03:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 14:03:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,494,1557212400"; d="scan'208";a="318790562"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 15 Jul 2019 14:03:02 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jul 2019 14:03:01 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.234]) with mapi id 14.03.0439.000;
 Mon, 15 Jul 2019 14:03:01 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "pebolle@tiscali.nl" <pebolle@tiscali.nl>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
Thread-Index: AQHVN8s6u18XhfEo0kuWcj/kjNqW06bGT1sAgAAD6QCAAADBAIAAGPCAgAAIRACAAANRAIAABuIAgAAHAoCAAANkgIAA9aWAgAACeQCABSUwAA==
Date: Mon, 15 Jul 2019 21:03:01 +0000
Message-ID: <143142cad4a946361a0bf285b6f1701c81096c7b.camel@intel.com>
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
In-Reply-To: <68472c5f390731e170221809a12d88cb3bc6460e.camel@tiscali.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-ID: <C296A0199AAF954FAE17FBA411041854@intel.com>
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

SGkgSmFtZXMgYW5kIFBhdWwNCg0KU28gdGhlIGlzc3VlIGRpZCBub3QgaGFwcGVuZWQgYWdhaW4g
d2l0aCB0aGUgcGF0Y2ggYXBwbGllZD8NCg0KSWYgeW91IHN0aWxsIGhhdmUgdGhlIGtlcm5lbCA1
LjEgaW5zdGFsbGVkIGNvdWxkIHlvdSBzaGFyZSB5b3VyDQovc3lzL2tlcm5lbC9kZWJ1Zy9kcmkv
MC9pOTE1X2VkcF9wc3Jfc3RhdHVzIHdpdGggdGhlIG9sZGVyIGtlcm5lbD8NCldlIHdhbnQgdG8g
Y2hlY2sgaWYgdHJhaW5pbmcgdmFsdWVzIGNoYW5nZWQgYmV0d2VlbiBrZXJuZWwgdmVyc2lvbnMu
DQoNCk9uIEZyaSwgMjAxOS0wNy0xMiBhdCAxNjoyOCArMDIwMCwgUGF1bCBCb2xsZSB3cm90ZToN
Cj4gSmFtZXMgQm90dG9tbGV5IHNjaHJlZWYgb3AgdnIgMTItMDctMjAxOSBvbSAwNzoxOSBbLTA3
MDBdOg0KPiA+IEl0IGhhcyBzdXJ2aXZlZCA2aCB3aXRob3V0IG1hbmlmZXN0aW5nIHRoZSByZWdy
ZXNzaW9uLiAgU3RhcnRpbmcNCj4gPiBhZ2Fpbg0KPiA+IHRvIHRyeSBhIHdob2xlIGRheS4NCj4g
DQo+IEFuZCBJJ20gY3VycmVudGx5IGF0IGZvdXIgaG91cnMgd2l0aG91dCBhIHNjcmVlbiBmcmVl
emUuIFdoaWNoIGlzDQo+IG11Y2gsIG11Y2gNCj4gbG9uZ2VyIHRoYW4gSSB3YXMgYWJsZSB0byBh
Y2hpZXZlIHdpdGhvdXQgdGhlIGhhY2sgYXBwbGllZC4NCj4gDQo+IA0KPiBQYXVsIEJvbGxlDQo+
IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
