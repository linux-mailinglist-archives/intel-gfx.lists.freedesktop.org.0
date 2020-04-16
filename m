Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4721AD029
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 21:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0266EA97;
	Thu, 16 Apr 2020 19:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E897D6EA97
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 19:10:15 +0000 (UTC)
IronPort-SDR: YiMdWFXa43nGtc5SPUd1nG+rRG6iH/cRGRhoR3SGCzUaFzZAnjc66MM7D5VWZoTZJRG0yPXHmz
 ZBSbXPYPaiWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 12:10:15 -0700
IronPort-SDR: vJk3ZQHtvVACPygwYhH/70rexlBIeuCa9JhGNTyC5cwuwIhVl1vaPCKOtpnbvOos+3xDkNeSIf
 8rTryLgR8cbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,392,1580803200"; d="scan'208";a="288999631"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 16 Apr 2020 12:10:13 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Apr 2020 12:10:13 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.90]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.47]) with mapi id 14.03.0439.000;
 Thu, 16 Apr 2020 12:10:13 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Add missing deinitialization
 cases of load failure
Thread-Index: AQHWE1nOeGZmZ4Nje0yuWkO+K9D4W6h7CRQAgAGLYAA=
Date: Thu, 16 Apr 2020 19:10:13 +0000
Message-ID: <1f0b3f169e91da5e9dece561c56e3f526b520cb7.camel@intel.com>
References: <20200415191408.82574-1-jose.souza@intel.com>
 <158697941400.24667.4512728438444809786@build.alporthouse.com>
In-Reply-To: <158697941400.24667.4512728438444809786@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.134.94.190]
Content-ID: <FD3936382BC27C41970EDF0D4A182B59@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add missing deinitialization
 cases of load failure
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA0LTE1IGF0IDIwOjM2ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAoMjAyMC0wNC0xNSAyMDoxNDowOCkNCj4g
PiArICAgICAgIGk5MTVfcmVzZXRfZXJyb3Jfc3RhdGUoaTkxNSk7DQo+IA0KPiBJZiB5b3UgYXJl
IGJvcmVkLCB3ZSBzaG91bGQgbW92ZSB0aGlzIHRvIHVucmVnaXN0ZXIgYXMgdGhhdCBpcyB0aGUN
Cj4gbGFzdA0KPiBwb2ludCBhdCB3aGljaCBpdCBjYW4gYmUgYWNjZXNzZWQgZnJvbSB1c2Vyc3Bh
Y2UuIEhvcGVmdWxseSBJDQo+IHJlbWVtYmVyDQo+IG5leHQgdGltZSB3ZSBhcmUgcmVhcnJhbmdp
bmcgdGhpcyBzZXF1ZW5jZS4NCg0KV2hhdCBpZiBzb21lIGVycm9yIGhhcHBlbiB1cCB0byBpOTE1
X2dlbV9kcml2ZXJfcmVtb3ZlKCk/IFdlIHdvdWxkIGxlYWsNCmEgaTkxNV9ncHVfY29yZWR1bXAu
DQoNCkxvb2tzIHRvIG1lIHRoYXQgaTkxNV9yZXNldF9lcnJvcl9zdGF0ZSgpIHNob3VsZCBiZQ0K
Y2FsbGVkIGFmdGVyIGk5MTVfZ2VtX2RyaXZlcl9yZW1vdmUoKS4NCg0KDQo+IC1DaHJpcw0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
