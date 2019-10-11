Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FE8D40AF
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 15:12:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBBD56E0A0;
	Fri, 11 Oct 2019 13:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42286E049;
 Fri, 11 Oct 2019 13:12:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 06:12:16 -0700
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="197576223"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 06:12:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191011124328.3400-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f92d1c3f-a52f-8bfa-1d5a-909dbb67574e@linux.intel.com>
Date: Fri, 11 Oct 2019 14:12:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191011124328.3400-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] Check all sysfs entries are readable
 without dmesg spam
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

Ck9uIDExLzEwLzIwMTkgMTM6NDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBhbHJlYWR5IGNo
ZWNrIHRoYXQgZGVidWdmcyBkbyBub3QgY2F1c2Ugc3BhbSAoYW5kIHRoZXkgdGVuZCB0byBiZQo+
IG1vcmUgaGVhdnloYW5kZWQgYW5kIHNvIG1vcmUgbGlrZWx5IHRvIGJyZWFrKSwgYnV0IHRoYXQg
ZG9lcyBub3QgZXhjdXNlCj4gbm90IGNoZWNraW5nIG91ciBzeXNmcyBkaXJlY3RvcnkhCj4gCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
Q2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICB0
ZXN0cy9kZWJ1Z2ZzX3Rlc3QuYyB8IDggKysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2RlYnVn
ZnNfdGVzdC5jIGIvdGVzdHMvZGVidWdmc190ZXN0LmMKPiBpbmRleCBmOGRkODUxYzkuLjJkNDc1
M2RmNSAxMDA2NDQKPiAtLS0gYS90ZXN0cy9kZWJ1Z2ZzX3Rlc3QuYwo+ICsrKyBiL3Rlc3RzL2Rl
YnVnZnNfdGVzdC5jCj4gQEAgLTU2LDcgKzU2LDcgQEAgc3RhdGljIHZvaWQgcmVhZF9hbmRfZGlz
Y2FyZF9zeXNmc19lbnRyaWVzKGludCBwYXRoX2ZkLCBpbnQgaW5kZW50KQo+ICAgCQkJaWd0X2Rl
YnVnKCIlc0VudGVyaW5nIHN1YmRpciAlc1xuIiwgdGFicywgZGlyZW50LT5kX25hbWUpOwo+ICAg
CQkJcmVhZF9hbmRfZGlzY2FyZF9zeXNmc19lbnRyaWVzKHN1Yl9mZCwgaW5kZW50ICsgMSk7Cj4g
ICAJCQljbG9zZShzdWJfZmQpOwo+IC0JCX0gZWxzZSB7Cj4gKwkJfSBlbHNlIGlmIChkaXJlbnQt
PmRfdHlwZSA9PSBEVF9SRUcpIHsKPiAgIAkJCWNoYXIgYnVmWzUxMl07Cj4gICAJCQlpbnQgc3Vi
X2ZkOwo+ICAgCQkJc3NpemVfdCByZXQ7Cj4gQEAgLTE0OSw3ICsxNDksNyBAQCBzdGF0aWMgdm9p
ZCBrbXNfdGVzdHMoaW50IGZkLCBpbnQgZGVidWdmcykKPiAgIAo+ICAgaWd0X21haW4KPiAgIHsK
PiAtCWludCBmZCA9IC0xLCBkZWJ1Z2ZzOwo+ICsJaW50IGZkID0gLTEsIGRlYnVnZnMsIHN5c2Zz
Owo+ICAgCj4gICAJaWd0X3NraXBfb25fc2ltdWxhdGlvbigpOwo+ICAgCj4gQEAgLTE1NywxMCAr
MTU3LDEzIEBAIGlndF9tYWluCj4gICAJCWZkID0gZHJtX29wZW5fZHJpdmVyX21hc3RlcihEUklW
RVJfSU5URUwpOwo+ICAgCQlpZ3RfcmVxdWlyZV9nZW0oZmQpOwo+ICAgCQlkZWJ1Z2ZzID0gaWd0
X2RlYnVnZnNfZGlyKGZkKTsKPiArCQlzeXNmcyA9IGlndF9zeXNmc19vcGVuKGZkKTsKPiAgIAo+
ICAgCQlrbXN0ZXN0X3NldF92dF9ncmFwaGljc19tb2RlKCk7Cj4gICAJfQo+ICAgCj4gKwlpZ3Rf
c3VidGVzdCgic3lzZnMiKQo+ICsJCXJlYWRfYW5kX2Rpc2NhcmRfc3lzZnNfZW50cmllcyhzeXNm
cywgMCk7Cj4gICAJaWd0X3N1YnRlc3QoInJlYWRfYWxsX2VudHJpZXMiKQo+ICAgCQlyZWFkX2Fu
ZF9kaXNjYXJkX3N5c2ZzX2VudHJpZXMoZGVidWdmcywgMCk7Cj4gICAKPiBAQCAtMTY4LDYgKzE3
MSw3IEBAIGlndF9tYWluCj4gICAJCWttc190ZXN0cyhmZCwgZGVidWdmcyk7Cj4gICAKPiAgIAlp
Z3RfZml4dHVyZSB7Cj4gKwkJY2xvc2Uoc3lzZnMpOwo+ICAgCQljbG9zZShkZWJ1Z2ZzKTsKPiAg
IAkJY2xvc2UoZmQpOwo+ICAgCX0KPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
