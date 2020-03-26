Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10593193E77
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 12:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E4D6E31A;
	Thu, 26 Mar 2020 11:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3677C6E31A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 11:59:55 +0000 (UTC)
IronPort-SDR: WxgvDrhQaCdSA5E8l88YTqGKOLxnF0o3fCdm36uL5PnZKa45wfVJDFLHEnTZNiXrDhP1tiIgAF
 T79VzakB7tQA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 04:59:54 -0700
IronPort-SDR: +maf/4Wsrt4wXkxVG5ySkATn5nFKlSoRJzOmAeQ1tkRz3wMHrThUo8c+ZOupG16LjevrysRnlr
 av+JY4U31OUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="293612757"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Mar 2020 04:59:54 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 04:59:54 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx115.amr.corp.intel.com (10.18.116.19) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 04:59:53 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.153]) with mapi id 14.03.0439.000;
 Thu, 26 Mar 2020 17:29:49 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Fix mode private_flags comparison at
 atomic_check
Thread-Index: AQHWAz9GOT9ay/vT0UKyob+RMOJ90KhaVTUAgABwIFA=
Date: Thu, 26 Mar 2020 11:59:49 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8243C8DF@BGSMSX104.gar.corp.intel.com>
References: <20200326074928.10395-1-uma.shankar@intel.com>
 <1ba94cef-ea8a-2271-2915-2837f8eabf21@linux.intel.com>
In-Reply-To: <1ba94cef-ea8a-2271-2915-2837f8eabf21@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
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
Cc: "Khor,
 Swee Aun" <swee.aun.khor@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXks
IE1hcmNoIDI2LCAyMDIwIDQ6MTggUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogVmlsbGUg
U3lyasOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IEthaSBWZWhtYW5lbg0KPiA8
a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT47IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT47IEtob3IsIFN3ZWUNCj4gQXVuIDxzd2VlLmF1bi5raG9yQGludGVsLmNvbT4NCj4g
U3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogRml4IG1vZGUgcHJpdmF0ZV9m
bGFncyBjb21wYXJpc29uIGF0DQo+IGF0b21pY19jaGVjaw0KPiANCj4gT3AgMjYtMDMtMjAyMCBv
bSAwODo0OSBzY2hyZWVmIFVtYSBTaGFua2FyOg0KPiA+IFRoaXMgcGF0Y2ggZml4ZXMgdGhlIHBy
aXZhdGVfZmxhZ3Mgb2YgbW9kZSB0byBiZSBjaGVja2VkIGFuZCBjb21wYXJlZA0KPiA+IGFnYWlu
c3QgdWFwaS5tb2RlIGFuZCBub3QgZnJvbSBody5tb2RlLiBUaGlzIGhlbHBzIHByb3Blcmx5IHRy
aWdnZXINCj4gPiBtb2Rlc2V0IGF0IGJvb3QgaWYgZGVzaXJlZCBieSBkcml2ZXIuDQo+ID4NCj4g
PiBJdCBoZWxwcyByZXNvbHZlIGF1ZGlvX2NvZGVjIGluaXRpYWxpemF0aW9uIGlzc3VlcyBpZiBk
aXNwbGF5IGlzDQo+ID4gY29ubmVjdGVkIGF0IGJvb3QuIEluaXRpYWwgZGlzY3Vzc2lvbiBvbiB0
aGlzIGlzc3VlIGhhcyBoYXBwZW5lZCBvbg0KPiA+IGJlbG93IHRocmVhZDoNCj4gPiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzc0ODI4Lw0KPiA+DQo+ID4gRml4ZXM6
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEzNjMNCj4g
DQo+IFdyb25nIHVzZSBvZiBmaXhlcy4gOikNCj4gDQo+IFVzZSBkaW0gZml4ZXMgb3JpZ2luYWwt
Y29tbWl0LWlkIHRvIHJlZmVyZW5jZSB0aGUgY29tbWl0LiBBbmQgZm9yIHRoaXMgdXNlIHRoZQ0K
PiBDbG9zZXM6IHRhZy4NCj4gDQo+IE90aGVyIHRoYW4gdGhhdCBsb29rcyBnb29kLiA6KQ0KPiAN
Cj4gU28gd2l0aCBoZWFkZXJzIGZpeGVkOg0KDQpUaGFua3MgZm9yIHRoZSBmZWVkYmFjayBNYWFy
dGVuLiBGbG9hdGVkIHYyIHdpdGggdGhpcyB1cGRhdGVkLg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5r
YXINCg0KPiBSZXZpZXdlZC1CeTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4NCj4gDQo+ID4gQ2M6IFZpbGxlIFN5cmrDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1h
bmVuQGxpbnV4LmludGVsLmNvbT4NCj4gPiBDYzogU291emEsIEpvc2UgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiA+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFN3ZWVBdW4gS2hvciA8c3dlZS5hdW4u
a2hvckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggZmU1NWM3YzcxM2YxLi5l
NjMwNDI5YWYyYzAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xNDc0Nyw4ICsxNDc0Nyw4IEBAIHN0YXRpYyBpbnQg
aW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ID4gIAkvKiBDYXRj
aCBJOTE1X01PREVfRkxBR19JTkhFUklURUQgKi8NCj4gPiAgCWZvcl9lYWNoX29sZG5ld19pbnRl
bF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwNCj4gPiAgCQkJCQkg
ICAgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gPiAtCQlpZiAobmV3X2NydGNfc3RhdGUtPmh3Lm1v
ZGUucHJpdmF0ZV9mbGFncyAhPQ0KPiA+IC0JCSAgICBvbGRfY3J0Y19zdGF0ZS0+aHcubW9kZS5w
cml2YXRlX2ZsYWdzKQ0KPiA+ICsJCWlmIChuZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlLnByaXZh
dGVfZmxhZ3MgIT0NCj4gPiArCQkgICAgb2xkX2NydGNfc3RhdGUtPnVhcGkubW9kZS5wcml2YXRl
X2ZsYWdzKQ0KPiA+ICAJCQluZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVl
Ow0KPiA+ICAJfQ0KPiA+DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
