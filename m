Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B36258919A
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 13:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214B96E328;
	Sun, 11 Aug 2019 11:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3DBC6E328
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 11:59:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17959765-1500050 for multiple; Sun, 11 Aug 2019 12:59:13 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190810125832.GB17148@intel.intel>
References: <20190810090329.6966-1-chris@chris-wilson.co.uk>
 <20190810090329.6966-2-chris@chris-wilson.co.uk>
 <20190810125832.GB17148@intel.intel>
Message-ID: <156552475118.2301.4966599048745269204@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 11 Aug 2019 12:59:11 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Verify the engine setup after
 recording the defaults
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

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTA4LTExIDEwOjU3OjQ0KQo+IEhpIENocmlzLAo+IAo+
IE9uIFNhdCwgQXVnIDEwLCAyMDE5IGF0IDEwOjAzOjI5QU0gKzAxMDAsIENocmlzIFdpbHNvbiB3
cm90ZToKPiA+IENoZWNrIHRoYXQgdGhlIGVuZ2luZSB3L2EgcGVyc2lzdCBhZnRlciB3ZSBwZXJm
b3JtZWQgYSBjb250ZXh0IHN3aXRjaAo+ID4gYW5kIHJlY29yZCB0aG9zZSB3L2EgaW50byB0aGUg
ZGVmYXVsdCBjb250ZXh0IHN0YXRlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBBbmRpIFNoeXRpIDxhbmRpLnNo
eXRpQGludGVsLmNvbT4KPiAKPiBBY2tlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRl
bC5jb20+CgpUaGUgb25seSBwcm9ibGVtIGFzIEknbSBzdXJlIHlvdSd2ZSBkaXNjb3ZlcmVkIGlz
IHRoYXQgb3VyIHNlbGZ0ZXN0cwphc3N1bWUgdGhlIGVuZ2luZSBpcyBwYXJrZWQsIGFuZCB0aGlz
IHcvYSB2ZXJpZmljYXRpb24gbGVhdmVzIHRoZW0KYXdha2UuIFZleGluZy4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
