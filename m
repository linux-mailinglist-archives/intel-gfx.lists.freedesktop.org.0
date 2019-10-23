Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FFDE1A32
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 14:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E626E8F4;
	Wed, 23 Oct 2019 12:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CB26E8F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 12:30:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18937019-1500050 for multiple; Wed, 23 Oct 2019 13:30:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Tapani_P=C3=A4lli?= <tapani.palli@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191023120618.5344-1-tapani.palli@intel.com>
In-Reply-To: <20191023120618.5344-1-tapani.palli@intel.com>
Message-ID: <157183382601.15766.18288700563437363971@skylake-alporthouse-com>
Date: Wed, 23 Oct 2019 13:30:26 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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

UXVvdGluZyBUYXBhbmkgUMOkbGxpICgyMDE5LTEwLTIzIDEzOjA2OjE4KQo+IEFzIHdpdGggY29t
bWl0IDNmZTAxMDdlNDVhYiwgdGhpcyBjaGFuZ2UgZml4ZXMgbXVsdGlwbGUgdGVzdHMgdGhhdCBh
cmUKPiB1c2luZyB0aGUgaW52b2NhdGlvbiBjb3VudHMuIERvY3VtZW50YXRpb24gZG9lc24ndCBs
aXN0IHRoZSB3b3JrYXJvdW5kCj4gZm9yIFRHTCBidXQgYXBwbHlpbmcgaXQgZml4ZXMgdGhlIHRl
c3RzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRhcGFuaSBQw6RsbGkgPHRhcGFuaS5wYWxsaUBpbnRl
bC5jb20+CkFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
