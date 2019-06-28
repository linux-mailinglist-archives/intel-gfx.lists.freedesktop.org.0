Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6DB59797
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 11:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADCD66E85D;
	Fri, 28 Jun 2019 09:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D056E85D
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 09:35:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17055049-1500050 for multiple; Fri, 28 Jun 2019 10:35:40 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-2-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-2-matthew.auld@intel.com>
Message-ID: <156171453814.24860.9156647493127081511@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 10:35:38 +0100
Subject: Re: [Intel-gfx] [PATCH v2 01/37] drm/i915: buddy allocator
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTU6NTcpCj4gK3N0YXRpYyB2b2lk
IF9faTkxNV9idWRkeV9mcmVlKHN0cnVjdCBpOTE1X2J1ZGR5X21tICptbSwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9idWRkeV9ibG9jayAqYmxvY2spCj4gK3sK
PiArICAgICAgIGxpc3RfZGVsX2luaXQoJmJsb2NrLT5saW5rKTsgLyogV2UgaGF2ZSBvd25lcnNo
aXAgbm93ICovCgpUaGF0IGlzIGFuIGltcG9ydGFudCBvYnNlcnZhdGlvbi4gRXZlbiBtb3JlIGlt
cG9ydGFudCBpcyB0aGF0IGFzIHlvdQpkaWRuJ3Qgb3duIGl0LCB5b3Ugc2hvdWxkbid0IHRvdWNo
IHRoZSBwcmV2aW91cyBsaW5rYWdlLCBhbmQganVzdCBhc3N1bWUKY29udHJvbC4gVGhlIG93bmVy
IHJlbGlucXVpc2hlZCBhbGwgY29udHJvbCBvZiB0aGUgYmxvY2sgdXBvbiBmcmVlaW5nLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
