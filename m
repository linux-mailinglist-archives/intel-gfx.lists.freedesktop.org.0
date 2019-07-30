Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0FA7A3AA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 11:08:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403EA6E2E3;
	Tue, 30 Jul 2019 09:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A28F6E2E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 09:08:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 02:08:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="200096318"
Received: from mlankhor-desk.ger.corp.intel.com (HELO [10.252.38.58])
 ([10.252.38.58])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2019 02:08:14 -0700
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20190702194205.13366-1-maarten.lankhorst@linux.intel.com>
 <20190702194205.13366-8-maarten.lankhorst@linux.intel.com>
 <20190710223550.GF24720@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <3fa8872b-6813-dcc9-a22a-437825f09647@linux.intel.com>
Date: Tue, 30 Jul 2019 11:08:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710223550.GF24720@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915: Allow vdsc functions to be
 called without encoder.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTEtMDctMjAxOSBvbSAwMDozNSBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gT24gVHVlLCBK
dWwgMDIsIDIwMTkgYXQgMDk6NDI6MDVQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6
Cj4+IFRoaXMgY2FuIGJlIHVzZWZ1bCB3aGVuIGNhbGxpbmcgdGhlIHZkc2MgZW5hYmxlIGZ1bmN0
aW9ucwo+PiBkaXJlY3RseSB3aXRob3V0IGVuY29kZXIuCj4gV291bGQgdGhpcyBiZSB0aGUgY2Fz
ZSBvbiB0aGUgc2xhdmUgcGlwZSB3aGVyZSB3ZSBuZWVkIHRvIGVuYWJsZSBEU0MgYnV0IHRoZXJl
Cj4gaXMgbm8gdHJhbnNjb2RlciBlbmFibGVkIGZvciB0aGF0IHBpcGU/CgpZZXMuIDopCgpBbHRo
b3VnaCBJIHdhcyBjdXJyZW50bHkgbWlzc2luZyBpbnRlbF9jb25maWd1cmVfcHBzX2Zvcl9kc2Nf
ZW5jb2RlcigpLCB3aWxsIGJlIGZpeGVkIGluIG5leHQgdmVyc2lvbi4KCkl0IGVycm9uZW91c2x5
IHVzZWQgdGhlIGVuY29kZXIgdG8gY2hlY2sgZm9yIGVEUC4gaW5zdGVhZCBvZiBjcnRjX3N0YXRl
LT5jcHVfdHJhbnNjb2RlcgoKfk1hYXJ0ZW4KCj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgfCA4ICsrKysrLS0tCj4+ICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+PiBpbmRleCA0MTlhNzc3MjM4
OTQuLmYwMDk1MjRhYjczNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92ZHNjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmMKPj4gQEAgLTg5Nyw3ICs4OTcsNyBAQCB2b2lkIGludGVsX2RzY19lbmFibGUo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+ICAJCSAgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiAgewo+PiAgCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwo+PiAtCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYp
Owo+PiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+
YmFzZS5kZXYpOwo+PiAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKPj4gIAlpOTE1X3Jl
Z190IGRzc19jdGwxX3JlZywgZHNzX2N0bDJfcmVnOwo+PiAgCXUzMiBkc3NfY3RsMV92YWwgPSAw
Owo+PiBAQCAtOTEwLDkgKzkxMCwxMSBAQCB2b2lkIGludGVsX2RzY19lbmFibGUoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCj4+ICAJaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGV2X3By
aXYsCj4+ICAJCQkJaW50ZWxfZHNjX3Bvd2VyX2RvbWFpbihjcnRjX3N0YXRlKSk7Cj4+ICAKPj4g
LQlpbnRlbF9jb25maWd1cmVfcHBzX2Zvcl9kc2NfZW5jb2RlcihlbmNvZGVyLCBjcnRjX3N0YXRl
KTsKPj4gKwlpZiAoZW5jb2Rlcikgewo+PiArCQlpbnRlbF9jb25maWd1cmVfcHBzX2Zvcl9kc2Nf
ZW5jb2RlcihlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPj4gIAo+PiAtCWludGVsX2RwX3dyaXRlX2Rz
Y19wcHNfc2RwKGVuY29kZXIsIGNydGNfc3RhdGUpOwo+PiArCQlpbnRlbF9kcF93cml0ZV9kc2Nf
cHBzX3NkcChlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPj4gKwl9Cj4+ICAKPj4gIAlpZiAoY3J0Y19z
dGF0ZS0+Y3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApIHsKPj4gIAkJZHNzX2N0bDFf
cmVnID0gRFNTX0NUTDE7Cj4+IC0tIAo+PiAyLjIwLjEKPj4KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
