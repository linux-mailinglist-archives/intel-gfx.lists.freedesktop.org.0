Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E09075E368
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 14:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 456886E124;
	Wed,  3 Jul 2019 12:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52BE56E124
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 12:03:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 05:03:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="184731671"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2019 05:03:15 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <20190703091726.11690-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <892052a4-d2e8-9682-612b-6b842e0656a7@linux.intel.com>
Date: Wed, 3 Jul 2019 13:03:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703091726.11690-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/15] drm/i915/gt: Assume we hold forcewake
 for execlists resume
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA3LzIwMTkgMTA6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBjYW4gYXNzdW1l
IHRoZSBjYWxsZXIgaXMgaG9sZGluZyBhIGJsYW5rZXQgZm9yY2V3YWtlIGZvciB0aGUKPiByZWdp
c3RlciB3cml0ZXMgZHVyaW5nIHJlc3VtZSwgYW5kIHNvIHdlIGNhbiBza2lwIHRha2luZyBpbmRp
dmlkdWFsCj4gbG9ja3MgYXJvdW5kIGVhY2ggd3JpdGUgaW5zaWRlIGV4ZWNsaXN0cyByZXN1bWUu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIzICsr
KysrKysrKysrKy0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBp
bmRleCA5NTNiMzkzOGE4NWYuLjQ5N2NhNTIzODFhNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jCj4gQEAgLTIwNzYsMjIgKzIwNzYsMjMgQEAgc3RhdGljIGludCBpbnRlbF9p
bml0X3dvcmthcm91bmRfYmIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCj4g
ICBzdGF0aWMgdm9pZCBlbmFibGVfZXhlY2xpc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKPiAgIHsKPiArCXUzMiBtb2RlOwo+ICsKPiArCWFzc2VydF9mb3JjZXdha2VzX2FjdGl2
ZShlbmdpbmUtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4gKwo+ICAgCWludGVsX2VuZ2luZV9z
ZXRfaHdzcF93cml0ZW1hc2soZW5naW5lLCB+MHUpOyAvKiBIV1NUQU0gKi8KPiAgIAo+ICAgCWlm
IChJTlRFTF9HRU4oZW5naW5lLT5pOTE1KSA+PSAxMSkKPiAtCQlFTkdJTkVfV1JJVEUoZW5naW5l
LAo+IC0JCQkgICAgIFJJTkdfTU9ERV9HRU43LAo+IC0JCQkgICAgIF9NQVNLRURfQklUX0VOQUJM
RShHRU4xMV9HRlhfRElTQUJMRV9MRUdBQ1lfTU9ERSkpOwo+ICsJCW1vZGUgPSBfTUFTS0VEX0JJ
VF9FTkFCTEUoR0VOMTFfR0ZYX0RJU0FCTEVfTEVHQUNZX01PREUpOwo+ICAgCWVsc2UKPiAtCQlF
TkdJTkVfV1JJVEUoZW5naW5lLAo+IC0JCQkgICAgIFJJTkdfTU9ERV9HRU43LAo+IC0JCQkgICAg
IF9NQVNLRURfQklUX0VOQUJMRShHRlhfUlVOX0xJU1RfRU5BQkxFKSk7Cj4gKwkJbW9kZSA9IF9N
QVNLRURfQklUX0VOQUJMRShHRlhfUlVOX0xJU1RfRU5BQkxFKTsKPiArCUVOR0lORV9XUklURV9G
VyhlbmdpbmUsIFJJTkdfTU9ERV9HRU43LCBtb2RlKTsKPiAgIAo+IC0JRU5HSU5FX1dSSVRFKGVu
Z2luZSwgUklOR19NSV9NT0RFLCBfTUFTS0VEX0JJVF9ESVNBQkxFKFNUT1BfUklORykpOwo+ICsJ
RU5HSU5FX1dSSVRFX0ZXKGVuZ2luZSwgUklOR19NSV9NT0RFLCBfTUFTS0VEX0JJVF9ESVNBQkxF
KFNUT1BfUklORykpOwo+ICAgCj4gLQlFTkdJTkVfV1JJVEUoZW5naW5lLAo+IC0JCSAgICAgUklO
R19IV1NfUEdBLAo+IC0JCSAgICAgaTkxNV9nZ3R0X29mZnNldChlbmdpbmUtPnN0YXR1c19wYWdl
LnZtYSkpOwo+ICsJRU5HSU5FX1dSSVRFX0ZXKGVuZ2luZSwKPiArCQkJUklOR19IV1NfUEdBLAo+
ICsJCQlpOTE1X2dndHRfb2Zmc2V0KGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hKSk7Cj4gICAJRU5H
SU5FX1BPU1RJTkdfUkVBRChlbmdpbmUsIFJJTkdfSFdTX1BHQSk7Cj4gICB9Cj4gICAKPiBAQCAt
MjA5OSw3ICsyMTAwLDcgQEAgc3RhdGljIGJvb2wgdW5leHBlY3RlZF9zdGFydGluZ19zdGF0ZShz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICB7Cj4gICAJYm9vbCB1bmV4cGVjdGVk
ID0gZmFsc2U7Cj4gICAKPiAtCWlmIChFTkdJTkVfUkVBRChlbmdpbmUsIFJJTkdfTUlfTU9ERSkg
JiBTVE9QX1JJTkcpIHsKPiArCWlmIChFTkdJTkVfUkVBRF9GVyhlbmdpbmUsIFJJTkdfTUlfTU9E
RSkgJiBTVE9QX1JJTkcpIHsKPiAgIAkJRFJNX0RFQlVHX0RSSVZFUigiU1RPUF9SSU5HIHN0aWxs
IHNldCBpbiBSSU5HX01JX01PREVcbiIpOwo+ICAgCQl1bmV4cGVjdGVkID0gdHJ1ZTsKPiAgIAl9
Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
