Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0A634225
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 10:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B738985A;
	Tue,  4 Jun 2019 08:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955F78985A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 08:49:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 01:49:44 -0700
X-ExtLoop1: 1
Received: from anovitsk-mobl.ger.corp.intel.com (HELO [10.249.139.181])
 ([10.249.139.181])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2019 01:49:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190529112420.17257-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8c85542c-b6c6-c78e-12a2-57601274c238@intel.com>
Date: Tue, 4 Jun 2019 11:49:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190529112420.17257-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Initialise subslice prior to
 potential zero-length loop
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjkvMDUvMjAxOSAxNDoyNCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEFwcGVhc2Ugc3RhdGlj
IGFuYWx5c2VycyBieSBtYWtpbmcgc3VyZSBzdWJzbGljZSBhbHdheXMgaGF2ZSBhIHZhbHVlLgo+
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvL2d0L2ludGVsX2VuZ2luZV9jcy5jOjk3MSBpbnRlbF9z
c2V1X2Zsc19zdWJzbGljZSgpIGVycm9yOiB1bmluaXRpYWxpemVkIHN5bWJvbCAnc3Vic2xpY2Un
Lgo+Cj4gVGhlcmUncyBhbHNvIHRoZSBuYWdnaW5nIHF1ZXN0aW9uIG9mIHdoZXRoZXIgdGhhdCBm
bHMoKSBpcyBvZmYtYnktb25lLi4uCj4KPiBGaXhlczogMWFjMTU5ZTIzYzJjICgiZHJtL2k5MTU6
IEV4cGFuZCBzdWJzbGljZSBtYXNrIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxp
b25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IENjOiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0
LnN1bW1lcnNAaW50ZWwuY29tPgo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVA
aW50ZWwuY29tPgoKClN0dWFydCBzaG91bGQgcHJvYmFibHkgcmIgdGhpcyB0b28gYXMgaGUncyBi
ZWVuIGxvb2tpbmcgYWZ0ZXIgdGhpcyAKdG9wb2xvZ3kgc3R1ZmYuCgpMb29rcyBnb29kIHRvIG1l
IDoKCgpSZXZpZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5A
aW50ZWwuY29tPgoKCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYyB8IDYgKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMKPiBpbmRleCAxNTg3MjJiNTA2OTEuLmZjODgwNDI0YmUyZiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gQEAgLTk1NiwxMiArOTU2LDEyIEBAIGNv
bnN0IGNoYXIgKmk5MTVfY2FjaGVfbGV2ZWxfc3RyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCBpbnQgdHlwZSkKPiAgIHN0YXRpYyBpbmxpbmUgdTMyCj4gICBpbnRlbF9zc2V1X2Zsc19z
dWJzbGljZShjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgdTMyIHNsaWNlKQo+ICAg
ewo+IC0JdTMyIHN1YnNsaWNlOwo+ICsJY29uc3QgdTggKnN1YnNsaWNlX21hc2sgPSBzc2V1LT5z
dWJzbGljZV9tYXNrICsgc2xpY2UgKiBzc2V1LT5zc19zdHJpZGU7Cj4gKwl1MzIgc3Vic2xpY2Ug
PSAwOwo+ICAgCWludCBpOwo+ICAgCj4gICAJZm9yIChpID0gc3NldS0+c3Nfc3RyaWRlIC0gMTsg
aSA+PSAwOyBpLS0pIHsKPiAtCQlzdWJzbGljZSA9IGZscyhzc2V1LT5zdWJzbGljZV9tYXNrW3Ns
aWNlICogc3NldS0+c3Nfc3RyaWRlICsKPiAtCQkJCQkJICAgaV0pOwo+ICsJCXN1YnNsaWNlID0g
ZmxzKHN1YnNsaWNlX21hc2tbaV0pOwo+ICAgCQlpZiAoc3Vic2xpY2UpIHsKPiAgIAkJCXN1YnNs
aWNlICs9IGkgKiBCSVRTX1BFUl9CWVRFOwo+ICAgCQkJYnJlYWs7CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
