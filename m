Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5BE26670
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 16:59:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01DC989875;
	Wed, 22 May 2019 14:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B41589875
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 14:59:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16642546-1500050 for multiple; Wed, 22 May 2019 15:59:38 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522145030.12751-1-jani.nikula@intel.com>
References: <20190522145030.12751-1-jani.nikula@intel.com>
Message-ID: <155853717679.28319.1527928477226640546@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 15:59:36 +0100
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: move and rename register read
 ioctl function declaration
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNS0yMiAxNTo1MDoyNykKPiBNb3ZlIGk5MTVfcmVn
X3JlYWRfaW9jdGwoKSBkZWNsYXJhdGlvbiB0byBpbnRlbF91bmNvcmUuaCwgY29ycmVzcG9uZGlu
Zwo+IHRvIHRoZSBkZWZpbml0aW9uIGluIGludGVsX3VuY29yZS5jLCBhbmQgcmVuYW1lIHRvCj4g
aW50ZWxfdW5jb3JlX3JlZ19yZWFkX2lvY3RsKCkuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0t
LQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCj4gaW5kZXggZjc4NjY4MS4uMzZjMzdk
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKPiBAQCAtMTY2OSw4ICsxNjY5
LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByZWdfd2hpdGVsaXN0IHsKPiAgICAgICAgIC5zaXpl
ID0gOAo+ICB9IH07Cj4gIAo+IC1pbnQgaTkxNV9yZWdfcmVhZF9pb2N0bChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAo+IC0gICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKmRhdGEsIHN0cnVjdCBk
cm1fZmlsZSAqZmlsZSkKPiAraW50IGludGVsX3VuY29yZV9yZWdfcmVhZF9pb2N0bChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAq
ZGF0YSwgc3RydWN0IGRybV9maWxlICpmaWxlKQoKSG1tLiBUaGlzIGRvZXNuJ3QgZml0IGludG8g
aW50ZWxfdW5jb3JlLmMgYW55d2F5LiBJIGxpa2VkIHRoZSBpOTE1XyBoZXJlCmFzIGluZGljYXRp
b24gdGhhdCB0aGlzIHBhcnQgb2YgdGhlIHVBUEkgYW5kIG5vdCBhIHJlYWwgZnVuY3Rpb24uIEl0
CnNob3VsZCBiZSBwdXQgaW50byBpdHMgbmljZSBsaXR0bGUgYnViYmxld3JhcHBlZCBjb250YWlu
ZXIuCgppOTE1X21pc2NfdWFwaS5jPyBpOTE1X3VhcGlfZHVuZ2Vvbi5jPwotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
