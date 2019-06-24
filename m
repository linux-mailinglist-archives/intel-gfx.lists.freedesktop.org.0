Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4034D517D3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 18:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A1C89CAF;
	Mon, 24 Jun 2019 16:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0E0989CAF
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 16:00:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17007732-1500050 for multiple; Mon, 24 Jun 2019 17:00:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190624141630.11015-1-chris@chris-wilson.co.uk>
 <c3bd9bbe-5b4a-a07c-6a70-b5fbb0261ca7@intel.com>
In-Reply-To: <c3bd9bbe-5b4a-a07c-6a70-b5fbb0261ca7@intel.com>
Message-ID: <156139201917.15678.143825887310833064@skylake-alporthouse-com>
Date: Mon, 24 Jun 2019 17:00:19 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Clear read/write domains for
 GPU clear
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjQgMTY6NTA6NDgpCj4gT24gMjQvMDYvMjAx
OSAxNToxNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gVXBkYXRlIHRoZSBkb21haW5zIGZvciB0
aGUgd3JpdGUgdmlhIHRoZSBHUFUgc28gdGhhdCB3ZSBkbyBub3QKPiA+IHNob3J0Y2lyY3VpdCBh
bnkgc2V0LWRvbWFpbiB3YWl0IGFmdGVyd2FyZHMuCj4gCj4gSSdtIGxvc3QuIEhvdyBkbyB3ZSBz
aG9ydC1jaXJjdWl0IHRoZSBzZXQtZG9tYWluIHdhaXQ/CgpJZiB3ZSBuZXZlciBjaGFuZ2UgdGhl
IHJlYWRfZG9tYWluLCB0aGVuIHdlIG1heSBza2lwIHRoZSBjbGZsdXNoIG9uCnNldF9jcHVfZG9t
YWluIHRodXMgbWlzc2luZyB0aGUgdXBkYXRlZCBjb250ZW50cyBvbiAhbGxjLgoKU28gcy93YWl0
L2NsZmx1c2gvIHRvIGJlIHByZWNpc2UKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
