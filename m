Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DECC88367
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 21:43:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D686EE8F;
	Fri,  9 Aug 2019 19:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E926EE8F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 19:43:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17947612-1500050 for multiple; Fri, 09 Aug 2019 20:42:24 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190809193456.3836-2-matthew.auld@intel.com>
References: <20190809193456.3836-1-matthew.auld@intel.com>
 <20190809193456.3836-2-matthew.auld@intel.com>
Message-ID: <156537974124.32306.12237121602293259013@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 09 Aug 2019 20:42:21 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gtt: disable 2M pages for
 pre-gen11
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjA6MzQ6NTYpCj4gV2UgY3VycmVudGx5
IGRpc2FibGUgVEhQKFRyYW5zcGFyZW50LUh1Z2UtUGFnZXMpIGZvciBvdXIgc2htZW0gb2JqZWN0
cwo+IGR1ZSB0byBhIHBlcmZvcm1hbmNlIHJlZ3Jlc3Npb24gd2l0aCByZWFkIEJXIGluIHNvbWUg
aW50ZXJuYWwKPiBiZW5jaG1hcmtzLiBHaXZlbiB0aGF0IHRoaXMgaXMgb3VyIG1haW4gc291cmNl
IG9mIDJNIHBhZ2VzLCB0aGVyZSByZWFsbHkKPiBpc24ndCBtdWNoIHBvaW50IGluIGVuYWJsaW5n
IDJNIEdUVCBwYWdlcywgZXNwZWNpYWxseSB0aGlzIHRoYXQgY29tZXMgYXQKPiB0aGUgY29zdCBv
ZiBkaXNhYmxpbmcgdGhlIEdUVCBjYWNoZS4gSG93ZXZlciBmcm9tIGdlbjExIGl0IGxvb2tzIGxp
a2Ugd2UKPiBzaG91bGQgaG9wZWZ1bGx5IHNlZSB0aGUgSFcgaXNzdWUgcmVzb2x2ZWQuIEdpdmVu
IHRoaXMgb3B0IGZvciBvbmx5Cj4gZW5hYmxpbmcgMk0gR1RUIHBhZ2VzIGZyb20gZ2VuMTEgb253
YXJkcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVs
LmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpHb25l
LCBidXQgbm90IGZvcmdvdHRlbi4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KCk5vdyB3ZSBqdXN0IG5lZWQgc29tZSB0aW1lIG9uIGdlbjExLi4u
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
