Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4096C180
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 21:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F316E294;
	Wed, 17 Jul 2019 19:31:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86F706E294
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 19:31:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17378935-1500050 for multiple; Wed, 17 Jul 2019 20:31:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
 <20190717180624.20354-3-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190717180624.20354-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <156339190200.25270.4110084873929656430@skylake-alporthouse-com>
Date: Wed, 17 Jul 2019 20:31:42 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Trust programmed MCR in
 read_subslice_reg
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxOTowNjoyMCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEluc3RlYWQgb2YgcmUt
Y2FsY3VsYXRpbmcgdGhlIE1DUiBzZWxlY3RvciBpbiByZWFkX3N1YnNsaWNlX3JlZyBkbyB0aGUK
PiByd20gb24gaXRzIGV4aXN0aW5nIHZhbHVlIGFuZCByZXN0b3JlIGl0IHdoZW4gZG9uZS4KCkkg
c3VjY2Vzc2Z1bGx5IHdvcmtlZCBiYWNrIGZyb20gaW1wbGVtZW50YXRpb24gdG8gY2hhbmdlbG9n
Lgo+IAo+IFRoaXMgY29uc29saWRhdGVzIE1DUiBwcm9ncmFtbWluZyB0byBvbmUgcGxhY2UgZm9y
IGNubCssIGFuZCBhdm9pZHMKPiByZS1jYWxjdWxhdGluZyBpdHMgZGVmYXVsdCB2YWx1ZSBvbiBv
bGRlciBwbGF0Zm9ybXMgZHVyaW5nIGhhbmdjaGVjay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
