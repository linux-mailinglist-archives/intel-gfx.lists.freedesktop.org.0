Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D25BAD949E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 16:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1D789BA3;
	Wed, 16 Oct 2019 14:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E1089BA3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 14:59:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 07:59:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="347446501"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga004.jf.intel.com with ESMTP; 16 Oct 2019 07:59:50 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 07:59:49 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 07:59:49 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.248]) with mapi id 14.03.0439.000;
 Wed, 16 Oct 2019 20:29:46 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix MST oops due to MSA changes
Thread-Index: AQHVg4uNHbmz/z+RVUe+WgGkn5wba6ddWkRg
Date: Wed, 16 Oct 2019 14:59:45 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F822746B1@BGSMSX104.gar.corp.intel.com>
References: <20191015190538.27539-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191015190538.27539-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjFmMDBlMGItOGZiZi00NjZkLWE4N2UtY2IxMDY5NDVjZGU3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicVwvc1Y4cVlNS2ZxMFhnbEhBazgwZkhkODRYTXM2RDJRZUVhNlVrNWJWVjBtKytJQ2c0QmtsNU9UXC9KWlo3TFhpIn0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix MST oops due to MSA changes
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFZpbGxlIFN5cmphbGEgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPlNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciAx
NiwgMjAxOSAxMjozNiBBTQ0KPlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
Q2M6IE11biwgR3dhbi1neWVvbmcgPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+OyBTaGFua2Fy
LCBVbWENCj48dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5
MTU6IEZpeCBNU1Qgb29wcyBkdWUgdG8gTVNBIGNoYW5nZXMNCj4NCj5Gcm9tOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPg0KPlRoZSBNU0EgTUlTQyBj
b21wdXRhdGlvbiBub3cgZGVwZW5kcyBvbiB0aGUgY29ubmVjdG9yIHN0YXRlLCBhbmQgd2UgZG8g
aXQgZnJvbQ0KPnRoZSBEREkgLnByZV9lbmFibGUoKSBob29rLiBBbGwgdGhhdCBpcyBmaW5lIGZv
ciBEUCBTU1QgYnV0IHdpdGggTVNUIHdlIGRvbid0IGFjdHVhbGx5DQo+cGFzcyB0aGUgY29ubmVj
dG9yIHN0YXRlIHRvIHRoZSBkaWcgcG9ydCdzIC5wcmVfZW5hYmxlKCkgaG9vayB3aGljaCBsZWFk
cyB0byBhbiBvb3BzLg0KPg0KPk5lZWQgdG8gdGhpbmsgbW9yZSBob3cgdG8gc29sdmUgdGhpcyBp
biBhIGNsZWFuZXIgZmFzaGlvbiwgYnV0IGZvciBub3cgbGV0J3MganVzdCBhZGQgYQ0KPk5VTEwg
Y2hlY2sgdG8gc3RvcCB0aGUgb29wc2luZy4NCg0KTG9va3MgZ29vZCB0byBtZS4gV2Ugd2lsbCBo
YXZlIHRvIGhhbmRsZSBjb2xvcnNwYWNlcyBmb3IgTVNUIHByb3Blcmx5LiBCdXQgdGhhdCBjYW4g
YmUNCmRvbmUgbGF0ZXIuIFRoYW5rcyBmb3IgaWRlbnRpZnlpbmcgYW5kIGZpeGluZyB0aGlzLg0K
UmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj5DYzog
R3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPkNjOiBVbWEgU2hh
bmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPkZpeGVzOiAwYzA2ZmExNTYwMDYgKCJkcm0v
aTkxNS9kcDogQWRkIHN1cHBvcnQgb2YgQlQuMjAyMCBDb2xvcmltZXRyeSB0byBEUCBNU0EiKQ0K
PlNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+LS0tDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
fCA0ICsrKy0NCj4gMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPg0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jDQo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+aW5kZXgg
ODBmOGUyNjk4YmUwLi40YzgxNDQ5ZWMxNDQgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj5AQCAtMTc5NCw4ICsxNzk0LDEwIEBAIHZvaWQgaW50ZWxfZGRp
X3NldF9kcF9tc2EoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4qY3J0Y19zdGF0ZSwN
Cj4gCSAqIG9mIENvbG9yIEVuY29kaW5nIEZvcm1hdCBhbmQgQ29udGVudCBDb2xvciBHYW11dF0g
d2hpbGUgc2VuZGluZw0KPiAJICogWUNCQ1IgNDIwLCBIRFIgQlQuMjAyMCBzaWduYWxzIHdlIHNo
b3VsZCBwcm9ncmFtIE1TQSBNSVNDMSBmaWVsZHMNCj4gCSAqIHdoaWNoIGluZGljYXRlIFZTQyBT
RFAgZm9yIHRoZSBQaXhlbCBFbmNvZGluZy9Db2xvcmltZXRyeSBGb3JtYXQuDQo+KwkgKg0KPisJ
ICogRklYTUUgTVNUIGRvZXNuJ3QgcGFzcyBpbiB0aGUgY29ubl9zdGF0ZQ0KPiAJICovDQo+LQlp
ZiAoaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjcnRjX3N0YXRlLCBjb25uX3N0YXRlKSkNCj4rCWlm
IChjb25uX3N0YXRlICYmIGludGVsX2RwX25lZWRzX3ZzY19zZHAoY3J0Y19zdGF0ZSwgY29ubl9z
dGF0ZSkpDQo+IAkJdGVtcCB8PSBEUF9NU0FfTUlTQ19DT0xPUl9WU0NfU0RQOw0KPg0KPiAJSTkx
NV9XUklURShUUkFOU19NU0FfTUlTQyhjcHVfdHJhbnNjb2RlciksIHRlbXApOw0KPi0tDQo+Mi4y
MS4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
