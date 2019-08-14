Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 060468CD6B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 10:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73EBF6E439;
	Wed, 14 Aug 2019 08:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A39226E468
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 08:00:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18070675-1500050 for multiple; Wed, 14 Aug 2019 09:00:19 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190814002145.29056-1-daniele.ceraolospurio@intel.com>
References: <20190814002145.29056-1-daniele.ceraolospurio@intel.com>
Message-ID: <156576961818.2301.17142069883437447929@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 14 Aug 2019 09:00:18 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Remove client->submissions
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTE0IDAxOjIxOjQ1KQo+IFRo
ZSBlbmdpbmUtPmd1Y19pZCBpcyBHdUMgRlcgZGVmaW5lZCBhbmQgaXQgaXMgbm90IGd1YXJhbnRl
ZWQgdG8gYmUKPiBiZWxvdyBJOTE1X05VTV9FTkdJTkVTLCBzbyB3ZSBzaG91bGRuJ3QgdXNlIGl0
IHdpdGggdGhlIGk5MTUtZGVmaW5lZAo+IGNsaWVudC0+c3VibWlzc2lvbnMsIGFzIHdlIG1pZ2h0
IG92ZXJmbG93Lgo+IEluc3RlYWQgb2YgZml4aW5nIGl0LCBqdXN0IGdldCByaWQgb2YgY2xpZW50
LT5zdWJtaXNzaW9ucywgYmVjYXVzZSB0aGUKPiBpbmZvcm1hdGlvbiB3ZSBnZXQgZnJvbSBpdCBp
cyBub3QgaW50ZXJlc3RpbmcgYW55bW9yZSBub3cgdGhhdCB3ZSBvbmx5Cj4gaGF2ZSAxIGNsaWVu
dC4KCkl0IHdhcyBldmVyIHVzZWZ1bD8gVW1wdGVlbiBiaWxsaW9uIHN1Ym1pc3Npb25zIGhlcmUs
IHVtcHRlZW4gYmlsbGlvbgpzdWJtaXNzaW9ucyB0aGVyZS4gT3IgdGhlIG90aGVyIGV4dHJlbWUs
IDEuIE5vIG1vcmUsIG5vIGxlc3MgOikKIAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
