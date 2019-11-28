Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB6810C918
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 14:00:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865856E7FA;
	Thu, 28 Nov 2019 12:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456A96E7EA;
 Thu, 28 Nov 2019 12:59:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19376099-1500050 for multiple; Thu, 28 Nov 2019 12:59:43 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191128125502.3886404-1-chris@chris-wilson.co.uk>
References: <20191126172556.21805-4-zbigniew.kempczynski@intel.com>
 <20191128125502.3886404-1-chris@chris-wilson.co.uk>
Message-ID: <157494598137.8489.12807489452798432938@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 28 Nov 2019 12:59:41 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_mmap_offset: Add new
 API test for gem_mmap_offset
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjggMTI6NTU6MDIpCj4gK3N0YXRpYyB2b2lk
IGlzb2xhdGlvbihpbnQgaTkxNSkKPiArewo+ICsgICAgICAgZm9yX2VhY2hfbW1hcF9vZmZzZXRf
dHlwZSh0KSB7Cj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fbW1hcF9vZmZz
ZXQgbW1hcF9hcmcgPSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgLmZsYWdzID0gdC0+dHlw
ZQo+ICsgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAgICBpbnQgQSA9IGdlbV9yZW9w
ZW5fZHJpdmVyKGk5MTUpOwo+ICsgICAgICAgICAgICAgICBpbnQgQiA9IGdlbV9yZW9wZW5fZHJp
dmVyKGk5MTUpOwo+ICsgICAgICAgICAgICAgICB1aW50NjRfdCBvZmZzZXRfYSwgb2Zmc2V0X2I7
Cj4gKyAgICAgICAgICAgICAgIHVpbnQzMl90IGEsIGI7Cj4gKyAgICAgICAgICAgICAgIHZvaWQg
KnB0cjsKPiArCj4gKyAgICAgICAgICAgICAgIGEgPSBnZW1fY3JlYXRlKEEsIDQwOTYpOwo+ICsg
ICAgICAgICAgICAgICBiID0gZ2VtX29wZW4oQiwgZ2VtX2ZsaW5rKEEsIGEpKTsKPiArCj4gKyAg
ICAgICAgICAgICAgIG1tYXBfYXJnLmhhbmRsZSA9IGE7Cj4gKyAgICAgICAgICAgICAgIGlndF9h
c3NlcnRfZXEobW1hcF9vZmZzZXRfaW9jdGwoaTkxNSwgJm1tYXBfYXJnKSwgMCk7CgpGaXJzdCBp
b2N0bCBzaG91bGQgc2tpcCBpZiB0eXBlIGlzIG5vdCBzdXBwb3J0ZWQuCgo+ICsgICAgICAgICAg
ICAgICBvZmZzZXRfYSA9IG1tYXBfYXJnLm9mZnNldDsKPiArCj4gKyAgICAgICAgICAgICAgIG1t
YXBfYXJnLmhhbmRsZSA9IGI7Cj4gKyAgICAgICAgICAgICAgIGlndF9hc3NlcnRfZXEobW1hcF9v
ZmZzZXRfaW9jdGwoaTkxNSwgJm1tYXBfYXJnKSwgMCk7CgpUaGVuIHNlY29uZCBtdXN0IHN1Y2Nl
ZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
