Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC0FBB6D2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 16:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C515A6E30E;
	Mon, 23 Sep 2019 14:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8D46E30E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 14:32:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 07:32:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,540,1559545200"; d="scan'208";a="213346717"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2019 07:32:01 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Sep 2019 07:32:01 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Sep 2019 07:31:59 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 23 Sep 2019 07:31:59 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.13]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.96]) with mapi id 14.03.0439.000;
 Mon, 23 Sep 2019 20:01:56 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Karas, Anna" <anna.karas@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl: Fix doc not corresponding to code
Thread-Index: AQHVcgzG5nXtbv+eAEq9E7L+Q8VN7ac5UgDg
Date: Mon, 23 Sep 2019 14:31:55 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B8096557F@BGSMSX108.gar.corp.intel.com>
References: <20190923124435.21774-1-anna.karas@intel.com>
In-Reply-To: <20190923124435.21774-1-anna.karas@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjQ4M2YxMmQtOTRjZS00NjA2LWJhZTItNjgyYmE5ODUxZDVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJIRzMwKzRoYzlcL0xwTGxIaXNmSkhLZk9ZQU9vWmtneEFhVVd2YU9sZk1LOFYyR1wvdUVHYXByMXQ0dmNaRENUb1UifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix doc not corresponding to
 code
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEthcmFzLCBBbm5hIDxhbm5hLmth
cmFzQGludGVsLmNvbT4KPiBTZW50OiBNb25kYXksIFNlcHRlbWJlciAyMywgMjAxOSA2OjE1IFBN
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogS3Vsa2FybmksIFZh
bmRpdGEgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+IFN1YmplY3Q6IFtQQVRDSF0gZHJt
L2k5MTUvdGdsOiBGaXggZG9jIG5vdCBjb3JyZXNwb25kaW5nIHRvIGNvZGUKPiAKPiBSZXBsYWNl
IFBQTHMgbmFtZXMgdXNlZCBpbiBkb2N1bWVudGF0aW9uIHRvIHRoYXQgdXNlZCBpbiB0aGUgY29k
ZS4KICJQTEwiIGluc3RlYWQgb2YgUFBMLCB3aXRoIHRoaXMgdHlwbyBmaXhlZCwgClJldmlld2Vk
LWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KCi1WYW5k
aXRhLgo+IAo+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNv
bT4KPiBGaXhlczogY29tbWl0IGQwNTcwNDE0ZjNkMSAoImRybS9pOTE1L3RnbDogQWRkIG5ldyBw
bGwgaWRzIikKPiBTaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGludGVsLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5o
IHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IuaAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5oCj4gaW5kZXggZTc1ODg3OTlmY2U1Li4xMDRjZjZkNDIzMzMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCj4gQEAgLTE0NywxMSArMTQ3
LDExIEBAIGVudW0gaW50ZWxfZHBsbF9pZCB7Cj4gIAkgKi8KPiAgCURQTExfSURfSUNMX01HUExM
NCA9IDYsCj4gIAkvKioKPiAtCSAqIEBEUExMX0lEX1RHTF9UQ1BMTDU6IFRHTCBUQyBQTEwgcG9y
dCA1IChUQzUpCj4gKwkgKiBARFBMTF9JRF9UR0xfTUdQTEw1OiBUR0wgVEMgUExMIHBvcnQgNSAo
VEM1KQo+ICAJICovCj4gIAlEUExMX0lEX1RHTF9NR1BMTDUgPSA3LAo+ICAJLyoqCj4gLQkgKiBA
RFBMTF9JRF9UR0xfVENQTEw2OiBUR0wgVEMgUExMIHBvcnQgNiAoVEM2KQo+ICsJICogQERQTExf
SURfVEdMX01HUExMNjogVEdMIFRDIFBMTCBwb3J0IDYgKFRDNikKPiAgCSAqLwo+ICAJRFBMTF9J
RF9UR0xfTUdQTEw2ID0gOCwKPiAgfTsKPiAtLQo+IDIuMTkuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
