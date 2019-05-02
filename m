Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A63811B30
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2DB089622;
	Thu,  2 May 2019 14:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCE7889622
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:18:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 07:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140682418"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 07:18:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8f1e1c3d-eae2-2f87-3da4-127c55221ed8@linux.intel.com>
Date: Thu, 2 May 2019 15:18:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501114541.10077-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Leave engine parking to the
 engines
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

Ck9uIDAxLzA1LzIwMTkgMTI6NDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBEcm9wIHRoZSBjaGVj
ayBpbiBHRU0gcGFya2luZyB0aGF0IHRoZSBlbmdpbmVzIHdlcmUgYWxyZWFkeSBwYXJrZWQuIFRo
ZQo+IGludGVudGlvbiBoZXJlIHdhcyB0aGF0IGJlZm9yZSB3ZSBkcm9wcGVkIHRoZSBHVCB3YWtl
cmVmLCB3ZSB3ZXJlIHN1cmUKPiB0aGF0IG5vIG1vcmUgaW50ZXJydXB0cyBjb3VsZCBiZSByYWlz
ZWQgLS0gaG93ZXZlciwgd2UgaGF2ZSBhbHJlYWR5Cj4gZHJvcHBlZCB0aGUgd2FrZXJlZiBieSB0
aGlzIHBvaW50IGFuZCB0aGUgd2FybmluZyBpcyBubyBsb25nZXIgdmFsaWQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jIHwgMTggKy0tLS0tLS0tLS0tLS0t
LS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDE3IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYwo+IGluZGV4IDNiNmU4ZDViZThlMS4uNDli
MGNlNTk0ZjIwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3Bt
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jCj4gQEAgLTE3LDI0
ICsxNyw4IEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3Bhcmsoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4gICAKPiAgIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKPiAgIAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKPiAt
CQkvKgo+IC0JCSAqIFdlIGFyZSBjb21taXR0ZWQgbm93IHRvIHBhcmtpbmcgdGhlIGVuZ2luZXMs
IG1ha2Ugc3VyZSB0aGVyZQo+IC0JCSAqIHdpbGwgYmUgbm8gbW9yZSBpbnRlcnJ1cHRzIGFycml2
aW5nIGxhdGVyIGFuZCB0aGUgZW5naW5lcwo+IC0JCSAqIGFyZSB0cnVseSBpZGxlLgo+IC0JCSAq
Lwo+IC0JCWlmICh3YWl0X2ZvcihpbnRlbF9lbmdpbmVfaXNfaWRsZShlbmdpbmUpLCAxMCkpIHsK
PiAtCQkJc3RydWN0IGRybV9wcmludGVyIHAgPSBkcm1fZGVidWdfcHJpbnRlcihfX2Z1bmNfXyk7
Cj4gLQo+IC0JCQlkZXZfZXJyKGk5MTUtPmRybS5kZXYsCj4gLQkJCQkiJXMgaXMgbm90IGlkbGUg
YmVmb3JlIHBhcmtpbmdcbiIsCj4gLQkJCQllbmdpbmUtPm5hbWUpOwo+IC0JCQlpbnRlbF9lbmdp
bmVfZHVtcChlbmdpbmUsICZwLCBOVUxMKTsKPiAtCQl9Cj4gLQkJdGFza2xldF9raWxsKCZlbmdp
bmUtPmV4ZWNsaXN0cy50YXNrbGV0KTsKPiAtCj4gKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBp
OTE1LCBpZCkKPiAgIAkJaTkxNV9nZW1fYmF0Y2hfcG9vbF9maW5pKCZlbmdpbmUtPmJhdGNoX3Bv
b2wpOwo+IC0JfQo+ICAgCj4gICAJaTkxNV90aW1lbGluZXNfcGFyayhpOTE1KTsKPiAgIAlpOTE1
X3ZtYV9wYXJrZWQoaTkxNSk7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
