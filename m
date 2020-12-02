Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B552CC6C6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 20:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5316EA9E;
	Wed,  2 Dec 2020 19:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB1B6EA9E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 19:37:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23194817-1500050 for multiple; Wed, 02 Dec 2020 19:37:22 +0000
MIME-Version: 1.0
In-Reply-To: <20201202192433.GD6112@intel.com>
References: <20201126211317.15291-1-chris@chris-wilson.co.uk>
 <20201127161841.24806-1-chris@chris-wilson.co.uk>
 <20201202192433.GD6112@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Wed, 02 Dec 2020 19:37:21 +0000
Message-ID: <160693784106.15703.12069672133754026150@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Record the plane
 update times for debugging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMTItMDIgMTk6MjQ6MzMpCj4gT24gRnJpLCBO
b3YgMjcsIDIwMjAgYXQgMDQ6MTg6NDFQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
KyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVR19WQkxBTktfRVZBREUpCj4gPiAr
c3RhdGljIHZvaWQgY3J0Y191cGRhdGVzX2luZm8oc3RydWN0IHNlcV9maWxlICptLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKmhkcikKPiA+ICt7Cj4gPiArICAg
ICBjaGFyIGJ1ZltBUlJBWV9TSVpFKGNydGMtPmRlYnVnLnZibC50aW1lcykgKyAxXSA9IHt9Owo+
ID4gKyAgICAgaW50IGgsIHJvdywgbWF4Owo+ID4gKyAgICAgdTY0IGNvdW50Owo+ID4gKwo+ID4g
KyAgICAgbWF4ID0gMDsKPiA+ICsgICAgIGNvdW50ID0gMDsKPiA+ICsgICAgIGZvciAoaCA9IDA7
IGggPCBBUlJBWV9TSVpFKGNydGMtPmRlYnVnLnZibC50aW1lcyk7IGgrKykgewo+ID4gKyAgICAg
ICAgICAgICBpZiAoY3J0Yy0+ZGVidWcudmJsLnRpbWVzW2hdID4gbWF4KQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIG1heCA9IGNydGMtPmRlYnVnLnZibC50aW1lc1toXTsKPiA+ICsgICAgICAg
ICAgICAgY291bnQgKz0gY3J0Yy0+ZGVidWcudmJsLnRpbWVzW2hdOwo+ID4gKyAgICAgfQo+ID4g
KyAgICAgc2VxX3ByaW50ZihtLCAiJXNVcGRhdGVzOiAlbGx1XG4iLCBoZHIsIGNvdW50KTsKPiA+
ICsgICAgIGlmICghY291bnQpCj4gPiArICAgICAgICAgICAgIHJldHVybjsKPiA+ICsKPiA+ICsg
ICAgIG1lbXNldChidWYsICctJywgc2l6ZW9mKGJ1ZikgLSAxKTsKPiA+ICsgICAgIHNlcV9wcmlu
dGYobSwgIiVzICB8JXN8XG4iLCBoZHIsIGJ1Zik7Cj4gPiArCj4gPiArICAgICBmb3IgKHJvdyA9
IGlsb2cyKG1heCkgLSAxOyByb3c7IHJvdy0tKSB7Cj4gCj4gcm93ID49IDA/CgpJIHNraXBwZWQg
dGhlIGxhc3Qgcm93LCBhcyB0aGUgaWxvZzIoKSB3b3VsZCBhbHNvIGNhdGNoIGFsbCB0aGUgZW1w
dHkKYmlucy4gVGhlIGFsdGVybmF0aXZlIGlzIHMvPj0vPi8sIGJ1dCBteSBndXQgZmVlbGluZyB3
YXMgYmVjYXVzZSBvZiB0aGUKcm91bmRpbmcgZG93biBmcm9tIGlsb2cyLCA+PSB3b3VsZCBiZSBi
ZXR0ZXIuCgo+ID4gKyAgICAgICAgICAgICBtZW1zZXQoYnVmLCAnICcsIHNpemVvZihidWYpIC0g
MSk7Cj4gPiArICAgICAgICAgICAgIGZvciAoaCA9IDA7IGggPCBBUlJBWV9TSVpFKGNydGMtPmRl
YnVnLnZibC50aW1lcyk7IGgrKykgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmIChpbG9n
MihjcnRjLT5kZWJ1Zy52YmwudGltZXNbaF0pID49IHJvdykKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGJ1ZltoXSA9ICcqJzsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKyAgICAg
ICAgICAgICBzZXFfcHJpbnRmKG0sICIlcyAgfCVzfFxuIiwgaGRyLCBidWYpOwo+ID4gKyAgICAg
fQo+IAo+IEkgaGF2ZSBhIGZlZWxpbmcgdGhhdCBwdXR0aW5nIHRoZSBncmFwaCBvbiBpdHMgc2lk
ZSB3b3VsZCBtYWtlIGl0IG1vcmUKPiByZWFkYWJsZSBzaW5jZSB0aGVuIHdlIGNvdWxkIGVhc2ls
eSBsYWJlbCBtb3JlIChhbGwgZXZlbj8pIG9mIHRoZSBiaW5zLgo+IFJpZ2h0IG5vdyBJJ20gaGF2
aW5nIGEgaGFyZCB0aW1lIHNlZWluZyB3aGF0J3Mgd2hhdCBleGFjdGx5LgoKT2ssIGxhYmVsbGlu
ZyB0aGUgYXhpcyAoYXhlcyBpZiB5b3UgYXJlIGx1Y2t5KSBpcyBhIGRlZmluaXRlIGFkdmFudGFn
ZS4KCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaAo+ID4gaW5kZXggY2U4MmQ2NTRkMGYyLi4zMGM4MmJjNWNhOTggMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgKPiA+IEBAIC0xMTg2LDYgKzExODYsMTUgQEAgc3RydWN0IGludGVsX2NydGMgewo+ID4g
ICAgICAgICAgICAgICBrdGltZV90IHN0YXJ0X3ZibF90aW1lOwo+ID4gICAgICAgICAgICAgICBp
bnQgbWluX3ZibCwgbWF4X3ZibDsKPiA+ICAgICAgICAgICAgICAgaW50IHNjYW5saW5lX3N0YXJ0
Owo+ID4gKyNpZmRlZiBDT05GSUdfRFJNX0k5MTVfREVCVUdfVkJMQU5LX0VWQURFCj4gPiArICAg
ICAgICAgICAgIHN0cnVjdCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgdTY0IG1pbjsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICB1NjQgbWF4Owo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHU2NCBzdW07Cj4gPiArICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBvdmVyOwo+
IAo+IFdhcyB0aGVyZSBhIHBhcnRpY3VsYXIgcmVhc29uIGZvciB0aGUgbG9uZz8gVGhlIGJpbnMg
YXJlCj4gaW50cyBzbyBjYW4ndCByZWFsbHkgc2VlIHdoeSB0aGlzIGNvdWxkbid0IGJlIGFuIGlu
IHRvby4KCkEgdG91Y2ggb2YgcGVzc2ltaXNtLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
