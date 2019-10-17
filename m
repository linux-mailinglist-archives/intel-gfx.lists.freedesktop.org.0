Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF66DA98E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 12:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97CF89DB5;
	Thu, 17 Oct 2019 10:01:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB6189DB5
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 10:01:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18867189-1500050 for multiple; Thu, 17 Oct 2019 11:01:18 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191017094500.21831-2-tvrtko.ursulin@linux.intel.com>
References: <20191017094500.21831-1-tvrtko.ursulin@linux.intel.com>
 <20191017094500.21831-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <157130647649.9853.1494846979015828438@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 17 Oct 2019 11:01:16 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Pass in intel_gt at some
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNyAxMDo0NTowMCkKPiBGcm9tOiBUdnJ0
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
