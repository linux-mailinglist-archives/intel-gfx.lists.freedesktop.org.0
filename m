Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CF5CE9E0
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 18:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960BE6E139;
	Mon,  7 Oct 2019 16:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79F089F63;
 Mon,  7 Oct 2019 16:54:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 09:54:33 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344786266"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Oct 2019 09:54:32 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191007073729.5612-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8a64d77f-0dc9-51c4-058c-c1dcc23435c6@linux.intel.com>
Date: Mon, 7 Oct 2019 17:54:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191007073729.5612-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_userptr: Be
 defensive when testing userptr capabilities
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

Ck9uIDA3LzEwLzIwMTkgMDg6MzcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBOb3QgZXZlcnkgZGV2
aWNlIG5hdHVyYWxseSBzdXBwb3J0cyBzbm9vcGluZyBhbmQgdXNlcnB0ciwgc28gYmUgcHJlcGFy
ZWQKPiBmb3IgdGhlIGluaXRpYWwgcHJvYmUgdG8gZmFpbC4KPiAKPiBCdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExOTEwCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICB0
ZXN0cy9pOTE1L2dlbV91c2VycHRyX2JsaXRzLmMgfCA3ICsrKysrLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rl
c3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxpdHMuYyBiL3Rlc3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxp
dHMuYwo+IGluZGV4IDIzNTljMTNmNC4uMThlODA2ZmVkIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5
MTUvZ2VtX3VzZXJwdHJfYmxpdHMuYwo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxp
dHMuYwo+IEBAIC03OCwxMiArNzgsMTQgQEAgc3RhdGljIHVpbnQzMl90IGxpbmVhcltXSURUSCpI
RUlHSFRdOwo+ICAgCj4gICBzdGF0aWMgYm9vbCBoYXNfZ3R0X21tYXAoaW50IGk5MTUpCj4gICB7
Cj4gLQl2b2lkICpwdHIsICptYXA7Cj4gKwl2b2lkICpwdHIsICptYXAgPSBOVUxMOwo+ICAgCXVp
bnQzMl90IGhhbmRsZTsKPiAgIAo+ICAgCWlndF9hc3NlcnQocG9zaXhfbWVtYWxpZ24oJnB0ciwg
UEFHRV9TSVpFLCBQQUdFX1NJWkUpID09IDApOwo+ICAgCj4gLQlnZW1fdXNlcnB0cihpOTE1LCBw
dHIsIDQwOTYsIDAsIDAsICZoYW5kbGUpOwo+ICsJaWYgKF9fZ2VtX3VzZXJwdHIoaTkxNSwgcHRy
LCA0MDk2LCAwLAo+ICsJCQkgIExPQ0FMX0k5MTVfVVNFUlBUUl9VTlNZTkNIUk9OSVpFRCwgJmhh
bmRsZSkpCj4gKwkJZ290byBvdXRfcHRyOwo+ICAgCWlndF9hc3NlcnQoaGFuZGxlICE9IDApOwo+
ICAgCj4gICAJbWFwID0gX19nZW1fbW1hcF9fZ3R0KGk5MTUsIGhhbmRsZSwgNDA5NiwgUFJPVF9X
UklURSk7Cj4gQEAgLTkxLDYgKzkzLDcgQEAgc3RhdGljIGJvb2wgaGFzX2d0dF9tbWFwKGludCBp
OTE1KQo+ICAgCQltdW5tYXAobWFwLCA0MDk2KTsKPiAgIAo+ICAgCWdlbV9jbG9zZShpOTE1LCBo
YW5kbGUpOwo+ICtvdXRfcHRyOgo+ICAgCWZyZWUocHRyKTsKPiAgIAo+ICAgCXJldHVybiBtYXAg
IT0gTlVMTDsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
