Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA01591609
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 12:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3889F6E061;
	Sun, 18 Aug 2019 10:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF8E76E061
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 10:00:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18178848-1500050 for multiple; Sun, 18 Aug 2019 11:00:14 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190818095204.31568-4-michal.wajdeczko@intel.com>
References: <20190818095204.31568-1-michal.wajdeczko@intel.com>
 <20190818095204.31568-4-michal.wajdeczko@intel.com>
Message-ID: <156612241165.25088.1515760153670282123@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 18 Aug 2019 11:00:11 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Never fail on HuC firmware
 errors
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE4IDEwOjUyOjA0KQo+IFRoZXJlIGlz
IG5vIG5lZWQgdG8gbWFyayB3aG9sZSBHUFUgYXMgd2VkZ2VkIGp1c3QgYmVjYXVzZQo+IG9mIHRo
ZSBjdXN0b20gSHVDIGZ3IGZhaWx1cmUgYXMgdXNlcnMgY2FuIGFsd2F5cyB2ZXJpZnkKPiBhY3R1
YWwgSHVDIGZpcm13YXJlIHN0YXR1cyB1c2luZyBleGlzdGluZyBIVUNfU1RBVFVTIGlvY3RsLgoK
SWYgd2UgdHJ5IGFuZCBmYWlsLCB3b3VsZCBpdCBub3QgYmUgd29ydGggYSBkZXZfbm90aWNlPwog
Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgoKRWl0aGVyIHdheSwKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
