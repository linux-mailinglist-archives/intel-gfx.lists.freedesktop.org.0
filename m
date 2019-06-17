Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C694853F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 16:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940C789259;
	Mon, 17 Jun 2019 14:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BEB689233;
 Mon, 17 Jun 2019 14:25:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 07:25:08 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2019 07:25:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190617111457.9226-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b2b26762-5c52-442a-2278-7588bb6190b4@linux.intel.com>
Date: Mon, 17 Jun 2019 15:25:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617111457.9226-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_shared: Check for a
 large enough hole in the GTT
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA2LzIwMTkgMTI6MTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbiB0aGUgZXhlYy1z
aGFyZWQtZ3R0IHRlc3QsIHdlIGNoZWVraWx5IHRyeSB0byByZWZlcmVuY2UgYW4gb2JqZWN0IHdl
Cj4gcGxhY2VkIGluIHRoZSBHVFQgaW4gYW4gZWFybGllciBleGVjYnVmIChhbmQgYXZvaWQgZGVj
bGFyaW5nIGl0IGluIHRoZQo+IGxhdGVyIGNhbGwpLiBGb3IgYSBnbG9iYWwgR1RULCB3aGVyZSB0
aGVyZSBtYXkgYmUgZXhpc3Rpbmcgb2JqZWN0cywgd2UKPiBoYXZlIHRvIGZpbmQgYSBob2xlIGxh
cmdlIGVub3VnaCB0byBmaXQgYm90aCBhbmQgYXZvaWQgYW5kIGltcGxpY2l0Cj4gZ3VhcmQgcGFn
ZXMuCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMDg3Ngo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jIHwgMTYg
KysrKysrKysrKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQu
YyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwo+IGluZGV4IGVkNDNlODkwMy4uNGIxMDIw
Yjk2IDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwo+ICsrKyBiL3Rl
c3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwo+IEBAIC0xODQsNiArMTg0LDcgQEAgc3RhdGljIHZv
aWQgZXhoYXVzdF9zaGFyZWRfZ3R0KGludCBpOTE1LCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gICBz
dGF0aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQo+
ICAgewo+ICAgCWNvbnN0IGludCBnZW4gPSBpbnRlbF9nZW4oaW50ZWxfZ2V0X2RybV9kZXZpZChp
OTE1KSk7Cj4gKwljb25zdCB1aW50MzJfdCBiYmUgPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwo+ICAg
CXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9iaiA9IHt9Owo+ICAgCXN0cnVjdCBk
cm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgZXhlY2J1ZiA9IHsKPiAgIAkJLmJ1ZmZlcnNfcHRyID0g
dG9fdXNlcl9wb2ludGVyKCZvYmopLAo+IEBAIC0xOTcsMTEgKzE5OCwxOSBAQCBzdGF0aWMgdm9p
ZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQo+ICAgCWdlbV9y
ZXF1aXJlX3JpbmcoaTkxNSwgcmluZyk7Cj4gICAJaWd0X3JlcXVpcmUoZ2VtX2Nhbl9zdG9yZV9k
d29yZChpOTE1LCByaW5nKSk7Cj4gICAKPiArCS8qIEZpbmQgYSBob2xlIGJpZyBlbm91Z2ggZm9y
IGJvdGggb2JqZWN0cyBsYXRlciAqLwo+ICsJc2NyYXRjaCA9IGdlbV9jcmVhdGUoaTkxNSwgMTYz
ODQpOwo+ICsJZ2VtX3dyaXRlKGk5MTUsIHNjcmF0Y2gsIDAsICZiYmUsIHNpemVvZihiYmUpKTsK
PiArCW9iai5oYW5kbGUgPSBzY3JhdGNoOwo+ICsJZ2VtX2V4ZWNidWYoaTkxNSwgJmV4ZWNidWYp
Owo+ICsJZ2VtX2Nsb3NlKGk5MTUsIHNjcmF0Y2gpOwo+ICsJb2JqLmZsYWdzIHw9IEVYRUNfT0JK
RUNUX1BJTk5FRDsgLyogcmV1c2UgdGhpcyBhZGRyZXNzICovCj4gKwo+ICAgCXNjcmF0Y2ggPSBn
ZW1fY3JlYXRlKGk5MTUsIDQwOTYpOwo+ICAgCXMgPSBnZW1fbW1hcF9fY3B1KGk5MTUsIHNjcmF0
Y2gsIDAsIDQwOTYsIFBST1RfV1JJVEUpOwo+ICAgCj4gICAJZ2VtX3NldF9kb21haW4oaTkxNSwg
c2NyYXRjaCwgSTkxNV9HRU1fRE9NQUlOX0NQVSwgSTkxNV9HRU1fRE9NQUlOX0NQVSk7Cj4gLQkq
cyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7Cj4gKwkqcyA9IGJiZTsKPiAgIAo+ICAgCS8qIExvYWQg
b2JqZWN0IGludG8gcGxhY2UgaW4gdGhlIEdUVCAqLwo+ICAgCW9iai5oYW5kbGUgPSBzY3JhdGNo
Owo+IEBAIC0yMjQsMTEgKzIzMywxMCBAQCBzdGF0aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50
IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQo+ICAgCQliYXRjaFsrK2ldID0gb2JqLm9mZnNldDsK
PiAgIAl9Cj4gICAJYmF0Y2hbKytpXSA9IDB4YzBmZmVlOwo+IC0JYmF0Y2hbKytpXSA9IE1JX0JB
VENIX0JVRkZFUl9FTkQ7Cj4gKwliYXRjaFsrK2ldID0gYmJlOwo+ICAgCWdlbV93cml0ZShpOTE1
LCBvYmouaGFuZGxlLCAwLCBiYXRjaCwgc2l6ZW9mKGJhdGNoKSk7Cj4gICAKPiAtCW9iai5vZmZz
ZXQgKz0gNDA5NjsgLyogbWFrZSBzdXJlIHdlIGRvbid0IGNhdXNlIGFuIGV2aWN0aW9uISAqLwo+
IC0Jb2JqLmZsYWdzIHw9IEVYRUNfT0JKRUNUX1BJTk5FRDsKPiArCW9iai5vZmZzZXQgKz0gODE5
MjsgLyogbWFrZSBzdXJlIHdlIGRvbid0IGNhdXNlIGFuIGV2aWN0aW9uISAqLwo+ICAgCWV4ZWNi
dWYucnN2ZDEgPSBnZW1fY29udGV4dF9jbG9uZShpOTE1LCAwLCBJOTE1X0NPTlRFWFRfQ0xPTkVf
Vk0sIDApOwo+ICAgCWlmIChnZW4gPiAzICYmIGdlbiA8IDYpCj4gICAJCWV4ZWNidWYuZmxhZ3Mg
fD0gSTkxNV9FWEVDX1NFQ1VSRTsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
