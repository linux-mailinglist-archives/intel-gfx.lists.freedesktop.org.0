Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9952E2709D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 22:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECFC89BF1;
	Wed, 22 May 2019 20:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2455B89BF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 20:11:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16646321-1500050 for multiple; Wed, 22 May 2019 21:11:06 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522190057.848-2-michal.wajdeczko@intel.com>
References: <20190522190057.848-1-michal.wajdeczko@intel.com>
 <20190522190057.848-2-michal.wajdeczko@intel.com>
Message-ID: <155855586565.28319.327764175920865163@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 21:11:05 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Make uc_sanitize part of
 gt_sanitize
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIyIDIwOjAwOjU1KQo+IEluIGd0X3Nh
bml0aXplIHdlIHJlc2V0IHdob2xlIEdQVSAoYW5kIGluZGlyZWN0bHkgdUMpLgo+IE1ha2Ugc3Vy
ZSB3ZSBkb24ndCBtaXNzIHRvIHJ1biBvdXIgZGVkaWNhdGVkIHVDIHNhbml0aXplIGNvZGUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIHwgMiArKwo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jICAgIHwgMSAtCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF9wbS5jCj4gaW5kZXggYWU3MTU1ZjBlMDYzLi5hZjZiY2M3ZWFiZjMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKPiBAQCAtMTE0LDYgKzExNCw4IEBA
IHZvaWQgaW50ZWxfZ3Rfc2FuaXRpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJv
b2wgZm9yY2UpCj4gICAgICAgICBpZiAoIXJlc2V0X2VuZ2luZXMoaTkxNSkgJiYgIWZvcmNlKQo+
ICAgICAgICAgICAgICAgICByZXR1cm47Cj4gIAo+ICsgICAgICAgaW50ZWxfdWNfc2FuaXRpemUo
aTkxNSk7CgpCZXR0ZXIgcGxhY2UuIFN0aWxsIHNlYXJjaGluZyBmb3IgYmV0dGVyIG5hbWVzIGZv
ciB0aGUgY29uY2VwdHVhbCBsYXllcnMKb2YgdGhpcyBvbmlvbi4KClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
