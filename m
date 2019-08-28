Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F80BA0B8B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 22:31:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7EE389C89;
	Wed, 28 Aug 2019 20:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B800F89C89
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 20:31:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 13:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="171669035"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 28 Aug 2019 13:31:27 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.141]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 13:31:27 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "jason@jlekstrand.net" <jason@jlekstrand.net>, "daniel.vetter@ffwll.ch"
 <daniel.vetter@ffwll.ch>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
Thread-Index: AQHVV3mqz9dp+m3qSUCZtIUHXAtboKcE6KeAgAARkQCAARxlgIAAF8SAgAHW14CACXrWAIAAAI6AgAAE6gA=
Date: Wed, 28 Aug 2019 20:31:27 +0000
Message-ID: <6c22439c4f38d0be6f8183bbe279c9e0f3db983b.camel@intel.com>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
 <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
 <e01a7b6890346444f3fa3f78cca1a2315412a37a.camel@intel.com>
 <156702323116.15406.18211831116094527542@skylake-alporthouse-com>
In-Reply-To: <156702323116.15406.18211831116094527542@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <3827026662698C40B30C78A3F1802C65@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA4LTI4IGF0IDIxOjEzICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgU291emEsIEpvc2UgKDIwMTktMDgtMjggMjE6MTE6NTMpDQo+ID4gUmV2aWV3ZWQt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiANCj4g
SXQncyB1c2luZyBhIG5vbi1zdGFuZGFyZCBmb3IgaTkxNSBlcnJvciBjb2RlLCBhbmQgZ2V0X3Rp
bGluZyBpcyBub3QNCg0KSHV1bSBzaG91bGQgaXQgdXNlIEVOT1RTVVBQIHRoZW4/IQ0KDQo+IGFm
ZmVjdGVkLCBpdCB3aWxsIGFsd2F5cyByZXR1cm4gTElORUFSLiBZb3UgY2Fubm90IHNldCB0aWxp
bmcgYXMgDQoNCkZvbGxvd2luZyB0aGlzIHNldF90aWxpbmcoKSBMSU5FQVIgc2hvdWxkIGJlIGFs
bG93ZWQgdG9vLg0KSSBwcmVmZXIgdGhlIGN1cnJlbnQgYXBwcm9hY2ggb2YgcmV0dXJuaW5nIGVy
cm9yLg0KDQo+IHRoZXJlDQo+IGlzIG5vIGZlbmNlIChhY2NvcmRpbmcgdG8gdGhlIG5ldyBhYmkp
Lg0KPiAtQ2hyaXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
