Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA9EA3EBB
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 22:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704476E372;
	Fri, 30 Aug 2019 20:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB6ED6E3C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 20:01:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 13:01:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="193436878"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga002.jf.intel.com with ESMTP; 30 Aug 2019 13:01:49 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 13:01:49 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.63]) with mapi id 14.03.0439.000;
 Fri, 30 Aug 2019 13:01:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v3 5/7] drm/i915/tgl: disable SAGV temporarily
Thread-Index: AQHVXkvQWRbZho3dCkaT5P7K3AB6IqcUlEQA
Date: Fri, 30 Aug 2019 20:01:48 +0000
Message-ID: <97a528a021dd69d9316507c51e5ff83699a80bf3.camel@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-6-lucas.demarchi@intel.com>
In-Reply-To: <20190829092554.32198-6-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <BEE81A4164E5E144A416338DBF3CDFB1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 5/7] drm/i915/tgl: disable SAGV
 temporarily
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA4LTI5IGF0IDAyOjI1IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IFNBR1YgaXMgbm90IGN1cnJlbnRseSB3b3JraW5nIGZvciBUaWdlciBMYWtlLiBXZSBiZXR0
ZXIgZGlzYWJsZSBpdA0KPiB1bnRpbA0KPiB0aGUgaW1wbGVtZW50YXRpb24gaXMgc3RhYmlsaXpl
ZCBhbmQgd2UgY2FuIGVuYWJsZSBpdC4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgNCArKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gaW5kZXggNGZh
OWJjODNjOGI0Li43Mjk0ZmNmMDUzMjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0K
PiBAQCAtMzY1NCw2ICszNjU0LDEwIEBAIHN0YXRpYyBib29sIHNrbF9uZWVkc19tZW1vcnlfYndf
d2Eoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgc3RhdGljIGJvb2wN
Cj4gIGludGVsX2hhc19zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4g
IHsNCj4gKwkvKiBIQUNLISAqLw0KPiArCWlmIChJU19HRU4oZGV2X3ByaXYsIDEyKSkNCj4gKwkJ
cmV0dXJuIGZhbHNlOw0KPiArDQo+ICAJcmV0dXJuIChJU19HRU45X0JDKGRldl9wcml2KSB8fCBJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEwKSAmJg0KPiAgCQlkZXZfcHJpdi0+c2Fndl9zdGF0dXMg
IT0gSTkxNV9TQUdWX05PVF9DT05UUk9MTEVEOw0KPiAgfQ0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
