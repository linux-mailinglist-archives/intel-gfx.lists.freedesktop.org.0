Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AEB2DD909
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 20:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E39E9897DC;
	Thu, 17 Dec 2020 19:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 789FA897DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 19:03:40 +0000 (UTC)
IronPort-SDR: IaEyWYqJmZqzkykd1WCwFc1izbrSiLYB03+OutiUQKRF+dDyi/cNQZ6OU7DbkIzqU8gFNMN1mn
 XeR2ISDf8Mig==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="174540519"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="174540519"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 11:03:39 -0800
IronPort-SDR: nwr2V1e6IYOSlKNGGUUHhoL6D3McVHjsTkJzfTuh4t56BQgyLr38ODuk66kw9LyqBKUmo8tX6q
 PxJMrhU1Rk+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="560763439"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 17 Dec 2020 11:03:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Dec 2020 11:03:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Dec 2020 11:03:38 -0800
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14]) by
 ORSMSX601.amr.corp.intel.com ([10.22.229.14]) with mapi id 15.01.1713.004;
 Thu, 17 Dec 2020 11:03:38 -0800
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg1: Update voltage swing tables
 for DP
Thread-Index: AQHWyuiMpReyFhlpa0ivqRqRmca1Zqn7uEAA
Date: Thu, 17 Dec 2020 19:03:38 +0000
Message-ID: <2e0467f2babe4d198ff93fa70adffb09@intel.com>
References: <20201205092446.2325265-1-lucas.demarchi@intel.com>
In-Reply-To: <20201205092446.2325265-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Update voltage swing tables
 for DP
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

VGhlIHRhYmxlIGluY2x1ZGVzIGJvdGggaGJyMiBhbmQgaGJyMywgc28gaXQgY2FuIGJlIHJlbmFt
ZWQgdG8gcmVmbGVjdCBib3RoLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTog
SW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJl
aGFsZiBPZiBMdWNhcyBEZSBNYXJjaGkNClNlbnQ6IFNhdHVyZGF5LCBEZWNlbWJlciAwNSwgMjAy
MCAxOjI1IEFNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDog
W0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9kZzE6IFVwZGF0ZSB2b2x0YWdlIHN3aW5nIHRh
YmxlcyBmb3IgRFANCg0KRnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4NCg0KREcxJ3MgdnN3aW5nIHRhYmxlcyBhcmUgdGhlIHNhbWUgZm9yIGVEUCBhbmQgSERNSSBi
dXQgaGF2ZSBzbGlnaHQgZGlmZmVyZW5jZXMgZnJvbSBJQ0wvVEdMIGZvciBEUC4NCg0KQnNwZWM6
IDQ5MjkxDQoNCkNjOiBDbGludG9uIFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+
DQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQpDYzog
UmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NClNp
Z25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQpTaWdu
ZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCi0t
LQ0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAzNCArKysrKysr
KysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCmluZGV4IDUxOTM0NzNjODM4
Yy4uMmY5ZmE3YjM5YWVkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KQEAgLTYxMSw2ICs2MTEsMzQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1
Zl90cmFucyBqc2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjJbXQ0KIAl7IDB4
QSwgMHgzNSwgMHgzRiwgMHgwMCwgMHgwMCB9LCAgICAgICAgLyogMzUwICAgMzUwICAgICAgMC4w
ICAgKi8NCiB9Ow0KIA0KK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgZGcx
X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicltdID0gew0KKwkJCQkJCS8qIE5UIG1W
IFRyYW5zIG1WIGRiICAgICovDQorCXsgMHhBLCAweDMyLCAweDNGLCAweDAwLCAweDAwIH0sCS8q
IDM1MCAgIDM1MCAgICAgIDAuMCAgICovDQorCXsgMHhBLCAweDQ4LCAweDM1LCAweDAwLCAweDBB
IH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICovDQorCXsgMHhDLCAweDYzLCAweDJGLCAweDAw
LCAweDEwIH0sCS8qIDM1MCAgIDcwMCAgICAgIDYuMCAgICovDQorCXsgMHg2LCAweDdGLCAweDJD
LCAweDAwLCAweDEzIH0sCS8qIDM1MCAgIDkwMCAgICAgIDguMiAgICovDQorCXsgMHhBLCAweDQz
LCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDUwMCAgIDUwMCAgICAgIDAuMCAgICovDQorCXsgMHhD
LCAweDYwLCAweDM2LCAweDAwLCAweDA5IH0sCS8qIDUwMCAgIDcwMCAgICAgIDIuOSAgICovDQor
CXsgMHg2LCAweDdGLCAweDMwLCAweDAwLCAweDBGIH0sCS8qIDUwMCAgIDkwMCAgICAgIDUuMSAg
ICovDQorCXsgMHhDLCAweDYwLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDY1MCAgIDcwMCAgICAg
IDAuNiAgICovDQorCXsgMHg2LCAweDdGLCAweDM3LCAweDAwLCAweDA4IH0sCS8qIDYwMCAgIDkw
MCAgICAgIDMuNSAgICovDQorCXsgMHg2LCAweDdGLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDkw
MCAgIDkwMCAgICAgIDAuMCAgICovDQorfTsNCisNCitzdGF0aWMgY29uc3Qgc3RydWN0IGNubF9k
ZGlfYnVmX3RyYW5zIGRnMV9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyW10gPSB7
DQorCQkJCQkJLyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8NCisJeyAweEEsIDB4MzIsIDB4M0Ys
IDB4MDAsIDB4MDAgfSwJLyogMzUwICAgMzUwICAgICAgMC4wICAgKi8NCisJeyAweEEsIDB4NDgs
IDB4MzUsIDB4MDAsIDB4MEEgfSwJLyogMzUwICAgNTAwICAgICAgMy4xICAgKi8NCisJeyAweEMs
IDB4NjMsIDB4MkYsIDB4MDAsIDB4MTAgfSwJLyogMzUwICAgNzAwICAgICAgNi4wICAgKi8NCisJ
eyAweDYsIDB4N0YsIDB4MkMsIDB4MDAsIDB4MTMgfSwJLyogMzUwICAgOTAwICAgICAgOC4yICAg
Ki8NCisJeyAweEEsIDB4NDMsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogNTAwICAgNTAwICAgICAg
MC4wICAgKi8NCisJeyAweEMsIDB4NjAsIDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogNTAwICAgNzAw
ICAgICAgMi45ICAgKi8NCisJeyAweDYsIDB4N0YsIDB4MzAsIDB4MDAsIDB4MEYgfSwJLyogNTAw
ICAgOTAwICAgICAgNS4xICAgKi8NCisJeyAweEMsIDB4NTgsIDB4M0YsIDB4MDAsIDB4MDAgfSwJ
LyogNjUwICAgNzAwICAgICAgMC42ICAgKi8NCisJeyAweDYsIDB4N0YsIDB4MzUsIDB4MDAsIDB4
MEEgfSwJLyogNjAwICAgOTAwICAgICAgMy41ICAgKi8NCisJeyAweDYsIDB4N0YsIDB4M0YsIDB4
MDAsIDB4MDAgfSwJLyogOTAwICAgOTAwICAgICAgMC4wICAgKi8NCit9Ow0KKw0KIHN0cnVjdCBp
Y2xfbWdfcGh5X2RkaV9idWZfdHJhbnMgew0KIAl1MzIgY3JpX3R4ZGVlbXBoX292ZXJyaWRlXzEx
XzY7DQogCXUzMiBjcmlfdHhkZWVtcGhfb3ZlcnJpZGVfNV8wOw0KQEAgLTEwOTMsNiArMTEyMSwx
MiBAQCBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFuc19lZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsDQogCX0gZWxzZSBpZiAoZGV2X3ByaXYtPnZidC5lZHAubG93X3Zzd2luZykgew0KIAkJ
Km5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2Vk
cF9oYnIyKTsNCiAJCXJldHVybiBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hi
cjI7DQorCX0gZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSAmJiBjcnRjX3N0YXRlLT5wb3J0X2Ns
b2NrID4gMjcwMDAwKSB7DQorCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShkZzFfY29tYm9fcGh5
X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMik7DQorCQlyZXR1cm4gZGcxX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2RwX2hicjI7DQorCX0gZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSkgew0K
KwkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoZGcxX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25z
X2RwX2hicik7DQorCQlyZXR1cm4gZGcxX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hi
cjsNCiAJfQ0KIA0KIAlyZXR1cm4gaWNsX2dldF9jb21ib19idWZfdHJhbnNfZHAoZW5jb2Rlciwg
Y3J0Y19zdGF0ZSwgbl9lbnRyaWVzKTsNCi0tDQoyLjI5LjINCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
