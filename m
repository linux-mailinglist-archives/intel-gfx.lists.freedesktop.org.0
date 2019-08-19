Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBA094C56
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 20:07:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E246E25F;
	Mon, 19 Aug 2019 18:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA886E25F
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 18:07:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 11:07:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="180432436"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga003.jf.intel.com with ESMTP; 19 Aug 2019 11:07:47 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 19 Aug 2019 11:07:47 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.49]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.75]) with mapi id 14.03.0439.000;
 Mon, 19 Aug 2019 11:07:47 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 04/40] drm/i915/tgl: update DMC firmware to 2.04
Thread-Index: AQHVVN+nyHcchU27W065ZaVKxP1CT6cCxH/ggAB37oD//4vH4A==
Date: Mon, 19 Aug 2019 18:07:47 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B07348120823@ORSMSX108.amr.corp.intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-5-lucas.demarchi@intel.com>
 <83F5C7385F545743AD4FB2A62F75B07348120643@ORSMSX108.amr.corp.intel.com>
 <20190819180333.wwmxffdbejrjipdr@ldmartin-desk1>
In-Reply-To: <20190819180333.wwmxffdbejrjipdr@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmE2ZWU4OWQtYmExNi00YTY2LThiOGItZDM3YmE2ZmI2YjU0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRzNXVk5JZzNcL3FEeklXbWlNaGZ4TFdwZTFxcDZySmx2THRnaThLNWorZld0Y1F2U2VoMjBVNzFZVlRidnVmdngifQ==
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 04/40] drm/i915/tgl: update DMC firmware
 to 2.04
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogRGUgTWFyY2hpLCBMdWNhcwo+
IFNlbnQ6IE1vbmRheSwgQXVndXN0IDE5LCAyMDE5IDExOjA0IEFNCj4gVG86IFNyaXZhdHNhLCBB
bnVzaGEgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4gQ2M6IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmc7IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBTdWJq
ZWN0OiBSZTogW1BBVENIIHYyIDA0LzQwXSBkcm0vaTkxNS90Z2w6IHVwZGF0ZSBETUMgZmlybXdh
cmUgdG8gMi4wNAo+IAo+IE9uIE1vbiwgQXVnIDE5LCAyMDE5IGF0IDEwOjU1OjU2QU0gLTA3MDAs
IEFudXNoYSBTcml2YXRzYSB3cm90ZToKPiA+Cj4gPgo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4gPj4gRnJvbTogRGUgTWFyY2hpLCBMdWNhcwo+ID4+IFNlbnQ6IFNhdHVyZGF5LCBB
dWd1c3QgMTcsIDIwMTkgMjozOCBBTQo+ID4+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gPj4gQ2M6IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT47IFNyaXZh
dHNhLCBBbnVzaGEKPiA+PiA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiA+PiBTdWJqZWN0
OiBbUEFUQ0ggdjIgMDQvNDBdIGRybS9pOTE1L3RnbDogdXBkYXRlIERNQyBmaXJtd2FyZSB0byAy
LjA0Cj4gPj4KPiA+PiAyIGltcG9ydGFudCBmaXhlczoKPiA+PiAgIC0gdmJsYW5rIGNvdW50ZXIg
aXMgbm93IHdvcmtpbmcKPiA+PiAgIC0gUFNSMSBpcyB3b3JraW5nCj4gPj4KPiA+PiBDYzogSm9z
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8
YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiA+Cj4gPlJldmlld2VkLWJ5OiBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4gCj4gdGhhbmtzLiBDYW4g
eW91IHNlbmQgdGhlIERNQyBmaXJtd2FyZSB0byB0aGUgZmlybXdhcmUgcmVwbz8KCk9uIGl0LgoK
QW51c2hhIAo+IEx1Y2FzIERlIE1hcmNoaQo+IAo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jc3IuYyB8IDQgKystLQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jc3IuYwo+ID4+IGluZGV4IDgyNzllNzJlZGY0Yy4uNTQ2NTc3ZTM5YjRlIDEwMDY0NAo+ID4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj4gPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPiA+PiBAQCAtMzksOCArMzksOCBAQAo+ID4+Cj4g
Pj4gICNkZWZpbmUgR0VOMTJfQ1NSX01BWF9GV19TSVpFCQlJQ0xfQ1NSX01BWF9GV19TSVpFCj4g
Pj4KPiA+PiAtI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkxNS90Z2xfZG1jX3ZlcjJfMDMuYmlu
Igo+ID4+IC0jZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCAz
KQo+ID4+ICsjZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wNC5iaW4i
Cj4gPj4gKyNkZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIsIDQp
Cj4gPj4gICNkZWZpbmUgVEdMX0NTUl9NQVhfRldfU0laRQkJMHg2MDAwCj4gPj4gIE1PRFVMRV9G
SVJNV0FSRShUR0xfQ1NSX1BBVEgpOwo+ID4+Cj4gPj4gLS0KPiA+PiAyLjIxLjAKPiA+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
