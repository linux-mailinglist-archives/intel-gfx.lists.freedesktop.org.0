Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D854E542C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 21:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385996EB4A;
	Fri, 25 Oct 2019 19:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCA9B6EB4A;
 Fri, 25 Oct 2019 19:17:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 12:17:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,229,1569308400"; d="scan'208";a="398855225"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 25 Oct 2019 12:17:41 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 381835C1E92; Fri, 25 Oct 2019 22:16:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191007110651.10486-1-chris@chris-wilson.co.uk>
References: <20191007110651.10486-1-chris@chris-wilson.co.uk>
Date: Fri, 25 Oct 2019 22:16:51 +0300
Message-ID: <87a79oljoc.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_suspend:
 Exercise S0 (aka s2idle)
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gRXhlcmNp
c2UgdGhlIGZpcnN0IGxldmVsIG9mIHN1c3BlbmQsIFMwLiBUaGlzIGlzIGJhc2ljYWxseSB0aGUg
c2FtZSBhcwo+IG91ciBydW50aW1lLXN1c3BlbmQsIHdlIG5lZWQgdG8gcHV0IHRoZSBkZXZpY2Ug
dG8gc2xlZXAgYnV0IG90aGVyd2lzZQo+IGl0IGlzIGxlZnQgcG93ZXJlZCB1cC4KPgo+IElkZWFs
bHksIHdlIHdvdWxkIG1lYXN1cmUgdGhlIGVuZXJneSBjb25zdW1wdGlvbiBpbiB0aGlzIHN0YXRl
LgoKVGhpcyBhbmQgdGhlIG90aGVycy4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4KPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE5MDkKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgdGVzdHMvaTkx
NS9nZW1fZXhlY19zdXNwZW5kLmMgICAgICAgICB8IDE2ICsrKysrKysrKysrKy0tLS0KPiAgdGVz
dHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdCB8ICAxICsKPiAgMiBmaWxlcyBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3Rl
c3RzL2k5MTUvZ2VtX2V4ZWNfc3VzcGVuZC5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zdXNwZW5k
LmMKPiBpbmRleCBlNDNhMTZlOWUuLmYyNWYxYTg2YiAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1
L2dlbV9leGVjX3N1c3BlbmQuYwo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc3VzcGVuZC5j
Cj4gQEAgLTMyLDEwICszMiwxMSBAQAo+ICAjaW5jbHVkZSAiaWd0X2R1bW15bG9hZC5oIgo+ICAK
PiAgI2RlZmluZSBOT1NMRUVQIDAKPiAtI2RlZmluZSBTVVNQRU5EX0RFVklDRVMgMQo+IC0jZGVm
aW5lIFNVU1BFTkQgMgo+IC0jZGVmaW5lIEhJQkVSTkFURV9ERVZJQ0VTIDMKPiAtI2RlZmluZSBI
SUJFUk5BVEUgNAo+ICsjZGVmaW5lIElETEUgMQo+ICsjZGVmaW5lIFNVU1BFTkRfREVWSUNFUyAy
Cj4gKyNkZWZpbmUgU1VTUEVORCAzCj4gKyNkZWZpbmUgSElCRVJOQVRFX0RFVklDRVMgNAo+ICsj
ZGVmaW5lIEhJQkVSTkFURSA1Cj4gICNkZWZpbmUgbW9kZSh4KSAoKHgpICYgMHhmZikKPiAgCj4g
ICNkZWZpbmUgTE9DQUxfSTkxNV9FWEVDX0JTRF9TSElGVCAgICAgICgxMykKPiBAQCAtMTk1LDYg
KzE5NiwxMSBAQCBzdGF0aWMgdm9pZCBydW5fdGVzdChpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwg
dW5zaWduZWQgZmxhZ3MpCj4gIAljYXNlIE5PU0xFRVA6Cj4gIAkJYnJlYWs7Cj4gIAo+ICsJY2Fz
ZSBJRExFOgo+ICsJCWlndF9zeXN0ZW1fc3VzcGVuZF9hdXRvcmVzdW1lKFNVU1BFTkRfU1RBVEVf
RlJFRVpFLAo+ICsJCQkJCSAgICAgIFNVU1BFTkRfVEVTVF9OT05FKTsKPiArCQlicmVhazsKPiAr
Cj4gIAljYXNlIFNVU1BFTkRfREVWSUNFUzoKPiAgCQlpZ3Rfc3lzdGVtX3N1c3BlbmRfYXV0b3Jl
c3VtZShTVVNQRU5EX1NUQVRFX01FTSwKPiAgCQkJCQkgICAgICBTVVNQRU5EX1RFU1RfREVWSUNF
Uyk7Cj4gQEAgLTI1NSw2ICsyNjEsOCBAQCBpZ3RfbWFpbgo+ICAKPiAgCWlndF9zdWJ0ZXN0KCJi
YXNpYyIpCj4gIAkJcnVuX3Rlc3QoZmQsIEFMTF9FTkdJTkVTLCBOT1NMRUVQKTsKPiArCWlndF9z
dWJ0ZXN0KCJiYXNpYy1TMCIpCj4gKwkJcnVuX3Rlc3QoZmQsIEFMTF9FTkdJTkVTLCBJRExFKTsK
PiAgCWlndF9zdWJ0ZXN0KCJiYXNpYy1TMy1kZXZpY2VzIikKPiAgCQlydW5fdGVzdChmZCwgQUxM
X0VOR0lORVMsIFNVU1BFTkRfREVWSUNFUyk7Cj4gIAlpZ3Rfc3VidGVzdCgiYmFzaWMtUzMiKQo+
IGRpZmYgLS1naXQgYS90ZXN0cy9pbnRlbC1jaS9mYXN0LWZlZWRiYWNrLnRlc3RsaXN0IGIvdGVz
dHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdAo+IGluZGV4IGU3OGU3ZmQwYy4uMjU1
M2E2OGMzIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2ludGVsLWNpL2Zhc3QtZmVlZGJhY2sudGVzdGxp
c3QKPiArKysgYi90ZXN0cy9pbnRlbC1jaS9mYXN0LWZlZWRiYWNrLnRlc3RsaXN0Cj4gQEAgLTU2
LDYgKzU2LDcgQEAgaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLXdyaXRlLXJlYWQtYWN0aXZlCj4g
IGlndEBnZW1fZXhlY19yZWxvY0BiYXNpYy1zb2Z0cGluCj4gIGlndEBnZW1fZXhlY19zdG9yZUBi
YXNpYy1hbGwKPiAgaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMKPiAraWd0QGdlbV9leGVjX3N1
c3BlbmRAYmFzaWMtczAKPiAgaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMKPiAgaWd0QGdl
bV9leGVjX3N1c3BlbmRAYmFzaWMtczQtZGV2aWNlcwo+ICBpZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGJh
ZC1mbGluawo+IC0tIAo+IDIuMjMuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBpZ3QtZGV2IG1haWxpbmcgbGlzdAo+IGlndC1kZXZAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pZ3QtZGV2Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
