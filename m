Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A8DA043A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 16:07:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B52D898AA;
	Wed, 28 Aug 2019 14:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9910898AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 14:07:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 07:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="183139950"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga003.jf.intel.com with ESMTP; 28 Aug 2019 07:07:32 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 07:07:31 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 07:07:31 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.251]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 19:37:27 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 02/10] drm/i915/display: Add debug log for color
 parameters
Thread-Index: AQHVW9ikZnSg1+WmU0GutjqYeXrC2qcQm8rA
Date: Wed, 28 Aug 2019 14:07:27 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D3817@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-3-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-3-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWU0YWQzMDAtY2FjYS00YTk4LTgyNGQtMTU4OTg3NWQ5NDcwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTnZQZzNYRXIxUldZZGRlWTMwOUI1MVFmTFM4YWlsemxFcTgyTHlVQnNGOXYwcFRMUmdTOXMzSU42NDJmaFdjWCJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 02/10] drm/i915/display: Add debug log
 for color parameters
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFNoYXJtYSwgU3dhdGkyCj5TZW50
OiBNb25kYXksIEF1Z3VzdCAyNiwgMjAxOSAxMTo1NiBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IFNoYXJtYSwgU2hhc2hhbmsKPjxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPjsgTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsKPk5hdXRpeWFsLCBBbmtpdCBLIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT47IGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g7Cj52aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+OyBTaGFybWEsCj5Td2F0aTIgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+U3ViamVjdDog
W3Y4XVtQQVRDSCAwMi8xMF0gZHJtL2k5MTUvZGlzcGxheTogQWRkIGRlYnVnIGxvZyBmb3IgY29s
b3IgcGFyYW1ldGVycwo+Cj5BZGQgZGVidWcgbG9nIGZvciBjb2xvciByZWxhdGVkIHBhcmFtZXRl
cnMgbGlrZSBnYW1tYV9tb2RlLCBnYW1tYV9lbmFibGUsCj5jc2NfZW5hYmxlLCBldGMgaW5zaWRl
IGludGVsX2R1bXBfcGlwZV9jb25maWcoKS4KPgo+U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1h
IDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOSArKysrKysrKysKPiAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+aW5kZXggYjUxZDFjZS4uY2E4OGM3MCAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+QEAgLTEyMTM4LDYgKzEyMTM4LDE1IEBAIHN0
YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25maWcoY29uc3Qgc3RydWN0Cj5pbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZywKPgo+IAlpbnRlbF9kcGxsX2R1bXBfaHdfc3RhdGUoZGV2X3By
aXYsICZwaXBlX2NvbmZpZy0+ZHBsbF9od19zdGF0ZSk7Cj4KPisJaWYgKElTX0NIRVJSWVZJRVco
ZGV2X3ByaXYpKQo+KwkJRFJNX0RFQlVHX0tNUygiY2dtX21vZGU6JWQgZ2FtbWFfbW9kZTolZAo+
Z2FtbWFfZW5hYmxlOiVkIGNzY19lbmFibGU6JWRcbiIsCj4rCQkJICAgICAgIHBpcGVfY29uZmln
LT5jZ21fbW9kZSwgcGlwZV9jb25maWctPmdhbW1hX21vZGUsCj4rCQkJICAgICAgIHBpcGVfY29u
ZmlnLT5nYW1tYV9lbmFibGUsIHBpcGVfY29uZmlnLT5jc2NfZW5hYmxlKTsKCkFsaWdubWVudCBz
ZWVtcyB0byBiZSBvZmYuCgo+KwllbHNlCj4rCQlEUk1fREVCVUdfS01TKCJjc2NfbW9kZTolZCBn
YW1tYV9tb2RlOiVkCj5nYW1tYV9lbmFibGU6JWQgY3NjX2VuYWJsZTolZFxuIiwKPisJCQkgICAg
ICAgcGlwZV9jb25maWctPmNzY19tb2RlLCBwaXBlX2NvbmZpZy0+Z2FtbWFfbW9kZSwKPisJCQkg
ICAgICAgcGlwZV9jb25maWctPmdhbW1hX2VuYWJsZSwgcGlwZV9jb25maWctPmNzY19lbmFibGUp
OwoKU2FtZSBoZXJlLgoKPisKPiBkdW1wX3BsYW5lczoKPiAJaWYgKCFzdGF0ZSkKPiAJCXJldHVy
bjsKPi0tCj4xLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
