Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1865E33045
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 14:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCD888AA1;
	Mon,  3 Jun 2019 12:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61CF088AA1;
 Mon,  3 Jun 2019 12:51:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:51:48 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2019 05:51:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190602085318.25048-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <78736c5f-b949-0c53-c191-687297569bce@linux.intel.com>
Date: Mon, 3 Jun 2019 13:51:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190602085318.25048-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ppgtt: Remove
 defunct test
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

Ck9uIDAyLzA2LzIwMTkgMDk6NTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBpOTE1X2dlbV9ndHRf
aW5mbyBoYXMgYmVlbiByZW1vdmVkIGFuZCBzbyBmbGluay1hbmQtZXhpdC12bWEtbGVhayBpcwo+
IGRlZnVuY3QuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CgpDYzogTWF0dCBzaW5jZSBoZSB3b3VsZCBrbm93IGhlIHJldmlld2VkIHRo
ZSBjb3JyZXNwb25kaW5nIGk5MTUgcGF0Y2guCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KCj4gLS0tCj4gICB0
ZXN0cy9pOTE1L2dlbV9wcGd0dC5jIHwgNDMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNDMgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX3BwZ3R0LmMgYi90ZXN0cy9pOTE1L2dlbV9wcGd0dC5j
Cj4gaW5kZXggYjkwNWVhNTU5Li4wZDQwYTdiNzggMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9n
ZW1fcHBndHQuYwo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX3BwZ3R0LmMKPiBAQCAtMjg5LDQ2ICsy
ODksNiBAQCBzdGF0aWMgdm9pZCBmbGlua19hbmRfY2xvc2Uodm9pZCkKPiAgIAljbG9zZShmZDIp
Owo+ICAgfQo+ICAgCj4gLXN0YXRpYyB2b2lkIGZsaW5rX2FuZF9leGl0KHZvaWQpCj4gLXsKPiAt
CXVpbnQzMl90IGZkLCBmZDIsIGZkMzsKPiAtCXVpbnQzMl90IGJvLCBmbGlua2VkX2JvLCBuYW1l
Owo+IC0JY2hhciBtYXRjaFsyMF07Cj4gLQo+IC0JZmQgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVS
X0lOVEVMKTsKPiAtCWlndF9yZXF1aXJlKGdlbV91c2VzX2Z1bGxfcHBndHQoZmQpKTsKPiAtCj4g
LQlibyA9IGdlbV9jcmVhdGUoZmQsIDQwOTYpOwo+IC0JbmFtZSA9IGdlbV9mbGluayhmZCwgYm8p
Owo+IC0Jc25wcmludGYobWF0Y2gsIHNpemVvZihtYXRjaCksICIobmFtZTogJXUpIiwgbmFtZSk7
Cj4gLQo+IC0JZmQyID0gZHJtX29wZW5fZHJpdmVyKERSSVZFUl9JTlRFTCk7Cj4gLQlmbGlua2Vk
X2JvID0gZ2VtX29wZW4oZmQyLCBuYW1lKTsKPiAtCj4gLQkvKiBWZXJpZnkgVk1BIGlzIG5vdCB0
aGVyZSB5ZXQuICovCj4gLQlpZ3RfYXNzZXJ0KCFpZ3RfZGVidWdmc19zZWFyY2goZmQsICJpOTE1
X2dlbV9ndHQiLCBtYXRjaCkpOwo+IC0KPiAtCWV4ZWNfYW5kX2dldF9vZmZzZXQoZmQyLCBmbGlu
a2VkX2JvKTsKPiAtCj4gLQkvKiBWZXJpZnkgVk1BIGhhcyBiZWVuIGNyZWF0ZWQuICovCj4gLQlp
Z3RfYXNzZXJ0KGlndF9kZWJ1Z2ZzX3NlYXJjaChmZCwgImk5MTVfZ2VtX2d0dCIsIG1hdGNoKSk7
Cj4gLQo+IC0JLyogQ2xvc2UgdGhlIGNvbnRleHQuICovCj4gLQljbG9zZShmZDIpOwo+IC0KPiAt
CS8qIEV4ZWN1dGUgYSBkaWZmZXJlbnQgYW5kIHVucmVsYXRlZCAod3J0IG9iamVjdCBzaGFyaW5n
KSBjb250ZXh0IHRvCj4gLQkgKiBlbnN1cmUgZW5naW5lIGRyb3BzIGl0cyBsYXN0IGNvbnRleHQg
cmVmZXJlbmNlLgo+IC0JICovCj4gLQlmZDMgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVM
KTsKPiAtCWV4ZWNfYW5kX2dldF9vZmZzZXQoZmQzLCBnZW1fY3JlYXRlKGZkMywgNDA5NikpOwo+
IC0JY2xvc2UoZmQzKTsKPiAtCj4gLQlpZ3RfZHJvcF9jYWNoZXNfc2V0KGZkLCBEUk9QX0FDVElW
RSB8IERST1BfUkVUSVJFIHwgRFJPUF9JRExFKTsKPiAtCWlndF9hc3NlcnQoIWlndF9kZWJ1Z2Zz
X3NlYXJjaChmZCwgImk5MTVfZ2VtX2d0dCIsIG1hdGNoKSk7Cj4gLQo+IC0JY2xvc2UoZmQpOwo+
IC19Cj4gLQo+ICAgI2RlZmluZSBOX0NISUxEIDgKPiAgIGlndF9tYWluCj4gICB7Cj4gQEAgLTM2
NCw3ICszMjQsNCBAQCBpZ3RfbWFpbgo+ICAgCj4gICAJaWd0X3N1YnRlc3QoImZsaW5rLWFuZC1j
bG9zZS12bWEtbGVhayIpCj4gICAJCWZsaW5rX2FuZF9jbG9zZSgpOwo+IC0KPiAtCWlndF9zdWJ0
ZXN0KCJmbGluay1hbmQtZXhpdC12bWEtbGVhayIpCj4gLQkJZmxpbmtfYW5kX2V4aXQoKTsKPiAg
IH0KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
