Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 505BFE2A9F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 08:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 525366E0EE;
	Thu, 24 Oct 2019 06:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D936F6E0EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 06:51:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 23:51:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,223,1569308400"; d="scan'208";a="228401021"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 23 Oct 2019 23:51:41 -0700
Date: Thu, 24 Oct 2019 12:21:52 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191024065152.GB24164@intel.com>
References: <20191023214932.94679-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023214932.94679-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/psr: Print in debugfs if
 PSR is not enabled because of sink
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
Cc: Ap Kamal <kamal.ap@intel.com>, intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMC0yMyBhdCAxNDo0OTozMiAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3
cm90ZToKPiBSaWdodCBub3cgaWYgc2luayByZXBvcnRlZCBhbnkgUFNSIGVycm9yIG9yIGlmIGl0
IGZhaWxzIHRvCj4gYWNrbm93bGVkZ2UgdGhlIFBTUiB3YWtldXAgaXQgc2V0cyBhIGZsYWcgYW5k
IGRvIG5vdCBhdHRlbXB0IHRvCj4gZW5hYmxlIFBTUiBhbnltb3JlLiBUaGF0IGlzIHRoZSBzYWZl
c3QgYXBwcm9hY2ggdG8gYXZvaWQgcmVwZXRpdGl2ZQo+IGdsaXRjaGVzIGFuZCBhbGxvd2VkIHVz
IHRvIGhhdmUgUFNSIGVuYWJsZWQgYnkgZGVmYXVsdC4KPiAKPiBCdXQgZnJvbSB0aW1lIHRvIHRp
bWUgZXZlbiBnb29kIFBTUiBwYW5lbHMgaGF2ZSBhIFBTUiBlcnJvciwgY2F1c2luZwo+IHRlc3Rz
IHRvIGZhaWwuIEFuZCBmb3Igbm93IHdlIGFyZSBub3QgeWV0IHRvIHRoZSBwb2ludCB3ZXJlIHdl
IGNvdWxkCj4gdHJ5IHRvIHJlY292ZXIgZnJvbSBQU1IgZXJyb3JzLCBzbyBsZXRzIGFkZCB0aGlz
IGluZm9ybWF0aW9uIHRvIHRoZQo+IGRlYnVnZnMgc28gSUdUIGNhbiBjaGVjayBpZiBQU1IgaXMg
ZGlzYWJsZWQgYmVjYXVzZSBvZiBzaW5rIGVycm9ycyBvcgo+IG5vdCBhbmQgZWxpbWluYXRlIHRo
aXMgbm9pc2UgZnJvbSBDSSBydW5zLgo+IAo+IENjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGlu
YWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pgo+IENjOiBBcCBLYW1hbCA8a2FtYWwuYXBAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDYgKysrKystCj4gIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwo+IGluZGV4IGJjMGJkZjA0MTllMC4uMDdlMzY4ZWM0ZmI4IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBAQCAtMjE5NCw4ICsyMTk0LDEyIEBAIHN0
YXRpYyBpbnQgaTkxNV9lZHBfcHNyX3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRh
dGEpCj4gIAkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCXNlcV9wcmludGYobSwgIlBTUiBtb2Rl
OiAlc1xuIiwgc3RhdHVzKTsKPiAgCj4gLQlpZiAoIXBzci0+ZW5hYmxlZCkKPiArCWlmICghcHNy
LT5lbmFibGVkKSB7Cj4gKwkJc2VxX3ByaW50ZihtLCAiUFNSIHNpbmsgbm90IHJlbGlhYmxlOiAl
c1xuIiwKPiArCQkJICAgeWVzbm8ocHNyLT5zaW5rX25vdF9yZWxpYWJsZSkpOwo+ICsKPiAgCQln
b3RvIHVubG9jazsKPiArCX0KTG9va3MgR29vZCB0byBtZS4gQXMgQ0kgd2lsbCBiZSB0b2xkIHdo
ZXJlKFNvdXJjZS9EZXN0aW5hdGlvbikgdGhlIGVycm9yIG9jY3VyZWQuCgpSZXZpZXdlZC1ieTog
UmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+ICAKPiAgCWlmIChwc3ItPnBz
cjJfZW5hYmxlZCkgewo+ICAJCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSMl9DVEwoZGV2X3ByaXYt
PnBzci50cmFuc2NvZGVyKSk7Cj4gLS0gCj4gMi4yMy4wCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
