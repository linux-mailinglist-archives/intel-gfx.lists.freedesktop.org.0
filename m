Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0D2505DF0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 20:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5932A10E02E;
	Mon, 18 Apr 2022 18:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1159D10E02E
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 18:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650305750; x=1681841750;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bW/vx3EKaV9DC7Ix5Khuwi7b0ZkkSDwRmMURz4jeY+I=;
 b=iePiLNZ9en2vcnxwAaJ1ZsjyzEPIOv3iGgJZbUQGQxmQ3I+zw5H86tAz
 6fW9cILYlx6AZdmvOdAASYwBFCSTRNPg4obSKP6SOPUALVaCV8RL3ntWQ
 weSmhAyAO9/HtQLdwMQwQbccvM1raCnb2nqm87B+NRHwbumhiIMhw7kyc
 bz+UYb0XXBaRBN4EzTeFh5xAHp9vCAsTm2sLRDnlWwHdEFsDDz5eZVO8I
 fjVah0S8W66oLKI1cgcf9ogSJrUR+ngOPIOyZmOCEzu65Kdyr5Eqx+qvW
 Xn4EJ386LUXPBhY3qtCb9HygbqbCjLDa9f6b3Gv9ThK8CzzR42wp9XZ9c Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="288674121"
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="288674121"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 11:15:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="665380114"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 18 Apr 2022 11:15:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 11:15:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 11:15:48 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 18 Apr 2022 11:15:48 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "hdegoede@redhat.com" <hdegoede@redhat.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Fix DISP_POS_Y and DISP_HEIGHT defines
Thread-Index: AQHYUzZxpb+Z5UB7QEyJTNYa1F03LKz2cAyA
Date: Mon, 18 Apr 2022 18:15:48 +0000
Message-ID: <67248fd1dee94de250ccba9fba05e74f01d26aa6.camel@intel.com>
References: <20220418150936.5499-1-hdegoede@redhat.com>
In-Reply-To: <20220418150936.5499-1-hdegoede@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <36CBDF709D58994CB915101D2CA4CA08@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DISP_POS_Y and DISP_HEIGHT
 defines
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTA0LTE4IGF0IDE3OjA5ICswMjAwLCBIYW5zIGRlIEdvZWRlIHdyb3RlOg0K
PiBDb21taXQgNDI4Y2IxNWQ1YjAwICgiZHJtL2k5MTU6IENsZWFuIHVwIHByZS1za2wgcHJpbWFy
eSBwbGFuZSByZWdpc3RlcnMiKQ0KPiBpbnRyb2R1Y2VkIERJU1BfUE9TX1kgYW5kIERJU1BfSEVJ
R0hUIGRlZmluZXMgYnV0IGFjY2lkZW50YWxseSBzZXQgdGhlc2UNCj4gdGhlaXIgbWFza3MgdG8g
UkVHX0dFTk1BU0soMzEsIDApIGluc3RlYWQgb2YgUkVHX0dFTk1BU0soMzEsIDE2KS4NCj4gDQo+
IFRoaXMgYnJlYWtzIHRoZSBwcmltYXJ5IGRpc3BsYXkgcGFuZSBvbiBhdCBsZWFzdCBwaW5ldmll
dyBtYWNoaW5lcywgZml4DQo+IHRoZSBtYXNrIHRvIGZpeCB0aGUgcHJpbWFyeSBkaXNwbGF5IHBh
bmUgb25seSBzaG93aW5nIGJsYWNrLg0KPiANCj4gVGVzdGVkIG9uIGFuIEFjZXIgT25lIEFPNTMy
aCB3aXRoIGFuIEludGVsIE40NTAgU29DLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IEZpeGVzOiA0MjhjYjE1ZDVi
MDAgKCJkcm0vaTkxNTogQ2xlYW4gdXAgcHJlLXNrbCBwcmltYXJ5IHBsYW5lIHJlZ2lzdGVycyIp
DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+DQo+IC0tLQ0K
PiBOb3RlIHRoaXMgZml4ZXMgYSByZWdyZXNzaW9uIGluIDUuMTgtcmMjIGFuZCBJJ20gbm90IGVu
dGlyZWx5IHN1cmUgd2hhdA0KPiB0aGUgcHJvY2VkdXJlIGlzIGhlcmUuIE9uY2UgSSBnZXQgYSBS
ZXZpZXdlZC1ieSBvciBBY2tlZC1ieSBhbmQgSSBwdXNoDQo+IHRoaXMgdG8gZHJtLWludGVsLW5l
eHQgKHdoZXJlIGl0IGFsc28gaXMgbmVjZXNzYXJ5KSwgc2hvdWxkIEkgdGhlbiBhbHNvDQo+IHB1
c2ggaXQgdG8gZHJtLWludGVsLWZpeGVzIG9yIHdpbGwgdGhlIGN1cnJlbnQgZHJtLWludGVsLWZp
eGVzDQo+IG1haW50YWluZXIgcGljayBpdCB1cD8NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIHwgNCArKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4
IDUxZjQ2ZmU0NWM3Mi4uNWYxZjM4Njg0ZDY1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gQEAgLTQzNTIsMTIgKzQzNTIsMTIgQEANCj4gICNkZWZpbmUgX0RTUEFBRERSCQkJCTB4
NzAxODQNCj4gICNkZWZpbmUgX0RTUEFTVFJJREUJCQkJMHg3MDE4OA0KPiAgI2RlZmluZSBfRFNQ
QVBPUwkJCQkweDcwMThDIC8qIHJlc2VydmVkICovDQo+IC0jZGVmaW5lICAgRElTUF9QT1NfWV9N
QVNLCQlSRUdfR0VOTUFTSygzMSwgMCkNCj4gKyNkZWZpbmUgICBESVNQX1BPU19ZX01BU0sJCVJF
R19HRU5NQVNLKDMxLCAxNikNCj4gICNkZWZpbmUgICBESVNQX1BPU19ZKHkpCQkJUkVHX0ZJRUxE
X1BSRVAoRElTUF9QT1NfWV9NQVNLLCAoeSkpDQo+ICAjZGVmaW5lICAgRElTUF9QT1NfWF9NQVNL
CQlSRUdfR0VOTUFTSygxNSwgMCkNCj4gICNkZWZpbmUgICBESVNQX1BPU19YKHgpCQkJUkVHX0ZJ
RUxEX1BSRVAoRElTUF9QT1NfWF9NQVNLLCAoeCkpDQo+ICAjZGVmaW5lIF9EU1BBU0laRQkJCQkw
eDcwMTkwDQo+IC0jZGVmaW5lICAgRElTUF9IRUlHSFRfTUFTSwkJUkVHX0dFTk1BU0soMzEsIDAp
DQo+ICsjZGVmaW5lICAgRElTUF9IRUlHSFRfTUFTSwkJUkVHX0dFTk1BU0soMzEsIDE2KQ0KPiAg
I2RlZmluZSAgIERJU1BfSEVJR0hUKGgpCQlSRUdfRklFTERfUFJFUChESVNQX0hFSUdIVF9NQVNL
LCAoaCkpDQo+ICAjZGVmaW5lICAgRElTUF9XSURUSF9NQVNLCQlSRUdfR0VOTUFTSygxNSwgMCkN
Cj4gICNkZWZpbmUgICBESVNQX1dJRFRIKHcpCQkJUkVHX0ZJRUxEX1BSRVAoRElTUF9XSURUSF9N
QVNLLCAodykpDQoNCg==
