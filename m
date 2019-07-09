Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3DA63610
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396588916D;
	Tue,  9 Jul 2019 12:39:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0711E8916D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:39:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="364570791"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jul 2019 05:39:27 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.59]) by
 IRSMSX154.ger.corp.intel.com ([169.254.12.160]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 13:39:26 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 07/25] drm/i915/tgl: Check if pipe D is fused
Thread-Index: AQHVNeNDywM1/Sp9REyRthDedkkYF6bCKwAA
Date: Tue, 9 Jul 2019 12:39:26 +0000
Message-ID: <531337a11f24b67defd8d13c476ca79d01e97388.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-8-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-8-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.207]
Content-ID: <D154559280724B4B9D16072724BD4779@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 07/25] drm/i915/tgl: Check if pipe D is
 fused
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

T24gTW9uLCAyMDE5LTA3LTA4IGF0IDE2OjE2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
Cj4gRnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4g
Cj4gT24gVGlnZXIgTGFrZSB0aGVyZSBpcyBvbmUgbW9yZSBwaXBlIC0gY2hlY2sgaWYgaXQncyBm
dXNlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICB8IDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwg
MyArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+IGluZGV4IDMxYzZjMTY4ZGRlMi4uMDhkYzcxZTRiODE4IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTc2MzMsNiArNzYzMyw3IEBAIGVudW0gewo+ICAj
ZGVmaW5lIFNLTF9ERlNNX1BJUEVfQV9ESVNBQkxFCQkoMSA8PCAzMCkKPiAgI2RlZmluZSBTS0xf
REZTTV9QSVBFX0JfRElTQUJMRQkJKDEgPDwgMjEpCj4gICNkZWZpbmUgU0tMX0RGU01fUElQRV9D
X0RJU0FCTEUJCSgxIDw8IDI4KQo+ICsjZGVmaW5lIFRHTF9ERlNNX1BJUEVfRF9ESVNBQkxFCQko
MSA8PCAyMikKPiAgCj4gICNkZWZpbmUgU0tMX0RTU00JCQkJX01NSU8oMHg1MTAwNCkKPiAgI2Rl
ZmluZSBDTkxfRFNTTV9DRENMS19QTExfUkVGQ0xLXzI0TUh6CQkoMSA8PCAzMSkKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+IGluZGV4IGUwZDlhN2EzNzk5NC4u
Zjk5YzlmZDQ5N2IyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jCj4gQEAgLTkzOCw2ICs5MzgsOSBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVf
aW5pdChzdHJ1Y3QKPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQkJZW5hYmxlZF9t
YXNrICY9IH5CSVQoUElQRV9CKTsKPiAgCQlpZiAoZGZzbSAmIFNLTF9ERlNNX1BJUEVfQ19ESVNB
QkxFKQo+ICAJCQllbmFibGVkX21hc2sgJj0gfkJJVChQSVBFX0MpOwo+ICsJCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyICYmCj4gKwkJICAgIChkZnNtICYgVEdMX0RGU01fUElQRV9EX0RJ
U0FCTEUpKQo+ICsJCQllbmFibGVkX21hc2sgJj0gfkJJVChQSVBFX0QpOwo+ICAKPiAgCQkvKgo+
ICAJCSAqIEF0IGxlYXN0IG9uZSBwaXBlIHNob3VsZCBiZSBlbmFibGVkIGFuZCBpZiB0aGVyZSBh
cmUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
