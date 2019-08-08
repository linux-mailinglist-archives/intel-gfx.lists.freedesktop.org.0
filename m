Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D17B4865B2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 17:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32BFD6E870;
	Thu,  8 Aug 2019 15:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69386E86D;
 Thu,  8 Aug 2019 15:27:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 08:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="186384204"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 08 Aug 2019 08:27:10 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 081A85C0569; Thu,  8 Aug 2019 18:26:35 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190806084939.20203-1-chris@chris-wilson.co.uk>
References: <20190806081052.11564-1-chris@chris-wilson.co.uk>
 <20190806084939.20203-1-chris@chris-wilson.co.uk>
Date: Thu, 08 Aug 2019 18:26:35 +0300
Message-ID: <87imr78yqc.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_persistent_relocs:
 Don't call DROP_IDLE in the middle of submitting
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVG8gYWN0
dWFsbHkgRFJPUF9JRExFIG1lYW5zIHRoYXQgd2UgaGF2ZSB0byB3YWl0IGZvciBvbmdvaW5nIHN1
Ym1pc3Npb24sCj4gYW5kIGFueSBuZXcgY29uY3VycmVudGx5IHN1Ym1pdHRlZCwgaS5lLiBpdCBz
aG91bGQgb25seSBiZSBjYWxsZWQgZHVyaW5nCj4gc2luZ2xlLXRocmVhZGVkIHN1Ym1pc3Npb24g
dG8gZW5zdXJlIHRoZSBHUFUgaXMgaWRsZSBiZWZvcmUgdGhlIG5ldwo+IGFjdGlvbi4KPgo+IHYy
OiBBbHNvIGluY2x1ZGUgU0hSSU5LIGZvciB0aHJhc2gtYWxsLXRoZS10aGluZ3MsIGFuZCBmaW5k
IGEgZHVwZSBpbgo+IGdlbV9yZWxvY192c19ncHUuCgpBZ3JlZWQgdGhhdCBpcyByYXRoZXIgcG9p
bnRsZXNzIHRyeWluZyB0byBndWFyYW50ZWUgYW4gaWRsZSBncHUKZHVyaW5nIGEgdGVzdC4KClJl
dmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4K
CkJ1dCBiZXR3ZWVuIGEgdGVzdHMsIGl0IHdpbGwgc2VydmUgYXMgYSBmbHVzaD8KCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0K
PiAgdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVudF9yZWxvY3MuYyB8IDkgKysrKysrLS0tCj4gIHRl
c3RzL2k5MTUvZ2VtX3JlbG9jX3ZzX2dwdS5jICAgICAgfCA5ICsrKysrKy0tLQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVudF9yZWxvY3MuYyBiL3Rlc3RzL2k5MTUvZ2VtX3Bl
cnNpc3RlbnRfcmVsb2NzLmMKPiBpbmRleCA0NTJmZTY4NmUuLmRmZjRlOWE3NiAxMDA2NDQKPiAt
LS0gYS90ZXN0cy9pOTE1L2dlbV9wZXJzaXN0ZW50X3JlbG9jcy5jCj4gKysrIGIvdGVzdHMvaTkx
NS9nZW1fcGVyc2lzdGVudF9yZWxvY3MuYwo+IEBAIC0yODEsMTAgKzI4MSwxMyBAQCBzdGF0aWMg
dm9pZCBkb19mb3JrZWRfdGVzdChpbnQgZmQsIHVuc2lnbmVkIGZsYWdzKQo+ICAJc3RydWN0IGln
dF9oZWxwZXJfcHJvY2VzcyB0aHJhc2hlciA9IHt9Owo+ICAKPiAgCWlmIChmbGFncyAmIChUSFJB
U0ggfCBUSFJBU0hfSU5BQ1RJVkUpKSB7Cj4gLQkJdWludDY0X3QgdmFsID0gKGZsYWdzICYgVEhS
QVNIX0lOQUNUSVZFKSA/Cj4gLQkJCQkoRFJPUF9SRVRJUkUgfCBEUk9QX0JPVU5EIHwgRFJPUF9V
TkJPVU5EKSA6IERST1BfQUxMOwo+IC0KPiAgCQlpZ3RfZm9ya19oZWxwZXIoJnRocmFzaGVyKSB7
Cj4gKwkJCXVpbnQ2NF90IHZhbDsKPiArCj4gKwkJCXZhbCA9IERST1BfUkVUSVJFIHwgRFJPUF9C
T1VORCB8IERST1BfVU5CT1VORDsKPiArCQkJaWYgKCEoZmxhZ3MgJiBUSFJBU0hfSU5BQ1RJVkUp
KQo+ICsJCQkJdmFsIHw9IERST1BfQUNUSVZFIHwgRFJPUF9TSFJJTktfQUxMOwo+ICsKPiAgCQkJ
d2hpbGUgKDEpIHsKPiAgCQkJCXVzbGVlcCgxMDAwKTsKPiAgCQkJCWlndF9kcm9wX2NhY2hlc19z
ZXQoZmQsIHZhbCk7Cj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX3JlbG9jX3ZzX2dwdS5j
IGIvdGVzdHMvaTkxNS9nZW1fcmVsb2NfdnNfZ3B1LmMKPiBpbmRleCBkNDIxZTQzNDAuLjMyODcz
MGE5YiAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9yZWxvY192c19ncHUuYwo+ICsrKyBi
L3Rlc3RzL2k5MTUvZ2VtX3JlbG9jX3ZzX2dwdS5jCj4gQEAgLTI1OCwxMCArMjU4LDEzIEBAIHN0
YXRpYyB2b2lkIGRvX2ZvcmtlZF90ZXN0KGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCj4gIAkJaWd0
X3JlcXVpcmVfaGFuZ19yaW5nKGZkLCBJOTE1X0VYRUNfQkxUKTsKPiAgCj4gIAlpZiAoZmxhZ3Mg
JiAoVEhSQVNIIHwgVEhSQVNIX0lOQUNUSVZFKSkgewo+IC0JCXVpbnQ2NF90IHZhbCA9IChmbGFn
cyAmIFRIUkFTSF9JTkFDVElWRSkgPwo+IC0JCQkJKERST1BfUkVUSVJFIHwgRFJPUF9CT1VORCB8
IERST1BfVU5CT1VORCkgOiBEUk9QX0FMTDsKPiAtCj4gIAkJaWd0X2ZvcmtfaGVscGVyKCZ0aHJh
c2hlcikgewo+ICsJCQl1aW50NjRfdCB2YWw7Cj4gKwo+ICsJCQl2YWwgPSBEUk9QX1JFVElSRSB8
IERST1BfQk9VTkQgfCBEUk9QX1VOQk9VTkQ7Cj4gKwkJCWlmICghKGZsYWdzICYgVEhSQVNIX0lO
QUNUSVZFKSkKPiArCQkJCXZhbCB8PSBEUk9QX0FDVElWRSB8IERST1BfU0hSSU5LX0FMTDsKPiAr
Cj4gIAkJCXdoaWxlICgxKSB7Cj4gIAkJCQl1c2xlZXAoMTAwMCk7Cj4gIAkJCQlpZ3RfZHJvcF9j
YWNoZXNfc2V0KGZkLCB2YWwpOwo+IC0tIAo+IDIuMjMuMC5yYzEKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gaWd0LWRldiBtYWlsaW5nIGxpc3QK
PiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaWd0LWRldgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
