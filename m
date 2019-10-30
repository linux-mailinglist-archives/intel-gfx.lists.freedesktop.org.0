Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9842EEA54A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 22:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2846EBA5;
	Wed, 30 Oct 2019 21:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F3C6EBA3;
 Wed, 30 Oct 2019 21:19:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 14:19:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; d="scan'208";a="203315802"
Received: from vrkonda-desk.ra.intel.com ([134.134.244.70])
 by orsmga003.jf.intel.com with ESMTP; 30 Oct 2019 14:19:43 -0700
Date: Wed, 30 Oct 2019 14:19:43 -0700
From: Vanshidhar Konda <vanshidhar.r.konda@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20191030211942.si2bcb7vjmirpida@vrkonda-desk.ra.intel.com>
References: <20191030171535.32702-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030171535.32702-1-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v3]
 tests/gem_exec_reloc: Don't filter out invalid addresses
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMDY6MTU6MzVQTSArMDEwMCwgSmFudXN6IEtyenlzenRv
ZmlrIHdyb3RlOgo+Q29tbWl0IGEzNTViMmQ2ZWI0MiAoImlndC9nZW1fZXhlY19yZWxvYzogRmls
dGVyIG91dCB1bmF2YWlsYWJsZQo+YWRkcmVzc2VzIGZvciAhcHBndHQiKSBpbnRyb2R1Y2VkIGZp
bHRlcmluZyBvZiBhZGRyZXNzZXMgcG9zc2libHkKPm9jY3VwaWVkIGJ5IG90aGVyIHVzZXJzIG9m
IHNoYXJlZCBHVFQuICBVbmZvcnR1bmF0ZWx5LCB0aGF0IGZpbHRlcmluZwo+ZG9lc24ndCBkaXN0
aW5ndWlzaCBhY3R1YWxseSBvY2N1cGllZCBhZGRyZXNzZXMgZnJvbSBvdGhlcndpc2UgaW52YWxp
ZAo+c29mdHBpbiBvZmZzZXRzLiAgRm9yIGV4YW1wbGUsIG9uIGEgZnV0dXJlIGhhcmR3YXJlIGJh
Y2tpbmcgc3RvcmUgd2l0aAo+YSBwYWdlIHNpemUgbGFyZ2VyIHRoYW4gNCBrQiBpbmNvcnJlY3Qg
b2JqZWN0IGFsaWdubWVudCBpcyBhc3N1bWVkIGFuZAo+dGhlIHRlc3QgcmVzdWx0cyBhcmUgZGlz
dG9ydGVkIGFzIGl0IGhhcHBpbHkgc2tpcHMgb3ZlciBpbmNvcnJlY3RseQo+YWxpZ25lZCBvYmpl
Y3RzIGluc3RlYWQgb2YgcmVwb3J0aW5nIHRoZSBwcm9ibGVtLgo+Cj5GaWx0ZXIgb3V0IGZhaWxp
bmcgYWRkcmVzc2VzIG9ubHkgaWYgbm90IHJlcG9ydGVkIGFzIGludmFsaWQuCj4KPlNpZ25lZC1v
ZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVs
LmNvbT4KPkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPi0tLQo+
IHRlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYyB8IDEyICsrKysrKysrKy0tLQo+IDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS90
ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMK
PmluZGV4IGZkZDk2NjFkLi4xZDBjNzkxZSAxMDA2NDQKPi0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfcmVsb2MuYwo+KysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jCj5AQCAtNTIwLDcg
KzUyMCw3IEBAIHN0YXRpYyB2b2lkIGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3Mp
Cj4gCXVpbnQ2NF90IGd0dF9zaXplID0gZ2VtX2FwZXJ0dXJlX3NpemUoZmQpOwo+IAljb25zdCB1
aW50MzJfdCBiYmUgPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwo+IAlpZ3Rfc3Bpbl90ICpzcGluID0g
TlVMTDsKPi0JaW50IGNvdW50LCBuOwo+KwlpbnQgY291bnQsIG4sIGVycjsKPgo+IAlpZ3RfcmVx
dWlyZShnZW1faGFzX3NvZnRwaW4oZmQpKTsKPgo+QEAgLTU0Miw4ICs1NDIsMTEgQEAgc3RhdGlj
IHZvaWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNpZ25lZCBmbGFncykKPiAJCWdlbV93cml0ZShm
ZCwgb2JqW25dLmhhbmRsZSwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwo+IAkJZXhlY2J1Zi5idWZm
ZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmb2JqW25dKTsKPiAJCWV4ZWNidWYuYnVmZmVyX2Nv
dW50ID0gMTsKPi0JCWlmIChfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1ZikpCj4rCQllcnIgPSBf
X2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1Zik7Cj4rCQlpZiAoZXJyKSB7Cj4rCQkJaWd0X2Fzc2Vy
dChlcnIgIT0gLUVJTlZBTCk7Cj4gCQkJY29udGludWU7CgpUaGUgYWRkcmVzc2VzIHRvIHdoaWNo
IHRoZSBvYmplY3QgaXMgYmVpbmcgcGlubmVkIGlzIGdlbmVyYXRlZCBhcyBwYXJ0Cm9mIHRoZSB0
ZXN0LiBUaGUgY29kZSBpcyBqdXN0IGFzc3VtaW5nIHRoYXQgdGhlIGFkZHJlc3MgbmVlZHMgdG8g
YmUgNEsKYWxpZ25lZCBpbnN0ZWFkIG9mIGZpZ3VyaW5nIG91dCB3aGF0IHRoZSBhbGlnbm1lbnQg
cmVxdWlyZW1lbnQgZm9yIHRoZQpkZXZpY2UgaXMuCgpTaG91bGRuJ3QgdGhlIHRlc3QgYmUgdXBk
YXRlZCB0byBnZW5lcmF0ZSB2aXJ0dWFsIGFkZHJlc3NlcyBwZXIgdGhlCmFsaWdubWVudCByZXF1
aXJlbWVudHMgb2YgdGhlIHRlc3QgZGV2aWNlIGluc3RlYWQgb2YganVzdCBhc3N1bWluZyA0Swpp
bmNyZW1lbnRzIGFyZSBnb29kPwoKVmFuc2hpCgo+KwkJfQo+Cj4gCQlpZ3RfZGVidWcoIm9ialsl
ZF0gaGFuZGxlPSVkLCBhZGRyZXNzPSVsbHhcbiIsCj4gCQkJICBuLCBvYmpbbl0uaGFuZGxlLCAo
bG9uZyBsb25nKW9ialtuXS5vZmZzZXQpOwo+QEAgLTU2Miw4ICs1NjUsMTEgQEAgc3RhdGljIHZv
aWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNpZ25lZCBmbGFncykKPiAJCWdlbV93cml0ZShmZCwg
b2JqW25dLmhhbmRsZSwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwo+IAkJZXhlY2J1Zi5idWZmZXJz
X3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmb2JqW25dKTsKPiAJCWV4ZWNidWYuYnVmZmVyX2NvdW50
ID0gMTsKPi0JCWlmIChfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1ZikpCj4rCQllcnIgPSBfX2dl
bV9leGVjYnVmKGZkLCAmZXhlY2J1Zik7Cj4rCQlpZiAoZXJyKSB7Cj4rCQkJaWd0X2Fzc2VydChl
cnIgIT0gLUVJTlZBTCk7Cj4gCQkJY29udGludWU7Cj4rCQl9Cj4KPiAJCWlndF9kZWJ1Zygib2Jq
WyVkXSBoYW5kbGU9JWQsIGFkZHJlc3M9JWxseFxuIiwKPiAJCQkgIG4sIG9ialtuXS5oYW5kbGUs
IChsb25nIGxvbmcpb2JqW25dLm9mZnNldCk7Cj4tLSAKPjIuMjEuMAo+Cj5fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+aWd0LWRldiBtYWlsaW5nIGxpc3QK
PmlndC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lndC1kZXYKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
