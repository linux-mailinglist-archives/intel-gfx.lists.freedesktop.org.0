Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6827DAFDAC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 15:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8A36EAF9;
	Wed, 11 Sep 2019 13:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D17A6EAF9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 13:23:56 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 06:23:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="214681778"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 11 Sep 2019 06:23:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2019 16:23:52 +0300
Date: Wed, 11 Sep 2019 16:23:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20190911132352.GZ7482@intel.com>
References: <20190910145651.18569-1-james.ausmus@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910145651.18569-1-james.ausmus@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix memory type read in bandwidth
 calc
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

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMDc6NTY6NTFBTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+IFRoZSByZXR1cm5lZCBtZW1vcnkgdmFsdWUgZG9lcyBub3QgYWxpZ24gd2l0aCBCU3Bl
YyAtIHVwZGF0ZSB0byBjb3JyZWN0Cj4gdGhpcy4KCkhybS4gVGhlIHZhbHVlcyBjYW1lIGRpcmVj
dGx5IGZyb20gIkljZUxha2UgUENPREUvUHVuaXQgTWFpbGJveGVzIE1BUyIKLmRvYy4gVGhlIHF1
ZXN0aW9uIGlzIHdoaWNoIGRvY3VtZW50YXRpb24gaXMgbW9yZSBjb3JyZWN0PwoKPiAKPiBCU3Bl
YzogNTQwMjMKPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8
IDE0ICsrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwo+
IGluZGV4IDY4ODg1OGViZTRkMC4uYWY5Yjg0OWMyYzNlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYncuYwo+IEBAIC0zOSwxNSArMzksMTkgQEAgc3RhdGljIGludCBp
Y2xfcGNvZGVfcmVhZF9tZW1fZ2xvYmFsX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+ICAJY2FzZSAwOgo+ICAJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0REUjQ7
Cj4gIAkJYnJlYWs7Cj4gLQljYXNlIDE6Cj4gLQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1f
RERSMzsKPiArCWNhc2UgMzoKPiArCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9MUEREUjQ7
Cj4gIAkJYnJlYWs7Cj4gLQljYXNlIDI6Cj4gLQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1f
TFBERFIzOwo+ICsJY2FzZSA0Ogo+ICsJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0REUjM7
Cj4gIAkJYnJlYWs7Cj4gLQljYXNlIDM6Cj4gKwljYXNlIDU6Cj4gIAkJcWktPmRyYW1fdHlwZSA9
IElOVEVMX0RSQU1fTFBERFIzOwo+ICAJCWJyZWFrOwo+ICsJY2FzZSAxOgo+ICsJY2FzZSAyOgo+
ICsJCS8qIFVuaW1wbGVtZW50ZWQgKi8KPiArCQkvKiBmYWxsIHRocm91Z2ggKi8KPiAgCWRlZmF1
bHQ6Cj4gIAkJTUlTU0lOR19DQVNFKHZhbCAmIDB4Zik7Cj4gIAkJYnJlYWs7Cj4gLS0gCj4gMi4y
Mi4xCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
