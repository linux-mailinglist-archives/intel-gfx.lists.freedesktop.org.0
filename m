Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CCF87F65
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 18:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E4A6EE56;
	Fri,  9 Aug 2019 16:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F0E6EE56
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 16:16:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17945783-1500050 for multiple; Fri, 09 Aug 2019 17:16:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190809154146.16397-1-chris@chris-wilson.co.uk>
 <874l2q8gij.fsf@gaia.fi.intel.com>
In-Reply-To: <874l2q8gij.fsf@gaia.fi.intel.com>
Message-ID: <156536737864.32306.8520357726207994926@skylake-alporthouse-com>
Date: Fri, 09 Aug 2019 17:16:18 +0100
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Remove
 i915_gem_context_create_gvt()
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA5IDE3OjEyOjIwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBBcyB3ZSBhcmUgcGhh
c2luZyBvdXQgdXNpbmcgdGhlIEdFTSBjb250ZXh0IGZvciBpbnRlcm5hbCBjbGllbnRzIHRoYXQK
PiA+IG5lZWQgdG8gbWFuaXB1bGF0ZSBsb2dpY2FsIGNvbnRleHQgc3RhdGUgZGlyZWN0bHksIHJl
bW92ZSB0aGUKPiA+IGNvbnN0cnVjdG9yIGZvciB0aGUgR1ZUIGNvbnRleHQuIFdlIGFyZSBub3Qg
dXNpbmcgaXQgZm9yIGFueXRoaW5nIG90aGVyCj4gPiB0aGFuIGRlZmF1bHQgc2V0dXAgYW5kIGFs
bG9jYXRpb24gb2YgYW4gaTkxNV9wcGd0dC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAKPiBOb3QgZmFtaWxpYXIgd2l0aCBn
dnQgYnV0IHNlZW1zIHRvIGNyZWF0ZSBzaW1pbGFyIGVub3VnaAo+IGNvbnRleHQuIAo+IAo+IEhp
Z2hlciBwcmlvcml0eSwgbm90IGNsb3NlZCBhbmQgdXNpbmcgbW9yZSBzdHJpY3QKPiBsb2NrLgoK
SSB0aG91Z2h0IHRoZXkgd291bGQgYXBwcmVjaWF0ZSB0aGUgaGlnaGVyIHByaW9yaXR5IDspCgpn
dnQgY3VycmVudGx5IGRvZXNuJ3QgaGF2ZSBhbnl3YXkgZm9yIGl0IHRvIGRldGVybWluZSB0aGUg
cmVsYXRpdmUKcHJpb3JpdHkgb2YgaXRzIGd1ZXN0IHZzIHRoZSBob3N0LCBzbyBpZiB3ZSBzZXQg
aXQgdG9vIGxvdyB3ZSBpbXBhY3QgdGhlCnFvcyBvZiB0aGUgZ3Vlc3QsIHRvbyBoaWdoIGFuZCBp
dHMgYWZmZWN0cyB0aGUgcW9zIG9mIHRoZSBob3N0LiBLZWVwaW5nCml0IGF0IG1heCB1c2VyIHRo
b3VnaCBzdGlsbCBnaXZlcyB0aGUga2VybmVsIHNvbWUgbGVld2F5IHRvIHVzdXJwIGl0LgpBbmQg
d2hvIGtub3dzIG9uZSBkYXkgd2UgbWF5IGdldCBhIHNjaGVkdWxlci4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
