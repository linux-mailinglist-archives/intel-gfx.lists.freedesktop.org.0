Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A323760A47
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 18:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05C2D6E503;
	Fri,  5 Jul 2019 16:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03566E501
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 16:30:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17146057-1500050 for multiple; Fri, 05 Jul 2019 17:30:01 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190705142908.4921-1-mika.kuoppala@linux.intel.com>
References: <20190705142908.4921-1-mika.kuoppala@linux.intel.com>
Message-ID: <156234419967.19568.17295359996049389127@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 05 Jul 2019 17:29:59 +0100
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gtt: pde entry encoding is
 identical
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA1IDE1OjI5OjA1KQo+IEZvciBhbGwgcGFn
ZSBkaXJlY3RvcnkgZW50cmllcywgdGhlIHBkZSBlbmNvZGluZyBpcwo+IGlkZW50aWNhbC4gRG9u
J3QgY29tcGlsaWNhdGUgY2FsbCBzaXRlcyB3aXRoIGRpZmZlcmVudAo+IHZlcnNpb25zIG9mIGRv
aW5nIHRoZSBzYW1lIHRoaW5nLiBXZSBjaGVjayB0aGUgZXhpc3RlbmNlIG9mCj4gcGh5c2ljYWwg
cGFnZSBiZWZvcmUgd3JpdGluZyB0aGUgZW50cnkgaW50byBpdC4gVGhpcyBmdXJ0aGVyCj4gZ2Vu
ZXJhbGl6ZXMgdGhlIHBkIHNvIHRoYXQgbWFuaXB1bGF0aW9uIGluIGNhbGxzaXRlcyB3aWxsIGJl
Cj4gaWRlbnRpY2FsLCByZW1vdmluZyB0aGUgbmVlZCB0byBoYW5kbGUgcGRwcyBkaWZmZXJlbnRs
eSBmb3IgZ2VuOC4KPiAKPiB2Mjogc3F1YXNoCj4gdjM6IGluYy9kZWMgd2l0aCBzZXQvY2xlYXIg
KENocmlzKQo+IHY0OiBpbmxpbmVzLCB3YXJuLCBzdHJheSBzZXRfcGQgKENocmlzKQo+IAo+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
