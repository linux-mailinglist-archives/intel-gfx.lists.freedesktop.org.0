Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CCC84A22
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 12:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D19846E68C;
	Wed,  7 Aug 2019 10:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225A46E68C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 10:53:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 03:53:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="165284993"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 07 Aug 2019 03:53:53 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 7 Aug 2019 03:53:53 -0700
Received: from bgsmsx102.gar.corp.intel.com (10.223.4.172) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 7 Aug 2019 03:53:52 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX102.gar.corp.intel.com ([169.254.2.79]) with mapi id 14.03.0439.000;
 Wed, 7 Aug 2019 16:23:50 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2 1/6] drm/i915/tgl/dsi: Program TRANS_VBLANK register
Thread-Index: AQHVRq1EKbiTgYzso0qcZTqssFJOfabvjyQg
Date: Wed, 7 Aug 2019 10:53:49 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821B6E5C@BGSMSX104.gar.corp.intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
 <20190730073648.5157-2-vandita.kulkarni@intel.com>
In-Reply-To: <20190730073648.5157-2-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODZiMWE1NTAtMzQ1YS00ZmQyLTgxNTktOGU0YmU2MzVmOGY5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiN3BtOVZQZExqNGZyU29yUjFZekRJck9ncWZSdlRYWno0ODhVbjVFM1wvd2N1Tlh1THR3Z0hsOE1IbVJ2dHBjSFoifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2 1/6] drm/i915/tgl/dsi: Program TRANS_VBLANK
 register
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
Y29tPgo+U3ViamVjdDogW3YyIDEvNl0gZHJtL2k5MTUvdGdsL2RzaTogUHJvZ3JhbSBUUkFOU19W
QkxBTksgcmVnaXN0ZXIKPgo+UHJvZ3JhbSB2YmxhbmsgcmVnaXN0ZXIgZm9yIG1pcGkgZHNpIGlu
IHZpZGVvIG1vZGUgb24gVEdMLgoKTG9va3MgZ29vZCB0byBtZS4KUmV2aWV3ZWQtYnk6IFVtYSBT
aGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cgo+U2lnbmVkLW9mZi1ieTogVmFuZGl0YSBL
dWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4tLS0KPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDkgKysrKysrKysrCj4gMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMKPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMK
PmluZGV4IGE0MjM0OGJlMDQzOC4uN2I4ZmRiMTZiNjUxIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaWNsX2RzaS5jCj5AQCAtODYyLDYgKzg2MiwxNSBAQCBnZW4xMV9kc2lfc2V0X3Ry
YW5zY29kZXJfdGltaW5ncyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcgo+KmVuY29kZXIsCj4gCQlkc2lf
dHJhbnMgPSBkc2lfcG9ydF90b190cmFuc2NvZGVyKHBvcnQpOwo+IAkJSTkxNV9XUklURShWU1lO
Q1NISUZUKGRzaV90cmFucyksIHZzeW5jX3NoaWZ0KTsKPiAJfQo+Kwo+KwkvKiBwcm9ncmFtIFRS
QU5TX1ZCTEFOSyByZWdpc3Rlciwgc2hvdWxkIGJlIHNhbWUgYXMgdnRvdGFsIHByb2dyYW1tZWQK
PiovCj4rCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7Cj4rCQlmb3JfZWFjaF9kc2lf
cG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Cj4rCQkJZHNpX3RyYW5zID0gZHNpX3BvcnRf
dG9fdHJhbnNjb2Rlcihwb3J0KTsKPisJCQlJOTE1X1dSSVRFKFZCTEFOSyhkc2lfdHJhbnMpLAo+
KwkJCQkgICAodmFjdGl2ZSAtIDEpIHwgKCh2dG90YWwgLSAxKSA8PCAxNikpOwo+KwkJfQo+Kwl9
Cj4gfQo+Cj4gc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2VuYWJsZV90cmFuc2NvZGVyKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKQo+LS0KPjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
