Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9E1FDDF0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:34:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A45A6E4A2;
	Fri, 15 Nov 2019 12:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7C76E59B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:34:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 04:34:32 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199188359"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Nov 2019 04:34:30 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191115122755.830355-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <06c24a9a-bda1-7d0e-c718-7dc9be7f539c@linux.intel.com>
Date: Fri, 15 Nov 2019 12:34:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191115122755.830355-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Simplify
 NEEDS_WaRsDisableCoarsePowerGating
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

Ck9uIDE1LzExLzIwMTkgMTI6MjcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJdCBhcHBsaWVzIHRv
IGFsbCBnZW45IGFuZCBnZW4xMCBub3csIHNvIHdlIGNhbiB1c2UgYSBzaW5nbGUgdGVzdAo+IGFn
YWluc3QgdGhlIGdlbiBiaXRtYXNrLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMiArLQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggYTcwNTU1ZTZiZWZiLi41ZmEzOGM1NWRhYTMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMTY2MCw3ICsxNjYwLDcgQEAgSVNfU1VCUExB
VEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gICAKPiAgIC8qIFdh
UnNEaXNhYmxlQ29hcnNlUG93ZXJHYXRpbmc6c2tsLGNubCAqLwo+ICAgI2RlZmluZSBORUVEU19X
YVJzRGlzYWJsZUNvYXJzZVBvd2VyR2F0aW5nKGRldl9wcml2KSBcCj4gLQkoSVNfQ0FOTk9OTEFL
RShkZXZfcHJpdikgfHwgSVNfR0VOKGRldl9wcml2LCA5KSkKPiArCUlTX0dFTl9SQU5HRShkZXZf
cHJpdiwgOSwgMTApCj4gICAKPiAgICNkZWZpbmUgSEFTX0dNQlVTX0lSUShkZXZfcHJpdikgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gNCkKPiAgICNkZWZpbmUgSEFTX0dNQlVTX0JVUlNUX1JFQUQo
ZGV2X3ByaXYpIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IFwKPiAKCk1hcmdpbmFsIGJl
bmVmaXQgYW5kIGRlcGVuZHMgb24gYmVpbmcganVzdCBvbmUgZ2VuIDEwIGJ1dCBva2F5OgoKUmV2
aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdh
cmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
