Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBE7E2043
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 18:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35AE26EB3C;
	Wed, 23 Oct 2019 16:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 373456EB3C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 16:13:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 09:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="204003194"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Oct 2019 09:13:09 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 342865C1E22; Wed, 23 Oct 2019 19:12:21 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Tapani =?utf-8?Q?P=C3=A4lli?= <tapani.palli@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191023120618.5344-1-tapani.palli@intel.com>
References: <20191023120618.5344-1-tapani.palli@intel.com>
Date: Wed, 23 Oct 2019 19:12:21 +0300
Message-ID: <87d0enl9ui.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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

VGFwYW5pIFDDpGxsaSA8dGFwYW5pLnBhbGxpQGludGVsLmNvbT4gd3JpdGVzOgoKPiBBcyB3aXRo
IGNvbW1pdCAzZmUwMTA3ZTQ1YWIsIHRoaXMgY2hhbmdlIGZpeGVzIG11bHRpcGxlIHRlc3RzIHRo
YXQgYXJlCj4gdXNpbmcgdGhlIGludm9jYXRpb24gY291bnRzLiBEb2N1bWVudGF0aW9uIGRvZXNu
J3QgbGlzdCB0aGUgd29ya2Fyb3VuZAo+IGZvciBUR0wgYnV0IGFwcGx5aW5nIGl0IGZpeGVzIHRo
ZSB0ZXN0cy4KPgo+IFNpZ25lZC1vZmYtYnk6IFRhcGFuaSBQw6RsbGkgPHRhcGFuaS5wYWxsaUBp
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5z
ZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCj4gaW5kZXggYWY4YTgxODMxNTRhLi44NmRlZDIwM2IyZGQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAtMTIxNSw2ICsxMjE1LDI2
IEBAIHN0YXRpYyB2b2lkIGljbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQo+ICAKPiAgc3RhdGljIHZvaWQgdGdsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gIHsKPiArCXN0cnVjdCBpOTE1X3dhX2xpc3QgKncg
PSAmZW5naW5lLT53aGl0ZWxpc3Q7Cj4gKwo+ICsJc3dpdGNoIChlbmdpbmUtPmNsYXNzKSB7Cj4g
KwljYXNlIFJFTkRFUl9DTEFTUzoKPiArCQkvKgo+ICsJCSAqIFdhQWxsb3dQTURlcHRoQW5kSW52
b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDp0Z2wKClRyaWVkIHRvIGZpbmQgaW5mbyBhYm91dCB0
aGlzIGJ1dCBmYWlsZWQuCgo+ICsJCSAqCj4gKwkJICogVGhpcyBjb3ZlcnMgNCByZWdpc3RlcnMg
d2hpY2ggYXJlIG5leHQgdG8gb25lIGFub3RoZXIgOgo+ICsJCSAqICAgLSBQU19JTlZPQ0FUSU9O
X0NPVU5UCj4gKwkJICogICAtIFBTX0lOVk9DQVRJT05fQ09VTlRfVURXCj4gKwkJICogICAtIFBT
X0RFUFRIX0NPVU5UCj4gKwkJICogICAtIFBTX0RFUFRIX0NPVU5UX1VEVwo+ICsJCSAqLwo+ICsJ
CXdoaXRlbGlzdF9yZWdfZXh0KHcsIFBTX0lOVk9DQVRJT05fQ09VTlQsCj4gKwkJCQkgIFJJTkdf
Rk9SQ0VfVE9fTk9OUFJJVl9BQ0NFU1NfUkQgfAo+ICsJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBS
SVZfUkFOR0VfNCk7CgpUaGUgcmVnaXN0ZXIgc3BlYyBpcyBpZGVudGljYWwgd2l0aCBnZW4xMSBz
byBvayB0byB3aGl0ZWxpc3QuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9w
cGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQlicmVh
azsKPiArCX0KPiAgfQo+ICAKPiAgdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF93aGl0ZWxpc3Qoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+IC0tIAo+IDIuMjEuMAo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
