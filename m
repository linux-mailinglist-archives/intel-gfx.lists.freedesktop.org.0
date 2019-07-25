Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D22574D6F
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 13:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD976E71F;
	Thu, 25 Jul 2019 11:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1708F6E71F;
 Thu, 25 Jul 2019 11:48:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17595300-1500050 for multiple; Thu, 25 Jul 2019 12:48:33 +0100
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190725114416.29715.72188@emeril.freedesktop.org>
References: <20190725074305.22754-1-chris@chris-wilson.co.uk>
 <20190725114416.29715.72188@emeril.freedesktop.org>
Message-ID: <156405531129.31349.13777356195191757320@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 25 Jul 2019 12:48:31 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Unshare_the_idle-barrier_from_other_kernel_requests_?=
 =?utf-8?b?KHJldjQp?=
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

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDctMjUgMTI6NDQ6MTYpCj4gPT0gU2VyaWVzIERldGFp
bHMgPT0KPiAKPiBTZXJpZXM6IGRybS9pOTE1OiBVbnNoYXJlIHRoZSBpZGxlLWJhcnJpZXIgZnJv
bSBvdGhlciBrZXJuZWwgcmVxdWVzdHMgKHJldjQpCj4gVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MTcxLwo+IFN0YXRlIDogc3VjY2Vzcwo+IAo+ID09
IFN1bW1hcnkgPT0KPiAKPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82NTQ5IC0+
IFBhdGNod29ya18xMzc0Ngo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0KPiAKPiBTdW1tYXJ5Cj4gLS0tLS0tLQo+IAo+ICAgKipTVUNDRVNTKioK
PiAKPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKPiAKPiAgICoge2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHN9IChORVcpOgo+ICAgICAtIGZpLWhzdy00NzcwcjogICAg
ICAgTk9UUlVOIC0+IFtETUVTRy1GQUlMXVsxXQo+ICAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3NDYvZmktaHN3LTQ3NzByL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAoKSSBsaWtlIHlvdXIgdGhpbmtpbmcg
Q0khCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
