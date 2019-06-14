Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F19F465E3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 19:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E847D89AAD;
	Fri, 14 Jun 2019 17:40:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE2189AAD
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 17:40:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 10:40:10 -0700
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Jun 2019 10:40:09 -0700
Date: Fri, 14 Jun 2019 10:40:41 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190614174041.GC28583@intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-27-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614151731.17608-27-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [RFC 26/31] drm/i915: Store ggtt pointer in intel_gt
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDQ6MTc6MjZQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBUaGlzIHdpbGwgYmVjb21lIHVzZWZ1bCBpbiB0aGUgZm9sbG93aW5nIHBhdGNoLgo+IAo+
IHYyOgo+ICAqIEFzc2lnbiB0aGUgcG9pbnRlciB0aHJvdWdoIGEgaGVscGVyIG9uIHRoZSB0b3Ag
bGV2ZWwgdG8gd29yayBhcm91bmQKPiAgICB0aGUgbGF5ZXJpbmcgdmlvbGF0aW9uLiAoQ2hyaXMp
Cj4gCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgIHwgNSAr
KysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oICAgICAgIHwgMSArCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggfCAyICsrCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgfCAyICsrCj4gIDQgZmlsZXMgY2hh
bmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+
IGluZGV4IDViYzQ2MGQ2OGM4Yi4uNjc0NmM0MGMyMTMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5jCj4gQEAgLTIwLDYgKzIwLDExIEBAIHZvaWQgaW50ZWxfZ3RfaW5pdChzdHJ1
Y3QgaW50ZWxfZ3QgKmd0LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCXNwaW5f
bG9ja19pbml0KCZndC0+Y2xvc2VkX2xvY2spOwo+ICB9Cj4gIAo+ICt2b2lkIGludGVsX2d0X2lu
aXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gK3sKPiArCWk5MTUtPmd0Lmdn
dHQgPSAmaTkxNS0+Z2d0dDsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgcm13X3NldChzdHJ1Y3Qg
aW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVfcmVnX3QgcmVnLCB1MzIgc2V0KQo+ICB7Cj4gIAlp
bnRlbF91bmNvcmVfcm13KHVuY29yZSwgcmVnLCAwLCBzZXQpOwo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuaAo+IGluZGV4IDhkODQ3MTZjM2IzYi4uNTNmY2Y0ZjI3NmQzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCj4gQEAgLTEyLDYgKzEyLDcgQEAKPiAgI2luY2x1ZGUg
Imk5MTVfZHJ2LmgiCj4gIAo+ICB2b2lkIGludGVsX2d0X2luaXQoc3RydWN0IGludGVsX2d0ICpn
dCwgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICt2b2lkIGludGVsX2d0X2luaXRf
aHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICAKPiAgdm9pZCBpbnRlbF9ndF9j
aGVja19hbmRfY2xlYXJfZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwo+ICB2b2lkIGludGVs
X2d0X2NsZWFyX2Vycm9yX3JlZ2lzdGVycyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAo+IGluZGV4IGQ5NmRmNGY2ODc0MS4uMjMz
ZjczMzE2YTQzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5o
Cj4gQEAgLTE4LDExICsxOCwxMyBAQAo+ICAjaW5jbHVkZSAiaW50ZWxfd2FrZXJlZi5oIgo+ICAK
PiAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Cj4gK3N0cnVjdCBpOTE1X2dndHQ7Cj4gIHN0cnVj
dCBpbnRlbF91bmNvcmU7Cj4gIAo+ICBzdHJ1Y3QgaW50ZWxfZ3Qgewo+ICAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTU7Cj4gIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmU7Cj4gKwlz
dHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0Owo+ICAKPiAgCXN0cnVjdCBpOTE1X2d0X3RpbWVsaW5lcyB7
Cj4gIAkJc3RydWN0IG11dGV4IG11dGV4OyAvKiBwcm90ZWN0cyBsaXN0LCB0YWludGVkIGJ5IEdQ
VSAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4IDFkZjc2ZjdjNzE3ZS4uNzgzY2Ji
ZGE3NWZiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gQEAgLTE1ODQsNiArMTU4NCw4
IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZXJyX2dndHQ7Cj4gIAo+ICsJaW50
ZWxfZ3RfaW5pdF9odyhkZXZfcHJpdik7Cj4gKwo+ICAJcmV0ID0gaTkxNV9nZ3R0X2VuYWJsZV9o
dyhkZXZfcHJpdik7Cj4gIAlpZiAocmV0KSB7Cj4gIAkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gZW5h
YmxlIEdHVFRcbiIpOwo+IC0tIAo+IDIuMjAuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
