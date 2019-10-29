Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25081E91FD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 22:23:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9821D6E788;
	Tue, 29 Oct 2019 21:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D0B6E788
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 21:23:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 14:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="198491709"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2019 14:23:37 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-3-matthew.auld@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <4c986074-2364-5815-efde-6134a3ce741d@intel.com>
Date: Tue, 29 Oct 2019 14:23:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191029095856.25431-3-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: set num_fence_regs to 0 if
 there is no aperture
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC8yOS8xOSAyOjU4IEFNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBX
ZSBjYW4ndCBmZW5jZSBhbnl0aGluZyB3aXRob3V0IGFwZXJ0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYyB8
IDYgKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5j
ZV9yZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCj4gaW5k
ZXggMzIxMTg5ZTFiMGYyLi43MWVmY2NmZGUxMjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9mZW5jZV9yZWcuYwo+IEBAIC04NDYsOCArODQ2LDEwIEBAIHZvaWQgaTkxNV9n
Z3R0X2luaXRfZmVuY2VzKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCj4gICAKPiAgIAlkZXRlY3Rf
Yml0XzZfc3dpenpsZShnZ3R0KTsKPiAgIAo+IC0JaWYgKElOVEVMX0dFTihpOTE1KSA+PSA3ICYm
Cj4gLQkgICAgIShJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkpKQo+
ICsJaWYgKCFpOTE1X2dndHRfaGFzX2FwZXJ0dXJlKGdndHQpKQoKRGFuaWVsIGhhZCBtZW50aW9u
ZWQgdGhhdCB0aGUgZmVuY2luZyBIVyBoYXMgYmVlbiBuZXJmZWQgaW4gZ2VuMTIgYW5kIApzdWdn
ZXN0ZWQgc2V0dGluZ3MgbnVtX2ZlbmNlcyB0byB6ZXJvIGZvciBhbGwgZ2VuMTIrLiBTaG91bGQg
d2UgZ28gCmRpcmVjdGx5IHdpdGggdGhhdD8KCkRhbmllbGUKCj4gKwkJbnVtX2ZlbmNlcyA9IDA7
Cj4gKwllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNyAmJgo+ICsJCSAhKElTX1ZBTExFWVZJ
RVcoaTkxNSkgfHwgSVNfQ0hFUlJZVklFVyhpOTE1KSkpCj4gICAJCW51bV9mZW5jZXMgPSAzMjsK
PiAgIAllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNCB8fAo+ICAgCQkgSVNfSTk0NUcoaTkx
NSkgfHwgSVNfSTk0NUdNKGk5MTUpIHx8Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
