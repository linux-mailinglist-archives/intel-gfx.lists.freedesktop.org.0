Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16821367A
	for <lists+intel-gfx@lfdr.de>; Sat,  4 May 2019 02:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649D9894E3;
	Sat,  4 May 2019 00:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC7D894E0
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2019 00:14:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 17:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="145869315"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga008.fm.intel.com with ESMTP; 03 May 2019 17:14:37 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 17:14:37 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.238]) by
 ORSMSX123.amr.corp.intel.com ([169.254.1.141]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 17:14:36 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/4] drm/i915/dp: Trigger modeset if
 master_crtc or slaves bitmask changes
Thread-Index: AQHU+evX7K1xHVTGEEKb53YwCTbMPKZaKLJQ
Date: Sat, 4 May 2019 00:14:36 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480620BD@ORSMSX108.amr.corp.intel.com>
References: <20190423154901.15222-1-manasi.d.navare@intel.com>
 <20190423154901.15222-4-manasi.d.navare@intel.com>
In-Reply-To: <20190423154901.15222-4-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGU5YmRiOTEtYjQ4Mi00YTA5LWFkZDctZGFkOTQ1YmM2NGRmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRGpMWk9WS1dRUEVpNnVrcnFoNG1JSGZBSFFNZEMwMk1zMFwvZnZidlhyVkNENjFydG91TUw3bjNpU0pqcEdabVUifQ==
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/dp: Trigger modeset if
 master_crtc or slaves bitmask changes
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mDQo+
TWFuYXNpIE5hdmFyZQ0KPlNlbnQ6IFR1ZXNkYXksIEFwcmlsIDIzLCAyMDE5IDg6NDkgQU0NCj5U
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPlN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAzLzRdIGRybS9pOTE1L2RwOiBUcmlnZ2VyIG1vZGVzZXQgaWYgbWFzdGVyX2Ny
dGMNCj5vciBzbGF2ZXMgYml0bWFzayBjaGFuZ2VzDQo+DQo+QWRkIHRoZSBjb21wYXJpc29uIGJl
dHdlZW4gdGhlIGN1cnJlbnQgc3RhdGUgYW5kIG5ld19jcnRjX3N0YXRlIGZvciBuZXdseQ0KPmFk
ZGVkIG1hc3Rlcl9jcnRjIHBvaW50ZXIgYW5kIHNsYXZlIGJpdG1hc2sgc28gdGhhdCBpZiBhbnkg
b2YgdGhvc2UgY2hhbmdlIHRoZW4NCj50aGUgY3VyZXJudCBtYXN0ZXItc2xhdmUgbGlua3MgaGF2
ZSBjaGFuZ2VkIGFuZCB3ZSBuZWVkIHRvIHJlY29uZmlndXJlIHRoZQ0KPnRyYW5zY29kZXIgcG9y
dCBzeW5jIHJlZ2lzdGVyIGFuZCBoZW5jZSB0cmlnZ2VyIGEgZnVsbCBtb2Rlc2V0Lg0KPg0KPlN1
Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj5DYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj5DYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4NCj5DYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj5TaWduZWQt
b2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KTG9va3Mg
Z29vZC4NCg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGlu
dGVsLmNvbT4NCg0KPi0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMg
fCA1ICsrKysrDQo+IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4NCj5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jDQo+Yi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMNCj5pbmRleCA4MWU4Y2I5ZmUyMjEuLjRiZDIzZTYx
YzZmZCAxMDA2NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMN
Cj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMNCj5AQCAtMTI1MjQs
NiArMTI1MjQsMTEgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShzdHJ1Y3QNCj5kcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwNCj4gCVBJUEVfQ09ORl9DSEVDS19JTkZPRlJBTUUoc3BkKTsN
Cj4gCVBJUEVfQ09ORl9DSEVDS19JTkZPRlJBTUUoaGRtaSk7DQo+DQo+KwlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkgew0KPisJCVBJUEVfQ09ORl9DSEVDS19JKHRyYW5zX3BvcnRfc3lu
Y19zbGF2ZXMpOw0KPisJCVBJUEVfQ09ORl9DSEVDS19QKG1hc3Rlcl9jcnRjKTsNCj4rCX0NCj4r
DQo+ICN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfWA0KPiAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0kN
Cj4gI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19CT09MDQo+LS0NCj4yLjE5LjENCj4NCj5fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPkludGVsLWdmeCBtYWls
aW5nIGxpc3QNCj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+aHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
