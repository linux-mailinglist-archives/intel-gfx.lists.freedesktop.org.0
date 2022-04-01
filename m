Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 497324EE835
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 08:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75BCC10F960;
	Fri,  1 Apr 2022 06:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E425910F95E
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 06:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648794524; x=1680330524;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6tH84uUqKTgDP/IgEVKJ8suwqQCWKwtxLDX8G9jsm/4=;
 b=ZThQxjEJtYuQr2rIeQIydykrtsgzYdhoZ+5gN9qxVuWrWzdziyC2aZ5Q
 ZHx7xgdxcBHHPapUY6I5OLuACVFVE9z/Rt8oKFmwCwcpPga1pEaR0JrGm
 7wdkp0IMWz7lFuLIer0iVC8K00RKGvZdOjUeaTmF4AtZ2IbtXKShTlcro
 gOqF1cGh8OJ93Gge723vlIi+KNz1w0kZxyGT5LRCQPmxRk6s/Y1v8FO/q
 eQVjrvx6VaOGOvBFltPaK9u4kOe+qj95ZgTqdoLdOFxvFZC028b+Cg9ZQ
 /mx06e2M3hC68e12j+lFTutaWLInJyZHMFNFE2FbxXu7brdQN1nT99elU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="239990999"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="239990999"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 23:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="586735428"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 31 Mar 2022 23:28:42 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 23:28:42 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 11:58:40 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 11:58:40 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 07/12] drm/i915/dp: Make
 intel_dp_output_format() usable for "4:2:0 also" modes
Thread-Index: AQHYPeR6+XUM0h6VlUG60oaDQKPol6zap5Jg
Date: Fri, 1 Apr 2022 06:28:39 +0000
Message-ID: <4655d5f5e00f4066b126b959bce75492@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 07/12] drm/i915/dp: Make
 intel_dp_output_format() usable for "4:2:0 also" modes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDIyLCAyMDIyIDU6MzAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIHYyIDA3LzEyXSBkcm0vaTkxNS9kcDogTWFrZSBpbnRlbF9kcF9vdXRwdXRfZm9ybWF0KCkN
Cj4gdXNhYmxlIGZvciAiNDoyOjAgYWxzbyIgbW9kZXMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBIb2lzdCB0aGUgZHJt
X21vZGVfaXNfNDIwX29ubHkoKSBmcm9tIGludGVsX2RwX291dHB1dF9mb3JtYXQoKSBpbnRvIHRo
ZSBjYWxsZXIuDQo+IFRoaXMgd2lsbCBhbGxvdyBpbnRlbF9kcF9vdXRwdXRfZm9ybWF0KCkgdG8g
YmUgcmV1c2VkIGZvciAiNDoyOjAgYWxzbyIgbW9kZXMuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpS
ZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEz
ICsrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+IGluZGV4IDk0ZmFmM2MyOGQyZC4uYTc4NTIyZGM5YjNjIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC03ODcsMTMgKzc4NywxMSBAQCBzdGF0
aWMgdTggaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHANCj4gKmlu
dGVsX2RwLA0KPiANCj4gIHN0YXRpYyBlbnVtIGludGVsX291dHB1dF9mb3JtYXQNCj4gIGludGVs
X2RwX291dHB1dF9mb3JtYXQoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiAt
CQkgICAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpDQo+ICsJCSAgICAg
ICBib29sIHljYmNyXzQyMF9vdXRwdXQpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCA9IGludGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7DQo+IC0JY29uc3Qgc3RydWN0IGRy
bV9kaXNwbGF5X2luZm8gKmluZm8gPSAmY29ubmVjdG9yLT5iYXNlLmRpc3BsYXlfaW5mbzsNCj4g
DQo+IC0JaWYgKCFjb25uZWN0b3ItPmJhc2UueWNiY3JfNDIwX2FsbG93ZWQgfHwNCj4gLQkgICAg
IWRybV9tb2RlX2lzXzQyMF9vbmx5KGluZm8sIG1vZGUpKQ0KPiArCWlmICghY29ubmVjdG9yLT5i
YXNlLnljYmNyXzQyMF9hbGxvd2VkIHx8ICF5Y2Jjcl80MjBfb3V0cHV0KQ0KPiAgCQlyZXR1cm4g
SU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I7DQo+IA0KPiAgCWlmIChpbnRlbF9kcC0+ZGZwLnJnYl90
b195Y2JjciAmJg0KPiBAQCAtODMxLDggKzgyOSw5IEBAIHN0YXRpYyBpbnQNCj4gIGludGVsX2Rw
X21vZGVfbWluX291dHB1dF9icHAoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0K
PiAgCQkJICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkgIHsNCj4gKwlj
b25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqaW5mbyA9ICZjb25uZWN0b3ItPmJhc2UuZGlz
cGxheV9pbmZvOw0KPiAgCWVudW0gaW50ZWxfb3V0cHV0X2Zvcm1hdCBvdXRwdXRfZm9ybWF0ID0N
Cj4gLQkJaW50ZWxfZHBfb3V0cHV0X2Zvcm1hdChjb25uZWN0b3IsIG1vZGUpOw0KPiArCQlpbnRl
bF9kcF9vdXRwdXRfZm9ybWF0KGNvbm5lY3RvciwgZHJtX21vZGVfaXNfNDIwX29ubHkoaW5mbywN
Cj4gbW9kZSkpOw0KPiANCj4gIAlyZXR1cm4gaW50ZWxfZHBfb3V0cHV0X2JwcChvdXRwdXRfZm9y
bWF0LA0KPiBpbnRlbF9kcF9taW5fYnBwKG91dHB1dF9mb3JtYXQpKTsgIH0gQEAgLTE4MjUsNiAr
MTgyNCw3IEBADQo+IGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLA0KPiAgCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxf
ZHAoZW5jb2Rlcik7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmZpeGVkX21v
ZGU7DQo+ICAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gaW50ZWxfZHAtPmF0
dGFjaGVkX2Nvbm5lY3RvcjsNCj4gKwljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqaW5m
byA9ICZjb25uZWN0b3ItPmJhc2UuZGlzcGxheV9pbmZvOw0KPiAgCWJvb2wgY29uc3RhbnRfbiA9
IGRybV9kcF9oYXNfcXVpcmsoJmludGVsX2RwLT5kZXNjLA0KPiBEUF9EUENEX1FVSVJLX0NPTlNU
QU5UX04pOw0KPiAgCWludCByZXQgPSAwLCBvdXRwdXRfYnBwOw0KPiANCj4gQEAgLTE4NTMsNyAr
MTg1Myw4IEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLA0KPiAgCWlmIChpbnRlbF9kcF9oZGlzcGxheV9iYWQoZGV2X3ByaXYsIGFkanVzdGVk
X21vZGUtPmNydGNfaGRpc3BsYXkpKQ0KPiAgCQlyZXR1cm4gLUVJTlZBTDsNCj4gDQo+IC0JcGlw
ZV9jb25maWctPm91dHB1dF9mb3JtYXQgPSBpbnRlbF9kcF9vdXRwdXRfZm9ybWF0KGNvbm5lY3Rv
ciwNCj4gYWRqdXN0ZWRfbW9kZSk7DQo+ICsJcGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQgPQ0K
PiArCQlpbnRlbF9kcF9vdXRwdXRfZm9ybWF0KGNvbm5lY3RvciwgZHJtX21vZGVfaXNfNDIwX29u
bHkoaW5mbywNCj4gK2FkanVzdGVkX21vZGUpKTsNCj4gDQo+ICAJcmV0ID0gaW50ZWxfZHBfY29t
cHV0ZV9saW5rX2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7DQo+ICAJ
aWYgKHJldCA8IDApDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
