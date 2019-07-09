Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF83F63068
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 08:26:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0AC89D1D;
	Tue,  9 Jul 2019 06:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FAD989D1D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 06:26:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 23:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,469,1557212400"; d="scan'208";a="170503316"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by orsmga006.jf.intel.com with ESMTP; 08 Jul 2019 23:24:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190708140327.26825-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c3040a9e-a9de-904b-52ea-7d5ff4f3ae5c@linux.intel.com>
Date: Tue, 9 Jul 2019 07:24:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190708140327.26825-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/userptr: Acquire the page lock
 around set_page_dirty()
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA4LzA3LzIwMTkgMTU6MDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBzZXRfcGFnZV9kaXJ0
eSBzYXlzOgo+IAo+IAlGb3IgcGFnZXMgd2l0aCBhIG1hcHBpbmcgdGhpcyBzaG91bGQgYmUgZG9u
ZSB1bmRlciB0aGUgcGFnZSBsb2NrCj4gCWZvciB0aGUgYmVuZWZpdCBvZiBhc3luY2hyb25vdXMg
bWVtb3J5IGVycm9ycyB3aG8gcHJlZmVyIGEKPiAJY29uc2lzdGVudCBkaXJ0eSBzdGF0ZS4gVGhp
cyBydWxlIGNhbiBiZSBicm9rZW4gaW4gc29tZSBzcGVjaWFsCj4gCWNhc2VzLCBidXQgc2hvdWxk
IGJlIGJldHRlciBub3QgdG8uCj4gCj4gCUlmIHRoZSBtYXBwaW5nIGRvZXNuJ3QgcHJvdmlkZSBh
IHNldF9wYWdlX2RpcnR5IGFfb3AsIHRoZW4KPiAJanVzdCBmYWxsIHRocm91Z2ggYW5kIGFzc3Vt
ZSB0aGF0IGl0IHdhbnRzIGJ1ZmZlcl9oZWFkcy4KPiAKPiBVbmRlciB0aG9zZSBydWxlcywgaXQg
b25seSBzYWZlIGZvciB1cyB0byB1c2UgdGhlIHBsYWluIHNldF9wYWdlX2RpcnR5KCkKPiBjYWxs
cyBmb3Igc2htZW1mcy9hbm9ueW1vdXMgbWVtb3J5LiBVc2VycHRyIG1heSBiZSB1c2VkIHdpdGgg
cmVhbAo+IG1hcHBpbmdzIGFuZCBzbyBuZWVkcyB0byB1c2UgdGhlIGxvY2tlZCB2ZXJzaW9uIChz
ZXRfcGFnZV9kaXJ0eV9sb2NrKS4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJu
ZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDMzMTcKPiBGaXhlczogNWNjOWVkNGI5YTdhICgiZHJt
L2k5MTU6IEludHJvZHVjZSBtYXBwaW5nIG9mIHVzZXIgcGFnZXMgaW50byB2aWRlbyBtZW1vcnkg
KHVzZXJwdHIpIGlvY3RsIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyB8IDEwICsrKysrKysrKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKPiBpbmRleCAxNmNjZWM3ZmI3
ZGEuLjMyZDIwOGVkZTM0MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdXNlcnB0ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3VzZXJwdHIuYwo+IEBAIC02NjUsNyArNjY1LDE1IEBAIGk5MTVfZ2VtX3VzZXJwdHJfcHV0
X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gICAKPiAgIAlmb3JfZWFj
aF9zZ3RfcGFnZShwYWdlLCBzZ3RfaXRlciwgcGFnZXMpIHsKPiAgIAkJaWYgKG9iai0+bW0uZGly
dHkpCj4gLQkJCXNldF9wYWdlX2RpcnR5KHBhZ2UpOwo+ICsJCQkvKgo+ICsJCQkgKiBBcyB0aGlz
IG1heSBub3QgYmUgYW5vbnltb3VzIG1lbW9yeSAoZS5nLiBzaG1lbSkKPiArCQkJICogYnV0IGV4
aXN0IG9uIGEgcmVhbCBtYXBwaW5nLCB3ZSBoYXZlIHRvIGxvY2sKPiArCQkJICogdGhlIHBhZ2Ug
aW4gb3JkZXIgdG8gZGlydHkgaXQgLS0gaG9sZGluZwo+ICsJCQkgKiB0aGUgcGFnZSByZWZlcmVu
Y2UgaXMgbm90IHN1ZmZpY2llbnQgdG8KPiArCQkJICogcHJldmVudCB0aGUgaW5vZGUgZnJvbSBi
ZWluZyB0cnVuY2F0ZWQuCj4gKwkJCSAqIFBsYXkgc2FmZSBhbmQgdGFrZSB0aGUgbG9jay4KPiAr
CQkJICovCj4gKwkJCXNldF9wYWdlX2RpcnR5X2xvY2socGFnZSk7Cj4gICAKPiAgIAkJbWFya19w
YWdlX2FjY2Vzc2VkKHBhZ2UpOwo+ICAgCQlwdXRfcGFnZShwYWdlKTsKPiAKCk5vdCBhbiBleHBl
cnQgYnV0IHNvdW5kcyBwbGF1c2libGUuCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
