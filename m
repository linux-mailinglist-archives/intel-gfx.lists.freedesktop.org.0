Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7865ABEC1D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 08:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A536ECB5;
	Thu, 26 Sep 2019 06:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DAC6ECB5
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 06:42:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 23:42:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,550,1559545200"; d="scan'208";a="389504630"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga005.fm.intel.com with ESMTP; 25 Sep 2019 23:42:39 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 25 Sep 2019 23:42:39 -0700
Received: from orsmsx109.amr.corp.intel.com ([169.254.11.122]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.46]) with mapi id 14.03.0439.000;
 Wed, 25 Sep 2019 23:42:39 -0700
From: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC v3 6/9] drm/framebuffer: Format modifier for Intel Gen-12
 media compression
Thread-Index: AQHVcfnooXXSbnZb/kST//tJ9BufRqc9/IwA
Date: Thu, 26 Sep 2019 06:42:39 +0000
Message-ID: <a777ff73248bea38e93af64e7f8a5456c3e06344.camel@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
 <20190923102935.5860-7-dhinakaran.pandiyan@intel.com>
In-Reply-To: <20190923102935.5860-7-dhinakaran.pandiyan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.139]
Content-ID: <005D7767B00C7540897E8141A10EB373@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v3 6/9] drm/framebuffer: Format modifier for
 Intel Gen-12 media compression
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
Cc: "Chery, Nanley G" <nanley.g.chery@intel.com>, "Bai,
 Guangyao" <guangyao.bai@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA5LTIzIGF0IDAzOjI5IC0wNzAwLCBEaGluYWthcmFuIFBhbmRpeWFuIHdy
b3RlOg0KPiBHZW4tMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBzdXJmYWNlcyBjb21wcmVzc2Vk
IGJ5IHRoZSBtZWRpYSBlbmdpbmUsIGFkZA0KPiBhIG5ldyBtb2RpZmllciBhcyB0aGUgZHJpdmVy
IG5lZWRzIHRvIGtub3cgdGhlIHN1cmZhY2Ugd2FzIGNvbXByZXNzZWQgYnkNCj4gdGhlIG1lZGlh
IG9yIHJlbmRlciBlbmdpbmUuDQo+IA0KPiBDYzogTmFubGV5IEcgQ2hlcnkgPG5hbmxleS5nLmNo
ZXJ5QGludGVsLmNvbT4NCj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KDQpDYzogR3Vhbmd5YW8NCg0KPiBTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFuIFBhbmRpeWFu
IDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgaW5jbHVkZS91
YXBpL2RybS9kcm1fZm91cmNjLmggfCAxMyArKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0v
ZHJtX2ZvdXJjYy5oIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgNCj4gaW5kZXggMWYw
ZmJmMDM5OGY2Li5jNGE0ZTBmZGJlZTUgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvdWFwaS9kcm0v
ZHJtX2ZvdXJjYy5oDQo+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oDQo+IEBA
IC00MjEsNiArNDIxLDE5IEBAIGV4dGVybiAiQyIgew0KPiAgICovDQo+ICAjZGVmaW5lIEk5MTVf
Rk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUyBmb3VyY2NfbW9kX2NvZGUoSU5URUwsIDYp
DQo+ICANCj4gKy8qDQo+ICsgKiBJbnRlbCBjb2xvciBjb250cm9sIHN1cmZhY2VzIChDQ1MpIGZv
ciBHZW4tMTIgbWVkaWEgY29tcHJlc3Npb24NCj4gKyAqDQo+ICsgKiBUaGUgbWFpbiBzdXJmYWNl
IGlzIFktdGlsZWQgYW5kIGF0IHBsYW5lIGluZGV4IDAsIHRoZSBDQ1MgaXMgbGluZWFyIGFuZA0K
PiArICogYXQgaW5kZXggMS4gQSA2NEIgQ0NTIGNhY2hlIGxpbmUgY29ycmVzcG9uZHMgdG8gYW4g
YXJlYSBvZiA0eDEgdGlsZXMgaW4NCj4gKyAqIG1haW4gc3VyZmFjZS4gSW4gb3RoZXIgd29yZHMs
IDQgYml0cyBpbiBDQ1MgbWFwIHRvIGEgbWFpbiBzdXJmYWNlIGNhY2hlDQo+ICsgKiBsaW5lIHBh
aXIuIFRoZSBtYWluIHN1cmZhY2UgcGl0Y2ggaXMgcmVxdWlyZWQgdG8gYmUgYSBtdWx0aXBsZSBv
ZiBmb3VyDQo+ICsgKiBZLXRpbGUgd2lkdGhzLiBGb3Igc2VtaS1wbGFuYXIgZm9ybWF0cyBsaWtl
IE5WMTIsIENDUyBwbGFuZSBmb2xsb3dzIHRoZQ0KPiArICogWSBhbmQgVVYgcGxhbmVzIGkuZS4s
IHBsYW5lcyAwIGFuZCAyIGFyZSB1c2VkIGZvciBZIGFuZCBVViBzdXJmYWNlcywNCj4gKyAqIHBs
YW5lcyAxIGFuZCAzIGZvciB0aGUgcmVzcGVjdGl2ZSBDQ1MuDQo+ICsgKi8NCj4gKyNkZWZpbmUg
STkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIGZvdXJjY19tb2RfY29kZShJTlRF
TCwgNykNCj4gKw0KPiAgLyoNCj4gICAqIFRpbGVkLCBOVjEyTVQsIGdyb3VwZWQgaW4gNjQgKHBp
eGVscykgeCAzMiAobGluZXMpIC1zaXplZCBtYWNyb2Jsb2Nrcw0KPiAgICoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
