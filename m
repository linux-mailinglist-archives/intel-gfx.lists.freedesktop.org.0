Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA6CEAC34
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 10:05:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B276EDD5;
	Thu, 31 Oct 2019 09:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DC56EDEB
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 09:04:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19028985-1500050 for multiple; Thu, 31 Oct 2019 09:04:25 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191031013040.25803-1-daniele.ceraolospurio@intel.com>
 <20191031013040.25803-2-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191031013040.25803-2-daniele.ceraolospurio@intel.com>
Message-ID: <157251266348.7938.15961304376849264612@skylake-alporthouse-com>
Date: Thu, 31 Oct 2019 09:04:23 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: drop guc shared area
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEwLTMxIDAxOjMwOjQwKQo+IFJl
Y2VudCBHdUMgZG9lc24ndCByZXF1aXJlIHRoZSBzaGFyZWQgYXJlYS4gV2Ugc3RpbGwgaGF2ZSBv
bmUgdXNlciBpbgo+IGk5MTUgKGVuZ2luZSByZXNldCB2aWEgZ3VjKSBiZWNhdXNlIHdlIGhhdmVu
J3QgdXBkYXRlZCB0aGUgY29tbWFuZCB0bwo+IG1hdGNoIHRoZSBjdXJyZW50IGd1YyBzdWJtaXNz
aW9uIGZsb3cgWzFdLiBTaW5jZSB0aGUgZmxvdyBpbiBndWMgaXMKPiBhYm91dCB0byBjaGFuZ2Ug
YWdhaW4sIGp1c3QgZGlzYWJsZSB0aGUgY29tbWFuZCBmb3Igbm93IGFuZCBhZGQgYSBub3RlCj4g
dGhhdCB3ZSdsbCBpbXBsZW1lbnQgaXQgYXMgcGFydCBvZiB0aGUgbmV3IGZsb3cuCj4gCj4gWzFd
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8yOTUwMzgvCj4gCj4gU2ln
bmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4gQ2M6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4g
Q2M6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgo+IENjOiBGZXJuYW5k
byBQYWNoZWNvIDxmZXJuYW5kby5wYWNoZWNvQGludGVsLmNvbT4KQWNrZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
