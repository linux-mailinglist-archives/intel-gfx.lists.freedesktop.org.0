Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ADA833EE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 16:26:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12FF46E388;
	Tue,  6 Aug 2019 14:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 222CB6E3B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 14:26:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 07:26:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="176644537"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 06 Aug 2019 07:26:23 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id BBF0C5C1E4B; Tue,  6 Aug 2019 17:25:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190806134725.25321-1-chris@chris-wilson.co.uk>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
Date: Tue, 06 Aug 2019 17:25:49 +0300
Message-ID: <874l2uid5e.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Only enqueue already
 completed requests
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSWYgd2Ug
YXJlIGFza2VkIHRvIHN1Ym1pdCBhIGNvbXBsZXRlZCByZXF1ZXN0LCBqdXN0IG1vdmUgaXQgb250
byB0aGUKPiBhY3RpdmUtbGlzdCB3aXRob3V0IG1vZGlmeWluZyBpdCdzIHBheWxvYWQuCj4KCklm
IHRoZSBzZXFubyBpcyB0aGVyZSB0aGVuIHRoZXJlIGlzIG5vIG5lZWQgdG8gd3JpdGUKaXQgeWVz
LgoKQnV0IEkgYW0gbm90IGF0IGFsbCBjZXJ0YWluIHRoYXQgSSBkZWR1Y2VkIHRoZSAnd2h5Jwpw
YXJ0IGNvcnJlY3RseSBzbyBwbGVhc2Ugc3BlbGwgaXQgb3V0LgoKLU1pa2EKCgo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDE0ICsrKysrKysrKy0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+IGluZGV4IDhhYzdkMTRlYzhjOS4uNjlmYzY2YmQx
MTI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiBAQCAtMzk3LDYgKzM5
Nyw5IEBAIHZvaWQgX19pOTE1X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJl
cXVlc3QpCj4gIAlHRU1fQlVHX09OKCFpcnFzX2Rpc2FibGVkKCkpOwo+ICAJbG9ja2RlcF9hc3Nl
cnRfaGVsZCgmZW5naW5lLT5hY3RpdmUubG9jayk7Cj4gIAo+ICsJaWYgKGk5MTVfcmVxdWVzdF9j
b21wbGV0ZWQocmVxdWVzdCkpCj4gKwkJZ290byB4ZmVyOwo+ICsKPiAgCWlmIChpOTE1X2dlbV9j
b250ZXh0X2lzX2Jhbm5lZChyZXF1ZXN0LT5nZW1fY29udGV4dCkpCj4gIAkJaTkxNV9yZXF1ZXN0
X3NraXAocmVxdWVzdCwgLUVJTyk7Cj4gIAo+IEBAIC00MjAsNyArNDIzLDEzIEBAIHZvaWQgX19p
OTE1X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCj4gIAkgICAg
aTkxNV9zd19mZW5jZV9zaWduYWxlZCgmcmVxdWVzdC0+c2VtYXBob3JlKSkKPiAgCQllbmdpbmUt
PnNhdHVyYXRlZCB8PSByZXF1ZXN0LT5zY2hlZC5zZW1hcGhvcmVzOwo+ICAKPiArCWVuZ2luZS0+
ZW1pdF9maW5pX2JyZWFkY3J1bWIocmVxdWVzdCwKPiArCQkJCSAgICAgcmVxdWVzdC0+cmluZy0+
dmFkZHIgKyByZXF1ZXN0LT5wb3N0Zml4KTsKPiArCj4gKwllbmdpbmUtPnNlcmlhbCsrOwo+ICsK
PiAgCS8qIFdlIG1heSBiZSByZWN1cnNpbmcgZnJvbSB0aGUgc2lnbmFsIGNhbGxiYWNrIG9mIGFu
b3RoZXIgaTkxNSBmZW5jZSAqLwo+ICt4ZmVyOgo+ICAJc3Bpbl9sb2NrX25lc3RlZCgmcmVxdWVz
dC0+bG9jaywgU0lOR0xFX0RFUFRIX05FU1RJTkcpOwo+ICAKPiAgCWxpc3RfbW92ZV90YWlsKCZy
ZXF1ZXN0LT5zY2hlZC5saW5rLCAmZW5naW5lLT5hY3RpdmUucmVxdWVzdHMpOwo+IEBAIC00Mzcs
MTEgKzQ0Niw2IEBAIHZvaWQgX19pOTE1X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJlcXVlc3QpCj4gIAo+ICAJc3Bpbl91bmxvY2soJnJlcXVlc3QtPmxvY2spOwo+ICAKPiAt
CWVuZ2luZS0+ZW1pdF9maW5pX2JyZWFkY3J1bWIocmVxdWVzdCwKPiAtCQkJCSAgICAgcmVxdWVz
dC0+cmluZy0+dmFkZHIgKyByZXF1ZXN0LT5wb3N0Zml4KTsKPiAtCj4gLQllbmdpbmUtPnNlcmlh
bCsrOwo+IC0KPiAgCXRyYWNlX2k5MTVfcmVxdWVzdF9leGVjdXRlKHJlcXVlc3QpOwo+ICB9Cj4g
IAo+IC0tIAo+IDIuMjMuMC5yYzEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
