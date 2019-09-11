Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E322AF763
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 10:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8F089BFF;
	Wed, 11 Sep 2019 08:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4789989BFF
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 08:00:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18447199-1500050 for multiple; Wed, 11 Sep 2019 09:00:53 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Kenneth Graunke <kenneth@whitecape.org>, intel-gfx@lists.freedesktop.org
References: <20190911014801.26821-1-kenneth@whitecape.org>
 <156818774231.30942.7445180961814616857@skylake-alporthouse-com>
In-Reply-To: <156818774231.30942.7445180961814616857@skylake-alporthouse-com>
Message-ID: <156818885157.30942.4507661070241185214@skylake-alporthouse-com>
Date: Wed, 11 Sep 2019 09:00:51 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Whitelist COMMON_SLICE_CHICKEN2
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMTEgMDg6NDI6MjIpCj4gUXVvdGluZyBLZW5u
ZXRoIEdyYXVua2UgKDIwMTktMDktMTEgMDI6NDg6MDEpCj4gPiBUaGlzIGFsbG93cyB1c2Vyc3Bh
Y2UgdG8gdXNlICJsZWdhY3kiIG1vZGUgZm9yIHB1c2ggY29uc3RhbnRzLCB3aGVyZQo+ID4gdGhl
eSBhcmUgY29tbWl0dGVkIGF0IDNEUFJJTUlUSVZFIG9yIGZsdXNoIHRpbWUsIHJhdGhlciB0aGFu
IGJlaW5nCj4gPiBjb21taXR0ZWQgYXQgM0RTVEFURV9CSU5ESU5HX1RBQkxFX1BPSU5URVJTX1hT
IHRpbWUuICBHZW42LTggYW5kIEdlbjExCj4gPiBib3RoIHVzZSB0aGUgImxlZ2FjeSIgYmVoYXZp
b3IgLSBvbmx5IEdlbjkgd29ya3MgaW4gdGhlICJuZXciIHdheS4KPiA+IAo+ID4gQ29uZmxhdGlu
ZyBwdXNoIGNvbnN0YW50cyB3aXRoIGJpbmRpbmcgdGFibGVzIGlzIHBhaW5mdWwgZm9yIHVzZXJz
cGFjZSwKPiA+IHdlIHdvdWxkIGxpa2UgdG8gYmUgYWJsZSB0byBhdm9pZCBkb2luZyBzby4KPiA+
IAo+ID4gU2lnbmVkLW9mZi1ieTogS2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5v
cmc+Cj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClB1c2hlZC4gRG8geW91IGFsc28gd2Fu
dCB0byBkbyB0aGlzIGZvciBpY2w/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
