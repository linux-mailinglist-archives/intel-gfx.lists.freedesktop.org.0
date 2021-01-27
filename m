Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E525305948
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 12:11:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6575A6E3D0;
	Wed, 27 Jan 2021 11:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6E36E3D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 11:11:12 +0000 (UTC)
IronPort-SDR: BzbYJA07QAHzkDn9Type8pAGGaXurybZ2YZ748WWR2RjFWto1ygpO1NH7gzzp+ClQM4b2BUzgG
 wHRYmG5rU4uQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="176542837"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="176542837"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 03:11:12 -0800
IronPort-SDR: G1ZXMLqXV84umfxG8FfetG8MiO1Eg8Tgnobvvle3MHWu5YkKynFqhxlfmrE/onoX8v/Yi9uqJB
 PYkDve72ZcMw==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388266948"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.213.92.166])
 ([10.213.92.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 03:11:10 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
 <20210111163711.12913-2-ville.syrjala@linux.intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <e5d4e543-e840-c9b8-300a-917dbfa18d71@intel.com>
Date: Wed, 27 Jan 2021 16:41:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210111163711.12913-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/i915: WARN if plane src coords
 are too big
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gMS8xMS8yMDIxIDEwOjA3IFBNLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4KPiBJbmZvcm0gdXMg
aWYgd2UncmUgYnVnZ3kgYW5kIGFyZSBhYm91dCB0byBleGNlZWQgdGhlIHNpemUgb2YgdGhlCj4g
Yml0ZmllbGRzIGluIHRoZSBwbGFuZSBUSUxFT0ZGL09GRlNFVCByZWdpc3RlcnMuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgoKTG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBLYXJ0aGlrIEIgUyA8a2FydGhpay5i
LnNAaW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4
eF9wbGFuZS5jICAgIHwgNyArKysrKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDQgKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4
X3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYwo+IGlu
ZGV4IGI3ODk4NWM4NTVhNS4uYjExNThjZTRkZjkyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMKPiBAQCAtMjc2LDYgKzI3NiwxMyBAQCBpbnQgaTl4eF9j
aGVja19wbGFuZV9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
Cj4gICAJCX0KPiAgIAl9Cj4gICAKPiArCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19C
Uk9BRFdFTEwoZGV2X3ByaXYpKSB7Cj4gKwkJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIHNy
Y194ID4gODE5MSB8fCBzcmNfeSA+IDQwOTUpOwo+ICsJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDQgJiYKPiArCQkgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1hf
VElMRUQpIHsKPiArCQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgc3JjX3ggPiA0MDk1IHx8
IHNyY195ID4gNDA5NSk7Cj4gKwl9Cj4gKwo+ICAgCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsw
XS5vZmZzZXQgPSBvZmZzZXQ7Cj4gICAJcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLnggPSBz
cmNfeDsKPiAgIAlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0ueSA9IHNyY195Owo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMDE4OWQz
NzlhNTVlLi43NzM1YzI4YjI0NjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0zODU0LDYgKzM4NTQsOCBAQCBzdGF0aWMgaW50IHNr
bF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSkKPiAgIAkJfQo+ICAgCX0KPiAgIAo+ICsJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIHgg
PiA4MTkxIHx8IHkgPiA4MTkxKTsKPiArCj4gICAJcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBd
Lm9mZnNldCA9IG9mZnNldDsKPiAgIAlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0ueCA9IHg7
Cj4gICAJcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLnkgPSB5Owo+IEBAIC0zOTI2LDYgKzM5
MjgsOCBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19udjEyX2F1eF9zdXJmYWNlKHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gICAJCX0KPiAgIAl9Cj4gICAKPiArCWRybV9X
QVJOX09OKCZpOTE1LT5kcm0sIHggPiA4MTkxIHx8IHkgPiA4MTkxKTsKPiArCj4gICAJcGxhbmVf
c3RhdGUtPmNvbG9yX3BsYW5lW3V2X3BsYW5lXS5vZmZzZXQgPSBvZmZzZXQ7Cj4gICAJcGxhbmVf
c3RhdGUtPmNvbG9yX3BsYW5lW3V2X3BsYW5lXS54ID0geDsKPiAgIAlwbGFuZV9zdGF0ZS0+Y29s
b3JfcGxhbmVbdXZfcGxhbmVdLnkgPSB5OwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
