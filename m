Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0C572A37
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 10:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB4B6E49D;
	Wed, 24 Jul 2019 08:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A042E6E49D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 08:35:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 01:35:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="174813886"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 24 Jul 2019 01:35:17 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jul 2019 01:35:17 -0700
Received: from hasmsx107.ger.corp.intel.com (10.184.198.27) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jul 2019 01:35:17 -0700
Received: from hasmsx106.ger.corp.intel.com ([169.254.10.57]) by
 hasmsx107.ger.corp.intel.com ([169.254.2.129]) with mapi id 14.03.0439.000;
 Wed, 24 Jul 2019 11:35:14 +0300
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Winkler, Tomas"
 <tomas.winkler@intel.com>
Thread-Topic: [PATCH] mei: Abort writes if incomplete after 1s
Thread-Index: AQHVQUh9EyPhTupKrUyMtZr0cChB+abX3bwAgAAA/oCAAZPUQA==
Date: Wed, 24 Jul 2019 08:35:13 +0000
Message-ID: <C980C034A53E0646B96866D6CE3D187AD881E2B4@HASMSX106.ger.corp.intel.com>
References: <20190723111913.20475-1-chris@chris-wilson.co.uk>
 <5B8DA87D05A7694D9FA63FD143655C1B9DC7C082@hasmsx108.ger.corp.intel.com>
 <156388132716.31349.11822559564861280475@skylake-alporthouse-com>
In-Reply-To: <156388132716.31349.11822559564861280475@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2I2OTQ0NWUtMmNiOC00NGRlLTkxY2YtYzMyZWM5MGEzMGZiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiemZjbmdUUjBUdUR0eUQ3QjFKb3hXNEFnb3VoeTlxUzFzSDg1RnRINnMwK3FPNWVoREtiMXkxMm85VnBSTTc3cSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.184.70.11]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] mei: Abort writes if incomplete after 1s
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBDaHJpcyBXaWxzb24gW21haWx0
bzpjaHJpc0BjaHJpcy13aWxzb24uY28udWtdDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bHkgMjMsIDIw
MTkgMTQ6MjkNCj4gVG86IFdpbmtsZXIsIFRvbWFzIDx0b21hcy53aW5rbGVyQGludGVsLmNvbT47
IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnOyBVc3lza2luLCBBbGV4YW5kZXINCj4gPGFsZXhhbmRlci51c3lza2lu
QGludGVsLmNvbT47IEMsIFJhbWFsaW5nYW0gPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJFOiBbUEFUQ0hdIG1laTogQWJvcnQgd3JpdGVzIGlmIGluY29tcGxldGUgYWZ0ZXIg
MXMNCj4gDQo+IFF1b3RpbmcgV2lua2xlciwgVG9tYXMgKDIwMTktMDctMjMgMTI6MjU6MTQpDQo+
ID4gPg0KPiA+ID4gRHVyaW5nIGk5MTUgdW5sb2FkLCBpdCBhcHBlYXJzIHRoYXQgaXQgbWF5IGdl
dCBzdHVjayB3YWl0aW5nIG9uIGENCj4gPiA+IHdvcmtxdWV1ZSBiZWluZyBob2dnZWQgYnkgbWVp
Og0KPiA+DQo+ID4gVGhhbmtzIGZvciB0aGUgYnVnIHJlcG9ydCwgYnV0IHRoaXMgaXMgbm90IGEg
cHJvcGVyIGZpeCwgd2Ugd2lsbCB0cnkgdG8gd29yayBpdCBvdXQuDQo+IA0KPiBQZXJmZWN0IDop
DQo+IA0KPiBJdCdzIG9ubHkgaGFwcGVuZWQgYSBjb3VwbGUgb2YgdGltZXMgaW4gdGhlIGxhc3Qg
d2VlayBvciBzbywgYnV0IGlmIHlvdSB3YW50IHRvDQo+IHRocm93IHBhdGNoZXMgYXQgaW50ZWwt
Z2Z4LXRyeWJvdEBsaXN0cy5mcmVlZGVza3RvcC5vcmcgdG8gdHJ5IGFuZCBncmFiIG1vcmUNCj4g
aW5mb3JtYXRpb24sIHBsZWFzZSBmZWVsIGZyZWUgdG8uDQo+IC1DaHJpcw0KDQpEbyB5b3UgaGF2
ZSBmdWxsIGRtZXNnIGZyb20gYWZmZWN0ZWQgc3lzdGVtPw0KDQpUaGFua3MNCi0tDQpTYXNoYQ0K
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
