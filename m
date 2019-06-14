Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B49454FF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 08:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5936E8931F;
	Fri, 14 Jun 2019 06:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1918931F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 06:48:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 23:48:58 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2019 23:48:57 -0700
To: "Robert M. Fosha" <robert.m.fosha@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190614002838.3072-1-robert.m.fosha@intel.com>
 <20190614002838.3072-2-robert.m.fosha@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <62ddd492-4a40-0854-73a2-bc5693797011@linux.intel.com>
Date: Fri, 14 Jun 2019 07:48:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614002838.3072-2-robert.m.fosha@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Support flags in whitlist WAs
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

Ck9uIDE0LzA2LzIwMTkgMDE6MjgsIFJvYmVydCBNLiBGb3NoYSB3cm90ZToKPiBGcm9tOiBKb2hu
IEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+IAo+IE5ld2VyIGhhcmR3YXJl
IGFkZHMgZmxhZ3MgdG8gdGhlIHdoaXRlbGlzdCB3b3JrLWFyb3VuZCByZWdpc3Rlci4gVGhlc2UK
PiBhbGxvdyBwZXIgYWNjZXNzIGRpcmVjdGlvbiBwcml2aWxlZ2VzIGFuZCByYW5nZXMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgTS4gRm9zaGEgPHJvYmVydC5tLmZvc2hhQGludGVsLmNv
bT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgOSArKysrKysrKy0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCA3ICsrKysrKysKPiAg
IDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IDE2NWIw
YTQ1ZTAwOS4uYWU4MjM0MGZmZjQ1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTEwMTIsNyArMTAxMiw3IEBAIGJvb2wgaW50ZWxfZ3Rf
dmVyaWZ5X3dvcmthcm91bmRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgfQo+
ICAgCj4gICBzdGF0aWMgdm9pZAo+IC13aGl0ZWxpc3RfcmVnKHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCwgaTkxNV9yZWdfdCByZWcpCj4gK3doaXRlbGlzdF9yZWdfZXh0KHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiBmbGFncykKPiAgIHsKPiAgIAlzdHJ1Y3Qg
aTkxNV93YSB3YSA9IHsKPiAgIAkJLnJlZyA9IHJlZwo+IEBAIC0xMDIxLDkgKzEwMjEsMTYgQEAg
d2hpdGVsaXN0X3JlZyhzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnKQo+
ICAgCWlmIChHRU1fREVCVUdfV0FSTl9PTih3YWwtPmNvdW50ID49IFJJTkdfTUFYX05PTlBSSVZf
U0xPVFMpKQo+ICAgCQlyZXR1cm47Cj4gICAKPiArCXdhLnJlZy5yZWcgfD0gZmxhZ3M7Cj4gICAJ
X3dhX2FkZCh3YWwsICZ3YSk7Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQKPiArd2hpdGVsaXN0
X3JlZyhzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnKQo+ICt7Cj4gKwl3
aGl0ZWxpc3RfcmVnX2V4dCh3YWwsIHJlZywgUklOR19GT1JDRV9UT19OT05QUklWX1JXKTsKPiAr
fQo+ICsKPiAgIHN0YXRpYyB2b2lkIGdlbjlfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpOTE1X3dh
X2xpc3QgKncpCj4gICB7Cj4gICAJLyogV2FWRkVTdGF0ZUFmdGVyUGlwZUNvbnRyb2x3aXRoTWVk
aWFTdGF0ZUNsZWFyOnNrbCxieHQsZ2xrLGNmbCAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+
IGluZGV4IGVkZjlmOTM5MzRhMS4uMTBmZWE1YWIzZmMzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCj4gQEAgLTI1MTMsNiArMjUxMywxMyBAQCBlbnVtIGk5MTVfcG93ZXJfd2VsbF9pZCB7
Cj4gICAjZGVmaW5lICAgUklOR19XQUlUX1NFTUFQSE9SRQkoMSA8PCAxMCkgLyogZ2VuNisgKi8K
PiAgIAo+ICAgI2RlZmluZSBSSU5HX0ZPUkNFX1RPX05PTlBSSVYoYmFzZSwgaSkgX01NSU8oKChi
YXNlKSArIDB4NEQwKSArIChpKSAqIDQpCj4gKyNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBS
SVZfUlcJCSgwIDw8IDI4KSAgICAvKiBDRkwrICYgR2VuMTErICovCgpTaG91bGRuJ3QgdGhpcyBj
b21tZW50IGJlIGFnYWluc3QgdGhlIFJEIGFuZCBXUiBmbGFncywgd2hpbGUgdGhlIGFib3ZlIApp
cyB0aGUgbGVnYWN5IG9uZT8KCj4gKyNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQJ
CSgxIDw8IDI4KQo+ICsjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX1dSCQkoMiA8PCAy
OCkKPiArI2RlZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SQU5HRV8xCQkoMCA8PCAwKSAg
ICAgLyogQ0ZMKyAmIEdlbjExKyAqLwo+ICsjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklW
X1JBTkdFXzQJCSgxIDw8IDApCj4gKyNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFO
R0VfMTYJKDIgPDwgMCkKPiArI2RlZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SQU5HRV82
NAkoMyA8PCAwKQo+ICAgI2RlZmluZSAgIFJJTkdfTUFYX05PTlBSSVZfU0xPVFMgIDEyCj4gICAK
PiAgICNkZWZpbmUgR0VON19UTEJfUkRfQUREUglfTU1JTygweDQ3MDApCj4gCgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
