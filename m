Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF62F7283
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:51:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0667A6E8A7;
	Mon, 11 Nov 2019 10:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DC9E6E8A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:51:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19157639-1500050 for multiple; Mon, 11 Nov 2019 10:51:32 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87imnq677n.fsf@gaia.fi.intel.com>
References: <20191109200823.15636-1-chris@chris-wilson.co.uk>
 <87imnq677n.fsf@gaia.fi.intel.com>
Message-ID: <157346948792.28106.15366503446388002002@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 11 Nov 2019 10:51:27 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Protect context while grabbing
 its name for the request
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTExIDEwOjI1OjAwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJbnNpZGUgcHJpbnRf
cmVxdWVzdCgpLCB3ZSBxdWVyeSB0aGUgY29udGV4dC90aW1lbGluZSBuYW1lLiBOb3RoaW5nCj4g
PiBpbW1lZGlhdGVseSBwcm90ZWN0cyB0aGUgY29udGV4dCBmcm9tIGJlaW5nIGZyZWVkIGlmIHRo
ZSByZXF1ZXN0IGlzCj4gPiBjb21wbGV0ZSAtLSB3ZSByZWx5IG9uIHNlcmlhbGlzYXRpb24gYnkg
dGhlIGNhbGxlciB0byBrZWVwIHRoZSBuYW1lCj4gPiB2YWxpZCB1bnRpbCB0aGV5IGZpbmlzaCB1
c2luZyBpdC4gSW5zaWRlIGludGVsX2VuZ2luZV9kdW1wKCksIHdlCj4gPiBnZW5lcmFsbHkgb25s
eSBwcmludCB0aGUgcmVxdXN0cyBpbiB0aGUgZXhlY3V0aW9uIHF1ZXVlIHByb3RlY3RlZCBieSB0
aGUKPiByZXF1ZXN0cwo+IAo+ID4gZW5naW5lLT5hY3RpdmUubG9jaywgYnV0IHdlIGFsc28gc2hv
dyB0aGUgcGVuZGluZyBleGVjbGlzdHMgcG9ydHMgd2hpY2gKPiA+IGFyZSBub3QgcHJvdGVjdGVk
IGFuZCBzbyByZXF1aXJlIGFuIHJjdV9yZWFkX2xvY2sgdG8ga2VlcCB0aGUgcG9pbnRlcgo+ID4g
dmFsaWQuCj4gCj4gcy9hbi9hID8KCkludGVyZXN0aW5nLiBJIHVzZWQgYW4gYmVjYXVzZSBJIHBy
b25vdW5jZSBpdCBSIEMgVSByZWFkX2xvY2ssIGFuZCBzaW5jZQppdCB0aGVuIHN0YXJ0cyB3aXRo
IHRoZSBzb2xpdGFyeSBSIHRha2VzIGEgdm93ZWwgc291bmQuIEVuZ2xpc2ggaXMKYml6YXJyZS4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
