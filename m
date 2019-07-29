Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D07786BC
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 09:53:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C7889154;
	Mon, 29 Jul 2019 07:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5BE89154
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 07:53:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 00:53:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,321,1559545200"; d="scan'208";a="346517455"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 29 Jul 2019 00:53:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190726125456.31364-1-chris@chris-wilson.co.uk>
 <20190726125456.31364-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bd4676e8-f724-91a7-ad3b-393e5892b159@linux.intel.com>
Date: Mon, 29 Jul 2019 08:53:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726125456.31364-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Careful not to
 flush hang_fini on error setups
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

Ck9uIDI2LzA3LzIwMTkgMTM6NTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTbWF0Y2ggc3BvdHRl
ZCB0aGF0IHdlIHRlc3QgYXQgdGhlIHN0YXJ0IG9mIGhhbmdfZmluaSBmb3IgYSB2YWxpZCAoaC0+
Z3QKPiBpcyBvbmx5IHNldCBhZnRlciBhIHJlcXVlc3QgaXMgY3JlYXRlZCkgYnV0IHRoZW4gdXNl
ZCBpdCByZWdhcmRsZXNzCj4gbGF0ZXIgb24uCj4gCj4gRml4ZXM6IGNiODIzZWQ5OTE1YiAoImRy
bS9pOTE1L2d0OiBVc2UgaW50ZWxfZ3QgYXMgdGhlIHByaW1hcnkgb2JqZWN0IGZvciBoYW5kbGlu
ZyByZXNldHMiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2No
ZWNrLmMgfCAzICsrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9oYW5nY2hlY2suYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVj
ay5jCj4gaW5kZXggZTJmYTM4YTFmZjBmLi5hNGZjNzNiNDM2OGYgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYwo+IEBAIC0yODQsNyArMjg0LDgg
QEAgc3RhdGljIHZvaWQgaGFuZ19maW5pKHN0cnVjdCBoYW5nICpoKQo+ICAgCj4gICAJa2VybmVs
X2NvbnRleHRfY2xvc2UoaC0+Y3R4KTsKPiAgIAo+IC0JaWd0X2ZsdXNoX3Rlc3QoaC0+Z3QtPmk5
MTUsIEk5MTVfV0FJVF9MT0NLRUQpOwo+ICsJaWYgKGgtPmd0KQo+ICsJCWlndF9mbHVzaF90ZXN0
KGgtPmd0LT5pOTE1LCBJOTE1X1dBSVRfTE9DS0VEKTsKCkkgc2VlIGgtPmd0IGFsd2F5cyBzZXQg
aW4gaGFuZ19pbml0LiBJIHRoaW5rIGl0IHVzZWQgdG8gYmUgbm90IHRoZSBjYXNlIAppbiBteSBp
bml0aWFsIHJlZmFjdG9yaW5nLiBTbyBldmVuIHRoZSBlYXJsaWVyIGNoZWNrIGluIGhhbmdfZmlu
aSBjb3VsZCAKYmUgcmVtb3ZlZCBub3cuCgpSZWdhcmRzLAoKVHZydGtvCgo+ICAgfQo+ICAgCj4g
ICBzdGF0aWMgYm9vbCB3YWl0X3VudGlsX3J1bm5pbmcoc3RydWN0IGhhbmcgKmgsIHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxKQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
