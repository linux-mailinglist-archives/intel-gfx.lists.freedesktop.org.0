Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C40FB8D7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 20:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68CA56EE36;
	Wed, 13 Nov 2019 19:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E316EE36
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 19:29:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19192166-1500050 for multiple; Wed, 13 Nov 2019 19:29:17 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191113180633.3947-1-chris@chris-wilson.co.uk>
References: <20191113180633.3947-1-chris@chris-wilson.co.uk>
Message-ID: <157367335584.22201.11657542218132775452@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 13 Nov 2019 19:29:15 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Restore physical addresses
 for fb_mmap()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTMgMTg6MDY6MzMpCj4gZmJkZXYgdXNlcyB0
aGUgcGh5c2ljYWwgYWRkcmVzcyBvZiBvdXIgZnJhbWVidWZmZXIgZm9yIGl0cyBmYl9tbWFwKCkK
PiByb3V0aW5lLiBXaGlsZSB3ZSBuZWVkIHRvIGFkYXB0IHRoaXMgYWRkcmVzcyBmb3IgdGhlIG5l
dyBpbyBCQVIsIHdlIGhhdmUKPiB0byBmaXggdjUuNCBmaXJzdCEgVGhlIHNpbXBsZXN0IGZpeCBp
cyB0byByZXN0b3JlIHRoZSBzbWVtIGJhY2sgdG8gdjUuNAo+IGFuZCB3ZSB3aWxsIHRoZW4gcHJv
YmFibHkgaGF2ZSB0byBpbXBsZW1lbnQgb3VyIGZib3BzLT5mYl9tbWFwKCkgY2FsbAo+IGJhY2sg
dG8gaGFuZGxlIGxvY2FsIG1lbW9yeS4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjU2Cj4gRml4ZXM6IDVmODg5YjlhNjFkZCAo
ImRybS9pOTE1OiBEaXNyZWdhcmQgZHJtX21vZGVfY29uZmlnLmZiX2Jhc2UiKQpUZXN0Y2FzZTog
aWd0L2ZiZGV2L21tYXAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
