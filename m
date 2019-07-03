Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 127455E618
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 16:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C546E149;
	Wed,  3 Jul 2019 14:08:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91AAD6E149
 for <Intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 14:08:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17115940-1500050 for multiple; Wed, 03 Jul 2019 15:08:07 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190610130110.26306-1-tvrtko.ursulin@linux.intel.com>
References: <20190610130110.26306-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156216288523.20783.9050773570817628228@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 03 Jul 2019 15:08:05 +0100
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
aW5nIHRoZSBhdmFpbGFibGUgZGF0YSBpbXByb3ZlIGhhbmcgZGV0ZWN0aW9uPwoKSSBnb3QgaHVu
ZyB1cCBvbiB0aGlzIHF1ZXN0aW9uLCBhbmQgZGlkbid0IGFkZHJlc3MgdGhlIHBhdGNoIG9uIGl0
cwptZXJpdHMuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
