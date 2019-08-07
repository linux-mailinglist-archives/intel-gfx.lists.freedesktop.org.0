Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA4584A2D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 12:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35ED6E68C;
	Wed,  7 Aug 2019 10:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EC06E6B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 10:55:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 03:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="176931205"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga003.jf.intel.com with ESMTP; 07 Aug 2019 03:55:07 -0700
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 7 Aug 2019 03:55:07 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.174]) with mapi id 14.03.0439.000;
 Wed, 7 Aug 2019 16:25:04 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2 5/6] drm/i915/tgl: Add mipi dsi support for TGL
Thread-Index: AQHVRq1K5V7JVmXlCkSZh5gVAiKAbKbvj45w
Date: Wed, 7 Aug 2019 10:55:03 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821B6E7A@BGSMSX104.gar.corp.intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
 <20190730073648.5157-6-vandita.kulkarni@intel.com>
In-Reply-To: <20190730073648.5157-6-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWRlNjg3ZDktMDlhZC00ODNmLWFhNjgtNjk4ZjNiOTY3M2MzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQ3ZFSlNNc1pBMGdpUmw1TFBYTlJFbHhRRVwvMUFMY3hyeVJ6QVU4XC9lXC9vdmpJNEFqZSt1SkNHXC9YRHVoQ2N0R3oifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2 5/6] drm/i915/tgl: Add mipi dsi support for TGL
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IEt1bGthcm5pLCBWYW5kaXRhCj5T
ZW50OiBUdWVzZGF5LCBKdWx5IDMwLCAyMDE5IDE6MDcgUE0KPlRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj5DYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hCj48dW1hLnNoYW5r
YXJAaW50ZWwuY29tPjsgS3Vsa2FybmksIFZhbmRpdGEgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwu
Y29tPgo+U3ViamVjdDogW3YyIDUvNl0gZHJtL2k5MTUvdGdsOiBBZGQgbWlwaSBkc2kgc3VwcG9y
dCBmb3IgVEdMCj4KPk1vc3Qgb2YgdGhlIGZ1bmN0aW9ucyBhbmQgbWlwaSBkc2kgc2VxdWVuY2Ug
cmVtYWlucyBzYW1lIGFzIG9mIElDTCBmb3IgVEdMLiBIZW5jZQo+ZXh0ZW5kaW5nIHRoZSBzdXBw
b3J0IHRvIFRHTC4KCkxvb2tzIGdvb2QgdG8gbWUuClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPgoKPlNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2Fybmkg
PHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxICsKPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj5pbmRleCA5ZTRlZTI5ZmQwZmMuLjcxYWU2MmU5NDc2NyAxMDA2NDQKPi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4rKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+QEAgLTE1MzE5LDYgKzE1MzE5LDcgQEAg
c3RhdGljIHZvaWQgaW50ZWxfc2V0dXBfb3V0cHV0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQo+
KmRldl9wcml2KQo+IAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7Cj4gCQlpbnRl
bF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9CKTsKPiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2
LCBQT1JUX0MpOwo+KwkJaWNsX2RzaV9pbml0KGRldl9wcml2KTsKPiAJfSBlbHNlIGlmIChJU19F
TEtIQVJUTEFLRShkZXZfcHJpdikpIHsKPiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JU
X0EpOwo+IAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQik7Cj4tLQo+Mi4yMS4wLjUu
Z2FlYjU4MmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
