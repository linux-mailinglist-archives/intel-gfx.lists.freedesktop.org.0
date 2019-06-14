Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 542884612F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 16:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48C989745;
	Fri, 14 Jun 2019 14:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F0CC89745
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 14:44:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16903642-1500050 for multiple; Fri, 14 Jun 2019 15:44:17 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
 <20190612093111.11684-4-chris@chris-wilson.co.uk>
 <87k1do8ccy.fsf@gaia.fi.intel.com>
In-Reply-To: <87k1do8ccy.fsf@gaia.fi.intel.com>
Message-ID: <156052345555.7796.2398159353765164718@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 15:44:15 +0100
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915: Replace engine->timeline with
 a plain list
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE0IDE1OjM0OjIxKQo+ID4gQEAgLTI5Niwx
NCArMjk2LDggQEAgc3RhdGljIHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3NjaGVk
X25vZGUgKm5vZGUsCj4gPiAgICAgICAgICAgICAgIEdFTV9CVUdfT04obm9kZV90b19yZXF1ZXN0
KG5vZGUpLT5lbmdpbmUgIT0gZW5naW5lKTsKPiA+ICAKPiA+ICAgICAgICAgICAgICAgbm9kZS0+
YXR0ci5wcmlvcml0eSA9IHByaW87Cj4gPiAtICAgICAgICAgICAgIGlmICghbGlzdF9lbXB0eSgm
bm9kZS0+bGluaykpIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKGludGVs
X2VuZ2luZV9pc192aXJ0dWFsKGVuZ2luZSkpOwo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGlm
ICghY2FjaGUucHJpb2xpc3QpCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYWNo
ZS5wcmlvbGlzdCA9Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5
MTVfc2NoZWRfbG9va3VwX3ByaW9saXN0KGVuZ2luZSwKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpbyk7Cj4gPiAt
ICAgICAgICAgICAgICAgICAgICAgbGlzdF9tb3ZlX3RhaWwoJm5vZGUtPmxpbmssIGNhY2hlLnBy
aW9saXN0KTsKPiA+IC0gICAgICAgICAgICAgfSBlbHNlIHsKPiA+ICsKPiA+ICsgICAgICAgICAg
ICAgaWYgKGxpc3RfZW1wdHkoJm5vZGUtPmxpbmspKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgLyoKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgKiBJZiB0aGUgcmVxdWVzdCBpcyBub3Qg
aW4gdGhlIHByaW9saXN0IHF1ZXVlIGJlY2F1c2UKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
KiBpdCBpcyBub3QgeWV0IHJ1bm5hYmxlLCB0aGVuIGl0IGRvZXNuJ3QgY29udHJpYnV0ZQo+ID4g
QEAgLTMxMiw4ICszMDYsMTYgQEAgc3RhdGljIHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBp
OTE1X3NjaGVkX25vZGUgKm5vZGUsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICogcXVldWU7
IGJ1dCBpbiB0aGF0IGNhc2Ugd2UgbWF5IHN0aWxsIG5lZWQgdG8gcmVvcmRlcgo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAqIHRoZSBpbmZsaWdodCByZXF1ZXN0cy4KPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgKi8KPiA+IC0gICAgICAgICAgICAgICAgICAgICBpZiAoIWk5MTVfc3dfZmVu
Y2VfZG9uZSgmbm9kZV90b19yZXF1ZXN0KG5vZGUpLT5zdWJtaXQpKQo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gCj4gV2FzIHNtb290aCByaWRlIHVudGlsIGhl
cmUuIFdoZXJlIGRpZCB0aGlzIGdvPwo+IAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnRp
bnVlOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmICghaW50
ZWxfZW5naW5lX2lzX3ZpcnR1YWwoZW5naW5lKSAmJgo+ID4gKyAgICAgICAgICAgICAgICAgIWk5
MTVfcmVxdWVzdF9pc19hY3RpdmUobm9kZV90b19yZXF1ZXN0KG5vZGUpKSkgewo+IAo+IElzIHRo
aXMgdGhlIHJlcGxhY2VtZW50PyBCdXQgaXQgaXMgbm93IGluc2lkZSB0aGUgdmlydHVhbCBjaGVj
ayB3aGljaAo+IHdhcyBidWcgb24gcHJldmlvdXNseS4KClllcy4gSXQgaXMgYmVjYXVzZSB3ZSBh
cmUgcmV1c2luZyBycS0+c2NoZWQubGluayBub3csIGFuZCBrZWVwaW5nIHRoZQpycS0+bGluayBh
cyBzb2xlbHkgYSBsaW5rIGFsb25nIHJxLT50aW1lbGluZS0+cmVxdWVzdHMuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
