Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76B74EFF6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 22:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 080F66E921;
	Fri, 21 Jun 2019 20:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3536E921
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 20:19:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 13:19:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="162780502"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2019 13:19:19 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Jun 2019 13:19:19 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.126]) with mapi id 14.03.0439.000;
 Fri, 21 Jun 2019 13:19:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/5] drm/i915/ehl: Add third combo PHY offset
Thread-Index: AQHVJ9VRNfWY+sM7dkeklDJNkSagCKanAuGA
Date: Fri, 21 Jun 2019 20:19:17 +0000
Message-ID: <7cae6401281570e7c493b3cb6f27bcbe74b305b4.camel@intel.com>
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
 <20190621020132.1164-3-matthew.d.roper@intel.com>
In-Reply-To: <20190621020132.1164-3-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <209BC28BEB9798409DC43D7F34C0F164@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/ehl: Add third combo PHY offset
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

T24gVGh1LCAyMDE5LTA2LTIwIGF0IDE5OjAxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDQgKysrLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oDQo+IGluZGV4IDdlNjAwOWNlZmIxOC4uN2U3NDhiYjNmMzI0IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTE3OTMsOCArMTc5MywxMCBAQCBlbnVtIGk5
MTVfcG93ZXJfd2VsbF9pZCB7DQo+ICAgKi8NCj4gICNkZWZpbmUgX0lDTF9DT01CT1BIWV9BCQkJ
MHgxNjIwMDANCj4gICNkZWZpbmUgX0lDTF9DT01CT1BIWV9CCQkJMHg2QzAwMA0KPiArI2RlZmlu
ZSBfSUNMX0NPTUJPUEhZX0NfRUhMCQkweDE2MDAwMA0KPiAgI2RlZmluZSBfSUNMX0NPTUJPUEhZ
KHBvcnQpCQlfUElDSyhwb3J0LCBfSUNMX0NPTUJPUEhZX0EsIFwNCj4gLQkJCQkJICAgICAgX0lD
TF9DT01CT1BIWV9CKQ0KPiArCQkJCQkgICAgICBfSUNMX0NPTUJPUEhZX0IsIFwNCj4gKwkJCQkJ
ICAgICAgX0lDTF9DT01CT1BIWV9DX0VITCkNCj4gIA0KDQpSZW5hbWUgdG8gX0VITF9DT01CT1BI
WV9DLg0KDQpXaXRoIHRoYXQ6IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiAgLyogQ05ML0lDTCBQb3J0IENMX0RXIHJlZ2lzdGVy
cyAqLw0KPiAgI2RlZmluZSBfSUNMX1BPUlRfQ0xfRFcoZHcsIHBvcnQpCShfSUNMX0NPTUJPUEhZ
KHBvcnQpICsgXA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
