Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D68102907
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56866E366;
	Tue, 19 Nov 2019 16:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7A06E366
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:12:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 08:12:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,218,1571727600"; d="scan'208";a="357150397"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 19 Nov 2019 08:12:34 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id BF46A5C1DFA; Tue, 19 Nov 2019 18:12:18 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191119100929.2628356-9-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-9-chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 18:12:18 +0200
Message-ID: <87y2wbx2u5.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/17] drm/i915: Wait until the
 intel_wakeref idle callback is complete
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2hlbiB3
YWl0aW5nIGZvciBpZGxlLCBzZXJpYWxpc2Ugd2l0aCBhbnkgb25nb2luZyBjYWxsYmFjayBzbyB0
aGF0IGl0Cj4gd2lsbCBoYXZlIGNvbXBsZXRlZCBiZWZvcmUgY29tcGxldGluZyB0aGUgd2FpdC4K
Ck1pZ2h0IGJlIGNvbWUgYXBwYXJlbnQgYW5kIGV2aWRlbnQgd2hlbiByZWFkaW5nIHRoZSBwYXRj
aAp0aGF0IGludHJvZHVjZSB0aGUgaW50ZWxfd2FrZXJlZl91bmxvY2tfd2FpdCgpLApidXQgcmVh
ZGVyIGlzIHllYXJuaW5nIGZvciBhIHdoeSBwYXJ0LgoKVGhlICd3YWl0X2Zvcl9pZGxlJyBpcyBr
aW5kIG9mIHJldmFsaW5nIG9mCndoeSB0aGUgbmVlZCBmb3Igc3luYyB0aG8uCgotTWlrYQoKPgo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMgfCAxMSArKysrKysr
KystLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwo+IGluZGV4IDliMjkxNzZjYzFjYS4u
OTFmZWI1M2IyOTQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dh
a2VyZWYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwo+IEBA
IC0xMDksOCArMTA5LDE1IEBAIHZvaWQgX19pbnRlbF93YWtlcmVmX2luaXQoc3RydWN0IGludGVs
X3dha2VyZWYgKndmLAo+ICAKPiAgaW50IGludGVsX3dha2VyZWZfd2FpdF9mb3JfaWRsZShzdHJ1
Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCj4gIHsKPiAtCXJldHVybiB3YWl0X3Zhcl9ldmVudF9raWxs
YWJsZSgmd2YtPndha2VyZWYsCj4gLQkJCQkgICAgICAgIWludGVsX3dha2VyZWZfaXNfYWN0aXZl
KHdmKSk7Cj4gKwlpbnQgZXJyOwo+ICsKPiArCWVyciA9IHdhaXRfdmFyX2V2ZW50X2tpbGxhYmxl
KCZ3Zi0+d2FrZXJlZiwKPiArCQkJCSAgICAgICFpbnRlbF93YWtlcmVmX2lzX2FjdGl2ZSh3Zikp
Owo+ICsJaWYgKGVycikKPiArCQlyZXR1cm4gZXJyOwo+ICsKPiArCWludGVsX3dha2VyZWZfdW5s
b2NrX3dhaXQod2YpOwo+ICsJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIHdha2Vy
ZWZfYXV0b190aW1lb3V0KHN0cnVjdCB0aW1lcl9saXN0ICp0KQo+IC0tIAo+IDIuMjQuMApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
