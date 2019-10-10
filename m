Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 798DDD243F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 10:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4540789E33;
	Thu, 10 Oct 2019 08:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D6E89E33
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 08:50:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18787019-1500050 for multiple; Thu, 10 Oct 2019 09:49:41 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191009230424.6507-1-daniele.ceraolospurio@intel.com>
References: <20191009230424.6507-1-daniele.ceraolospurio@intel.com>
Message-ID: <157069737868.18808.17756376467044746801@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 10 Oct 2019 09:49:38 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: the BCS engine supports
 relative MMIO
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEwLTEwIDAwOjA0OjIzKQo+IFRo
ZSBzcGVjcyBkb24ndCBtZW50aW9uIGFueSBzcGVjaWZpYyBIVyBsaW1pdGF0aW9uIG9uIHRoZSBi
bGl0dGVyIGFuZAo+IG1hbnVhbCBpbnNwZWN0aW9uIHNob3dzIHRoYXQgdGhlIEhXIGRvZXMgc2V0
IHRoZSByZWxhdGl2ZSBNTUlPIGJpdCBpbgo+IHRoZSBMUkkgb2YgdGhlIGJsaXR0ZXIgY29udGV4
dCBpbWFnZSwgc28gd2UgY2FuIHJlbW92ZSBvdXIgbGltaXRhdGlvbnMuCgpJIGNvbmN1ciwgdGhl
IEhXIGl0c2VsZiBzZXRzIHRoZSBiaXQsIHNvIGl0IGNhbid0IGJlIHRvbyBoYXJtZnVsLi4uCgo+
IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+IENj
OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
