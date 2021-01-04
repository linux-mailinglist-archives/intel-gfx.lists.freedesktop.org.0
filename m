Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1246C2E9ED9
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 21:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E017893E7;
	Mon,  4 Jan 2021 20:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9888893E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 20:29:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23500437-1500050 for multiple; Mon, 04 Jan 2021 20:29:04 +0000
MIME-Version: 1.0
In-Reply-To: <21a7e20a8752295c1a4a3f1c7b03242d4d643993.camel@intel.com>
References: <20210104171344.32339-1-chris@chris-wilson.co.uk>
 <21a7e20a8752295c1a4a3f1c7b03242d4d643993.camel@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Souza, Jose" <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 04 Jan 2021 20:29:00 +0000
Message-ID: <160979214073.31003.6792123488889187602@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Guard against
 redifinition of SZ_8G
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBTb3V6YSwgSm9zZSAoMjAyMS0wMS0wNCAxOTo1OTo0MikKPiBPbiBNb24sIDIwMjEt
MDEtMDQgYXQgMTc6MTMgKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IEluIHRoZSBuZWFy
IGZ1dHVyZSwgdXBzdHJlYW0gd2lsbCBpbnRyb2R1Y2UgYSBTWl84RyBtYWNybyB0aGF0IGlzCj4g
PiBzbGlnaHRseSBkaWZmZXJlbnQgdG8gb3VyIG93bi4gRW1wbG95IGEgdGVtcG9yYXJ5IGlmbmRl
ZiB0byBhdm9pZAo+ID4gY29tcGlsYXRpb24gZmFpbHVyZSB1bnRpbCB3ZSBoYXZlIGJhY2ttZXJn
ZWQuCj4gCj4gQWxyZWFkeSBoZXJlIQo+IAo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAKPiBXaWxsIHB1c2ggdGhpcyB0byBmaXgg
YnVpbGQgYnV0IGZyb20gbm93IG9uIHdlIHByb2JhYmx5IHdhbnQgdG8gcmVtb3ZlIHRoaXMgbWFj
cm8gcmlnaHQ/CgpJJ2Qgd2FpdCB0byByZW1vdmUgb3VyIGxvY2FsIFNaXzhHIHVudGlsIGFmdGVy
IHdlIGJhY2ttZXJnZSBpbnRvIGRybS1pbnRlbC1ndC1uZXh0LgpHb3QgdG8ga2VlcCBib3RoIHNp
ZGVzIG9mIHRoZSBtZXJnZSBidWlsZGluZy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
