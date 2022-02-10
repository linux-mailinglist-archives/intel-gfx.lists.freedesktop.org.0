Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAB04B11A3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:26:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD0B410E88F;
	Thu, 10 Feb 2022 15:25:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BEA10E88F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644506757; x=1676042757;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JVm/dWXmAGbrzxbG2uT16orO7oJcoCsXANBAJZb2FLU=;
 b=RQpoE5mLUHosFN6daPefJCMhwr+amuixdmhUnhTPwGKz3dUMwOWMuzxS
 5YvPs/6T7fd1/tMeRTfHXp1UTzJGcAYaGArA6ljiKLpjAstByrg4onpKi
 +FhamWKkJxz2Y1pNH4mXr1p5uu+KWkcp+CCBajlUxRAvERVOrvjxj50+I
 8oa+shtMFHDshgRkrBl8Ylt+NkLhWN3+E1ICCQLI+ZEDdjuprTWEZ4BCO
 hbedzD3VNWByrt9JqEDk+FlpYF3eDlH/vBwKvMsph/LLuMigyFOSlFkmm
 2DhcrLjWx7kyF5XeD2Tqxpx/NcocXlfc0heVRHL2OQFpC6bP4XH4Pltpi A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249265339"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249265339"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:25:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="485718387"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga006.jf.intel.com with ESMTP; 10 Feb 2022 07:25:56 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 15:25:55 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Thu, 10 Feb 2022 15:25:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/fbc: Fix the plane end Y offset check
Thread-Index: AQHYHmlShpe9iGl0FkSHjtl+PeJz4qyM6ArQ
Date: Thu, 10 Feb 2022 15:25:55 +0000
Message-ID: <b0c6ca76f0044f2a94465964cd6d44ec@intel.com>
References: <20220210103107.24492-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220210103107.24492-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Fix the plane end Y offset
 check
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqYWxhIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDEw
LCAyMDIyIDEyOjMxIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BB
VENIXSBkcm0vaTkxNS9mYmM6IEZpeCB0aGUgcGxhbmUgZW5kIFkgb2Zmc2V0IGNoZWNrDQo+IA0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgbG9zdCB0aGUgcmVxdWlyZWQgPj4xNiB3aGVuIEkgcmVmYWN0b3JlZCB0aGUgRkJD
IHBsYW5lIHN0YXRlIGNoZWNrcy4gQnJpbmcgaXQNCj4gYmFjayBzbyB0aGUgY2hlY2sgZG9lcyB3
aGF0IGl0J3Mgc3VwcG9zZWQgdG8uDQo+IA0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCj4gRml4ZXM6IDJlNmM5OWY4ODY3OSAoImRybS9pOTE1L2ZiYzogTnVrZSBs
b3RzIG9mIGNyYXAgZnJvbQ0KPiBpbnRlbF9mYmNfc3RhdGVfY2FjaGUiKQ0KPiBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpS
ZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAzICsrLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IGJjZGZmZTYy
ZjNjYi4uODdmNGFmM2ZkNTIzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gQEAgLTExMjUsNyArMTEyNSw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJj
X2NoZWNrX3BsYW5lKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiANCj4g
IAkvKiBXYV8yMjAxMDc1MTE2NjogaWNsLCBlaGwsIHRnbCwgZGcxLCBya2wgKi8NCj4gIAlpZiAo
RElTUExBWV9WRVIoaTkxNSkgPj0gMTEgJiYNCj4gLQkgICAgKHBsYW5lX3N0YXRlLT52aWV3LmNv
bG9yX3BsYW5lWzBdLnkgKw0KPiBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNy
YykpICYgMykgew0KPiArCSAgICAocGxhbmVfc3RhdGUtPnZpZXcuY29sb3JfcGxhbmVbMF0ueSAr
DQo+ICsJICAgICAoZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2
KSkgJiAzKSB7DQo+ICAJCXBsYW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gInBsYW5lIGVuZCBZ
IG9mZnNldCBtaXNhbGlnbmVkIjsNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4gLS0NCj4g
Mi4zNC4xDQoNCg==
