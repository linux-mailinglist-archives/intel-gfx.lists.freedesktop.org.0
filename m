Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259AD88ADC
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 12:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567426E2DC;
	Sat, 10 Aug 2019 10:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6206E2D1;
 Sat, 10 Aug 2019 10:45:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17952269-1500050 for multiple; Sat, 10 Aug 2019 11:45:49 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190809222643.23142-14-matthew.auld@intel.com>
References: <20190809222643.23142-1-matthew.auld@intel.com>
 <20190809222643.23142-14-matthew.auld@intel.com>
Message-ID: <156543394708.2301.10271358741581892499@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 10 Aug 2019 11:45:47 +0100
Subject: Re: [Intel-gfx] [PATCH v3 13/37] drm/i915/selftests: move
 gpu-write-dw into utils
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjM6MjY6MTkpCj4gVXNpbmcgdGhlIGdw
dSB0byB3cml0ZSB0byBzb21lIGR3b3JkIG92ZXIgYSBudW1iZXIgb2YgcGFnZXMgaXMgcmF0aGVy
Cj4gdXNlZnVsLCBhbmQgd2UgYWxyZWFkeSBoYXZlIHR3byBjb3BpZXMgb2Ygc3VjaCBhIHRoaW5n
LCBhbmQgd2UgZG9uJ3QKPiB3YW50IGEgdGhpcmQgc28gbW92ZSBpdCB0byB1dGlscy4gVGhlcmUg
aXMgcHJvYmFibHkgc29tZSBvdGhlciBzdHVmZgo+IGFsc28uLi4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
