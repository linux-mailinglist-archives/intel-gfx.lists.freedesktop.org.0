Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5949F63ECC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 03:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9A789852;
	Wed, 10 Jul 2019 01:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2573C89852
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 01:08:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 18:08:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="317205080"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 09 Jul 2019 18:08:52 -0700
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190708210805.24479-1-anusha.srivatsa@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <740ea378-21fd-b783-7117-3f36ca17d4e3@intel.com>
Date: Tue, 9 Jul 2019 18:08:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190708210805.24479-1-anusha.srivatsa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Define GuC firmware version
 for Comet Lake
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

CgpPbiA3LzgvMTkgMjowOCBQTSwgQW51c2hhIFNyaXZhdHNhIHdyb3RlOgo+IExvYWQgR3VDIGZv
ciBDb21ldCBMYWtlLiBEZXBlbmRpbmcgb24gdGhlIFJFVklELAo+IHdlIGxvYWQgZWl0aGVyIHRo
ZSBLQkwgZmlybXdhcmUgb3IgdGhlIENNTCBmaXJtd2FyZS4KPiAKPiB2MjogVXNlIENGTCBmb3Ig
Q01MIHBsYXRmb3JtIGNoZWNrLihNaWNoYWwpCj4gCj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1p
Y2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBT
cml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jIHwgMTkgKysrKysrKysrKysrKysrKysrLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ndWNfZncuYwo+IGluZGV4IGRiMWUwZGFjYTdkYi4uZGYwZGZhNDlmYmM4
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMKPiBAQCAtNTgsNiArNTgsMTMg
QEAgTU9EVUxFX0ZJUk1XQVJFKEJYVF9HVUNfRklSTVdBUkVfUEFUSCk7Cj4gICAjZGVmaW5lIEtC
TF9HVUNfRklSTVdBUkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgoS0JMKQo+ICAgTU9EVUxFX0ZJ
Uk1XQVJFKEtCTF9HVUNfRklSTVdBUkVfUEFUSCk7Cj4gICAKPiArI2RlZmluZSBDTUxfR1VDX0ZX
X1BSRUZJWCBjbWwKPiArI2RlZmluZSBDTUxfR1VDX0ZXX01BSk9SIDMzCj4gKyNkZWZpbmUgQ01M
X0dVQ19GV19NSU5PUiAwCj4gKyNkZWZpbmUgQ01MX0dVQ19GV19QQVRDSCAwCj4gKyNkZWZpbmUg
Q01MX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNfRldfUEFUSChLQkwpCgpzL0tCTC9DTUwK
Cj4gK01PRFVMRV9GSVJNV0FSRShDTUxfR1VDX0ZJUk1XQVJFX1BBVEgpOwo+ICsKPiAgICNkZWZp
bmUgR0xLX0dVQ19GV19QUkVGSVggZ2xrCj4gICAjZGVmaW5lIEdMS19HVUNfRldfTUFKT1IgMzMK
PiAgICNkZWZpbmUgR0xLX0dVQ19GV19NSU5PUiAwCj4gQEAgLTk0LDcgKzEwMSwxNyBAQCBzdGF0
aWMgdm9pZCBndWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19mdyAqZ3VjX2Z3KQo+ICAgCQln
dWNfZnctPnBhdGggPSBHTEtfR1VDX0ZJUk1XQVJFX1BBVEg7Cj4gICAJCWd1Y19mdy0+bWFqb3Jf
dmVyX3dhbnRlZCA9IEdMS19HVUNfRldfTUFKT1I7Cj4gICAJCWd1Y19mdy0+bWlub3JfdmVyX3dh
bnRlZCA9IEdMS19HVUNfRldfTUlOT1I7Cj4gLQl9IGVsc2UgaWYgKElTX0tBQllMQUtFKGk5MTUp
IHx8IElTX0NPRkZFRUxBS0UoaTkxNSkpIHsKPiArCX0gZWxzZSBpZiAoSVNfQ09GRkVFTEFLRShp
OTE1KSkgewo+ICsJCWlmIChJTlRFTF9SRVZJRChpOTE1KSA9PSA1KSB7CgpBcyBNaWNoYWwgYWxy
ZWFkeSBjb21tZW50ZWQgb24gdGhlIHByZXZpb3VzIHJldiwgdGhpcyBzaG91bGQgYmUgPj0gNSBm
b3IgCmZ1dHVyZS1wcm9vZmluZy4KCkRhbmllbGUKCj4gKwkJCWd1Y19mdy0+cGF0aCA9IENNTF9H
VUNfRklSTVdBUkVfUEFUSDsKPiArCQkJZ3VjX2Z3LT5tYWpvcl92ZXJfd2FudGVkID0gQ01MX0dV
Q19GV19NQUpPUjsKPiArCQkJZ3VjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gQ01MX0dVQ19GV19N
SU5PUjsKPiArCQl9IGVsc2Ugewo+ICsJCQlndWNfZnctPnBhdGggPSBLQkxfR1VDX0ZJUk1XQVJF
X1BBVEg7Cj4gKwkJCWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEtCTF9HVUNfRldfTUFKT1I7
Cj4gKwkJCWd1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCA9IEtCTF9HVUNfRldfTUlOT1I7Cj4gKwkJ
fQo+ICsJfSBlbHNlIGlmIChJU19LQUJZTEFLRShpOTE1KSkgewo+ICAgCQlndWNfZnctPnBhdGgg
PSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEg7Cj4gICAJCWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9
IEtCTF9HVUNfRldfTUFKT1I7Cj4gICAJCWd1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCA9IEtCTF9H
VUNfRldfTUlOT1I7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
