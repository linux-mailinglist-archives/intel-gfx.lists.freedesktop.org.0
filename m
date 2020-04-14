Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4901A8DD6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 23:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D856E59D;
	Tue, 14 Apr 2020 21:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851456E59D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 21:41:05 +0000 (UTC)
IronPort-SDR: X6ytuh6ub9SG5bIly+eUdkYuuWVqJ+vEbRg4dPS8SJ552yRhMfMxPI+3a6Ft3BcVb/qndUgXN/
 JMgmRtaV9aGg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 14:41:04 -0700
IronPort-SDR: OGAusHm9Z0++ULAn4DFUbitR6xXc5BOMFk+c6Wykbt5vQyjhMKrBl/Dnwg5klLCaEQgWPkarWn
 GqLn/J+CEQXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="453693371"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 14 Apr 2020 14:41:04 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 14:41:04 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 fmsmsx117.amr.corp.intel.com ([169.254.3.90]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 14:41:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Extend Wa_1409767108:tgl
 to B0 stepping
Thread-Index: AQHWEqFNktx8OhcqmUKEOfIJDGcJBqh5m16A
Date: Tue, 14 Apr 2020 21:41:03 +0000
Message-ID: <42b453c851ba09e8cb358753e54091785e86ec3b.camel@intel.com>
References: <20200414211118.2787489-1-matthew.d.roper@intel.com>
 <20200414211118.2787489-2-matthew.d.roper@intel.com>
In-Reply-To: <20200414211118.2787489-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.209.55.81]
Content-ID: <8FE379D408037044850061A4A70BF4C9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Extend Wa_1409767108:tgl
 to B0 stepping
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

UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQpPbiBUdWUsIDIwMjAtMDQtMTQgYXQgMTQ6MTEgLTA3MDAsIE1hdHQgUm9wZXIgd3JvdGU6
DQo+IENjOiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAy
ICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jDQo+IGluZGV4IDQzM2U1YTgxZGQ0ZC4uNmNjMGUyM2NhNTY2IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
Yw0KPiBAQCAtNTAyNCw3ICs1MDI0LDcgQEAgc3RhdGljIHZvaWQgdGdsX2J3X2J1ZGR5X2luaXQo
c3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCWNvbnN0IHN0cnVjdCBi
dWRkeV9wYWdlX21hc2sgKnRhYmxlOw0KPiAgCWludCBpOw0KPiAgDQo+IC0JaWYgKElTX1RHTF9S
RVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKQ0KPiArCWlmIChJU19U
R0xfUkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0IwKSkNCj4gIAkJLyog
V2FfMTQwOTc2NzEwODogdGdsICovDQo+ICAJCXRhYmxlID0gd2FfMTQwOTc2NzEwOF9idWRkeV9w
YWdlX21hc2tzOw0KPiAgCWVsc2UNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
