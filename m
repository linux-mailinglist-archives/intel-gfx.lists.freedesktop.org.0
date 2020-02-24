Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4E116B181
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 22:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE996E975;
	Mon, 24 Feb 2020 21:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F396E975
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 21:07:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 13:07:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,481,1574150400"; d="scan'208";a="384255057"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga004.jf.intel.com with ESMTP; 24 Feb 2020 13:07:50 -0800
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 13:07:50 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.123]) with mapi id 14.03.0439.000;
 Mon, 24 Feb 2020 13:07:50 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH 3/8] drm/i915/tgl: Implement Wa_1806527549
Thread-Index: AQHV6STatPl4JmANjkiKYwjMHT9HJagnbtYAgAPyJYA=
Date: Mon, 24 Feb 2020 21:07:49 +0000
Message-ID: <80ba328ce588334b9458b7ed32284409dd795392.camel@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
 <20200222020815.50599-3-jose.souza@intel.com>
 <158236159095.13442.15888416881045741746@skylake-alporthouse-com>
In-Reply-To: <158236159095.13442.15888416881045741746@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.234]
Content-ID: <7C3C760A9CA0254FB95EDD76FA01ECFF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/tgl: Implement Wa_1806527549
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

T3VjaCEgVGhhbmtzIGZpeGVkDQoNCk9uIFNhdCwgMjAyMC0wMi0yMiBhdCAwODo1MyArMDAwMCwg
Q2hyaXMgV2lsc29uIHdyb3RlOg0KPiBRdW90aW5nIEpvc8OpIFJvYmVydG8gZGUgU291emEgKDIw
MjAtMDItMjIgMDI6MDg6MTApDQo+ID4gVGhpcyB3aWxsIHdoaXRlbGlzdCB0aGUgSElaX0NISUNL
RU4gcmVnaXN0ZXIgc28gbWVzYSBjYW4gZGlzYWJsZQ0KPiA+IHRoZQ0KPiA+IG9wdGltaXphdGlv
bnMgYW5kIHZvaWQgaGFuZyB3aGVuIHVzaW5nIEQxNl9VTk9STS4NCj4gDQo+IEJ1dCBpdCdzIG5v
dCBhZGRlZCB0byB0aGUgd2hpdGVsaXN0Lg0KPiAtQ2hyaXMNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
