Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A73E5251
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 19:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B780C6EB14;
	Fri, 25 Oct 2019 17:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0886EB14
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 17:31:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18966331-1500050 for multiple; Fri, 25 Oct 2019 18:31:35 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191025121718.18806-1-lionel.g.landwerlin@intel.com>
 <157200617446.2725.7580006989346450131@skylake-alporthouse-com>
 <f63e0f74-53d9-10f9-3518-7f108515cb93@intel.com>
In-Reply-To: <f63e0f74-53d9-10f9-3518-7f108515cb93@intel.com>
Message-ID: <157202469308.13056.6963397645519322078@skylake-alporthouse-com>
Date: Fri, 25 Oct 2019 18:31:33 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: capture aux page table error
 register
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0yNSAxMzoyOTo0NikKPiBPbiAyNS8x
MC8yMDE5IDE1OjIyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTEwLTI1IDEzOjE3OjE4KQo+ID4+IFRHTCBpbnRyb2R1Y2VkIGEgZmVhdHVy
ZSBpbiB3aGljaCB3ZSBtYXAgdGhlIG1haW4gc3VyZmFjZSB0byB0aGUKPiA+PiBhdXhpbGxpYXJ5
IHN1cmZhY2UuIElmIHdlIHNjcmV3IHVwIHRoZSBwYWdlIHRhYmxlcywgdGhlIEhXIGhhcyBhCj4g
Pj4gcmVnaXN0ZXIgdG8gdGVsbCB1cyB3aGljaCBlbmdpbmUgZW5jb3VudGVycyBhIGZhdWx0IGlu
IHRoZSBwYWdlIHRhYmxlCj4gPj4gd2Fsay4KPiA+IFBsYXRmb3JtIHNwZWNpZmljLCBvciBmb3Ig
bGlrZWx5IGFsbCBnZW4xMiBhbmQgdGhlbiBnZW4xMis/Cj4gCj4gCj4gSXQgYWxzbyBhcHBsaWVz
IHRvIHRoZSBuZXcgREdGWCBwYXRjaGVzIHRoYXQgc3RhcnRlZCB0cmlja2xpbmcgZG93bi4KPiAK
PiBUaG91Z2ggSSBkb24ndCBrbm93IHdoZXJlIHRoZSBHZW4xMiBib3VuZGFyeSBpcyB3aGljaCBp
cyB3aHkgSSB3ZW50IHdpdGggCj4gcGxhdGZvcm0gbmFtZS4KCkkgZ2FtYmxlZCBhbmQgYXBwbGll
ZCB0byBpdCB0byBnZW4xMi4gVGhhbmtzLCBwdXNoZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
