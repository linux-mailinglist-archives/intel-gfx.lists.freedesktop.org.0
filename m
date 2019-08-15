Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 710D98F4EC
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 21:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75476EA63;
	Thu, 15 Aug 2019 19:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 465B16EA63
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 19:43:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18156094-1500050 for multiple; Thu, 15 Aug 2019 20:43:03 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHN5u-SpR0MisOVmyaWeBn-eGbtqUzJquHC8GOrmEFxmdA@mail.gmail.com>
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
 <20190814092643.1908-4-chris@chris-wilson.co.uk>
 <CAM0jSHN5u-SpR0MisOVmyaWeBn-eGbtqUzJquHC8GOrmEFxmdA@mail.gmail.com>
Message-ID: <156589818151.11610.6981348457100657987@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 15 Aug 2019 20:43:01 +0100
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/gt: Guard timeline pinning
 with its own mutex
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMTUgMjA6MTk6NTgpCj4gT24gV2VkLCAxNCBB
dWcgMjAxOSBhdCAxMDoyOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IEluIHByZXBhcmF0aW9uIGZvciByZW1vdmluZyBzdHJ1Y3RfbXV0ZXgg
ZnJvbSBhcm91bmQgY29udGV4dCByZXRpcmVtZW50LAo+ID4gd2UgbmVlZCB0byBtYWtlIHRpbWVs
aW5lIHBpbm5pbmcgc2FmZS4gU2luY2UgbXVsdGlwbGUgZW5naW5lcy9jb250ZXh0cwo+ID4gY2Fu
IHNoYXJlIGEgc2luZ2xlIHRpbWVsaW5lLCBpdCBuZWVkcyB0byBiZSBwcm90ZWN0ZWQgYnkgYSBt
dXRleC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiAKPiBXaXRoIGEgbW9yZSBhY2N1cmF0ZSBjb21taXQgbWVzc2FnZSwKPiBS
ZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKQ3J1ZWwu
CgpJbiBwcmVwYXJhdGlvbiBmb3IgcmVtb3Zpbmcgc3RydWN0X211dGV4IGZyb20gYXJvdW5kIGNv
bnRleHQgcmV0aXJlbWVudCwKd2UgbmVlZCB0byBtYWtlIHRpbWVsaW5lIHBpbm5pbmcgYW5kIHVu
cGlubmluZyBzYWZlLiBTaW5jZSBtdWx0aXBsZQplbmdpbmVzL2NvbnRleHRzIGNhbiBzaGFyZSBh
IHNpbmdsZSB0aW1lbGluZSwgd2UgY2Fubm90IHJlbHkgb24KYm9ycm93aW5nIHRoZSBjb250ZXh0
IG11dGV4IChvdGhlcndpc2Ugd2UgY291bGQgc3RhdGUgdGhhdCB0aGUgdGltZWxpbmUKaXMgb25s
eSBwaW5uZWQvdW5waW5uZWQgaW5zaWRlIHRoZSBjb250ZXh0IHBpbi91bnBpbiBhbmQgc28gZ3Vh
cmRlZCBieQppdCkuIEhvd2V2ZXIsIHdlIG9ubHkgcGVyZm9ybSBhIHNlcXVlbmNlIG9mIGF0b21p
YyBvcGVyYXRpb25zIGluc2lkZSB0aGUKdGltZWxpbmUgcGluL3VucGluIGFuZCB0aGUgc2VxdWVu
Y2Ugb2YgdGhvc2Ugb3BlcmF0aW9ucyBpcyBzYWZlIGZvciBhCmNvbmN1cnJlbnQgdW5waW4gLyBw
aW4sIHNvIHdlIGNhbiByZWxheCB0aGUgc3RydWN0X211dGV4IHJlcXVpcmVtZW50LgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
