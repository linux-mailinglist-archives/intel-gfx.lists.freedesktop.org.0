Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5570F7E050
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 18:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B8D6E721;
	Thu,  1 Aug 2019 16:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C8BE6E721
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 16:36:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17793691-1500050 for multiple; Thu, 01 Aug 2019 17:36:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <0f4b8c49-ffe3-87a5-6abb-dffa6f9fef8b@linux.intel.com>
 <156464886350.2512.13201380958664478117@skylake-alporthouse-com>
 <340df1ef-0d75-131d-cc39-b3d9edb9c3ec@linux.intel.com>
 <156465702635.2512.9932000772655773495@skylake-alporthouse-com>
 <156465803327.5400.3625959459348155022@skylake-alporthouse-com>
 <1fcdbd8b-acf4-5493-24b5-16eca782d997@linux.intel.com>
 <156467451363.6045.1707772989858443331@skylake-alporthouse-com>
 <156467525946.6045.18296866780043609699@skylake-alporthouse-com>
 <fc2a1eb2-253c-f727-bb89-b72585b43568@linux.intel.com>
In-Reply-To: <fc2a1eb2-253c-f727-bb89-b72585b43568@linux.intel.com>
Message-ID: <156467740167.6045.132222776253567800@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 17:36:41 +0100
Subject: Re: [Intel-gfx] [PATCH 03/23] drm/i915: Remove lrc default desc
 from GEM context
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAxNzoyMjoyNykKPiAKPiBPbiAwMS8w
OC8yMDE5IDE3OjAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gV2hvIGtpZG5hcHBlZCByZWFsIENo
cmlzPyA6RCBXZSBjb3VsZCBtZXJnZSB0aGUgbWFzayBjbGVhcmluZyBhbmQgcmVkdWNlIAo+IHBp
biB0byBvbmUgY29uZGl0aW9uYWwgYW5kIG9uZSBhbmQsIHNoaWZ0LCBvci4gOikKCkRvbid0IHdv
cnJ5IGluIGFib3V0IDI0IHBhdGNoZXMgdGltZSwgd2UgY2FuIHJlbW92ZSB0aGUgYnJhbmNoZXMu
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
