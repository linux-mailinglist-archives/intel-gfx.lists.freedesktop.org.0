Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43988996D3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537486EB65;
	Thu, 22 Aug 2019 14:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A0B6EB6D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:36:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 03:18:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="181337626"
Received: from gkoczot-mobl.ger.corp.intel.com (HELO [10.252.52.80])
 ([10.252.52.80])
 by orsmga003.jf.intel.com with ESMTP; 22 Aug 2019 03:18:57 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190821215950.24223-1-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <cbfa7b62-4605-b166-beef-fcf49f8275ac@linux.intel.com>
Date: Thu, 22 Aug 2019 12:18:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821215950.24223-1-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix DSC enable code to use
 cpu_transcoder instead of encoder->type
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

T3AgMjEtMDgtMjAxOSBvbSAyMzo1OSBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gVGhpcyBwYXRj
aCBmaXhlcyB0aGUgaW50ZWxfY29uZmlndXJlX3Bwc19mb3JfZHNjX2VuY29kZXIoKSBmdW5jdGlv
biB0byB1c2UKPiBjcHVfdHJhbnNjb2RlciBpbnN0ZWFkIG9mIGVuY29kZXItPnR5cGUgdG8gc2Vs
ZWN0IHRoZSBjb3JyZWN0IERTQyByZWdpc3RlcnMKPiB0aGF0IHdhcyB3cm9uZ2x5IHVzZWQgaW4g
dGhlIG9yaWdpbmFsIHBhdGNoIGZvciBvbmUgRFNDIHJlZ2lzdGVyIGlzbnRhbmNlLgo+Cj4gRml4
ZXM6IDcxODI0MTRlMjUzMCAoImRybS9pOTE1L2RwOiBDb25maWd1cmUgaTkxNSBQaWN0dXJlIHBh
cmFtZXRlciBTZXQKPiByZWdpc3RlcnMgZHVyaW5nIERTQyBlbmFibGluZyIpCj4gQ2M6IFZpbGxl
IFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIHwgMiArLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4gaW5kZXggNTk4ZGRiNjBmOWZiLi5kNGZiN2Yx
NmY5ZjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+
IEBAIC01NDcsNyArNTQ3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29uZmlndXJlX3Bwc19mb3Jf
ZHNjX2VuY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAlwcHNfdmFsIHw9
IERTQ19QSUNfSEVJR0hUKHZkc2NfY2ZnLT5waWNfaGVpZ2h0KSB8Cj4gIAkJRFNDX1BJQ19XSURU
SCh2ZHNjX2NmZy0+cGljX3dpZHRoIC8gbnVtX3Zkc2NfaW5zdGFuY2VzKTsKPiAgCURSTV9JTkZP
KCJQUFMyID0gMHglMDh4XG4iLCBwcHNfdmFsKTsKPiAtCWlmIChlbmNvZGVyLT50eXBlID09IElO
VEVMX09VVFBVVF9FRFApIHsKPiArCWlmIChjcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NPREVSX0VE
UCkgewo+ICAJCUk5MTVfV1JJVEUoRFNDQV9QSUNUVVJFX1BBUkFNRVRFUl9TRVRfMiwgcHBzX3Zh
bCk7Cj4gIAkJLyoKPiAgCQkgKiBJZiAyIFZEU0MgaW5zdGFuY2VzIGFyZSBuZWVkZWQsIGNvbmZp
Z3VyZSBQUFMgZm9yIHNlY29uZAoKUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpJIHdhcyBhbHJlYWR5IGZpeGluZyB0aGlz
IGluIHRoZSBiaWdqb2luZXIgc2VyaWVzLCB3aGVyZSBlbmNvZGVyIG1pZ2h0IGJlIG51bGwgZW50
aXJlbHkuIDopCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
