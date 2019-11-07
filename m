Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3900F2E18
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 13:22:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA596E43B;
	Thu,  7 Nov 2019 12:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 635856E43A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 12:22:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 04:22:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="404079843"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 07 Nov 2019 04:22:31 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2C70E5C0334; Thu,  7 Nov 2019 14:22:25 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191107081252.10542-17-chris@chris-wilson.co.uk>
References: <20191107081252.10542-1-chris@chris-wilson.co.uk>
 <20191107081252.10542-17-chris@chris-wilson.co.uk>
Date: Thu, 07 Nov 2019 14:22:25 +0200
Message-ID: <871rujoozi.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 17/28] drm/i915/gt: Defer engine
 registration until fully initialised
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gT25seSBh
ZGQgdGhlIGVuZ2luZSB0byB0aGUgYXZhaWxhYmxlIHNldCBvZiB1YWJpIGVuZ2luZXMgb25jZSBp
dCBoYXMKPiBiZWVuIGZ1bGx5IGluaXRpYWxpc2VkIGFuZCB3ZSBrbm93IHdlIHdhbnQgaXQgaW4g
dGhlIHB1YmxpYyBzZXQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiBDYzogTWljaGHFgiBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwu
Y29tPgo+IENjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KPiBBY2tlZC1ieTog
QW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gaW5kZXggYjM4ZWE0NGFiNzYxLi41ZTQwMDQ0NDc4ZmYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+IEBAIC0z
NDQsNyArMzQ0LDYgQEAgc3RhdGljIGludCBpbnRlbF9lbmdpbmVfc2V0dXAoc3RydWN0IGludGVs
X2d0ICpndCwgZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQpCj4gIAlndC0+ZW5naW5lX2NsYXNzW2lu
Zm8tPmNsYXNzXVtpbmZvLT5pbnN0YW5jZV0gPSBlbmdpbmU7Cj4gIAlndC0+ZW5naW5lW2lkXSA9
IGVuZ2luZTsKPiAgCj4gLQlpbnRlbF9lbmdpbmVfYWRkX3VzZXIoZW5naW5lKTsKPiAgCWd0LT5p
OTE1LT5lbmdpbmVbaWRdID0gZW5naW5lOwo+ICAKPiAgCXJldHVybiAwOwo+IEBAIC00ODEsNiAr
NDgwLDggQEAgaW50IGludGVsX2VuZ2luZXNfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAJ
CWVyciA9IGluaXQoZW5naW5lKTsKPiAgCQlpZiAoZXJyKQo+ICAJCQlnb3RvIGNsZWFudXA7Cj4g
Kwo+ICsJCWludGVsX2VuZ2luZV9hZGRfdXNlcihlbmdpbmUpOwo+ICAJfQo+ICAKPiAgCXJldHVy
biAwOwo+IC0tIAo+IDIuMjQuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
