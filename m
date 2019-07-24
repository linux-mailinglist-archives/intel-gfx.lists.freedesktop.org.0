Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6515772C53
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 12:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710476E492;
	Wed, 24 Jul 2019 10:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20A76E492
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 10:29:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17561465-1500050 for multiple; Wed, 24 Jul 2019 11:29:45 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156395638435.31349.15923031690949143492@skylake-alporthouse-com>
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
 <20190724022153.8927-7-daniele.ceraolospurio@intel.com>
 <156395638435.31349.15923031690949143492@skylake-alporthouse-com>
Message-ID: <156396418361.31349.18388848127196755077@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 24 Jul 2019 11:29:43 +0100
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915/guc: Set GuC init params
 only once
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMjQgMDk6MTk6NDQpCj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTI0IDAzOjIxOjUxKQo+ID4gQWxsIHRoZSBHdUMg
b2JqZWN0cyBhcmUgcGVybWEtcGlubmVkLCBzbyB0aGVpciBvZmZzZXQgY2FuJ3QgY2hhbmdlIGF0
Cj4gPiBydW50aW1lLiBXZSBjYW4gdGhlcmVmb3JlIHNldCAoYW5kIGxvZyEpIHRoZSBwYXJhbWV0
ZXJzIG9ubHkgb25jZSBkdXJpbmcKPiA+IGJvb3QuCj4gPiBTdWdnZXN0ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiA+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpUaGlzIHdhcyBzdGFuZGFsb25l
IGFuZCBJIGhvcGUgbm9uY29udHJvdmVyc2lhbCwgc28gcHVzaGVkLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
