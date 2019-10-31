Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33032EB5A3
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 17:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F7CE6F3B2;
	Thu, 31 Oct 2019 16:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93EAE6F3B2;
 Thu, 31 Oct 2019 16:59:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 09:59:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="375304520"
Received: from vrkonda-desk.ra.intel.com ([134.134.244.70])
 by orsmga005.jf.intel.com with ESMTP; 31 Oct 2019 09:59:50 -0700
Date: Thu, 31 Oct 2019 09:59:50 -0700
From: Vanshidhar Konda <vanshidhar.r.konda@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20191031165950.jytjykldypucxksd@vrkonda-desk.ra.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031152857.17143-2-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 1/4] tests/gem_exec_reloc:
 Don't filter out invalid addresses
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWF5IGJlIHRoaXMgcGF0Y2ggY2FuIGp1c3QgYmUgbWVyZ2VkIHdpdGggdGhlIG90aGVyIHBhdGNo
IGluIHRoaXMgc2VyaWVzCnRoYXQgY2hhbmdlcyBnZW1fZXhlY19yZWxvYy4KClZhbnNoaQoKT24g
VGh1LCBPY3QgMzEsIDIwMTkgYXQgMDQ6Mjg6NTRQTSArMDEwMCwgSmFudXN6IEtyenlzenRvZmlr
IHdyb3RlOgo+Q29tbWl0IGEzNTViMmQ2ZWI0MiAoImlndC9nZW1fZXhlY19yZWxvYzogRmlsdGVy
IG91dCB1bmF2YWlsYWJsZQo+YWRkcmVzc2VzIGZvciAhcHBndHQiKSBpbnRyb2R1Y2VkIGZpbHRl
cmluZyBvZiBhZGRyZXNzZXMgcG9zc2libHkKPm9jY3VwaWVkIGJ5IG90aGVyIHVzZXJzIG9mIHNo
YXJlZCBHVFQuICBVbmZvcnR1bmF0ZWx5LCB0aGF0IGZpbHRlcmluZwo+ZG9lc24ndCBkaXN0aW5n
dWlzaCBiZXR3ZWVuIGFjdHVhbGx5IG9jY3VwaWVkIGFkZHJlc3NlcyBhbmQgb3RoZXJ3aXNlCj5p
bnZhbGlkIHNvZnRwaW4gb2Zmc2V0cy4gIEFzIHNvb24gYXMgaW5jb3JyZWN0IEdUVCBhbGlnbm1l
bnQgaXMgYXNzdW1lZAo+d2hlbiBydW5uaW5nIG9uIGZ1dHVyZSBiYWNrZW5kcyB3aXRoIHBvc3Np
Ymx5IGxhcmdlciBtaW5pbXVtIHBhZ2UKPnNpemVzLCBhIGhhbGYgb2YgY2FsY3VsYXRlZCBvZmZz
ZXRzIHRvIGJlIHRlc3RlZCB3aWxsIGJlIGluY29ycmVjdGx5Cj5kZXRlY3RlZCBhcyBvY2N1cGll
ZCBieSBvdGhlciB1c2VycyBhbmQgc2lsZW50bHkgc2tpcHBlZCBpbnN0ZWFkIG9mCj5yZXBvcnRl
ZCBhcyBhIHByb2JsZW0uICBUaGF0IHdpbGwgc2lnbmlmaWNhbnRseSBkaXN0b3J0IHRoZSBpbnRl
bmRlZAo+dGVzdCBwYXR0ZXJuLgo+Cj5GaWx0ZXIgb3V0IGZhaWxpbmcgYWRkcmVzc2VzIG9ubHkg
aWYgbm90IHJlcG9ydGVkIGFzIGludmFsaWQuCj4KPnYyOiBTa2lwIHVuYXZhaWxhYmxlIGFkZHJl
c3NlcyBvbmx5IHdoZW4gbm90IHJ1bm5pbmcgb24gZnVsbCBQUEdUVC4KPnYzOiBSZXBsYWNlIHRo
ZSBub3Qgb24gZnVsbCBQUEdUVCByZXF1aXJlbWVudCBmb3Igc2tpcHBpbmcgd2l0aCBlcnJvcgo+
ICAgIGNvZGUgY2hlY2tpbmcuCj4KPlNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8
amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPkNjOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPi0tLQo+IHRlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2Mu
YyB8IDEyICsrKysrKysrKy0tLQo+IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMg
Yi90ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMKPmluZGV4IDVmNTlmZTk5Li40MjNmZWQ4YiAx
MDA2NDQKPi0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwo+KysrIGIvdGVzdHMvaTkx
NS9nZW1fZXhlY19yZWxvYy5jCj5AQCAtNTIwLDcgKzUyMCw3IEBAIHN0YXRpYyB2b2lkIGJhc2lj
X3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCj4gCXVpbnQ2NF90IGd0dF9zaXplID0gZ2Vt
X2FwZXJ0dXJlX3NpemUoZmQpOwo+IAljb25zdCB1aW50MzJfdCBiYmUgPSBNSV9CQVRDSF9CVUZG
RVJfRU5EOwo+IAlpZ3Rfc3Bpbl90ICpzcGluID0gTlVMTDsKPi0JaW50IGNvdW50LCBuOwo+Kwlp
bnQgY291bnQsIG4sIGVycjsKPgo+IAlpZ3RfcmVxdWlyZShnZW1faGFzX3NvZnRwaW4oZmQpKTsK
Pgo+QEAgLTU0Miw4ICs1NDIsMTEgQEAgc3RhdGljIHZvaWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1
bnNpZ25lZCBmbGFncykKPiAJCWdlbV93cml0ZShmZCwgb2JqW25dLmhhbmRsZSwgMCwgJmJiZSwg
c2l6ZW9mKGJiZSkpOwo+IAkJZXhlY2J1Zi5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigm
b2JqW25dKTsKPiAJCWV4ZWNidWYuYnVmZmVyX2NvdW50ID0gMTsKPi0JCWlmIChfX2dlbV9leGVj
YnVmKGZkLCAmZXhlY2J1ZikpCj4rCQllcnIgPSBfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1Zik7
Cj4rCQlpZiAoZXJyKSB7Cj4rCQkJaWd0X2Fzc2VydChlcnIgIT0gLUVJTlZBTCk7Cj4gCQkJY29u
dGludWU7Cj4rCQl9Cj4KPiAJCWlndF9kZWJ1Zygib2JqWyVkXSBoYW5kbGU9JWQsIGFkZHJlc3M9
JWxseFxuIiwKPiAJCQkgIG4sIG9ialtuXS5oYW5kbGUsIChsb25nIGxvbmcpb2JqW25dLm9mZnNl
dCk7Cj5AQCAtNTYyLDggKzU2NSwxMSBAQCBzdGF0aWMgdm9pZCBiYXNpY19yYW5nZShpbnQgZmQs
IHVuc2lnbmVkIGZsYWdzKQo+IAkJZ2VtX3dyaXRlKGZkLCBvYmpbbl0uaGFuZGxlLCAwLCAmYmJl
LCBzaXplb2YoYmJlKSk7Cj4gCQlleGVjYnVmLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVy
KCZvYmpbbl0pOwo+IAkJZXhlY2J1Zi5idWZmZXJfY291bnQgPSAxOwo+LQkJaWYgKF9fZ2VtX2V4
ZWNidWYoZmQsICZleGVjYnVmKSkKPisJCWVyciA9IF9fZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVm
KTsKPisJCWlmIChlcnIpIHsKPisJCQlpZ3RfYXNzZXJ0KGVyciAhPSAtRUlOVkFMKTsKPiAJCQlj
b250aW51ZTsKPisJCX0KPgo+IAkJaWd0X2RlYnVnKCJvYmpbJWRdIGhhbmRsZT0lZCwgYWRkcmVz
cz0lbGx4XG4iLAo+IAkJCSAgbiwgb2JqW25dLmhhbmRsZSwgKGxvbmcgbG9uZylvYmpbbl0ub2Zm
c2V0KTsKPi0tIAo+Mi4yMS4wCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
