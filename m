Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D83DE0233
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE47D6E5BF;
	Tue, 22 Oct 2019 10:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A656E5BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 10:37:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18923409-1500050 for multiple; Tue, 22 Oct 2019 11:37:20 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <96f79055-5f3a-7774-825e-00855105b7d4@linux.intel.com>
References: <20191021104811.25663-1-abdiel.janulgue@linux.intel.com>
 <20191021104811.25663-4-abdiel.janulgue@linux.intel.com>
 <157166491547.29536.1978879286617090513@skylake-alporthouse-com>
 <96f79055-5f3a-7774-825e-00855105b7d4@linux.intel.com>
Message-ID: <157174063719.2684.399580876750315631@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 22 Oct 2019 11:37:17 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTAtMjIgMDg6NTI6NTUpCj4gCj4gCj4gT24g
MjEvMTAvMjAxOSAxNi4zNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBBYmRpZWwg
SmFudWxndWUgKDIwMTktMTAtMjEgMTE6NDg6MTApCj4gPj4gK2ludAo+ID4+ICtpOTE1X2dlbV9t
bWFwX2R1bWIoc3RydWN0IGRybV9maWxlICpmaWxlLAo+ID4+ICsgICAgICAgICAgICAgICAgIHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gPj4gKyAgICAgICAgICAgICAgICAgdTMyIGhhbmRsZSwK
PiA+PiArICAgICAgICAgICAgICAgICB1NjQgKm9mZnNldCkKPiA+PiArewo+ID4+ICsgICAgICAg
cmV0dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZpbGUsIGhhbmRsZSwgSTkxNV9N
TUFQX1RZUEVfV0MsCj4gPiAKPiA+IEl0IHN0aWxsIG5lZWRzIHRvIGRvIGJvb3RfY3B1X2hhcyhQ
QVQpLAo+IAo+IFNvIHdlIHByb2JhYmx5IG5lZWQgYSBzcGVjaWFsIHVzZS1jYXNlIGZvciBHVFQg
bW1hcHMgaW4gdGhvc2Uga2luZCBvZgo+IGh3LCBubz8KCmVudW0gdHlwZSA9IGJvb3RfY3B1X2hh
cyhQQVQpID8gSTkxNV9NTUFQX1RZUEVfV0MgOiBJOTE1X01NQVBfVFlQRV9HVFQ7CgpPZiBjb3Vy
c2UgdGhlIG1hY2hpbmVzIHdpdGhvdXQgUEFUIGFyZSBhbHNvIHRoZSBvbmVzIHdpdGggdGlueSBH
R1RULgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
