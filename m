Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8C7217E5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 13:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F0CD897C8;
	Fri, 17 May 2019 11:51:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67AC6894EB;
 Fri, 17 May 2019 11:51:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 04:51:08 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 04:51:07 -0700
To: Andi Shyti <andi.shyti@intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-25-tvrtko.ursulin@linux.intel.com>
 <20190517113927.GA2556@intel.intel>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <15886722-3193-d4e7-35e9-c2f7cdeba086@linux.intel.com>
Date: Fri, 17 May 2019 12:51:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517113927.GA2556@intel.intel>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 24/25] gem_wsim: Discover
 engines
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA1LzIwMTkgMTI6MzksIEFuZGkgU2h5dGkgd3JvdGU6Cj4gSGkgVHZydGtvLAo+IAo+
PiArc3RhdGljIGludAo+PiArX19pOTE1X3F1ZXJ5KGludCBpOTE1LCBzdHJ1Y3QgZHJtX2k5MTVf
cXVlcnkgKnEpCj4+ICt7Cj4+ICsJaWYgKGlndF9pb2N0bChpOTE1LCBEUk1fSU9DVExfSTkxNV9R
VUVSWSwgcSkpCj4+ICsJCXJldHVybiAtZXJybm87Cj4+ICsJcmV0dXJuIDA7Cj4+ICt9Cj4+ICsK
Pj4gK3N0YXRpYyBpbnQKPj4gK19faTkxNV9xdWVyeV9pdGVtcyhpbnQgaTkxNSwgc3RydWN0IGRy
bV9pOTE1X3F1ZXJ5X2l0ZW0gKml0ZW1zLCB1aW50MzJfdCBuX2l0ZW1zKQo+PiArewo+PiArCXN0
cnVjdCBkcm1faTkxNV9xdWVyeSBxID0gewo+PiArCQkubnVtX2l0ZW1zID0gbl9pdGVtcywKPj4g
KwkJLml0ZW1zX3B0ciA9IHRvX3VzZXJfcG9pbnRlcihpdGVtcyksCj4+ICsJfTsKPj4gKwlyZXR1
cm4gX19pOTE1X3F1ZXJ5KGk5MTUsICZxKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQKPj4g
K2k5MTVfcXVlcnlfaXRlbXMoaW50IGk5MTUsIHN0cnVjdCBkcm1faTkxNV9xdWVyeV9pdGVtICpp
dGVtcywgdWludDMyX3Qgbl9pdGVtcykKPj4gK3sKPj4gKwlpZ3RfYXNzZXJ0X2VxKF9faTkxNV9x
dWVyeV9pdGVtcyhpOTE1LCBpdGVtcywgbl9pdGVtcyksIDApOwo+PiArfQo+PiArCj4+ICtzdGF0
aWMgYm9vbCBoYXNfcXVlcnkoaW50IGk5MTUpCj4+ICt7Cj4+ICsJc3RydWN0IGRybV9pOTE1X3F1
ZXJ5IHF1ZXJ5ID0ge307Cj4+ICsKPj4gKwlyZXR1cm4gX19pOTE1X3F1ZXJ5KGk5MTUsICZxdWVy
eSkgPT0gMDsKPj4gK30KPj4gKwo+PiArc3RhdGljIGJvb2wgaGFzX2VuZ2luZV9xdWVyeShpbnQg
aTkxNSkKPj4gK3sKPj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSBpdGVtID0gewo+PiAr
CQkucXVlcnlfaWQgPSBEUk1fSTkxNV9RVUVSWV9FTkdJTkVfSU5GTywKPj4gKwl9Owo+PiArCj4+
ICsJcmV0dXJuIF9faTkxNV9xdWVyeV9pdGVtcyhpOTE1LCAmaXRlbSwgMSkgPT0gMCAmJiBpdGVt
Lmxlbmd0aCA+IDA7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIHF1ZXJ5X2VuZ2luZXModm9p
ZCkKPj4gK3sKPiAKPiBbLi4uXQo+IAo+PiArCQlzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfZW5naW5l
X2luZm8gKmVuZ2luZV9pbmZvOwo+PiArCQlzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSBpdGVt
ID0gewo+PiArCQkJLnF1ZXJ5X2lkID0gRFJNX0k5MTVfUVVFUllfRU5HSU5FX0lORk8sCj4+ICsJ
CX07Cj4+ICsJCWNvbnN0IHVuc2lnbmVkIGludCBzeiA9IDQwOTY7Cj4+ICsJCXVuc2lnbmVkIGlu
dCBpOwo+PiArCj4+ICsJCWVuZ2luZV9pbmZvID0gbWFsbG9jKHN6KTsKPj4gKwkJaWd0X2Fzc2Vy
dChlbmdpbmVfaW5mbyk7Cj4+ICsJCW1lbXNldChlbmdpbmVfaW5mbywgMCwgc3opOwo+PiArCj4+
ICsJCWl0ZW0uZGF0YV9wdHIgPSB0b191c2VyX3BvaW50ZXIoZW5naW5lX2luZm8pOwo+PiArCQlp
dGVtLmxlbmd0aCA9IHN6Owo+PiArCj4+ICsJCWk5MTVfcXVlcnlfaXRlbXMoZmQsICZpdGVtLCAx
KTsKPj4gKwkJaWd0X2Fzc2VydChpdGVtLmxlbmd0aCA+IDApOwo+PiArCQlpZ3RfYXNzZXJ0KGl0
ZW0ubGVuZ3RoIDw9IHN6KTsKPj4gKwo+PiArCQludW0gPSBlbmdpbmVfaW5mby0+bnVtX2VuZ2lu
ZXM7Cj4+ICsKPj4gKwkJZW5naW5lcyA9IGNhbGxvYyhudW0sCj4+ICsJCQkJIHNpemVvZihzdHJ1
Y3QgaTkxNV9lbmdpbmVfY2xhc3NfaW5zdGFuY2UpKTsKPj4gKwkJaWd0X2Fzc2VydChlbmdpbmVz
KTsKPj4gKwo+PiArCQlmb3IgKGkgPSAwOyBpIDwgbnVtOyBpKyspIHsKPj4gKwkJCXN0cnVjdCBk
cm1faTkxNV9lbmdpbmVfaW5mbyAqZW5naW5lID0KPj4gKwkJCQkoc3RydWN0IGRybV9pOTE1X2Vu
Z2luZV9pbmZvICopJmVuZ2luZV9pbmZvLT5lbmdpbmVzW2ldOwo+PiArCj4+ICsJCQllbmdpbmVz
W2ldID0gZW5naW5lLT5lbmdpbmU7Cj4+ICsJCX0KPj4gKwl9Cj4+ICsKPj4gKwlfX2VuZ2luZXMg
PSBlbmdpbmVzOwo+PiArCV9fbnVtX2VuZ2luZXMgPSBudW07Cj4+ICt9Cj4gCj4gd291bGQgaXQg
bWFrZSBzZW5zZSB0byBtYWtlIGEgbGlicmFyeSBvdXQgb2YgYWxsIHRoZSBhYm92ZT8gZS5nLgo+
IGdlbV9lbmdpbmVfdG9wb2xvZ3kgZG9lcyBzaW1pbGFyIHRoaW5nIChhbGwgc3RhdGljIGZ1bmN0
aW9ucyBsaWtlCj4gaGVyZSwgdGhvdWdoKS4KCkRlZmluaXRlbHkgeWVzLCBidXQgY29vcmRpbmF0
aW5nIGFsbCBzZXJpZXMgc2VlbXMgdHJpY2t5LiBJIHRoaW5rIGJlc3QgCndvdWxkIGJlIHRvIGNv
bnNvbGlkYXRlIG9uY2UgZXZlcnl0aGluZyBnZXRzIG1lcmdlZD8KClJlZ2FyZHMsCgpUdnJ0a28K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
