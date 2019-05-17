Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01093217D2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 13:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E44898EA;
	Fri, 17 May 2019 11:39:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6673898EA;
 Fri, 17 May 2019 11:39:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 04:39:20 -0700
X-ExtLoop1: 1
Received: from intel.fi.intel.com (HELO intel.intel) ([10.237.68.141])
 by orsmga004.jf.intel.com with ESMTP; 17 May 2019 04:39:18 -0700
Date: Fri, 17 May 2019 14:39:27 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190517113927.GA2556@intel.intel>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-25-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517112526.6738-25-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvLAoKPiArc3RhdGljIGludAo+ICtfX2k5MTVfcXVlcnkoaW50IGk5MTUsIHN0cnVj
dCBkcm1faTkxNV9xdWVyeSAqcSkKPiArewo+ICsJaWYgKGlndF9pb2N0bChpOTE1LCBEUk1fSU9D
VExfSTkxNV9RVUVSWSwgcSkpCj4gKwkJcmV0dXJuIC1lcnJubzsKPiArCXJldHVybiAwOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgaW50Cj4gK19faTkxNV9xdWVyeV9pdGVtcyhpbnQgaTkxNSwgc3RydWN0
IGRybV9pOTE1X3F1ZXJ5X2l0ZW0gKml0ZW1zLCB1aW50MzJfdCBuX2l0ZW1zKQo+ICt7Cj4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcXVlcnkgcSA9IHsKPiArCQkubnVtX2l0ZW1zID0gbl9pdGVtcywKPiAr
CQkuaXRlbXNfcHRyID0gdG9fdXNlcl9wb2ludGVyKGl0ZW1zKSwKPiArCX07Cj4gKwlyZXR1cm4g
X19pOTE1X3F1ZXJ5KGk5MTUsICZxKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQKPiAraTkxNV9x
dWVyeV9pdGVtcyhpbnQgaTkxNSwgc3RydWN0IGRybV9pOTE1X3F1ZXJ5X2l0ZW0gKml0ZW1zLCB1
aW50MzJfdCBuX2l0ZW1zKQo+ICt7Cj4gKwlpZ3RfYXNzZXJ0X2VxKF9faTkxNV9xdWVyeV9pdGVt
cyhpOTE1LCBpdGVtcywgbl9pdGVtcyksIDApOwo+ICt9Cj4gKwo+ICtzdGF0aWMgYm9vbCBoYXNf
cXVlcnkoaW50IGk5MTUpCj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9xdWVyeSBxdWVyeSA9IHt9
Owo+ICsKPiArCXJldHVybiBfX2k5MTVfcXVlcnkoaTkxNSwgJnF1ZXJ5KSA9PSAwOwo+ICt9Cj4g
Kwo+ICtzdGF0aWMgYm9vbCBoYXNfZW5naW5lX3F1ZXJ5KGludCBpOTE1KQo+ICt7Cj4gKwlzdHJ1
Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSBpdGVtID0gewo+ICsJCS5xdWVyeV9pZCA9IERSTV9JOTE1
X1FVRVJZX0VOR0lORV9JTkZPLAo+ICsJfTsKPiArCj4gKwlyZXR1cm4gX19pOTE1X3F1ZXJ5X2l0
ZW1zKGk5MTUsICZpdGVtLCAxKSA9PSAwICYmIGl0ZW0ubGVuZ3RoID4gMDsKPiArfQo+ICsKPiAr
c3RhdGljIHZvaWQgcXVlcnlfZW5naW5lcyh2b2lkKQo+ICt7CgpbLi4uXQoKPiArCQlzdHJ1Y3Qg
ZHJtX2k5MTVfcXVlcnlfZW5naW5lX2luZm8gKmVuZ2luZV9pbmZvOwo+ICsJCXN0cnVjdCBkcm1f
aTkxNV9xdWVyeV9pdGVtIGl0ZW0gPSB7Cj4gKwkJCS5xdWVyeV9pZCA9IERSTV9JOTE1X1FVRVJZ
X0VOR0lORV9JTkZPLAo+ICsJCX07Cj4gKwkJY29uc3QgdW5zaWduZWQgaW50IHN6ID0gNDA5NjsK
PiArCQl1bnNpZ25lZCBpbnQgaTsKPiArCj4gKwkJZW5naW5lX2luZm8gPSBtYWxsb2Moc3opOwo+
ICsJCWlndF9hc3NlcnQoZW5naW5lX2luZm8pOwo+ICsJCW1lbXNldChlbmdpbmVfaW5mbywgMCwg
c3opOwo+ICsKPiArCQlpdGVtLmRhdGFfcHRyID0gdG9fdXNlcl9wb2ludGVyKGVuZ2luZV9pbmZv
KTsKPiArCQlpdGVtLmxlbmd0aCA9IHN6Owo+ICsKPiArCQlpOTE1X3F1ZXJ5X2l0ZW1zKGZkLCAm
aXRlbSwgMSk7Cj4gKwkJaWd0X2Fzc2VydChpdGVtLmxlbmd0aCA+IDApOwo+ICsJCWlndF9hc3Nl
cnQoaXRlbS5sZW5ndGggPD0gc3opOwo+ICsKPiArCQludW0gPSBlbmdpbmVfaW5mby0+bnVtX2Vu
Z2luZXM7Cj4gKwo+ICsJCWVuZ2luZXMgPSBjYWxsb2MobnVtLAo+ICsJCQkJIHNpemVvZihzdHJ1
Y3QgaTkxNV9lbmdpbmVfY2xhc3NfaW5zdGFuY2UpKTsKPiArCQlpZ3RfYXNzZXJ0KGVuZ2luZXMp
Owo+ICsKPiArCQlmb3IgKGkgPSAwOyBpIDwgbnVtOyBpKyspIHsKPiArCQkJc3RydWN0IGRybV9p
OTE1X2VuZ2luZV9pbmZvICplbmdpbmUgPQo+ICsJCQkJKHN0cnVjdCBkcm1faTkxNV9lbmdpbmVf
aW5mbyAqKSZlbmdpbmVfaW5mby0+ZW5naW5lc1tpXTsKPiArCj4gKwkJCWVuZ2luZXNbaV0gPSBl
bmdpbmUtPmVuZ2luZTsKPiArCQl9Cj4gKwl9Cj4gKwo+ICsJX19lbmdpbmVzID0gZW5naW5lczsK
PiArCV9fbnVtX2VuZ2luZXMgPSBudW07Cj4gK30KCndvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8gbWFr
ZSBhIGxpYnJhcnkgb3V0IG9mIGFsbCB0aGUgYWJvdmU/IGUuZy4KZ2VtX2VuZ2luZV90b3BvbG9n
eSBkb2VzIHNpbWlsYXIgdGhpbmcgKGFsbCBzdGF0aWMgZnVuY3Rpb25zIGxpa2UKaGVyZSwgdGhv
dWdoKS4KCkFuZGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
