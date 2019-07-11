Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C757564FAB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E3589C16;
	Thu, 11 Jul 2019 00:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6FB89C16
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:40:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:40:02 -0700
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="159917795"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Jul 2019 17:40:02 -0700
Date: Wed, 10 Jul 2019 17:40:38 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190711004038.GC9599@intel.com>
References: <20190710200428.3275-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710200428.3275-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Drop the duplicate workaround
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

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMDk6MDQ6MjhQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFRoZSB3b3JrYXJvdW5kcyB3YXMgcmV2aXZlZCBpbiB0aGUgYmFja21lcmdlIHRoYXQg
d2FzIG1lYW50IHRvIGZpeCBpdCEKPiAKPiBGaXhlczogODhjOTBlODAwNjc1ICgiTWVyZ2UgZHJt
L2RybS1uZXh0IGludG8gZHJtLWludGVsLW5leHQtcXVldWVkIikKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKRHVoISBTb3JyeSBhYm91dCB0aGF0IGFuZCB0aGFu
a3MgZm9yIGRyb3BwaW5nIHRoZSBmaXh1cCBmcm9tIGRybS1yZXJlcmUuCgpJIHdhcyBob3BwaW5n
IHRoZSBiYWNrbWVyZ2UgKyBwdXNoIHdvdWxkIGZhaWwgd2hlbiBhcHBseWluZyB0aGUgZml4dXAK
c28gSSB3b3VsZCByZW1vdmUgaXQuIEluc3RlYWQgaXQgd2VudCB0aHJvdWdoIG15IHNjcmlwdHMg
c2lsZW50bHkgdG8gdGhlCmVuZC4uLiA6KAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDYgLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+IGluZGV4IGY2ZmQ2OTA1ZWU2Zi4uOWUwNjkyODZkM2NlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTUzMSwxMiArNTMxLDYg
QEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBl
bmdpbmUtPmk5MTU7Cj4gIAo+IC0JLyogV2FEaXNhYmxlQmFua0hhbmdNb2RlOmljbCAqLwo+IC0J
d2Ffd3JpdGUod2FsLAo+IC0JCSBHRU44X0wzQ05UTFJFRywKPiAtCQkgaW50ZWxfdW5jb3JlX3Jl
YWQoZW5naW5lLT51bmNvcmUsIEdFTjhfTDNDTlRMUkVHKSB8Cj4gLQkJIEdFTjhfRVJSREVUQkNU
UkwpOwo+IC0KPiAgCS8qIFdhRGlzYWJsZUJhbmtIYW5nTW9kZTppY2wgKi8KPiAgCXdhX3dyaXRl
KHdhbCwKPiAgCQkgR0VOOF9MM0NOVExSRUcsCj4gLS0gCj4gMi4yMi4wCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
