Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801B9508D7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 12:25:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB32890F4;
	Mon, 24 Jun 2019 10:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F455890F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 10:25:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 03:25:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,411,1557212400"; d="scan'208";a="187881089"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jun 2019 03:25:12 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 29CE65C060E; Mon, 24 Jun 2019 13:25:01 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190624092009.30189-1-chris@chris-wilson.co.uk>
References: <20190624092009.30189-1-chris@chris-wilson.co.uk>
Date: Mon, 24 Jun 2019 13:25:01 +0300
Message-ID: <87h88f5lhe.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/execlists: Always clear
 ring_pause if we do not submit
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSW4gdGhl
IHVubGlrZWx5IGNhc2UgKHRoYW5rIHlvdSBDSSEpLCB3ZSBtYXkgZmluZCBvdXJzZWx2ZXMgd2Fu
dGluZyB0bwo+IGlzc3VlIGEgcHJlZW1wdGlvbiBidXQgaGF2aW5nIG5vIHJ1bm5hYmxlIHJlcXVl
c3RzIGxlZnQuIEluIHRoaXMgY2FzZSwKPiB3ZSBzZXQgdGhlIHNlbWFwaG9yZSBiZWZvcmUgY29t
cHV0aW5nIHRoZSBwcmVlbXB0aW9uIGFuZCBzbyBtdXN0IHVuc2V0Cj4gaXQgYmVmb3JlIGZvcmdl
dHRpbmcgKG9yIGVsc2Ugd2UgbGVhdmUgdGhlIG1hY2hpbmUgYnVzeXdhaXRpbmcgdW50aWwgdGhl
Cj4gbmV4dCByZXF1ZXN0IGNvbWVzIGFsb25nIGFuZCBzbyBsaWtlbHkgaGFuZykuCj4KPiB2Mjog
UmVwbGFjZSByZWFkYmFjayB3aXRoIG9ubHkgYSB3bWIgYWZ0ZXIgYXNzZXJ0aW5nIHRoZSBzZW1h
cGhvcmUKPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNv
bT4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNSAr
KysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IDgwMTdlZmIzNmY3Yi4uYTM5
MjE4NmNhNDBiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMjQw
LDcgKzI0MCw4IEBAIHJpbmdfc2V0X3BhdXNlZChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsIGludCBzdGF0ZSkKPiAgCSAqIHVudGlsIHRoZSBkd29yZCBpcyBmYWxzZS4KPiAg
CSAqLwo+ICAJZW5naW5lLT5zdGF0dXNfcGFnZS5hZGRyW0k5MTVfR0VNX0hXU19QUkVFTVBUXSA9
IHN0YXRlOwo+IC0Jd21iKCk7Cj4gKwlpZiAoc3RhdGUpCj4gKwkJd21iKCk7Cj4gIH0KPiAgCj4g
IHN0YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfcHJpb2xpc3QgKnRvX3ByaW9saXN0KHN0cnVjdCBy
Yl9ub2RlICpyYikKPiBAQCAtMTI0OSw2ICsxMjUwLDggQEAgc3RhdGljIHZvaWQgZXhlY2xpc3Rz
X2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJCSpwb3J0ID0gZXhl
Y2xpc3RzX3NjaGVkdWxlX2luKGxhc3QsIHBvcnQgLSBleGVjbGlzdHMtPnBlbmRpbmcpOwo+ICAJ
CW1lbXNldChwb3J0ICsgMSwgMCwgKGxhc3RfcG9ydCAtIHBvcnQpICogc2l6ZW9mKCpwb3J0KSk7
Cj4gIAkJZXhlY2xpc3RzX3N1Ym1pdF9wb3J0cyhlbmdpbmUpOwo+ICsJfSBlbHNlIHsKPiArCQly
aW5nX3NldF9wYXVzZWQoZW5naW5lLCAwKTsKPiAgCX0KPiAgfQo+ICAKPiAtLSAKPiAyLjIwLjEK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
