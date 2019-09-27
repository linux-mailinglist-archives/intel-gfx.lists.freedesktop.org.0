Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EEFC0D9D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 23:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00A189838;
	Fri, 27 Sep 2019 21:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 823276E297
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 21:49:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 14:49:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,557,1559545200"; d="scan'208";a="219939282"
Received: from weihuaxu-mobl3.ccr.corp.intel.com (HELO intel.intel)
 ([10.252.16.201])
 by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2019 14:49:39 -0700
Date: Sat, 28 Sep 2019 00:49:38 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190927214938.GD2902@intel.intel>
References: <20190927211749.2181-1-chris@chris-wilson.co.uk>
 <20190927211749.2181-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927211749.2181-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Distinguish mock
 device from no wakeref
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgMTA6MTc6NDhQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IE9uIHN5c3RlbXMgdGhhdCBoYXZlIG5vIHJ1bnRpbWUtcG0sIHdlIG1hcmsgdGhlIHdh
a2VyZWYgYXMgYmVpbmcgLTEuIFdlCj4gdGhlcmVmb3JlIGNhbm5vdCB1c2UgdGhhdCB2YWx1ZSBm
b3IgdGhlIG1vY2stZ3QgaW5kaWNhdG9yLCBzbyBvcHQgZm9yCj4gLUVOT0RFViBpbnN0ZWFkLiBU
aGUgd2FrZXJlZiBzaG91bGQgbmV2ZXIgYmUgYW4gZXJyb3IgdmFsdWUgLS0gb25lCj4gaG9wZXMh
CgotMSAoRVBFUk0pIGlzIGFuIGVycm9yIHZhbHVlIGFzIHdlbGwsIC1FTk9ERVYgbG9va3MgY2xl
YW5lciBhbmQKbW9yZSBhcHByb3ByaWF0ZSwgaW4gYW55IGNhc2U6CgpSZXZpZXdlZC1ieTogQW5k
aSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpUaGFua3MsCkFuZGkKCgo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBBbmRp
IFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfcG0uaCAgICAgICAgICAgIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgfCAzICstLQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3BtLmgKPiBpbmRleCBhYjc5NGU4NTMzNTYuLjk5Nzc3MGQzYTk2OCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaAo+IEBAIC01Nyw3ICs1Nyw3IEBA
IGludCBpbnRlbF9ndF9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKPiAgCj4g
IHN0YXRpYyBpbmxpbmUgYm9vbCBpc19tb2NrX2d0KGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
Cj4gIHsKPiAtCXJldHVybiBJOTE1X1NFTEZURVNUX09OTFkoZ3QtPmF3YWtlID09IC0xKTsKPiAr
CXJldHVybiBJOTE1X1NFTEZURVNUX09OTFkoZ3QtPmF3YWtlID09IC1FTk9ERVYpOwo+ICB9Cj4g
IAo+ICAjZW5kaWYgLyogSU5URUxfR1RfUE1fSCAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKPiBpbmRleCA5MWYxNWZhNzI4Y2QuLjI0
NDgwNjc4MjJhZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
bW9ja19nZW1fZGV2aWNlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
bW9ja19nZW1fZGV2aWNlLmMKPiBAQCAtMTgyLDYgKzE4Miw3IEBAIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICptb2NrX2dlbV9kZXZpY2Uodm9pZCkKPiAgCWk5MTVfZ2VtX2luaXRfX21tKGk5MTUp
Owo+ICAJaW50ZWxfZ3RfaW5pdF9lYXJseSgmaTkxNS0+Z3QsIGk5MTUpOwo+ICAJYXRvbWljX2lu
YygmaTkxNS0+Z3Qud2FrZXJlZi5jb3VudCk7IC8qIGRpc2FibGU7IG5vIGh3IHN1cHBvcnQgKi8K
PiArCWk5MTUtPmd0LmF3YWtlID0gLUVOT0RFVjsKPiAgCj4gIAlpOTE1LT53cSA9IGFsbG9jX29y
ZGVyZWRfd29ya3F1ZXVlKCJtb2NrIiwgMCk7Cj4gIAlpZiAoIWk5MTUtPndxKQo+IEBAIC0xOTIs
OCArMTkzLDYgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKm1vY2tfZ2VtX2RldmljZSh2b2lk
KQo+ICAJSU5JVF9ERUxBWUVEX1dPUksoJmk5MTUtPmdlbS5yZXRpcmVfd29yaywgbW9ja19yZXRp
cmVfd29ya19oYW5kbGVyKTsKPiAgCUlOSVRfV09SSygmaTkxNS0+Z2VtLmlkbGVfd29yaywgbW9j
a19pZGxlX3dvcmtfaGFuZGxlcik7Cj4gIAo+IC0JaTkxNS0+Z3QuYXdha2UgPSAtMTsKPiAtCj4g
IAlpbnRlbF90aW1lbGluZXNfaW5pdChpOTE1KTsKPiAgCj4gIAltdXRleF9sb2NrKCZpOTE1LT5k
cm0uc3RydWN0X211dGV4KTsKPiAtLSAKPiAyLjIzLjAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
