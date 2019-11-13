Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E459AFB7D6
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 19:44:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF1A6E055;
	Wed, 13 Nov 2019 18:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C8E6E055
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 18:44:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19191603-1500050 for multiple; Wed, 13 Nov 2019 18:44:40 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191113180633.3947-1-chris@chris-wilson.co.uk>
References: <20191113180633.3947-1-chris@chris-wilson.co.uk>
Message-ID: <157367067865.22201.3181793170129897867@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 13 Nov 2019 18:44:38 +0000
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
dG8gaGFuZGxlIGxvY2FsIG1lbW9yeS4KIApSZXBvcnRlZC1ieTogTmVpbCBNYWNMZW9kIDxmcmVl
ZGVza3RvcEBubWFjbGVvZC5jb20+Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI1Ngo+IEZpeGVzOiA1Zjg4OWI5YTYxZGQgKCJkcm0v
aTkxNTogRGlzcmVnYXJkIGRybV9tb2RlX2NvbmZpZy5mYl9iYXNlIikKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KVGVzdGVkLWJ5OiBOZWlsIE1hY0xlb2Qg
PGZyZWVkZXNrdG9wQG5tYWNsZW9kLmNvbT4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
