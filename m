Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0239FAEE09
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 17:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266816E0F9;
	Tue, 10 Sep 2019 15:02:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2525B6E0F9
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 15:02:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18440198-1500050 for multiple; Tue, 10 Sep 2019 16:02:21 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190910143823.10686-3-tvrtko.ursulin@linux.intel.com>
References: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
 <20190910143823.10686-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <156812773972.30942.5569782766397497833@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 10 Sep 2019 16:02:19 +0100
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Make wait_for_timelines take
 struct intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xMCAxNTozODoyMSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFRpbWVsaW5lcyBsaXZl
IGluIHN0cnVjdCBpbnRlbF9ndCBzbyBtYWtlIHdhaXRfZm9yX3RpbWVsaW5lcyB0YWtlCj4gZXhh
Y3RseSB3aGF0IGl0IG5lZWRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50
ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkkn
dmUgZGVsZXRlZCB0aGlzIGNvZGUsIGZ3aXcsIG1lcmdlZCBpdCB3aXRoIHJlcXVlc3QgbWFuYWdl
bWVudCBhbmQKZW5kZWQgdXAgd2l0aCBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMoKQoKU3RpbGws
IApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
