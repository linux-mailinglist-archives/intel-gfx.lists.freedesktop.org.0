Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C2A77068
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 19:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806206E877;
	Fri, 26 Jul 2019 17:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95D36E877
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 17:41:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:41:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="161373060"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2019 10:41:11 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190726155805.2736-1-michal.wajdeczko@intel.com>
 <20190726155805.2736-3-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a124106e-f21e-fc1e-6fb3-3ad5f88371eb@intel.com>
Date: Fri, 26 Jul 2019 10:40:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726155805.2736-3-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Remove redundant RSA
 offset definition
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzI2LzE5IDg6NTggQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gQWNjb3JkaW5n
IHRvIEZpcm13YXJlIGxheW91dCBkZWZpbml0aW9uLCBSU0Egc2lnbmF0dXJlIGlzIGxvY2F0ZWQK
PiBhZnRlciBDU1MgaGVhZGVyIGFuZCB1Q29kZSBzbyBhY3R1YWwgUlNBIG9mZnNldCBpbiB0aGUg
YmxvYiBjYW4gYmUKPiBlYXNpbHkgY2FsY3VsYXRlZCB3aGVuIG5lZWRlZCAoYW5kIHdlIG5lZWQg
aXQgb25seSBvbmNlKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNo
YWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKRGFuaWVsZQoKPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCA4ICsrKy0t
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oIHwgMSAtCj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiBpbmRleCAwNTA3OWM1OWFl
MDQuLmIwZjI4NTJkZWM0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZncuYwo+IEBAIC0yMzgsNyArMjM4LDYgQEAgdm9pZCBpbnRlbF91Y19md19mZXRjaChzdHJ1
Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAg
IAkJZXJyID0gLUVOT0VYRUM7Cj4gICAJCWdvdG8gZmFpbDsKPiAgIAl9Cj4gLQl1Y19mdy0+cnNh
X29mZnNldCA9IHNpemVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRlcikgKyB1Y19mdy0+dWNvZGVfc2l6
ZTsKPiAgIAl1Y19mdy0+cnNhX3NpemUgPSBjc3MtPmtleV9zaXplX2R3ICogc2l6ZW9mKHUzMik7
Cj4gICAKPiAgIAkvKiBBdCBsZWFzdCwgaXQgc2hvdWxkIGhhdmUgaGVhZGVyLCB1Q29kZSBhbmQg
UlNBLiBTaXplIG9mIGFsbCB0aHJlZS4gKi8KPiBAQCAtNTEyLDExICs1MTEsMTEgQEAgc2l6ZV90
IGludGVsX3VjX2Z3X2NvcHlfcnNhKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHZvaWQgKmRz
dCwgdTMyIG1heF9sZW4pCj4gICB7Cj4gICAJc3RydWN0IHNnX3RhYmxlICpwYWdlcyA9IHVjX2Z3
LT5vYmotPm1tLnBhZ2VzOwo+ICAgCXUzMiBzaXplID0gbWluX3QodTMyLCB1Y19mdy0+cnNhX3Np
emUsIG1heF9sZW4pOwo+ICsJdTMyIG9mZnNldCA9IHNpemVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRl
cikgKyB1Y19mdy0+dWNvZGVfc2l6ZTsKPiAgIAo+ICAgCUdFTV9CVUdfT04oIWludGVsX3VjX2Z3
X2lzX2F2YWlsYWJsZSh1Y19mdykpOwo+ICAgCj4gLQlyZXR1cm4gc2dfcGNvcHlfdG9fYnVmZmVy
KHBhZ2VzLT5zZ2wsIHBhZ2VzLT5uZW50cywKPiAtCQkJCSAgZHN0LCBzaXplLCB1Y19mdy0+cnNh
X29mZnNldCk7Cj4gKwlyZXR1cm4gc2dfcGNvcHlfdG9fYnVmZmVyKHBhZ2VzLT5zZ2wsIHBhZ2Vz
LT5uZW50cywgZHN0LCBzaXplLCBvZmZzZXQpOwo+ICAgfQo+ICAgCj4gICAvKioKPiBAQCAtNTM2
LDYgKzUzNSw1IEBAIHZvaWQgaW50ZWxfdWNfZndfZHVtcChjb25zdCBzdHJ1Y3QgaW50ZWxfdWNf
ZncgKnVjX2Z3LCBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnApCj4gICAJCSAgIHVjX2Z3LT5tYWpvcl92
ZXJfd2FudGVkLCB1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCwKPiAgIAkJICAgdWNfZnctPm1ham9y
X3Zlcl9mb3VuZCwgdWNfZnctPm1pbm9yX3Zlcl9mb3VuZCk7Cj4gICAJZHJtX3ByaW50ZihwLCAi
XHR1Q29kZTogJXUgYnl0ZXNcbiIsIHVjX2Z3LT51Y29kZV9zaXplKTsKPiAtCWRybV9wcmludGYo
cCwgIlx0UlNBOiBvZmZzZXQgJXUsIHNpemUgJXVcbiIsCj4gLQkJICAgdWNfZnctPnJzYV9vZmZz
ZXQsIHVjX2Z3LT5yc2Ffc2l6ZSk7Cj4gKwlkcm1fcHJpbnRmKHAsICJcdFJTQTogJXUgYnl0ZXNc
biIsIHVjX2Z3LT5yc2Ffc2l6ZSk7Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5oCj4gaW5kZXggNmEwNGJjNmQ0MTlmLi5jMmFiMjgwMzcxNWQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKPiBAQCAtNzUsNyArNzUsNiBA
QCBzdHJ1Y3QgaW50ZWxfdWNfZncgewo+ICAgCXUxNiBtaW5vcl92ZXJfZm91bmQ7Cj4gICAKPiAg
IAl1MzIgcnNhX3NpemU7Cj4gLQl1MzIgcnNhX29mZnNldDsKPiAgIAl1MzIgdWNvZGVfc2l6ZTsK
PiAgIH07Cj4gICAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
