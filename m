Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB4AB6846
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 18:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018456F40D;
	Wed, 18 Sep 2019 16:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC6A96F40D;
 Wed, 18 Sep 2019 16:37:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 09:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; d="scan'208";a="270911953"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Sep 2019 09:37:08 -0700
Date: Wed, 18 Sep 2019 09:38:51 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190918163850.GD29798@intel.com>
References: <20190918151628.9880-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918151628.9880-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH i-g-t] kms_dp_tiled_display: Fix the double
 free of drmConnector
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDQ6MTY6MjhQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IGRybUNvbm5lY3RvckZyZWUgaXMgY2FsbGVkIGluc2lkZSB0aGUgbG9vcCBhbmQgYWZ0
ZXIuIE5vdCB1bnN1cnByaXNpbmdseQo+IHRoaXMgbGVhZHMgdG8gYSB1c2UtYWZ0ZXItZnJlZSBh
bmQgbWVtY29ycnVwdGlvbi4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzEwCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5k
Lm5hdmFyZUBpbnRlbC5jb20+CgpUaGFua3MgZm9yIHRoZSBmaXgKClJldmlld2VkLWJ5OiBNYW5h
c2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgoKTWFuYXNpCgo+IC0tLQo+ICB0
ZXN0cy9rbXNfZHBfdGlsZWRfZGlzcGxheS5jIHwgMjggKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2ttc19kcF90aWxlZF9kaXNwbGF5LmMgYi90ZXN0cy9r
bXNfZHBfdGlsZWRfZGlzcGxheS5jCj4gaW5kZXggYzQ2NDNjMzU4Li5kYzQ4NjZkMmYgMTAwNjQ0
Cj4gLS0tIGEvdGVzdHMva21zX2RwX3RpbGVkX2Rpc3BsYXkuYwo+ICsrKyBiL3Rlc3RzL2ttc19k
cF90aWxlZF9kaXNwbGF5LmMKPiBAQCAtMTAwLDM3ICsxMDAsMjkgQEAgY2xlYW51cDoKPiAgCj4g
IHN0YXRpYyB2b2lkIGdldF9udW1iZXJfb2ZfaF90aWxlcyhkYXRhX3QgKmRhdGEpCj4gIHsKPiAt
CWludCBpOwo+ICsJaWd0X3RpbGVfaW5mb190IHRpbGUgPSB7fTsKPiAgCWRybU1vZGVSZXNQdHIg
cmVzOwo+IC0JZHJtTW9kZUNvbm5lY3RvclB0ciBjb25uZWN0b3I7Cj4gLQlpZ3RfdGlsZV9pbmZv
X3QgdGlsZSA9IHsubnVtX2hfdGlsZSA9IDB9Owo+ICAKPiAgCWlndF9hc3NlcnQocmVzID0gZHJt
TW9kZUdldFJlc291cmNlcyhkYXRhLT5kcm1fZmQpKTsKPiAgCj4gLQlmb3IgKGkgPSAwOyBpIDwg
cmVzLT5jb3VudF9jb25uZWN0b3JzOyBpKyspIHsKPiArCWZvciAoaW50IGkgPSAwOyAhZGF0YS0+
bnVtX2hfdGlsZXMgJiYgaSA8IHJlcy0+Y291bnRfY29ubmVjdG9yczsgaSsrKSB7Cj4gKwkJZHJt
TW9kZUNvbm5lY3RvclB0ciBjb25uZWN0b3I7Cj4gKwo+ICAJCWNvbm5lY3RvciA9IGRybU1vZGVH
ZXRDb25uZWN0b3JDdXJyZW50KGRhdGEtPmRybV9mZCwKPiAgCQkJCQkJICAgICAgIHJlcy0+Y29u
bmVjdG9yc1tpXSk7Cj4gLQo+ICAJCWlndF9hc3NlcnQoY29ubmVjdG9yKTsKPiAgCj4gLQkJaWYg
KGNvbm5lY3Rvci0+Y29ubmVjdGlvbiAhPSBEUk1fTU9ERV9DT05ORUNURUQgfHwKPiAtCQkgICAg
Y29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSAhPSBEUk1fTU9ERV9DT05ORUNUT1JfRGlzcGxheVBv
cnQpIHsKPiAtCQkJZHJtTW9kZUZyZWVDb25uZWN0b3IoY29ubmVjdG9yKTsKPiAtCQkJY29udGlu
dWU7Cj4gLQkJfQo+IC0KPiAtCQlnZXRfY29ubmVjdG9yX3RpbGVfcHJvcHMoZGF0YSwgY29ubmVj
dG9yLCAmdGlsZSk7Cj4gKwkJaWYgKGNvbm5lY3Rvci0+Y29ubmVjdGlvbiA9PSBEUk1fTU9ERV9D
T05ORUNURUQgJiYKPiArCQkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9E
RV9DT05ORUNUT1JfRGlzcGxheVBvcnQpIHsKPiArCQkJZ2V0X2Nvbm5lY3Rvcl90aWxlX3Byb3Bz
KGRhdGEsIGNvbm5lY3RvciwgJnRpbGUpOwo+ICAKPiAtCQlpZiAodGlsZS5udW1faF90aWxlID09
IDApIHsKPiAtCQkJZHJtTW9kZUZyZWVDb25uZWN0b3IoY29ubmVjdG9yKTsKPiAtCQkJY29udGlu
dWU7Cj4gKwkJCWRhdGEtPm51bV9oX3RpbGVzID0gdGlsZS5udW1faF90aWxlOwo+ICAJCX0KPiAt
CQlkYXRhLT5udW1faF90aWxlcyA9IHRpbGUubnVtX2hfdGlsZTsKPiAtCQlicmVhazsKPiArCj4g
KwkJZHJtTW9kZUZyZWVDb25uZWN0b3IoY29ubmVjdG9yKTsKPiAgCX0KPiAgCj4gIAlkcm1Nb2Rl
RnJlZVJlc291cmNlcyhyZXMpOwo+IC0JZHJtTW9kZUZyZWVDb25uZWN0b3IoY29ubmVjdG9yKTsK
PiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgZ2V0X2Nvbm5lY3RvcnMoZGF0YV90ICpkYXRhKQo+IC0t
IAo+IDIuMjMuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
