Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EB5B3AFE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 15:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 208196E976;
	Mon, 16 Sep 2019 13:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D65489E26;
 Mon, 16 Sep 2019 13:09:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18507091-1500050 for multiple; Mon, 16 Sep 2019 14:09:50 +0100
MIME-Version: 1.0
To: Petri Latvala <petri.latvala@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190916120604.GT4019@platvala-desk.ger.corp.intel.com>
References: <20190915093948.2835-1-chris@chris-wilson.co.uk>
 <20190916120604.GT4019@platvala-desk.ger.corp.intel.com>
Message-ID: <156863938766.4154.2382053069728827745@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 16 Sep 2019 14:09:47 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t]
 igt/kms_frontbuffer_tracking: Skip over IGT_DRAW_BLT when there's no BLT
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBQZXRyaSBMYXR2YWxhICgyMDE5LTA5LTE2IDEzOjA2OjA0KQo+IE9uIFN1biwgU2Vw
IDE1LCAyMDE5IGF0IDEwOjM5OjQ4QU0gKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IElm
IHRoZSBibGl0dGVyIGlzIG5vdCBhdmFpbGFibGUsIHdlIGNhbm5vdCB1c2UgaXQgYXMgYSBzb3Vy
Y2UgZm9yIGRpcnR5Cj4gPiByZWN0YW5nbGVzLiBXZSBzaGFsbCBoYXZlIHRvIHJlbHkgb24gdGhl
IG90aGVyIGVuZ2luZXMgdG8gY3JlYXRlIEdQVQo+ID4gZGlydHkgaW5zdGVhZC4KPiA+IAo+ID4g
djI6IFRyeSB1c2luZyBsb3RzIG9mIHN1Ymdyb3VwK2ZpeHR1cmVzCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IAo+IAo+IFJl
dmlld2VkLWJ5OiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KClNhZGx5
LCBpdCBuZWVkcyBhIGJpdCBtYXNzYWdpbmcgb2YgdGhlIHVuZGVybHlpbmcgbGlicmFyeSB0byBh
dm9pZCB1c2luZwp0aGUgYmxpdHRlciBpdCBzZWVtcy4gT3IgSSd2ZSBtaXNzZWQgYSBtZXRob2Qg
PT0gSUdUX0RSQVdfQkxULiAoQnV0IGlpcmMKdGhlcmUncyBzb21lIHBhdGhzIHdoZXJlIHRoZSBm
YiBsaWIgdXNlcyB0aGUgYmxpdHRlciB0byBkZXRpbGUuKQotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
