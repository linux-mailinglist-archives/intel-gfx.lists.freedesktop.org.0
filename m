Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D416CBEF6A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036516ED1B;
	Thu, 26 Sep 2019 10:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB326ED1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:18:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18624588-1500050 for multiple; Thu, 26 Sep 2019 11:18:16 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926100635.9416-2-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
 <20190926100635.9416-2-michal.winiarski@intel.com>
Message-ID: <156949309350.4979.16008999337943026576@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 11:18:13 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/execlists: Use per-process
 HWSP as scratch
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAxOS0wOS0yNiAxMTowNjozMSkKPiBTb21lIG9m
IG91ciBjb21tYW5kcyAoTUlfRkxVU0hfRFcgLyBQSVBFX0NPTlRST0wpIHJlcXVpcmUgYSBwb3N0
LXN5bmMgd3JpdGUKPiBvcGVyYXRpb24gdG8gYmUgcGVyZm9ybWVkLiBDdXJyZW50bHkgd2UncmUg
dXNpbmcgZGVkaWNhdGVkIFZNQSBmb3IKPiBQSVBFX0NPTlRST0wgYW5kIGdsb2JhbCBIV1NQIGZv
ciBNSV9GTFVTSF9EVy4KPiBPbiBleGVjbGlzdHMgcGxhdGZvcm1zLCBlYWNoIG9mIG91ciBjb250
ZXh0cyBoYXMgYW4gYXJlYSB0aGF0IGNhbiBiZQo+IHVzZWQgYXMgc2NyYXRjaCBzcGFjZS4gTGV0
J3MgdXNlIHRoYXQgaW5zdGVhZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNr
aSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
