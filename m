Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C2C43BCF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDFF89B27;
	Thu, 13 Jun 2019 15:32:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA4B89B27
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:32:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16890917-1500050 for multiple; Thu, 13 Jun 2019 16:32:00 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613151847.16174-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613151847.16174-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156043991825.17012.5730317348989467462@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 16:31:58 +0100
Subject: Re: [Intel-gfx] [RFC 23/28] drm/i915: Compartmentalize
 timeline_init/park/fini
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNjoxODo0NykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbnRpbnVpbmcgb24g
dGhlIHRoZW1lIG9mIGJldHRlciBsb2dpY2FsIG9yZ2FuaXphdGlvbiBvZiBvdXIgY29kZSwgbWFr
ZQo+IHRoZSBmaXJzdCBzdGVwIHRvd2FyZHMgbWFraW5nIHRoZSB0aW1lbGluZSBjb2RlIGJldHRl
ciBpc29sYXRlZCBmcm9tIHdpZGVyCj4gc3RydWN0IGRybV9pOTE1X3ByaXZhdGUuCgpIbW0sIHRp
bWVsaW5lcyBibHVyIHRoZSBsaW5lIHdpdGggc2NoZWQvCgpJIGhhdmVuJ3QgeWV0IHdvcmtlZCBv
dXQgd2hlcmUgdG8gcHV0IGk5MTVfcmVxdWVzdCBhbmQgZnJpZW5kcy4gQXQgdGhlCm1vbWVudCwg
bXkgc2tldGNoIGlzIHRoYXQgdGltZWxpbmVzIGlzIGEgY29uc3VtZXIgb2YgaW50ZWxfZ3QgYW5k
IG5vdApzaXR0aW5nIGluc2lkZS4gaS5lLiB0aGV5IGFyZSBhcyBzb2Z0d2FyZSBjb25zdHJ1Y3Qg
b3ZlciB0b3Agb2YgSFcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
