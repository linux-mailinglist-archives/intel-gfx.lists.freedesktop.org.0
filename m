Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0DAEE3F9
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 16:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C696E5AE;
	Mon,  4 Nov 2019 15:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E696E5AE;
 Mon,  4 Nov 2019 15:37:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 07:37:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="376367049"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 04 Nov 2019 07:37:25 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A2D1A5C1DFF; Mon,  4 Nov 2019 17:37:21 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191104152909.21736-1-chris@chris-wilson.co.uk>
References: <20191104152909.21736-1-chris@chris-wilson.co.uk>
Date: Mon, 04 Nov 2019 17:37:21 +0200
Message-ID: <87lfsvodou.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_shared: Use the supplied
 ring for smoketest
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQWxsb3cg
dGhlIHN1YnRlc3RzIHRoYXQgd2FudCB0byBsaW1pdCB0aGUgdGVzdCB0byBhIHNpbmdsZSBlbmdp
bmUsIHRvCj4gbGltaXQgdGhlIHRlc3QgdG8gYSBzaW5nbGUgZW5naW5lLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1p
a2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgdGVz
dHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jIHwgOCArKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5
MTUvZ2VtX2N0eF9zaGFyZWQuYyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwo+IGluZGV4
IDZkOGNiY2NlMi4uNGQ5ZmZhZmNlIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9z
aGFyZWQuYwo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwo+IEBAIC03NDAsOCAr
NzQwLDEyIEBAIHN0YXRpYyB2b2lkIHNtb2tldGVzdChpbnQgaTkxNSwgdW5zaWduZWQgcmluZywg
dW5zaWduZWQgdGltZW91dCkKPiAgCXVpbnQzMl90ICpwdHI7Cj4gIAo+ICAJbmVuZ2luZSA9IDA7
Cj4gLQlmb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoZSwgaTkxNSkKPiAtCQllbmdpbmVzW25lbmdp
bmUrK10gPSBlYl9yaW5nKGUpOwo+ICsJaWYgKHJpbmcgPT0gLTEpIHsKPiArCQlmb3JfZWFjaF9w
aHlzaWNhbF9lbmdpbmUoZSwgaTkxNSkKPiArCQkJZW5naW5lc1tuZW5naW5lKytdID0gZWJfcmlu
ZyhlKTsKPiArCX0gZWxzZSB7Cj4gKwkJZW5naW5lc1tuZW5naW5lKytdID0gcmluZzsKPiArCX0K
PiAgCWlndF9yZXF1aXJlKG5lbmdpbmUpOwo+ICAKPiAgCXNjcmF0Y2ggPSBnZW1fY3JlYXRlKGk5
MTUsIDQwOTYpOwo+IC0tIAo+IDIuMjQuMC5yYzIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
