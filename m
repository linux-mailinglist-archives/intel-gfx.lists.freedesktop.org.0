Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 276C02D7433
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 11:50:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B7F6ED95;
	Fri, 11 Dec 2020 10:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71716ED95
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 10:50:51 +0000 (UTC)
IronPort-SDR: UTbdWvZG8X1fJszrHUtknlotk/z5SPkeMN5ovtA76LHtUH99/V4HqoTUbRLV4aXHZxDHTmWBOI
 3bBqSoDzpCDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="154222416"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="154222416"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 02:50:51 -0800
IronPort-SDR: 0NqQxnOl43MmGrKTwmbS9b/Eo2z76jyM5VVCOllKKwr3rJlwPPUWmNPk2EF6Lf5okJrk2Othy1
 NVvspvFYP5pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="376460520"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 11 Dec 2020 02:50:51 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Dec 2020 02:50:50 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Dec 2020 16:20:47 +0530
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 11 Dec 2020 10:50:45 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
Thread-Index: AQHWtCW5lp9pblo9/Eu7pjI8FAEe2anNzxyAgBl3UQCACqgkgA==
Date: Fri, 11 Dec 2020 10:50:45 +0000
Message-ID: <fada4424da8108c0c71370d18efb3d99ebf8d540.camel@intel.com>
References: <20201106101443.686053-1-gwan-gyeong.mun@intel.com>
 <20201106101443.686053-2-gwan-gyeong.mun@intel.com>
 <875z62q5pe.fsf@intel.com> <20201204160558.GE30377@intel.com>
In-Reply-To: <20201204160558.GE30377@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <C9A479891B2E1E438863F9BF378A434B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTEyLTA0IGF0IDIxOjM2ICswNTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToN
Cj4gT24gMjAyMC0xMS0xOCBhdCAxNjo0MjoyOSArMDUzMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+
ID4gT24gRnJpLCAwNiBOb3YgMjAyMCwgR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPg0KPiA+IHdyb3RlOg0KPiA+ID4gSW4gb3JkZXIgdG8gc3VwcG9ydCB0aGUgUFNS
IHN0YXRlIG9mIGVhY2ggdHJhbnNjb2RlciwgaXQgYWRkcw0KPiA+ID4gaTkxNV9wc3Jfc3RhdHVz
IHRvIHN1Yi1kaXJlY3Rvcnkgb2YgZWFjaCB0cmFuc2NvZGVyLg0KPiA+ID4gDQo+ID4gPiB2Mjog
Q2hhbmdlIHVzaW5nIG9mIFN5bWJvbGljIHBlcm1pc3Npb25zICdTX0lSVUdPJyB0byB1c2luZyBv
Zg0KPiA+ID4gb2N0YWwNCj4gPiA+ICAgICBwZXJtaXNzaW9ucyAnMDQ0NCcNCj4gPiA+IA0KPiA+
ID4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwu
Y29tPg0KPiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZWJ1Z2ZzLmMgIHwgMjMNCj4gPiA+ICsrKysrKysrKysrKysrKysrKysNCj4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5j
DQo+ID4gPiBpbmRleCA4NDAyZTZhYzlmNzYuLjM3ODA1NjE1YTIyMSAxMDA2NDQNCj4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMN
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
ZWJ1Z2ZzLmMNCj4gPiA+IEBAIC0yMDkzLDYgKzIwOTMsMjMgQEAgc3RhdGljIGludA0KPiA+ID4g
aTkxNV9oZGNwX3NpbmtfY2FwYWJpbGl0eV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAq
ZGF0YSkNCj4gPiA+ICB9DQo+ID4gPiAgREVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVfaGRjcF9z
aW5rX2NhcGFiaWxpdHkpOw0KPiA+ID4gIA0KPiA+ID4gK3N0YXRpYyBpbnQgaTkxNV9wc3Jfc3Rh
dHVzX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiA+ID4gK3sNCj4gPiA+
ICsJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG0tPnByaXZhdGU7DQo+ID4gPiAr
CXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPQ0KPiA+ID4gKwkJaW50ZWxfYXR0YWNoZWRfZHAo
dG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOw0KPiA+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiA+ICsNCj4gPiA+
ICsJaWYgKGNvbm5lY3Rvci0+c3RhdHVzICE9IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKQ0K
PiA+IA0KPiA+IEhvdydzIHRoaXMgcG9zc2libGUgZm9yIGVEUCwgYnR3Pw0KPiA+IA0KV2hlbiBJ
IHdyb3RlIHRoZSBjb2RlIGZpcnN0IGl0IHdhcyBjb25zaWRlcmVkIFBhbmVsUmVwbGF5IG9mIERQ
IHNwZWMuDQpmb3Igbm93IGl0IGlzIG5vdCBuZWVkZWQgZm9yIGVkcC4NCj4gPiBCUiwNCj4gPiBK
YW5pLg0KPiA+IA0KPiA+ID4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+ID4gPiArDQo+ID4gPiArCWlm
ICghSEFTX1BTUihkZXZfcHJpdikpDQo+ID4gPiArCQlyZXR1cm4gLUVOT0RFVjsNCj4gPiA+ICsN
Cj4gPiA+ICsJcmV0dXJuIGludGVsX3Bzcl9zdGF0dXMobSwgaW50ZWxfZHApOw0KPiA+ID4gK30N
Cj4gPiA+ICtERUZJTkVfU0hPV19BVFRSSUJVVEUoaTkxNV9wc3Jfc3RhdHVzKTsNCj4gPiA+ICsN
Cj4gPiA+ICAjZGVmaW5lIExQU1BfQ0FQQUJMRShDT05EKSAoQ09ORCA/IHNlcV9wdXRzKG0sICJM
UFNQOg0KPiA+ID4gY2FwYWJsZVxuIikgOiBcDQo+ID4gPiAgCQkJCXNlcV9wdXRzKG0sICJMUFNQ
OiBpbmNhcGFibGVcbiIpKQ0KPiA+ID4gIA0KPiA+ID4gQEAgLTIyNjgsNiArMjI4NSwxMiBAQCBp
bnQgaW50ZWxfY29ubmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdA0KPiA+ID4gZHJtX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yKQ0KPiA+ID4gIAkJCQkgICAgY29ubmVjdG9yLA0KPiA+ID4gJmk5MTVfcHNy
X3Npbmtfc3RhdHVzX2ZvcHMpOw0KPiA+ID4gIAl9DQo+ID4gPiAgDQo+ID4gPiArCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyICYmDQo+ID4gPiArCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rv
cl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFApIHsNCj4gSGkgR0cNCj4gSU1ITyB0aGlz
IHNob3VsZCBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9l
RFANCj4gfHwgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9TVUJDT05ORUNU
T1JfRGlzcGxheVBvcnQNCj4gdG8gc3VwcG9ydCBEUCBQYW5lbCBSZXBseSwgaSByZWFkIHNvbWV3
ZXJlIERQIHBhbmVsIHJlcGx5IGlzIFBTUiB3aXRoDQo+IExpbmsgRnVsbCBPTiA/DQo+IEkgYmVs
aWV2ZSB0aGlzIHdvdWxkIGJlIHRoZSByZWFzb24gdG8ga2VlcCBmaWxlIG5hbWUgYXMNCj4gImk5
MTVfcHNyX3N0YXR1cyIgaW5zdGVhZCBvZiBpOTE1X2VkcF9wc3Jfc3RhdHVzPyANCkhpIEFuc2h1
bWFuLA0KWWVzLCB0aGUgZmlsZSBuYW1lIChpOTE1X3Bzcl9zdGF0dXMpIHdhcyBjb25zaWRlcmVk
IGZvciBEUCBQYW5lbFJlcGxheQ0KdG9vLg0KQnV0IGZvciBub3csIGk5MTUgaXMgbm90IHN1cHBv
cnRlZCBQYW5lbFJlcGxheSB5ZXQsIGl0IHdvdWxkIGJlIGJldHRlcg0KdG8gbGltaXQgaXQgdG8g
ZWRwLg0KV2hlbiB0aGUgUGFuZWxSZXBsYXkgaXMgcmVhZHkgSSdsbCB1cGRhdGUgaGVyZSB0b28u
DQo+IFRoYW5rcywNCj4gQW5zaHVtYW4uIA0KPiA+ID4gKwkJZGVidWdmc19jcmVhdGVfZmlsZSgi
aTkxNV9wc3Jfc3RhdHVzIiwgMDQ0NCwgcm9vdCwNCj4gPiA+ICsJCQkJICAgIGNvbm5lY3Rvciwg
Jmk5MTVfcHNyX3N0YXR1c19mb3BzKTsNCj4gPiA+ICsJfQ0KPiA+ID4gKw0KPiA+ID4gIAlpZiAo
Y29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfRGlzcGxheVBv
cnQNCj4gPiA+IHx8DQo+ID4gPiAgCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERS
TV9NT0RFX0NPTk5FQ1RPUl9IRE1JQSB8fA0KPiA+ID4gIAkgICAgY29ubmVjdG9yLT5jb25uZWN0
b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUIpIHsNCj4gPiANCj4gPiAtLSANCj4g
PiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQo+ID4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
