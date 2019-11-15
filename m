Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A004FDF22
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2A06E330;
	Fri, 15 Nov 2019 13:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A316E330
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:42:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19213149-1500050 for multiple; Fri, 15 Nov 2019 13:42:05 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Ramalingam C <ramalingam.c@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHPThG5bx12NLZ6TxZcxDVzWreYaaqfvmzFMx6nz-=tCMA@mail.gmail.com>
References: <20191115095200.777-1-ramalingam.c@intel.com>
 <CAM0jSHPThG5bx12NLZ6TxZcxDVzWreYaaqfvmzFMx6nz-=tCMA@mail.gmail.com>
Message-ID: <157382532277.11997.13148894411069410778@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 13:42:02 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: FB allocation from LMEM,
 if supported
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTEtMTUgMTI6MjU6NDEpCj4gT24gRnJpLCAxNSBO
b3YgMjAxOSBhdCAwOTo1MiwgUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPiB3
cm90ZToKPiA+Cj4gPiBGQiBmb3IgZmJkZXYgaXMgYWxsb2NhdGVkIGZyb20gTE1FTSBpZiB0aGUg
cGxhdGZvcm0gc3VwcG9ydHMgTE1FTS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2Ft
IEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4gPiBjYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgo+IAo+IFNvdW5kcyByZWFzb25hYmxlIEkgdGhpbmsuIERvIHdlIGFs
c28gbmVlZCB0byBhZGp1c3QgaW50ZWxmYl9jcmVhdGUgYXMKPiBwYXJ0IG9mIHRoaXM/IHBpbl9p
b21hcCwgZ21hZHIgZXRjPwoKSSBoYWQgYSB2YWd1ZSBpZGVhIG9mIGRvaW5nIGFuIGludGVsX2Zi
X3ZtYSB0byBhYnN0cmFjdCB0aGUgZGlmZmVyZW50Cm1hcCBoYW5kbGluZy4gV2hhdCBjYW4ndCBi
ZSBzb2x2ZWQgd2l0aCBvbmUgbW9yZSBsYXllciBvZiBpbmRpcmVjdGlvbj8KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
