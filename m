Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C270C3B5BA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 15:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5FBE88F1E;
	Mon, 10 Jun 2019 13:05:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4911188F1E
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 13:05:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16852628-1500050 for multiple; Mon, 10 Jun 2019 14:05:18 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190610130110.26306-1-tvrtko.ursulin@linux.intel.com>
References: <20190610130110.26306-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156017191664.383.14001735029510950842@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Jun 2019 14:05:16 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/hangcheck: Look at instdone for all
 engines
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMCAxNDowMToxMCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEl0IHNlZW1zIGludGVs
X2VuZ2luZV9nZXRfaW5zdGRvbmUgaXMgYWJsZSB0byBnZXQgaW5zdGRvbmUgZm9yIGFsbCBlbmdp
bmVzCj4gYnV0IGludGVsX2hhbmdjaGVjay5jL3N1YnVuaXRzX3N0dWNrIGRlY2lkZXMgdG8gaWdu
b3JlIGl0IGZvciBub24gcmVuZGVyLgo+IAo+IFdlIGNhbiBqdXN0IGRyb3AgdGhlIGNoZWNrIGlu
IHN1YnVuaXRzX3N0dWNrIHNpbmNlIHRoZSBjaGVja3Mgb24KPiB1bmF2YWlsYWJsZSBmaWVsZHMg
d2lsbCBhbHdheXMgcmV0dXJuIHN0dWNrLCB3aGljaCB3aGVuIGJpdHdpc2UgYW5kIHdpdGgKPiB0
aGUgcG90ZW50aWFsIHVuc3R1Y2sgaW5zdGRvbmUgaXMgaGFybWxlc3MuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+IFdvdWxkIGFjdHVhbGx5IHVz
aW5nIHRoZSBhdmFpbGFibGUgZGF0YSBpbXByb3ZlIGhhbmcgZGV0ZWN0aW9uPwoKTm8sIGp1c3Qg
cHJvbG9uZyBpdCA6KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
