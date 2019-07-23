Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB52713D1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 10:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF4C6E228;
	Tue, 23 Jul 2019 08:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8746E228
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 08:21:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17526717-1500050 for multiple; Tue, 23 Jul 2019 09:21:48 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
 <20190722232048.9970-3-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190722232048.9970-3-daniele.ceraolospurio@intel.com>
Message-ID: <156387010646.31349.13241233017124376988@skylake-alporthouse-com>
Date: Tue, 23 Jul 2019 09:21:46 +0100
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/uc: Unify uC platform check
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTIzIDAwOjIwOjQxKQo+IFdl
IGhhdmUgc2V2ZXJhbCBIQVNfKiBjaGVja3MgZm9yIEd1QyBhbmQgSHVDIGJ1dCB3ZSBtb3N0bHkg
dXNlIEhBU19HVUMKPiBhbmQgSEFTX0hVQywgd2l0aCBvbmx5IDEgZXhjZXB0aW9uLiBTaW5jZSBv
dXIgSFcgYWx3YXlzIGhhcyBlaXRoZXIKPiBib3RoIHVDIG9yIG5laXRoZXIgb2YgdGhlbSwganVz
dCByZXBsYWNlIGFsbCB0aGUgY2hlY2tzIHdpdGggYSB1bmlmaWVkCj4gSEFTX1VDLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgoKR2l2ZW4gdGhhdCB3ZSBvbmx5IGhhZCBhIHNpbmdsZSAuaGFzX1toZ111YyBlbnRy
eSwgY2FsbGluZyB0aGF0IC5oYXNfdWMKbWFrZXMgc2Vuc2UuIEkgdHJ1c3QgaW4geW91ciBjcnlz
dGFsIGJhbGwgdGhhdCBub3QgYmVpbmcgYWJsZSB0bwpkaXN0aW5ndWlzaCBiZXR3ZWVuIHRoZSBh
dmFpbGFiaWxpdHkgb2YgZGlmZmVyZW50IHVDIGlzIG5vdCBpbXBvcnRhbnQuCgpBY2tlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
