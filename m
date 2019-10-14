Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFF9D5F34
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 157B66E215;
	Mon, 14 Oct 2019 09:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28A46E215
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:43:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 02:43:25 -0700
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185444483"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 02:43:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191013193115.16844-1-chris@chris-wilson.co.uk>
 <20191014093706.26325-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7a6bcc0e-588d-5354-d80b-aa4533d4c7eb@linux.intel.com>
Date: Mon, 14 Oct 2019 10:43:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191014093706.26325-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/execlists: Assert tasklet is
 locked for process_csb()
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

Ck9uIDE0LzEwLzIwMTkgMTA6MzcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSByZWx5IG9uIG9u
bHkgdGhlIHRhc2tsZXQgYmVpbmcgYWxsb3dlZCB0byBjYWxsIGludG8gcHJvY2Vzc19jc2IoKSwg
c28KPiBhc3NlcnQgdGhhdCBpcyBsb2NrZWQgd2hlbiB3ZSBkby4gQXMgdGhlIHRhc2tsZXQgdXNl
cyBhIHNpbXBsZSBiaXRsb2NrLAo+IHRoZXJlIGlzIG5vIHN0cm9uZyBsb2NrZGVwIGNoZWNraW5n
IHNvIHdlIG11c3QgbWFrZSBkbyB3aXRoIGEgcGxhaW4KPiBhc3NlcnRpb24gdGhhdCB0aGUgdGFz
a2xldCBpcyBydW5uaW5nIGFuZCBhc3N1bWUgdGhhdCB3ZSBhcmUgdGhlCj4gdGFza2xldCEKPiAK
PiB2MjogRml4dXAgaW50ZWxfZ3Rfc2FuaXRpemUoKSB0byBwcmVwYXJlIGVhY2ggZW5naW5lIGZv
ciB0aGUgcmVzZXQgc28KPiB0aGF0IHRoZSBsb2NrcyBhcmUgbWFya2VkIGFzIGhlbGQgZHVyaW5n
IHRoZSByZXNldAo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyB8IDEx
ICsrKysrKysrLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgIHwg
IDEgKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaCAgICAgICB8ICA1ICsrKysr
Cj4gICAzIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCj4gaW5kZXggODdlMzRlMGI2NDI3
Li5iZmM2MTFmNDhlZDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMK
PiBAQCAtMTM2LDExICsxMzYsMTYgQEAgdm9pZCBpbnRlbF9ndF9zYW5pdGl6ZShzdHJ1Y3QgaW50
ZWxfZ3QgKmd0LCBib29sIGZvcmNlKQo+ICAgCj4gICAJaW50ZWxfdWNfc2FuaXRpemUoJmd0LT51
Yyk7Cj4gICAKPiAtCWlmICghcmVzZXRfZW5naW5lcyhndCkgJiYgIWZvcmNlKQo+IC0JCXJldHVy
bjsKPiArCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LT5pOTE1LCBpZCkKPiArCQllbmdpbmUt
PnJlc2V0LnByZXBhcmUoZW5naW5lKTsKPiArCj4gKwlpZiAocmVzZXRfZW5naW5lcyhndCkgfHwg
Zm9yY2UpIHsKPiArCQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndC0+aTkxNSwgaWQpCj4gKwkJ
CV9faW50ZWxfZW5naW5lX3Jlc2V0KGVuZ2luZSwgZmFsc2UpOwo+ICsJfQo+ICAgCj4gICAJZm9y
X2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QtPmk5MTUsIGlkKQo+IC0JCV9faW50ZWxfZW5naW5lX3Jl
c2V0KGVuZ2luZSwgZmFsc2UpOwo+ICsJCWVuZ2luZS0+cmVzZXQuZmluaXNoKGVuZ2luZSk7Cj4g
ICB9Cj4gICAKPiAgIHZvaWQgaW50ZWxfZ3RfcG1fZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggMTZiODc4ZDM1ODE0Li5m
YzRiZTc2YjMwNzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0x
ODQzLDYgKzE4NDMsNyBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCj4gICAJdTggaGVhZCwgdGFpbDsKPiAgIAo+ICAgCUdFTV9CVUdfT04o
VVNFU19HVUNfU1VCTUlTU0lPTihlbmdpbmUtPmk5MTUpKTsKPiArCUdFTV9CVUdfT04oIXRhc2ts
ZXRfaXNfbG9ja2VkKCZleGVjbGlzdHMtPnRhc2tsZXQpKTsKPiAgIAo+ICAgCS8qCj4gICAJICog
Tm90ZSB0aGF0IGNzYl93cml0ZSwgY3NiX3N0YXR1cyBtYXkgYmUgZWl0aGVyIGluIEhXU1Agb3Ig
bW1pby4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgKPiBpbmRleCBkYjIwZDJiMDg0MmIuLmY2Zjk2
NzU4NDhiOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaAo+IEBAIC04Niw2ICs4NiwxMSBA
QCBzdGF0aWMgaW5saW5lIHZvaWQgdGFza2xldF9sb2NrKHN0cnVjdCB0YXNrbGV0X3N0cnVjdCAq
dCkKPiAgIAkJY3B1X3JlbGF4KCk7Cj4gICB9Cj4gICAKPiArc3RhdGljIGlubGluZSBib29sIHRh
c2tsZXRfaXNfbG9ja2VkKGNvbnN0IHN0cnVjdCB0YXNrbGV0X3N0cnVjdCAqdCkKPiArewo+ICsJ
cmV0dXJuIHRlc3RfYml0KFRBU0tMRVRfU1RBVEVfUlVOLCAmdC0+c3RhdGUpOwo+ICt9Cj4gKwo+
ICAgc3RhdGljIGlubGluZSB2b2lkIF9fdGFza2xldF9kaXNhYmxlX3N5bmNfb25jZShzdHJ1Y3Qg
dGFza2xldF9zdHJ1Y3QgKnQpCj4gICB7Cj4gICAJaWYgKCFhdG9taWNfZmV0Y2hfaW5jKCZ0LT5j
b3VudCkpCj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
