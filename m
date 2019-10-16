Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39053D91F4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BDD56E977;
	Wed, 16 Oct 2019 13:04:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4246E977
 for <Intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:04:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18857166-1500050 for multiple; Wed, 16 Oct 2019 14:04:30 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191016122843.9429-3-tvrtko.ursulin@linux.intel.com>
References: <20191016122843.9429-1-tvrtko.ursulin@linux.intel.com>
 <20191016122843.9429-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <157123106817.22469.9547825717469026401@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 16 Oct 2019 14:04:28 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Pass in intel_gt at some
 for_each_engine sites
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNiAxMzoyODo0MykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFdoZXJlIHRoZSBmdW5j
dGlvbiwgb3IgY29kZSBzZWdtZW50LCBvcGVyYXRlcyBvbiBpbnRlbF9ndCwgd2UgbmVlZCB0bwo+
IHN0YXJ0IHBhc3NpbmcgaXQgaW5zdGVhZCBvZiBpOTE1IHRvIGZvcl9lYWNoX2VuZ2luZShfbWFz
a2VkKS4KPiAKPiBUaGlzIGlzIGFub3RoZXIgcGFydGlhbCBzdGVwIGluIG1pZ3JhdGlvbiBvZiBp
OTE1LT5lbmdpbmVzW10gdG8KPiBndC0+ZW5naW5lc1tdLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
