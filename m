Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 658FF102EDA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 23:08:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8924D6E9C5;
	Tue, 19 Nov 2019 22:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2526E9C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 22:08:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19264086-1500050 for multiple; Tue, 19 Nov 2019 22:08:09 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191119213032.133992-1-stuart.summers@intel.com>
In-Reply-To: <20191119213032.133992-1-stuart.summers@intel.com>
Message-ID: <157420128680.13839.10864804000426800390@skylake-alporthouse-com>
Date: Tue, 19 Nov 2019 22:08:06 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Ensure aperture exists before
 setting domain to GTT
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0xMS0xOSAyMTozMDozMikKPiBtbWFwX2d0dCBp
cyBhbHJlYWR5IGNvdmVyZWQgYnkgYSBjaGVjayBmb3IgYXBlcnR1cmUgcHJlc2VuY2UuCj4gQWxz
byBhZGQgdGhlIGNhc2UgdG8gdGhlIGdlbV9zZXRfZG9tYWluIElPQ1RMIHRvIGF2b2lkIHRoaXMK
PiBwYXRoIGZvciB1bnN1cHBvcnRlZCBwbGF0Zm9ybXMuCgpJdCBkb2Vzbid0IGhhcm0gZWl0aGVy
LCBpdCB3aWxsIGp1c3QgbWVhbiBpbiBhIHBsYWNlIHdoZXJlIGl0IGlzIG5laXRoZXIKaW4gdGhl
IEdQVSBub3IgaW4gdGhlIENQVSBjYWNoZSwgc2FtZSBhcyBpdCBkb2VzIHRvZGF5LiBUaGUgYWRk
aXRpb25hbApmbHVzaGVzIGNvbWluZyBvdXQgb2YgYSBHVFQgd3JpdGUgZG9tYWluIHNob3VsZCBh
bHJlYWR5IGJlIGVsaWRlZC4KCkl0IGlzIHVzZWQgaW50ZXJuYWxseSB0byBtZWFuIHByZWNpc2Vs
eSB0aGF0Li4uCgpVc2Vyc3BhY2Ugc2hvdWxkIGFscmVhZHkgYmUgd2VhbmluZyBpdHNlbGYgb2Zm
IHNldC1kb21haW4gYWx0b2dldGhlci4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
