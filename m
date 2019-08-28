Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E4FA073E
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 18:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4911B89CF8;
	Wed, 28 Aug 2019 16:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A00389CF8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 16:24:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 09:24:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="381334027"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 28 Aug 2019 09:24:27 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 09:24:27 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 28 Aug 2019 09:24:26 -0700
Received: from bgsmsx154.gar.corp.intel.com (10.224.48.47) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 28 Aug 2019 09:24:26 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX154.gar.corp.intel.com ([169.254.7.192]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 21:54:24 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 08/10] drm/i915/display: Extract ilk_read_luts()
Thread-Index: AQHVW9iw922YzPxVd0GZW127OJXzWKcQwPtw
Date: Wed, 28 Aug 2019 16:24:24 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D3A73@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-9-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-9-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzM2ODI4ZTYtNTNhNi00NjBjLTgxOTEtZWNhMTNlYWE5YzJlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia1NjQXhqU0xES3JWVk8wcDNIUUVXRFJpXC9VQmVSSmhCendESWxcLytEK0oyWGhOZW9OOHA3WUlcL0t1XC9vc01KOTQifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 08/10] drm/i915/display: Extract
 ilk_read_luts()
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
W3Y4XVtQQVRDSCAwOC8xMF0gZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBpbGtfcmVhZF9sdXRz
KCkKPgo+Rm9yIGlsaywgaGF2ZSBodyByZWFkIG91dCB0byBjcmVhdGUgaHcgYmxvYiBvZiBnYW1t
YSBsdXQgdmFsdWVzLgoKU2FtZSBhcyBlYXJsaWVyIHBhdGNoLgoKPlNpZ25lZC1vZmYtYnk6IFN3
YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Cj4tLS0KPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCA0MSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgfCAg
MyArKysKPiAyIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
Pgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
Ywo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPmluZGV4IDFl
YzJmYTAuLjRiOWIyOGYgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NvbG9yLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuYwo+QEAgLTE2NDcsNiArMTY0Nyw0MyBAQCBzdGF0aWMgdm9pZCBjaHZfcmVhZF9sdXRz
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4qY3J0Y19zdGF0ZSkKPiAJCWNydGNfc3RhdGUtPmJh
c2UuZ2FtbWFfbHV0ID0KPmNodl9yZWFkX2NnbV9nYW1tYV9sdXQoY3J0Y19zdGF0ZSk7Cj4gfQo+
Cj4rc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqCj4raWxrX3JlYWRfZ2FtbWFfbHV0
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7CgpSZW5hbWUgdGhpcyB0byAi
IGlsa19yZWFkX2x1dF8xMCgpIiBhcyBwZXIgVmlsbGUncyBzdWdnZXN0aW9uLgpBbHNvIGFkZCBj
b25zdC4KCj4rCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0
YXRlLT5iYXNlLmNydGMpOwo+KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPisJdTMyIGksIHZhbCwgbHV0X3NpemUgPSBJTlRFTF9J
TkZPKGRldl9wcml2KS0+Y29sb3IuZ2FtbWFfbHV0X3NpemU7Cj4rCWVudW0gcGlwZSBwaXBlID0g
Y3J0Yy0+cGlwZTsKPisJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iOwo+KwlzdHJ1Y3Qg
ZHJtX2NvbG9yX2x1dCAqYmxvYl9kYXRhOwo+Kwo+KwlibG9iID0gZHJtX3Byb3BlcnR5X2NyZWF0
ZV9ibG9iKCZkZXZfcHJpdi0+ZHJtLAo+KwkJCQkJc2l6ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0
KSAqIGx1dF9zaXplLAo+KwkJCQkJTlVMTCk7Cj4rCWlmIChJU19FUlIoYmxvYikpCj4rCQlyZXR1
cm4gTlVMTDsKPisKPisJYmxvYl9kYXRhID0gYmxvYi0+ZGF0YTsKPisKPisJZm9yIChpID0gMDsg
aSA8IGx1dF9zaXplIC0gMTsgaSsrKSB7Cj4rCQl2YWwgPSBJOTE1X1JFQUQoUFJFQ19QQUxFVFRF
KHBpcGUsIGkpKTsKPisKPisJCWJsb2JfZGF0YVtpXS5yZWQgPQo+aW50ZWxfY29sb3JfbHV0X3Bh
Y2soUkVHX0ZJRUxEX0dFVChQUkVDX1BBTEVUVEVfUkVEX01BU0ssIHZhbCksIDEwKTsKPisJCWJs
b2JfZGF0YVtpXS5ncmVlbiA9Cj5pbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKFBS
RUNfUEFMRVRURV9HUkVFTl9NQVNLLCB2YWwpLCAxMCk7Cj4rCQlibG9iX2RhdGFbaV0uYmx1ZSA9
Cj5pbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKFBSRUNfUEFMRVRURV9CTFVFX01B
U0ssIHZhbCksIDEwKTsKPisJfQo+Kwo+KwlyZXR1cm4gYmxvYjsKPit9Cj4rCj4rc3RhdGljIHZv
aWQgaWxrX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgewo+
KwlpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfOEJJVCkKPisJ
CWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNydGNfc3RhdGUp
Owo+KwllbHNlCj4rCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGlsa19yZWFkX2dhbW1h
X2x1dChjcnRjX3N0YXRlKTsgfQo+Kwo+IHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YykgIHsKPiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjcnRjLT5iYXNlLmRldik7IEBAIC0xNjk2LDgKPisxNzMzLDEwIEBAIHZvaWQgaW50
ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAJCQlkZXZfcHJpdi0+ZGlz
cGxheS5sb2FkX2x1dHMgPSBiZHdfbG9hZF9sdXRzOwo+IAkJZWxzZSBpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSA3KQo+IAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGl2Yl9sb2Fk
X2x1dHM7Cj4tCQllbHNlCj4rCQllbHNlIHsKClRoaXMgbWFrZSB1bmJhbGFuY2VkIGJyYWNlcy4g
QWRkIGJyYWNlcyBmb3IgYWJvdmUgZWxzZSBjYXNlcyBhcyB3ZWxsLgoKPiAJCQlkZXZfcHJpdi0+
ZGlzcGxheS5sb2FkX2x1dHMgPSBpbGtfbG9hZF9sdXRzOwo+KwkJCWRldl9wcml2LT5kaXNwbGF5
LnJlYWRfbHV0cyA9IGlsa19yZWFkX2x1dHM7Cj4rCQl9Cj4gCX0KPgo+IAlkcm1fY3J0Y19lbmFi
bGVfY29sb3JfbWdtdCgmY3J0Yy0+YmFzZSwKPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleAo+
ZTc2ZTc3OS4uYWNjOTIzOSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPkBAIC03MjAzLDYg
KzcyMDMsOSBAQCBlbnVtIHsKPiAvKiBpbGsvc25iIHByZWNpc2lvbiBwYWxldHRlICovCj4gI2Rl
ZmluZSBfUFJFQ19QQUxFVFRFX0EgICAgICAgICAgIDB4NGIwMDAKPiAjZGVmaW5lIF9QUkVDX1BB
TEVUVEVfQiAgICAgICAgICAgMHg0YzAwMAo+KyNkZWZpbmUgICBQUkVDX1BBTEVUVEVfUkVEX01B
U0sgICBSRUdfR0VOTUFTSygyOSwgMjApCj4rI2RlZmluZSAgIFBSRUNfUEFMRVRURV9HUkVFTl9N
QVNLIFJFR19HRU5NQVNLKDE5LCAxMCkKPisjZGVmaW5lICAgUFJFQ19QQUxFVFRFX0JMVUVfTUFT
SyAgUkVHX0dFTk1BU0soOSwgMCkKPiAjZGVmaW5lIFBSRUNfUEFMRVRURShwaXBlLCBpKSBfTU1J
TyhfUElQRShwaXBlLCBfUFJFQ19QQUxFVFRFX0EsCj5fUFJFQ19QQUxFVFRFX0IpICsgKGkpICog
NCkKPgo+ICNkZWZpbmUgIF9QUkVDX1BJUEVBR0NNQVggICAgICAgICAgICAgIDB4NGQwMDAKPi0t
Cj4xLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
