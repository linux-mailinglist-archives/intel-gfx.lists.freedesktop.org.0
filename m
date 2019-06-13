Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C66436FD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B967389A75;
	Thu, 13 Jun 2019 13:56:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A7689A75
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:56:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16889420-1500050 for multiple; Thu, 13 Jun 2019 14:55:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-12-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613133539.12620-12-tvrtko.ursulin@linux.intel.com>
Message-ID: <156043412118.17012.16516671034764674015@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 14:55:21 +0100
Subject: Re: [Intel-gfx] [RFC 11/28] drm/i915: Convert i915_ppgtt_init_hw to
 intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNDozNToyMikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE1vcmUgcmVtb3ZhbCBv
ZiBpbXBsaWNpdCBkZXZfcHJpdiBmcm9tIHVzaW5nIG9sZCBtbWlvIGFjY2Vzc29ycy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoK
aTkxNV9nZW1fZ3R0LltjaF0gaXMgYW4gb3V0bGllciBhdCB0aGUgbW9tZW50LCB0aGV5IG5lZWQg
dG8gbWlncmF0ZSB0bwpndC8gYnV0IGFyZSBhIGNsdW1zeSBtaXggb2YgaGlnaCBhbmQgbG93IGxl
dmVsIG9iamVjdHMuCgpTbyB3aGlsZSBpdCBzYXlzIGk5MTVfZ2VtIG9uIHRoZSBmcm9udCwgaW50
ZWxfZ3QgaXMgdGhlIHJpZ2h0IGhvbWUuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
