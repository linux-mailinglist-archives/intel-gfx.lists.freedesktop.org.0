Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C86F293C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 09:35:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686896EEFD;
	Thu,  7 Nov 2019 08:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60386EEFD
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 08:35:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19111023-1500050 for multiple; Thu, 07 Nov 2019 08:35:36 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <877e4cnl1s.fsf@gaia.fi.intel.com>
References: <20191106221223.7437-1-chris@chris-wilson.co.uk>
 <877e4cnl1s.fsf@gaia.fi.intel.com>
Message-ID: <157311573445.26738.6578769117298044224@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 07 Nov 2019 08:35:34 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Leave the aliasing-ppgtt size
 alone
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTA3IDA4OjMyOjQ3KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGUgaGlkZGVuIGFs
aWFzaW5nLXBwZ3R0J3Mgc2l6ZSBpcyBuZXZlciByZXZlYWxlZCwgYXMgd2Ugb25seSBpbnNwZWN0
Cj4gPiB0aGUgZnJvbnQgR1RUIHdoZW4gZW5nYWdlZC4gSG93ZXZlciwgd2Ugd2VyZSAiZml4aW5n
IiB0aGUgaGlkZGVuIHBwZ3R0Cj4gPiB0byBtYXRjaCwgd2l0aCB0aGUgbmV0IHJlc3VsdCB0aGF0
IHdlIGVuZGVkIHVwIGxlYWtpbmcgdGhlIHVudXNlZAo+ID4gcG9ydGlvbiAob24gQnJhc3dlbGwg
d2VyZSB3ZSBwcmVhbGxvY2F0ZWQgdGhlIGVudGlyZSByYW5nZSkuCj4gCj4gT24gaGVyZSBJIHRo
aW5rIHRoYXQgdGhlIGNvbW1lbnQgaXMgYSBiaXQgbWlzbGVhZGluZy4gV2UgcHJlYWxsb2NhdGUK
PiB0aGUgcGRwcyB1cGZyb250LCB0aGUgdmFfcmFuZ2VzIHRoYXQgdGhlIGFsaWFzaW5nIGluaXQg
ZG9lcyBtYXRjaGVzCj4gaW4gc2l6ZS4KPiAKPiBBcyB0aGVyZSBpcyB0d28gdHlwZXMgb2YgJ3By
ZWFsbG9jYXRpb24nIGF0IHBsYXkgaW4gaGVyZSwKPiB0aGUgY29tbWl0IG1lc3NhZ2Ugc2hvdWxk
IGJlIGFtZW5kZWQgdG8gZXhwbGljaXRseSBzdGF0ZSB0aGF0IHRoZSB0b3AKPiBwZHBzIGxlYWsu
CgpZb3Uga25ldyB3aGF0IEkgbWVhbnQgOi1wCgpFYXNpZXN0IHdheSB3b3VsZCB0byBiZSB1c2Ug
Z2VuOF9wcmVhbGxvY2F0ZV90b3BfbGV2ZWxfcGRwKCkgaW5zdGVhZC4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
