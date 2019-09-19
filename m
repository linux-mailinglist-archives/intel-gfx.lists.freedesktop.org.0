Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2B6B7BB3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DBD6F86D;
	Thu, 19 Sep 2019 14:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2C96F86B;
 Thu, 19 Sep 2019 14:09:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:09:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="202291071"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2019 07:09:07 -0700
Date: Thu, 19 Sep 2019 17:09:09 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190919140909.GB3723@intel.intel>
References: <20190911101501.7182-1-chris@chris-wilson.co.uk>
 <20190911101501.7182-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911101501.7182-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/3] Force spin-batch to
 cause a hang as required
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

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMTE6MTU6MDBBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFdoZW4gdXNpbmcgYSBzcGlubmVyIHRvIHRyaWdnZXIgYSBoYW5nLCBtYWtlIGl0IHVu
cHJlZW1wdGFibGUgc28gdGhhdCBpdAo+IGFwcGVhcnMgbGlrZSBhIHRydWUgaGFuZy4KPiAKPiBS
ZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDk2NjEKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KClJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KCkFu
ZGkKCj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX2Vpby5jICAgICAgICB8IDQgKysrLQo+ICB0ZXN0
cy9pOTE1L2dlbV9leGVjX2ZlbmNlLmMgfCAzICsrLQo+ICB0ZXN0cy9rbXNfYnVzeS5jICAgICAg
ICAgICAgfCAzICsrLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZWlvLmMgYi90ZXN0cy9p
OTE1L2dlbV9laW8uYwo+IGluZGV4IGUwMjEzYzc2Yy4uZTdmNWQ0ZGRiIDEwMDY0NAo+IC0tLSBh
L3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCj4gKysrIGIvdGVzdHMvaTkxNS9nZW1fZWlvLmMKPiBAQCAt
MTc4LDcgKzE3OCw5IEBAIHN0YXRpYyBpZ3Rfc3Bpbl90ICogX19zcGluX3BvbGwoaW50IGZkLCB1
aW50MzJfdCBjdHgsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpCj4gIAlzdHJ1Y3QgaWd0X3NwaW5fZmFj
dG9yeSBvcHRzID0gewo+ICAJCS5jdHggPSBjdHgsCj4gIAkJLmVuZ2luZSA9IGZsYWdzLAo+IC0J
CS5mbGFncyA9IElHVF9TUElOX0ZBU1QgfCBJR1RfU1BJTl9GRU5DRV9PVVQsCj4gKwkJLmZsYWdz
ID0gKElHVF9TUElOX0ZBU1QgfAo+ICsJCQkgIElHVF9TUElOX05PX1BSRUVNUFRJT04gfAo+ICsJ
CQkgIElHVF9TUElOX0ZFTkNFX09VVCksCj4gIAl9Owo+ICAKPiAgCWlmIChnZW1fY2FuX3N0b3Jl
X2R3b3JkKGZkLCBvcHRzLmVuZ2luZSkpCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfZmVuY2UuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwo+IGluZGV4IDIwNzE4Mjky
Mi4uMmYwNGQ3YWY0IDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwo+
ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwo+IEBAIC0zMzEsNyArMzMxLDggQEAg
c3RhdGljIHZvaWQgdGVzdF9mZW5jZV9hd2FpdChpbnQgZmQsIHVuc2lnbmVkIHJpbmcsIHVuc2ln
bmVkIGZsYWdzKQo+ICAKPiAgCXNwaW4gPSBpZ3Rfc3Bpbl9uZXcoZmQsCj4gIAkJCSAgICAuZW5n
aW5lID0gcmluZywKPiAtCQkJICAgIC5mbGFncyA9IElHVF9TUElOX0ZFTkNFX09VVCk7Cj4gKwkJ
CSAgICAuZmxhZ3MgPSAoSUdUX1NQSU5fRkVOQ0VfT1VUIHwKPiArCQkJCSAgICAgIElHVF9TUElO
X05PX1BSRUVNUFRJT04pKTsKPiAgCWlndF9hc3NlcnQoc3Bpbi0+b3V0X2ZlbmNlICE9IC0xKTsK
PiAgCj4gIAlpID0gMDsKPiBkaWZmIC0tZ2l0IGEvdGVzdHMva21zX2J1c3kuYyBiL3Rlc3RzL2tt
c19idXN5LmMKPiBpbmRleCA2NmYyNmNkMDguLjdlNWFiM2QxOSAxMDA2NDQKPiAtLS0gYS90ZXN0
cy9rbXNfYnVzeS5jCj4gKysrIGIvdGVzdHMva21zX2J1c3kuYwo+IEBAIC0yNzEsNyArMjcxLDgg
QEAgc3RhdGljIHZvaWQgdGVzdF9wYWdlZmxpcF9tb2Rlc2V0X2hhbmcoaWd0X2Rpc3BsYXlfdCAq
ZHB5LAo+ICAKPiAgCXQgPSBpZ3Rfc3Bpbl9uZXcoZHB5LT5kcm1fZmQsCj4gIAkJCSAuZW5naW5l
ID0gcmluZywKPiAtCQkJIC5kZXBlbmRlbmN5ID0gZmIuZ2VtX2hhbmRsZSk7Cj4gKwkJCSAuZGVw
ZW5kZW5jeSA9IGZiLmdlbV9oYW5kbGUsCj4gKwkJCSAuZmxhZ3MgPSBJR1RfU1BJTl9OT19QUkVF
TVBUSU9OKTsKPiAgCj4gIAlkb19vcl9kaWUoZHJtTW9kZVBhZ2VGbGlwKGRweS0+ZHJtX2ZkLCBk
cHktPnBpcGVzW3BpcGVdLmNydGNfaWQsIGZiLmZiX2lkLCBEUk1fTU9ERV9QQUdFX0ZMSVBfRVZF
TlQsICZmYikpOwo+ICAKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IGlndC1kZXYgbWFpbGluZyBsaXN0Cj4gaWd0LWRl
dkBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2lndC1kZXYKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
