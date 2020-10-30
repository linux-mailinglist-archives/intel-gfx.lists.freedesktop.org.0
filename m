Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D8E2A0EB6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 20:34:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D926EE1E;
	Fri, 30 Oct 2020 19:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB166EE1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 19:34:03 +0000 (UTC)
IronPort-SDR: 1usc+sNby757lWp4ccNRGfIz4Zqsdvl2rOLMXRVxiVwnmupIfH6nviOvlAyoQxwFy7ScoTkB+u
 1cvwf2HX4mkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="168786877"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="168786877"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 12:34:02 -0700
IronPort-SDR: UkOrz4ZMlzBsqh96oomAnXRzuHmWwymFmRzMRz1Flzp6l5ciL0P1iOv4udMWwzZQOUeaaW7bMw
 MzxdB4ubO7Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="525983661"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 30 Oct 2020 12:34:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 30 Oct 2020 12:34:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 30 Oct 2020 12:34:01 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Fri, 30 Oct 2020 12:34:01 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Sort EHL/JSL PCI IDs
Thread-Index: AQHWrtuDQzh1N0EePkiecN+GFqbW7KmwiS+w
Date: Fri, 30 Oct 2020 19:34:01 +0000
Message-ID: <6046b238187a44e0b7c569efc7d0e9b8@intel.com>
References: <20201030164124.16922-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201030164124.16922-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Sort EHL/JSL PCI IDs
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgT2N0b2JlciAz
MCwgMjAyMCA5OjQxIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBTcml2YXRzYSwgQW51c2hhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjJdIGRybS9pOTE1OiBTb3J0IEVITC9KU0wgUENJIElEcw0KPiANCj4gRnJv
bTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+
IFNvcnQgdGhlIEVITC9KU0wgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBi
ZXR0ZXIgdGhhbg0KPiByYW5kb21uZXNzLg0KPiANCj4gdjI6IERlYWwgd2l0aCB0aGUgSlNMIHZz
LiBFSEwgc3BsaXQNCj4gDQo+IFJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5z
cml2YXRzYUBpbnRlbC5jb20+ICN2MQ0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2k5
MTVfcGNpaWRzLmggfCAxNCArKysrKysrLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2Ry
bS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBpbmRleA0KPiAzYjVl
ZDFlNGYzZWMuLjRhMGEwNmY0YTgxZSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9w
Y2lpZHMuaA0KPiArKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oDQo+IEBAIC01ODUsMTkg
KzU4NSwxOSBAQA0KPiAgLyogRUhMICovDQo+ICAjZGVmaW5lIElOVEVMX0VITF9JRFMoaW5mbykg
XA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTAwLCBpbmZvKSwJXA0KMHg0NTAwIGlzIGFjdHVh
bGx5IG5vIGxvbmdlciAgYSB2YWxpZCBQQ0kgSUQgZm9yIHRoZSBwbGF0Zm9ybS4NCg0KQW51c2hh
DQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDQ1NzEsIGluZm8pLCBcDQo+IC0JSU5URUxfVkdBX0RF
VklDRSgweDQ1NTEsIGluZm8pLCBcDQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDQ1NDEsIGluZm8p
LCBcDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDQ1NTEsIGluZm8pLCBcDQo+ICsJSU5URUxfVkdB
X0RFVklDRSgweDQ1NTUsIGluZm8pLCBcDQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDQ1NTcsIGlu
Zm8pLCBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDQ1NTUsIGluZm8pDQo+ICsJSU5URUxfVkdB
X0RFVklDRSgweDQ1NzEsIGluZm8pDQo+IA0KPiAgLyogSlNMICovDQo+ICAjZGVmaW5lIElOVEVM
X0pTTF9JRFMoaW5mbykgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTcxLCBpbmZvKSwgXA0K
PiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTYxLCBpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg0RTU3LCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTUxLCBpbmZvKSwg
XA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTU1LCBpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg0RTUxLCBpbmZvKQ0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTU3LCBpbmZvKSwg
XA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTYxLCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg0RTcxLCBpbmZvKQ0KPiANCj4gIC8qIFRHTCAqLw0KPiAgI2RlZmluZSBJTlRFTF9U
R0xfMTJfR1QxX0lEUyhpbmZvKSBcDQo+IC0tDQo+IDIuMjYuMg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
