Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFEEA093E
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 20:09:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C4889E2C;
	Wed, 28 Aug 2019 18:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E28E89DE6
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 18:09:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18294936-1500050 for multiple; Wed, 28 Aug 2019 19:09:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190827120615.31390-1-chris@chris-wilson.co.uk>
 <877e6xxxn0.fsf@gaia.fi.intel.com>
 <156699776337.15406.14120621243868929918@skylake-alporthouse-com>
In-Reply-To: <156699776337.15406.14120621243868929918@skylake-alporthouse-com>
Message-ID: <156701575657.15406.15342354769435455856@skylake-alporthouse-com>
Date: Wed, 28 Aug 2019 19:09:16 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Flush the post-sync
 breadcrumb write harder
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjggMTQ6MDk6MjMpCj4gUXVvdGluZyBNaWth
IEt1b3BwYWxhICgyMDE5LTA4LTI4IDEzOjQ5OjU1KQo+ID4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+IAo+ID4gPiBRdWl0ZSByYXJlbHkgd2Ugc2Vl
IHRoYXQgdGhlIENTIGNvbXBsZXRpb24gZXZlbnQgZmlyZXMgYmVmb3JlIHRoZQo+ID4gPiBicmVh
ZGNydW1iIGlzIGNvaGVyZW50LCB3aGljaCBwcmVzdW1hYmx5IGlzIGEgcmVzdWx0IG9mIHRoZSBD
U19TVEFMTCBub3QKPiA+ID4gd2FpdGluZyBmb3IgdGhlIHBvc3Qtc3luYyBvcGVyYXRpb24uIFRy
eSBmb2xsb3dpbmcgaW4gYSBEQ19GTFVTSCBpbnRvCj4gPiA+IHRoZSBmb2xsb3dpbmcgcGlwZWNv
bnRyb2wgdG8gc2VlIGlmIHRoYXQgbWFrZXMgYW55IGRpZmZlcmVuY2UuCj4gPiA+Cj4gPiA+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4g
PiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IEFja2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNv
bT4KPiAKPiBZdXAsIHRoZXJlJ3Mgb25seSB3YXkgdG8gZmluZCBvdXQgaWYgdGhpcyBoZWxwcy4u
LiBUYSwKCkFuZCB0aGUgYW5zd2VyIGNhbWUgYmFjayBzdHJhaWdodCBhd2F5LiBOb3BlLgoKU2ln
aCwKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
