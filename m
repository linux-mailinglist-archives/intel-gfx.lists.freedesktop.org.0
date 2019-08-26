Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA49D0CD
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 15:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875FA89AA6;
	Mon, 26 Aug 2019 13:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1476C89AA6
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 13:43:04 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 06:43:03 -0700
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="380540778"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 06:43:01 -0700
Date: Mon, 26 Aug 2019 16:41:58 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jose Souza <jose.souza@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Arthur J Runyan <arthur.j.runyan@intel.com>
Message-ID: <20190826134158.GA27192@ideak-desk.fi.intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-5-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823082055.5992-5-lucas.demarchi@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 04/23] drm/i915/bdw+: Enable PSR in any
 eDP port
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMDE6MjA6MzZBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IAo+IEZyb20gQkRXKyB0aGUgUFNSIHJlZ2lzdGVycyBtb3ZlZCBmcm9tIERESUEgdG8g
dHJhbnNjb2Rlciwgc28gYW55IHBvcnQKPiB3aXRoIGEgZURQIHBhbmVsIGNvbm5lY3RlZCBjYW4g
aGF2ZSBQU1IsIHNvIGxldHMgcmVtb3ZlIHRoaXMKPiBsaW1pdGF0aW9uLgo+IAo+IENjOiBEaGlu
YWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPiBDYzogUm9k
cmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5
OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNiArKy0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCA4MWUzNjE5Y2Q5MDUuLjAxNzJi
ODI4NThkOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+
IEBAIC01ODgsMTEgKzU4OCw5IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIAo+ICAJLyoKPiAgCSAqIEhTVyBzcGVjIGV4cGxpY2l0
bHkgc2F5cyBQU1IgaXMgdGllZCB0byBwb3J0IEEuCj4gLQkgKiBCRFcrIHBsYXRmb3JtcyBoYXZl
IGEgaW5zdGFuY2Ugb2YgUFNSIHJlZ2lzdGVycyBwZXIgdHJhbnNjb2RlciBidXQKPiAtCSAqIGZv
ciBub3cgaXQgb25seSBzdXBwb3J0cyBvbmUgaW5zdGFuY2Ugb2YgUFNSLCBzbyBsZXRzIGtlZXAg
aXQKPiAtCSAqIGhhcmRjb2RlZCB0byBQT1JUX0EKPiArCSAqIEJEVysgcGxhdGZvcm1zIGhhdmUg
YSBpbnN0YW5jZSBvZiBQU1IgcmVnaXN0ZXJzIHBlciB0cmFuc2NvZGVyLgo+ICAJICovCj4gLQlp
ZiAoZGlnX3BvcnQtPmJhc2UucG9ydCAhPSBQT1JUX0EpIHsKPiArCWlmIChJU19IQVNXRUxMKGRl
dl9wcml2KSAmJiBkaWdfcG9ydC0+YmFzZS5wb3J0ICE9IFBPUlRfQSkgewoKQmFzZWQgb24gYW4g
ZWFybGllciBkaXNjdXNzaW9uIHdpdGggQXJ0LCBiZWZvcmUgVEdMIFBTUiBpcyBub3Qgc3VwcG9z
ZWQKdG8gYmUgdXNlZCBhbnl3aGVyZSBlbHNlIHRoYW4gcG9ydCBBLgoKQXJ0IGNvdWxkIHlvdSBj
b25maXJtIHRoYXQ/Cgo+ICAJCURSTV9ERUJVR19LTVMoIlBTUiBjb25kaXRpb24gZmFpbGVkOiBQ
b3J0IG5vdCBzdXBwb3J0ZWRcbiIpOwo+ICAJCXJldHVybjsKPiAgCX0KPiAtLSAKPiAyLjIzLjAK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
