Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFC824A97B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 00:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 303EE6E864;
	Wed, 19 Aug 2020 22:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD006E864
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 22:38:21 +0000 (UTC)
IronPort-SDR: HFcGT97XNbQDxllH89X0kkWbjQYQ0KmDyOpPaojVH5slLVwJbI8l/G8IDcWaRIpMhcm05805ux
 ooeWOJcW8CLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="134727344"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="134727344"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 15:38:21 -0700
IronPort-SDR: G4eBATo9bVhpYizwJ99uTt7bKlp8Xz6PqhimgvbN/iS3eA83ukNt8Q05ugq2TcRbgEk1CtGmzS
 RunvNETwScng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="400963330"
Received: from fmsmsx602-2.cps.intel.com (HELO fmsmsx602.amr.corp.intel.com)
 ([10.18.84.212])
 by fmsmga001.fm.intel.com with ESMTP; 19 Aug 2020 15:38:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Aug 2020 15:38:20 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 19 Aug 2020 15:38:20 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.125]) with mapi id 14.03.0439.000;
 Wed, 19 Aug 2020 15:38:20 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Apply Wa_14011264657:gen11+
Thread-Index: AQHWcOyX1fyRR60KPkiXrdT2OzA2K6lAhxUA
Date: Wed, 19 Aug 2020 22:38:20 +0000
Message-ID: <a0d065c3b3d152297682bfb35bb0ac1ecd8557cc.camel@intel.com>
References: <20200812210702.7153-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200812210702.7153-1-matthew.s.atwood@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <9DC45893D7BB994EAD5F0B8FBAB1C6E1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Apply Wa_14011264657:gen11+
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

T24gV2VkLCAyMDIwLTA4LTEyIGF0IDE0OjA3IC0wNzAwLCBNYXR0IEF0d29vZCB3cm90ZToNCj4g
QWRkIG1pbmltdW0gd2lkdGggdG8gcGxhbmVzLCB2YXJpYWJsZSB3aXRoIHNwZWNpZmljIGZvcm1h
dHMgZm9yIGdlbjExKw0KPiB0byByZWZsZWN0IHJlY2VudCBic3BlYyBjaGFuZ2VzLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogTWF0dCBBdHdvb2QgPA0KPiBtYXR0aGV3LnMuYXR3b29kQGludGVsLmNv
bQ0KPiA+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCA1NCArKysrKysrKysrKysrKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ2IGlu
c2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAyZGRhYmY5MmFkZGUuLmI1ZWJjZmY4
ZDU2ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gQEAgLTM3NjIsNiArMzc2Miw0NCBAQCBzdGF0aWMgaW50IGdsa19tYXhfcGxhbmVf
d2lkdGgoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsDQo+ICAJfQ0KPiAgfQ0KPiAg
DQo+ICtzdGF0aWMgaW50IGljbF9taW5fcGxhbmVfd2lkdGgoY29uc3Qgc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmIpDQo+ICt7DQo+ICsJLyogV2FfMTQwMTEyNjQ2NTcsIFdhXzE0MDExMDUwNTYz
OiBnZW4xMSsgKi8NCj4gKwlzd2l0Y2ggKGZiLT5mb3JtYXQtPmZvcm1hdCkgew0KPiArCWNhc2Ug
RFJNX0ZPUk1BVF9DODoNCj4gKwkJcmV0dXJuIDE4Ow0KPiArCWNhc2UgRFJNX0ZPUk1BVF9SR0I1
NjU6DQo+ICsJCXJldHVybiAxMDsNCj4gKwljYXNlIERSTV9GT1JNQVRfWFJHQjg4ODg6DQo+ICsJ
Y2FzZSBEUk1fRk9STUFUX1hCR1I4ODg4Og0KPiArCWNhc2UgRFJNX0ZPUk1BVF9BUkdCODg4ODoN
Cj4gKwljYXNlIERSTV9GT1JNQVRfQUJHUjg4ODg6DQo+ICsJY2FzZSBEUk1fRk9STUFUX1hSR0Iy
MTAxMDEwOg0KPiArCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDoNCj4gKwljYXNlIERSTV9G
T1JNQVRfQVJHQjIxMDEwMTA6DQo+ICsJY2FzZSBEUk1fRk9STUFUX0FCR1IyMTAxMDEwOg0KPiAr
CWNhc2UgRFJNX0ZPUk1BVF9YVllVMjEwMTAxMDoNCj4gKwljYXNlIERSTV9GT1JNQVRfWTIxMjoN
Cj4gKwljYXNlIERSTV9GT1JNQVRfWTIxNjoNCj4gKwkJcmV0dXJuIDY7DQo+ICsJY2FzZSBEUk1f
Rk9STUFUX05WMTI6DQo+ICsJCXJldHVybiAyMDsNCj4gKwljYXNlIERSTV9GT1JNQVRfUDAxMDoN
Cj4gKwljYXNlIERSTV9GT1JNQVRfUDAxMjoNCj4gKwljYXNlIERSTV9GT1JNQVRfUDAxNjoNCj4g
KwkJcmV0dXJuIDEyOw0KPiArCWNhc2UgRFJNX0ZPUk1BVF9YUkdCMTYxNjE2MTZGOg0KPiArCWNh
c2UgRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGOg0KPiArCWNhc2UgRFJNX0ZPUk1BVF9BUkdCMTYx
NjE2MTZGOg0KPiArCWNhc2UgRFJNX0ZPUk1BVF9BQkdSMTYxNjE2MTZGOg0KPiArCWNhc2UgRFJN
X0ZPUk1BVF9YVllVMTJfMTYxNjE2MTY6DQo+ICsJY2FzZSBEUk1fRk9STUFUX1hWWVUxNjE2MTYx
NjoNCj4gKwkJcmV0dXJuIDQ7DQo+ICsJZGVmYXVsdDoNCj4gKwkJcmV0dXJuIDE7DQo+ICsJfQ0K
PiArfQ0KPiArDQo+ICBzdGF0aWMgaW50IGljbF9tYXhfcGxhbmVfd2lkdGgoY29uc3Qgc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqZmIsDQo+ICAJCQkgICAgICAgaW50IGNvbG9yX3BsYW5lLA0KPiAg
CQkJICAgICAgIHVuc2lnbmVkIGludCByb3RhdGlvbikNCj4gQEAgLTM4NDQsMTUgKzM4ODIsMTUg
QEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSAqcGxhbmVfc3RhdGUpDQo+ICAJaW50IHkgPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTEg
Pj4gMTY7DQo+ICAJaW50IHcgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuc3Jj
KSA+PiAxNjsNCj4gIAlpbnQgaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGku
c3JjKSA+PiAxNjsNCj4gLQlpbnQgbWF4X3dpZHRoOw0KPiAtCWludCBtYXhfaGVpZ2h0Ow0KPiAt
CXUzMiBhbGlnbm1lbnQ7DQo+IC0JdTMyIG9mZnNldDsNCj4gKwlpbnQgbWF4X3dpZHRoLCBtaW5f
d2lkdGggPSAxLCBtYXhfaGVpZ2h0Ow0KPiArCXUzMiBhbGlnbm1lbnQsIG9mZnNldDsNCj4gIAlp
bnQgYXV4X3BsYW5lID0gaW50ZWxfbWFpbl90b19hdXhfcGxhbmUoZmIsIDApOw0KPiAgCXUzMiBh
dXhfb2Zmc2V0ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lW2F1eF9wbGFuZV0ub2Zmc2V0Ow0K
PiAgDQo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpDQo+ICsJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTEpIHsNCj4gIAkJbWF4X3dpZHRoID0gaWNsX21heF9wbGFuZV93aWR0
aChmYiwgMCwgcm90YXRpb24pOw0KPiArCQltaW5fd2lkdGggPSBpY2xfbWluX3BsYW5lX3dpZHRo
KGZiKTsNCj4gKwl9DQoNCldpdGggdGhlIHN0eWxlIGZpeGVkLCBMR1RNLg0KSXQgaXMgc21hbGwg
ZW5vdWdoIHRvIGJlIGZpeGVkIHdoaWxlIHB1c2hpbmcgaXQsIHdpbGwgZml4IGFuZCBwdXNoIGl0
IGZvciB5b3UuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCg0KPiAgCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAg
fHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpDQo+ICAJCW1heF93aWR0aCA9IGdsa19tYXhfcGxh
bmVfd2lkdGgoZmIsIDAsIHJvdGF0aW9uKTsNCj4gIAllbHNlDQo+IEBAIC0zODYzLDEwICszOTAx
LDEwIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX21haW5fc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiAgCWVsc2UNCj4gIAkJbWF4X2hlaWdodCA9IHNrbF9t
YXhfcGxhbmVfaGVpZ2h0KCk7DQo+ICANCj4gLQlpZiAodyA+IG1heF93aWR0aCB8fCBoID4gbWF4
X2hlaWdodCkgew0KPiArCWlmICh3ID4gbWF4X3dpZHRoIHx8IHcgPCBtaW5fd2lkdGggfHwgaCA+
IG1heF9oZWlnaHQpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+IC0JCQkg
ICAgInJlcXVlc3RlZCBZL1JHQiBzb3VyY2Ugc2l6ZSAlZHglZCB0b28gYmlnIChsaW1pdCAlZHgl
ZClcbiIsDQo+IC0JCQkgICAgdywgaCwgbWF4X3dpZHRoLCBtYXhfaGVpZ2h0KTsNCj4gKwkJCSAg
ICAicmVxdWVzdGVkIFkvUkdCIHNvdXJjZSBzaXplICVkeCVkIG91dHNpZGUgbGltaXRzIChtaW46
ICVkeDEgbWF4OiAlZHglZClcbiIsDQo+ICsJCQkgICAgdywgaCwgbWluX3dpZHRoLCBtYXhfd2lk
dGgsIG1heF9oZWlnaHQpOw0KPiAgCQlyZXR1cm4gLUVJTlZBTDsNCj4gIAl9DQo+ICANCj4gDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
