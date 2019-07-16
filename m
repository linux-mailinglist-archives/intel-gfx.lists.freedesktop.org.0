Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F336A66C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 12:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC446E10B;
	Tue, 16 Jul 2019 10:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F1E36E10B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 10:24:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 03:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="190868807"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jul 2019 03:24:05 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 03:24:05 -0700
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 03:24:04 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.156]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.145]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 15:54:02 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/i915/tgl/dsi: Gate the ddi clocks after pll
 mapping
Thread-Index: AQHVMJDcPAxxsWvJC0Wr4rdG36+ylabNHjVg
Date: Tue, 16 Jul 2019 10:24:01 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8212ECDA@BGSMSX104.gar.corp.intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
 <20190702041850.4293-5-vandita.kulkarni@intel.com>
In-Reply-To: <20190702041850.4293-5-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDg3ODQ0Y2MtMjYzOS00ZTkwLTk0Y2UtZDFiMzZjNTVkNGNkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiazFwYWhXZFdxS2t0a1NIN3U1U1djNkhcL050MURKWkE2SkJkam5qcWx6b2dJSnlvNXZweDNWK3phVDk4UGVTN04ifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/tgl/dsi: Gate the ddi clocks
 after pll mapping
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IEt1bGthcm5pLCBWYW5kaXRhCj5T
ZW50OiBUdWVzZGF5LCBKdWx5IDIsIDIwMTkgOTo0OSBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgTmlrdWxh
LCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBTaGFua2FyLCBVbWEKPjx1bWEuc2hhbmth
ckBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5j
b20+Cj5TdWJqZWN0OiBbUEFUQ0ggNC80XSBkcm0vaTkxNS90Z2wvZHNpOiBHYXRlIHRoZSBkZGkg
Y2xvY2tzIGFmdGVyIHBsbCBtYXBwaW5nCj4KPk5vIG5lZWQgdG8ga2VlcCBpdCBvbiB0aWxsIElP
IGVuYWJsaW5nLgpNaW5vciBuaXQ6IFlvdSBjYW4gcmVwbGFjZSAiaXQiIGJ5ICJkZGkgY2xvY2si
LiBBbHNvIGFkZCB0aGF0IHdoZW4gKGF0IHdoYXQgc3RhZ2UpIHRoZXkKZ2V0IGVuYWJsZWQgdG8g
Z2l2ZSBhIHJlbGF0aXZlIHBpY3R1cmUuCgpXaXRoIHRoaXMgZml4ZWQuClJldmlld2VkLWJ5OiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgoKPlNpZ25lZC1vZmYtYnk6IFZhbmRp
dGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCAxMSArKysrKysrKystLQo+IDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+Yi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+aW5kZXggZDFjNTBhNDE4NmYwLi45OWNlOGM3MDgzNTMg
MTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+Kysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPkBAIC02MDksOCArNjA5
LDEyIEBAIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9tYXBfcGxsKHN0cnVjdCBpbnRlbF9lbmNvZGVy
Cj4qZW5jb2RlciwKPiAJSTkxNV9XUklURShEUENMS0FfQ0ZHQ1IwX0lDTCwgdmFsKTsKPgo+IAlm
b3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Cj4tCQl2YWwgJj0gfkRQ
Q0xLQV9DRkdDUjBfRERJX0NMS19PRkYocG9ydCk7Cj4rCQlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikKPisJCQl2YWwgfD0gRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwb3J0KTsKPisJ
CWVsc2UKPisJCQl2YWwgJj0gfkRQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocG9ydCk7Cj4gCX0K
PisKPiAJSTkxNV9XUklURShEUENMS0FfQ0ZHQ1IwX0lDTCwgdmFsKTsKPgo+IAlQT1NUSU5HX1JF
QUQoRFBDTEtBX0NGR0NSMF9JQ0wpOwo+QEAgLTk1NSw2ICs5NTksOCBAQCBzdGF0aWMgdm9pZAo+
IGdlbjExX2RzaV9lbmFibGVfcG9ydF9hbmRfcGh5KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAo+IAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZp
ZykgIHsKPisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNv
ZGVyLT5iYXNlLmRldik7Cj4rCj4gCS8qIHN0ZXAgNGE6IHBvd2VyIHVwIGFsbCBsYW5lcyBvZiB0
aGUgRERJIHVzZWQgYnkgRFNJICovCj4gCWdlbjExX2RzaV9wb3dlcl91cF9sYW5lcyhlbmNvZGVy
KTsKPgo+QEAgLTk3Nyw3ICs5ODMsOCBAQCBnZW4xMV9kc2lfZW5hYmxlX3BvcnRfYW5kX3BoeShz
dHJ1Y3QgaW50ZWxfZW5jb2Rlcgo+KmVuY29kZXIsCj4gCWdlbjExX2RzaV9jb25maWd1cmVfdHJh
bnNjb2RlcihlbmNvZGVyLCBwaXBlX2NvbmZpZyk7Cj4KPiAJLyogU3RlcCA0bDogR2F0ZSBEREkg
Y2xvY2tzICovCj4tCWdlbjExX2RzaV9nYXRlX2Nsb2NrcyhlbmNvZGVyKTsKPisJaWYgKElTX0dF
TihkZXZfcHJpdiwgMTEpKQo+KwkJZ2VuMTFfZHNpX2dhdGVfY2xvY2tzKGVuY29kZXIpOwo+IH0K
Pgo+IHN0YXRpYyB2b2lkIGdlbjExX2RzaV9wb3dlcnVwX3BhbmVsKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyKQo+LS0KPjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
