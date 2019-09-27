Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7E9C0CE6
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 22:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941776E245;
	Fri, 27 Sep 2019 20:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8069C6E245
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 20:55:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644651-1500050 for multiple; Fri, 27 Sep 2019 21:55:00 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927204119.GA2902@intel.intel>
References: <20190927191443.14126-1-chris@chris-wilson.co.uk>
 <20190927204119.GA2902@intel.intel>
Message-ID: <156961769595.1880.4833881253964120074@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 21:54:55 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Provide a mock GPU
 reset routine
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTA5LTI3IDIxOjQxOjE5KQo+IEhpIENocmlzLAo+IAo+
IE9uIEZyaSwgU2VwIDI3LCAyMDE5IGF0IDA4OjE0OjQyUE0gKzAxMDAsIENocmlzIFdpbHNvbiB3
cm90ZToKPiA+IEZvciB0aG9zZSBtb2NrIHRlc3RzIHRoYXQgbWF5IHdpc2ggdG8gcHJldGVuZCB0
cmlnZ2VyaW5nIGEgR1BVIHJlc2V0IGFuZAo+ID4gcHJvY2Vzc2luZyB0aGUgY2xlYW51cC4KPiAK
PiBUaGUgcGF0Y2ggaXMgT0ssIHBlciBzZSwgYnV0IEkgdGhpbmsgaXQgc2hvdWxkIGJlIHNwbGl0
IGluIHR3bwo+IHBhcnRzOgo+IAo+ICAtIHRoZSBpOTE1IHRvIGd0IGNvbnZlcnNpb24gKHRoYXQg
aXMgdGhlIGJpZ2dlc3QgcGFydCBvZiB0aGUKPiAgICBwYXRjaCkKPiAgLSB0aGUgbW9jay1yZXNl
dCBwYXJ0IChiYXNraWNhbGx5IHRoZSBmdW5jdGlvbikKPiAKPiByaWdodD8KCkJ1dCB5b3UgcmVh
ZCBpdCBhbGwgYWxyZWFkeS4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
