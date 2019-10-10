Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2596D29CB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 14:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0B76E249;
	Thu, 10 Oct 2019 12:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A99F46E249
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 12:44:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 05:44:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="200458781"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Oct 2019 05:44:50 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E5E0C5C1E0F; Thu, 10 Oct 2019 15:44:11 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191010083242.1387-1-chris@chris-wilson.co.uk>
References: <20191010083242.1387-1-chris@chris-wilson.co.uk>
Date: Thu, 10 Oct 2019 15:44:11 +0300
Message-ID: <87wodcojms.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Mark up expected state
 during reset
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gTW92ZSB0
aGUgQlVHX09OIGFyb3VuZCBzbGlnaHRseSBhbmQgYWRkIHNvbWUgZXhwbGFuYXRpb25zIGZvciBl
YWNoIHRvCj4gdHJ5IGFuZCBjYXB0dXJlIHRoZSBleHBlY3RlZCBzdGF0ZSBtb3JlIGNhcmVmdWxs
eS4gV2Ugd2FudCB0byBjb21wYXJlCj4gdGhlIGV4cGVjdGVkIGFjdGl2ZSBzdGF0ZSBvZiBvdXIg
Ym9va2tlZXBpbmcgYXMgY29tcGFyZWQgdG8gdGhlIHRyYWNrZWQKPiBIVyBzdGF0ZS4KPgo+IFJl
ZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTkzNwo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA3
ICsrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA3ZWE1ODMzNWYwNGMu
LjdjMGQzYzM0MzUyMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAg
LTI3NzcsOCArMjc3NywxMCBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKPiAgCWlmICghcnEpCj4gIAkJ
Z290byB1bndpbmQ7Cj4gIAo+ICsJLyogV2Ugc3RpbGwgaGF2ZSByZXF1ZXN0cyBpbi1mbGlnaHQ7
IHRoZSBlbmdpbmUgc2hvdWxkIGJlIGFjdGl2ZSAqLwo+ICsJR0VNX0JVR19PTighaW50ZWxfZW5n
aW5lX3BtX2lzX2F3YWtlKGVuZ2luZSkpOwo+ICsKPiAgCWNlID0gcnEtPmh3X2NvbnRleHQ7Cj4g
LQlHRU1fQlVHX09OKGk5MTVfYWN0aXZlX2lzX2lkbGUoJmNlLT5hY3RpdmUpKTsKPiAgCUdFTV9C
VUdfT04oIWk5MTVfdm1hX2lzX3Bpbm5lZChjZS0+c3RhdGUpKTsKPiAgCj4gIAkvKiBQcm9jbGFp
bSB3ZSBoYXZlIGV4Y2x1c2l2ZSBhY2Nlc3MgdG8gdGhlIGNvbnRleHQgaW1hZ2UhICovCj4gQEAg
LTI3ODYsMTAgKzI3ODgsMTMgQEAgc3RhdGljIHZvaWQgX19leGVjbGlzdHNfcmVzZXQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBib29sIHN0YWxsZWQpCj4gIAo+ICAJcnEgPSBhY3Rp
dmVfcmVxdWVzdChycSk7Cj4gIAlpZiAoIXJxKSB7Cj4gKwkJLyogSWRsZSBjb250ZXh0OyB0aWR5
IHVwIHRoZSByaW5nIHNvIHdlIGNhbiByZXN0YXJ0IGFmcmVzaCAqLwo+ICAJCWNlLT5yaW5nLT5o
ZWFkID0gY2UtPnJpbmctPnRhaWw7Cj4gIAkJZ290byBvdXRfcmVwbGF5Owo+ICAJfQo+ICAKPiAr
CS8qIENvbnRleHQgaGFzIHJlcXVlc3RzIHN0aWxsIGluLWZsaWdodDsgaXQgc2hvdWxkIG5vdCBi
ZSBpZGxlISAqLwo+ICsJR0VNX0JVR19PTihpOTE1X2FjdGl2ZV9pc19pZGxlKCZjZS0+YWN0aXZl
KSk7Cj4gIAljZS0+cmluZy0+aGVhZCA9IGludGVsX3Jpbmdfd3JhcChjZS0+cmluZywgcnEtPmhl
YWQpOwo+ICAKPiAgCS8qCj4gLS0gCj4gMi4yMy4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
