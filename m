Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE1DCDE8C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 11:59:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61CC46E513;
	Mon,  7 Oct 2019 09:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658EA6E513
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 09:59:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18749034-1500050 for multiple; Mon, 07 Oct 2019 10:59:07 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191007091920.2176-3-abdiel.janulgue@linux.intel.com>
References: <20191007091920.2176-1-abdiel.janulgue@linux.intel.com>
 <20191007091920.2176-3-abdiel.janulgue@linux.intel.com>
Message-ID: <157044234579.2661.13706266546827730732@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 07 Oct 2019 10:59:05 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTAtMDcgMTA6MTk6MTgpCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCj4gaW5kZXggY2M3MGFiYTZhYzI2Li45MTgyZGE1NzE4MmIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtMjY5Niw3ICsyNjk2LDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBkcm1faW9jdGxfZGVzYyBpOTE1X2lvY3Rsc1tdID0gewo+ICAgICAgICAgRFJNX0lP
Q1RMX0RFRl9EUlYoSTkxNV9HRU1fUFJFQUQsIGk5MTVfZ2VtX3ByZWFkX2lvY3RsLCBEUk1fUkVO
REVSX0FMTE9XKSwKPiAgICAgICAgIERSTV9JT0NUTF9ERUZfRFJWKEk5MTVfR0VNX1BXUklURSwg
aTkxNV9nZW1fcHdyaXRlX2lvY3RsLCBEUk1fUkVOREVSX0FMTE9XKSwKPiAgICAgICAgIERSTV9J
T0NUTF9ERUZfRFJWKEk5MTVfR0VNX01NQVAsIGk5MTVfZ2VtX21tYXBfaW9jdGwsIERSTV9SRU5E
RVJfQUxMT1cpLAo+IC0gICAgICAgRFJNX0lPQ1RMX0RFRl9EUlYoSTkxNV9HRU1fTU1BUF9HVFQs
IGk5MTVfZ2VtX21tYXBfZ3R0X2lvY3RsLCBEUk1fUkVOREVSX0FMTE9XKSwKPiArICAgICAgIERS
TV9JT0NUTF9ERUZfRFJWKEk5MTVfR0VNX01NQVBfT0ZGU0VULCBpOTE1X2dlbV9tbWFwX2d0dF9p
b2N0bCwgRFJNX1JFTkRFUl9BTExPVyksCgpBaGVtLgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
