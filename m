Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C52CC10559E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 16:30:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585406F372;
	Thu, 21 Nov 2019 15:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F4D6E1AA;
 Thu, 21 Nov 2019 15:30:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19287683-1500050 for multiple; Thu, 21 Nov 2019 15:29:53 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191121151930.25464-1-mika.kuoppala@linux.intel.com>
References: <20191121151930.25464-1-mika.kuoppala@linux.intel.com>
Message-ID: <157435018905.29262.4406855838431553808@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 21 Nov 2019 15:29:49 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] cve: Add checker for cve-2019-0155
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
Cc: igt-dev@lists.freedesktop.org, Joonas Lahtinen <joonas.lahtinen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTIxIDE1OjE5OjMwKQo+ICtzdGF0aWMgaW50
IGlzX3BsYXRmb3JtX2dlbjkodm9pZCkKPiArewo+ICsgICAgICAgY29uc3QgY2hhciAqIGNvbnN0
IGlkX2ZpbGUgPQo+ICsgICAgICAgICAgICAgICAiL3N5cy9idXMvcGNpL2RyaXZlcnMvaTkxNS8w
MDAwOjAwOjAyLjAvZGV2aWNlIjsKCkkgc3RpbGwgc3VnZ2VzdCB3ZSB1c2UgSTkxNV9QQVJBTV9D
SElQU0VUX0lEIHRvIGF2b2lkIHJlbGlhbmNlIG9uIHN5c2ZzCmhlcmUuCgo+ICsgICAgICAgY2hh
ciBpZHN0clszMl0gPSB7MCwgfTsKPiArICAgICAgIHVpbnQzMl90IGlkID0gMDsKPiArICAgICAg
IGludCBmZCwgcmV0LCBpOwo+ICsKPiArICAgICAgIGZkID0gb3BlbihpZF9maWxlLCBPX1JET05M
WSk7Cj4gKyAgICAgICBpZiAoZmQgPT0gLTEpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtMTsK
PiArCj4gKyAgICAgICByZXQgPSByZWFkKGZkLCBpZHN0ciwgNik7Cj4gKyAgICAgICBpZiAocmV0
ICE9IDYpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtMTsKPiArCj4gKyAgICAgICBjbG9zZShm
ZCk7Cj4gKwo+ICsgICAgICAgaWRzdHJbNl0gPSAwOwo+ICsKPiArICAgICAgIGlkID0gc3RydG9s
KGlkc3RyLCBOVUxMLCAxNik7Cj4gKwo+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IHNpemVvZihn
ZW45X2lkcykvc2l6ZW9mKHVpbnQzMl90KTsgaSsrKQpzaXplb2YoZ2VuOV9pZHMpIC8gc2l6ZW9m
KGdlbjlfaWRzWzBdKQoKPiArICAgICAgICAgICAgICAgaWYgKGlkID09IGdlbjlfaWRzW2ldKQo+
ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAxOwo+ICsKPiArICAgICAgIHJldHVybiAw
Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGlzX2ZkX3NhZmUoY29uc3QgaW50IGZkKQo+ICt7Cj4g
KyAgICAgICBpbnQgcGFyc2VyX3ZlcnNpb24gPSAtMTsKPiArICAgICAgIGludCB3cml0ZV9ibG9j
ayA9IDA7Cj4gKwo+ICsgICAgICAgcGFyc2VyX3ZlcnNpb24gPSBjbWRfcGFyc2VyX3ZlcnNpb24o
ZmQpOwo+ICsgICAgICAgcHJpbnRmKCIgIENvbW1hbmQgcGFyc2VyIHZlcnNpb246ICVkXG4iLCBw
YXJzZXJfdmVyc2lvbik7Cj4gKyAgICAgICBpZiAocGFyc2VyX3ZlcnNpb24gPj0gMTApIHsKPiAr
ICAgICAgICAgICAgICAgcHJpbnRmKCIgIENvbW1hbmQgcGFyc2luZyBmb3IgYmx0IGVuZ2luZSBz
dXBwb3J0ZWRcbiIpOwo+ICsgICAgICAgfSBlbHNlIGlmICghQ0hFQ0tfV1JJVEVfQkxPQ0tfV0lU
SE9VVF9QQVJTRVIpIHsKPiArICAgICAgICAgICAgICAgcHJpbnRmKCIgIFRoZXJlIGlzIG5vIGJs
aXR0ZXIgY29tbWFuZCBwYXJzZXJcbiIpOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiAr
ICAgICAgIH0KPiArCj4gKyAgICAgICB3cml0ZV9ibG9jayA9IGlzX3dyaXRlX2Jsb2NrZWQoZmQp
Owo+ICsKPiArICAgICAgIHByaW50ZigiICBVbnNhZmUgd3JpdGUgJXNcbiIsIHdyaXRlX2Jsb2Nr
ID8gImJsb2NrZWQiIDogInBvc3NpYmxlISIpOwo+ICsKPiArICAgICAgIHJldHVybiB3cml0ZV9i
bG9jazsKPiArfQo+ICsKPiArc3RydWN0IHN0YXRzIHsKPiArICAgICAgIGludCBjaGVja2VkOwo+
ICsgICAgICAgaW50IHNhZmU7Cj4gKyAgICAgICBpbnQgZmFpbGVkOwo+ICt9Owo+ICsKPiArc3Rh
dGljIHZvaWQgY2hlY2tfcGF0aChjb25zdCBjaGFyICpwYXRoLCBzdHJ1Y3Qgc3RhdHMgKnN0YXRz
KQo+ICt7Cj4gKyAgICAgICBpbnQgZmQ7Cj4gKyAgICAgICBpbnQgaXNfc2FmZTsKPiArCj4gKyAg
ICAgICBmZCA9IG9wZW4ocGF0aCwgT19SRFdSKTsKPiArICAgICAgIGlmIChmZCA9PSAtMSkgewo+
ICsgICAgICAgICAgICAgICBpZiAoZXJybm8gIT0gRU5PRU5UKSB7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcHJpbnRmKCJPcGVuaW5nICVzIGZhaWxlZCB3aXRoICVzICglZClcbiIsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhdGgsIHN0cmVycm9yKGVycm5vKSwgZXJybm8p
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHN0YXRzLT5mYWlsZWQrKzsKPiArICAgICAgICAg
ICAgICAgfQo+ICsKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAgICAgfQo+ICsKPiAr
ICAgICAgIGlmICghaXNfZHJpdmVyX2k5MTUoZmQpKSB7Cj4gKyAgICAgICAgICAgICAgIGNsb3Nl
KGZkKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAg
IHByaW50ZigiQ2hlY2tpbmcgJXM6XG4iLCBwYXRoKTsKPiArCj4gKyAgICAgICBpc19zYWZlID0g
aXNfZmRfc2FmZShmZCk7Cj4gKyAgICAgICBwcmludGYoIiAgRGV2aWNlICVzIDogJXNcblxuIiwg
cGF0aCwgaXNfc2FmZSA/ICJTQUZFIiA6ICJWVUxORVJBQkxFIik7Cj4gKyAgICAgICBpZiAoaXNf
c2FmZSkKPiArICAgICAgICAgICAgICAgc3RhdHMtPnNhZmUrKzsKCkkgd291bGQgZ28gdGhyb3Vn
aCBhbmQgZG8gYSBwYXNzIG9mIGVycm9ycyA9PiBzdGRlcnIsIGFuZCBzdXBwcmVzc2luZwphbnl0
aGluZyBlbHNlIHRoYXQgaXMgbm90ICJTQUZFIiB2cyAiVU5TQUZFIiAodXN1YWwgI2RlZmluZSBE
QkcgdHJpY2tzKQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
