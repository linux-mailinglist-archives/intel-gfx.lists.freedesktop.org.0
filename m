Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1662884A58
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 13:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076C68989A;
	Wed,  7 Aug 2019 11:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6439E8989A
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 11:07:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 04:07:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="179458815"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga006.jf.intel.com with ESMTP; 07 Aug 2019 04:07:17 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 7 Aug 2019 04:07:17 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 7 Aug 2019 04:07:17 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.179]) with mapi id 14.03.0439.000;
 Wed, 7 Aug 2019 16:37:13 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2 6/6] drm/i915/tgl/dsi: Enable blanking packets during BLLP
 for video mode
Thread-Index: AQHVRq1MkOTVJAQ1702Ui5nuGz21BabvkH7w
Date: Wed, 7 Aug 2019 11:07:12 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821B6EB5@BGSMSX104.gar.corp.intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
 <20190730073648.5157-7-vandita.kulkarni@intel.com>
In-Reply-To: <20190730073648.5157-7-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWVkNWZhNjItMGU5MS00M2I2LTljZGEtNmE0MTcxZmE4ZjIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUTh0M2hSWHA4cTZtZkQ2YlA5bFwvNVBcL3o1MEJZTnl1ZTZ3MGxcL1BZN1JQK1luUjk5aE1lbWJHelwvbWM2M1BuSnoifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2 6/6] drm/i915/tgl/dsi: Enable blanking packets
 during BLLP for video mode
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
Y29tPgo+U3ViamVjdDogW3YyIDYvNl0gZHJtL2k5MTUvdGdsL2RzaTogRW5hYmxlIGJsYW5raW5n
IHBhY2tldHMgZHVyaW5nIEJMTFAgZm9yIHZpZGVvCj5tb2RlCj4KPkJsYW5raW5nIHBhY2tldCBi
aXQgd2lsbCBjb250cm9sIHdoZXRoZXIgdGhlIHRyYW5zY29kZXIgYWxsb3dzIHRoZSBsaW5rIHRv
IGVudGVyIHRoZSBMUAo+c3RhdGUgZHVyaW5nIEJMTFAgcmVnaW9ucyAoYXNzdW1pbmcgdGhlcmUg
aXMgZW5vdWdoIHRpbWUpLCBvciB3aGV0aGVyIGl0IHdpbGwga2VlcCB0aGUKPmxpbmsgaW4gdGhl
IEhTIHN0YXRlIHdpdGggYSBCbGFua2luZyBQYWNrZXQKCkxvb2tzIGdvb2QgdG8gbWUuClJldmll
d2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgoKPlNpZ25lZC1vZmYt
Ynk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+LS0tCj4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCA1ICsrKysrCj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgfCAxICsKPiAyIGZpbGVzIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMKPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMK
PmluZGV4IGVhZjI3NzliODliOC4uYWUzMzYzOWQ0OGJhIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaWNsX2RzaS5jCj5AQCAtNjg1LDYgKzY4NSwxMSBAQCBnZW4xMV9kc2lfY29uZmln
dXJlX3RyYW5zY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIKPiplbmNvZGVyLAo+IAkJCWJyZWFr
Owo+IAkJfQo+Cj4rCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+KwkJCWlmIChp
c192aWRfbW9kZShpbnRlbF9kc2kpKQo+KwkJCQl0bXAgfD0gQkxBTktJTkdfUEFDS0VUX0VOQUJM
RTsKPisJCX0KPisKPiAJCS8qIHByb2dyYW0gRFNJIG9wZXJhdGlvbiBtb2RlICovCj4gCQlpZiAo
aXNfdmlkX21vZGUoaW50ZWxfZHNpKSkgewo+IAkJCXRtcCAmPSB+T1BfTU9ERV9NQVNLOwo+ZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4Cj5kMmI3NjEyMWQ4NjMuLjFhODQ3ZjQ0M2VmNyAxMDA2
NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPkBAIC0xMDk3OSw2ICsxMDk3OSw3IEBAIGVudW0gc2ts
X3Bvd2VyX2dhdGUgewo+ICNkZWZpbmUgIENBTElCUkFUSU9OX0RJU0FCTEVECQkoMHgwIDw8IDQp
Cj4gI2RlZmluZSAgQ0FMSUJSQVRJT05fRU5BQkxFRF9JTklUSUFMX09OTFkJKDB4MiA8PCA0KQo+
ICNkZWZpbmUgIENBTElCUkFUSU9OX0VOQUJMRURfSU5JVElBTF9QRVJJT0RJQwkoMHgzIDw8IDQp
Cj4rI2RlZmluZSAgQkxBTktJTkdfUEFDS0VUX0VOQUJMRQkJKDEgPDwgMikKPiAjZGVmaW5lICBT
M0RfT1JJRU5UQVRJT05fTEFORFNDQVBFCSgxIDw8IDEpCj4gI2RlZmluZSAgRU9UUF9ESVNBQkxF
RAkJCSgxIDw8IDApCj4KPi0tCj4yLjIxLjAuNS5nYWViNTgyYQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
