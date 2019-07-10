Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FF864EB9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 00:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89BDA8914C;
	Wed, 10 Jul 2019 22:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423878914C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 22:33:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 15:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="249605703"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 10 Jul 2019 15:33:31 -0700
Date: Wed, 10 Jul 2019 15:35:51 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190710223550.GF24720@intel.com>
References: <20190702194205.13366-1-maarten.lankhorst@linux.intel.com>
 <20190702194205.13366-8-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702194205.13366-8-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

T24gVHVlLCBKdWwgMDIsIDIwMTkgYXQgMDk6NDI6MDVQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gVGhpcyBjYW4gYmUgdXNlZnVsIHdoZW4gY2FsbGluZyB0aGUgdmRzYyBlbmFi
bGUgZnVuY3Rpb25zCj4gZGlyZWN0bHkgd2l0aG91dCBlbmNvZGVyLgoKV291bGQgdGhpcyBiZSB0
aGUgY2FzZSBvbiB0aGUgc2xhdmUgcGlwZSB3aGVyZSB3ZSBuZWVkIHRvIGVuYWJsZSBEU0MgYnV0
IHRoZXJlCmlzIG5vIHRyYW5zY29kZXIgZW5hYmxlZCBmb3IgdGhhdCBwaXBlPwoKTWFuYXNpCgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmRzYy5jIHwgOCArKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmRzYy5jCj4gaW5kZXggNDE5YTc3NzIzODk0Li5mMDA5NTI0YWI3MzUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+IEBAIC04OTcsNyArODk3LDcgQEAg
dm9pZCBpbnRlbF9kc2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJ
CSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICB7Cj4g
IAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjKTsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
ZW5jb2Rlci0+YmFzZS5kZXYpOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBp
cGU7Cj4gIAlpOTE1X3JlZ190IGRzc19jdGwxX3JlZywgZHNzX2N0bDJfcmVnOwo+ICAJdTMyIGRz
c19jdGwxX3ZhbCA9IDA7Cj4gQEAgLTkxMCw5ICs5MTAsMTEgQEAgdm9pZCBpbnRlbF9kc2NfZW5h
YmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJaW50ZWxfZGlzcGxheV9wb3dl
cl9nZXQoZGV2X3ByaXYsCj4gIAkJCQlpbnRlbF9kc2NfcG93ZXJfZG9tYWluKGNydGNfc3RhdGUp
KTsKPiAgCj4gLQlpbnRlbF9jb25maWd1cmVfcHBzX2Zvcl9kc2NfZW5jb2RlcihlbmNvZGVyLCBj
cnRjX3N0YXRlKTsKPiArCWlmIChlbmNvZGVyKSB7Cj4gKwkJaW50ZWxfY29uZmlndXJlX3Bwc19m
b3JfZHNjX2VuY29kZXIoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cj4gIAo+IC0JaW50ZWxfZHBfd3Jp
dGVfZHNjX3Bwc19zZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cj4gKwkJaW50ZWxfZHBfd3JpdGVf
ZHNjX3Bwc19zZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cj4gKwl9Cj4gIAo+ICAJaWYgKGNydGNf
c3RhdGUtPmNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKSB7Cj4gIAkJZHNzX2N0bDFf
cmVnID0gRFNTX0NUTDE7Cj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
