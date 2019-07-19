Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FA06E63E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 15:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 972BE6E82E;
	Fri, 19 Jul 2019 13:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2EB6E82E
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 13:21:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 06:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="159099897"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 19 Jul 2019 06:21:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190719131524.827-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <43bc40ee-c0de-294d-b821-8adc60277bcd@linux.intel.com>
Date: Fri, 19 Jul 2019 14:21:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190719131524.827-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Correct unshifted 'from' for
 gen8_ppgtt_alloc errors
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE5LzA3LzIwMTkgMTQ6MTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSB0aGUgdW5k
ZXJseWluZyBfX2dlbjhfcHBndHRfY2xlYXIgdGFrZXMgdGhlIHNoaWZ0ZWQgYWRkcmVzcywgd2UK
PiBtdXN0IHJlbWVtYmVyIHRvIHByb3ZpZGUgaXQgd2l0aCB0aGUgcHJlc2hpZnRlZCBvcmlnaW5h
bCBzdGFydCBhZGRyZXNzLgo+IAo+IFJlcG9ydGVkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgo+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8
IDMgKystCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBpbmRleCAyMjBhYmE1YTk0ZDIu
LjAzMWJjZDIyZjVlNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gQEAg
LTExMDMsNyArMTEwMyw3IEBAIHN0YXRpYyBpbnQgX19nZW44X3BwZ3R0X2FsbG9jKHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKiBjb25zdCB2bSwKPiAgIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9h
bGxvYyhzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiAgIAkJCSAgICB1NjQgc3RhcnQs
IHU2NCBsZW5ndGgpCj4gICB7Cj4gLQl1NjQgZnJvbSA9IHN0YXJ0Owo+ICsJdTY0IGZyb207Cj4g
ICAJaW50IGVycjsKPiAgIAo+ICAgCUdFTV9CVUdfT04oIUlTX0FMSUdORUQoc3RhcnQsIEJJVF9V
TEwoR0VOOF9QVEVfU0hJRlQpKSk7Cj4gQEAgLTExMTIsNiArMTExMiw3IEBAIHN0YXRpYyBpbnQg
Z2VuOF9wcGd0dF9hbGxvYyhzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiAgIAlzdGFy
dCA+Pj0gR0VOOF9QVEVfU0hJRlQ7Cj4gICAJbGVuZ3RoID4+PSBHRU44X1BURV9TSElGVDsKPiAg
IAlHRU1fQlVHX09OKGxlbmd0aCA9PSAwKTsKPiArCWZyb20gPSBzdGFydDsKPiAgIAo+ICAgCWVy
ciA9IF9fZ2VuOF9wcGd0dF9hbGxvYyh2bSwgaTkxNV92bV90b19wcGd0dCh2bSktPnBkLAo+ICAg
CQkJCSAmc3RhcnQsIHN0YXJ0ICsgbGVuZ3RoLCB2bS0+dG9wKTsKPiAKClJldmlld2VkLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRr
bwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
