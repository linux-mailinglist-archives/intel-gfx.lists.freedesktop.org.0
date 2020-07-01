Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC232210EE0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 17:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909A16E23D;
	Wed,  1 Jul 2020 15:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63AC66E23D
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 15:16:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21677143-1500050 for multiple; Wed, 01 Jul 2020 16:16:17 +0100
MIME-Version: 1.0
In-Reply-To: <20200701150721.423630-1-michal@hardline.pl>
References: <20200701150721.423630-1-michal@hardline.pl>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Michał Winiarski <michal@hardline.pl>, intel-gfx@lists.freedesktop.org
Date: Wed, 01 Jul 2020 16:16:18 +0100
Message-ID: <159361657893.23379.16443128613635222920@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reboot CI if we get wedged during
 driver init
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
Cc: Michał Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAyMC0wNy0wMSAxNjowNzoyMSkKPiBGcm9tOiBN
aWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gCj4gR2V0dGlu
ZyB3ZWRnZWQgZGV2aWNlIG9uIGRyaXZlciBpbml0IGlzIHByZXR0eSBtdWNoIHVucmVjb3ZlcmFi
bGUuCj4gU2luY2Ugd2UncmUgcnVubmluZyB2ZXJpb3VzIHNjZW5hcmlvcyB0aGF0IG1heSBwb3Rl
bnRpYWxseSBoaXQgdGhpcyBpbgo+IENJIChtb2R1bGUgcmVsb2FkIC8gc2VsZnRlc3RzIC8gaG90
dW5wbHVnKSwgYW5kIGlmIGl0IGhhcHBlbnMsIGl0IG1lYW5zCj4gdGhhdCB3ZSBjYW4ndCB0cnVz
dCBhbnkgc3Vic2VxdWVudCBDSSByZXN1bHRzLCB3ZSBzaG91bGQganVzdCBhcHBseSB0aGUKPiB0
YWludCB0byBsZXQgdGhlIENJIGtub3cgdGhhdCBpdCBzaG91bGQgcmVib290IChDSSBjaGVja3Mg
dGFpbnQgYmV0d2Vlbgo+IHRlc3QgcnVucykuCgpPaywgd2UgdHJlYXQgV0VER0VEX09OX0lOSVQg
YXMgbm9uLXJlY292ZXJhYmxlIFthcyBvcHBvc2VkIHRvIHRoZSBsZXNzCndlZGdlZCBXRURHRURd
LgogCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lA
aW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+ClJldmlld2VkLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
