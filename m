Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9755E56C8C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14606E451;
	Wed, 26 Jun 2019 14:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B69E6E451
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:47:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17032573-1500050 for multiple; Wed, 26 Jun 2019 15:47:26 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87r27g4d93.fsf@gaia.fi.intel.com>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <20190626065303.31624-5-chris@chris-wilson.co.uk>
 <87r27g4d93.fsf@gaia.fi.intel.com>
Message-ID: <156156044291.26855.5686839950903394102@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 15:47:22 +0100
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Only recover active engines
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI2IDE1OjQ0OjU2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJZiB3ZSBpc3N1ZSBh
IHJlc2V0IHRvIGEgY3VycmVudGx5IGlkbGUgZW5naW5lLCBsZWF2ZSBpdCBpZGxlCj4gPiBhZnRl
cndhcmRzLiBUaGlzIGlzIHVzZWZ1bCB0byBleGNpc2UgYSBsaW5rYWdlIGJldHdlZW4gcmVzZXQg
YW5kIHRoZQo+ID4gc2hyaW5rZXIuIFdoZW4gd2FraW5nIHRoZSBlbmdpbmUsIHdlIG5lZWQgdG8g
cGluIHRoZSBkZWZhdWx0IGNvbnRleHQKPiAKPiBkZWZhdWx0IGNvbnRleHQsIGtlcm5lbCBjb250
ZXh0LCBnb2xkZW4gY29udGV4dC4uLgo+IGlmIHdlIGV2ZXIgcmV2aXNpdCB0aGUgbmFtaW5nLCBJ
IHdpbGwgYWR2b2NhdGUgZm9yIHByb3RvIGNvbnRleHQuCgpOb3QgbnVsbF9jb250ZXh0IG9yIGdv
bGRlbl9jb250ZXh0PyA6KQoKT3IgcmVzZXRfY29udGV4dCwgb3IgdGhpc19jb250ZXh0X3dpbGxf
Y2F1c2VfZ3B1X2hhbmdzX2luX21lc2FfY29udGV4dCEKLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
