Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DFAE3F70
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 00:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F386E82E;
	Thu, 24 Oct 2019 22:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB7A6E82E
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 22:36:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18955467-1500050 for multiple; Thu, 24 Oct 2019 23:36:25 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <ecc5965d-71d8-c716-253e-dd54d7a06e18@intel.com>
References: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
 <20191024110331.8935-1-mika.kuoppala@linux.intel.com>
 <157191707108.2725.12035547014609265414@skylake-alporthouse-com>
 <ecc5965d-71d8-c716-253e-dd54d7a06e18@intel.com>
Message-ID: <157195658344.6907.9496204670243032681@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 24 Oct 2019 23:36:23 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Remove nonpriv flags when
 srm/lrm
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0yNCAxNjoyMzowMSkKPiBPbiAyNC8x
MC8yMDE5IDE0OjM3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIE1pa2EgS3VvcHBh
bGEgKDIwMTktMTAtMjQgMTI6MDM6MzEpCj4gPj4gT24gdGVzdGluZyB0aGUgd2hpdGVsaXN0cywg
dXNpbmcgYW55IG9mIHRoZSBub25wcml2Cj4gPj4gZmxhZ3Mgd2hlbiB0cnlpbmcgdG8gYWNjZXNz
IHRoZSByZWdpc3RlciBvZmZzZXQgd2lsbCBsZWFkCj4gPj4gdG8gZmFpbHVyZS4KPiA+Pgo+ID4+
IERlZmluZSBhZGRyZXNzIG1hc2sgdG8gZ2V0IHRoZSBtbWlvIG9mZnNldCBpbiBvcmRlcgo+ID4+
IHRvIGd1YXJkIGFnYWluc3QgYW55IGN1cnJlbnQgYW5kIGZ1dHVyZSBmbGFnIHVzYWdlLgo+ID4+
Cj4gPj4gdjI6IGFwcGx5IGFsc28gb24gc2NydWJfd2hpdGVsaXN0ZWRfcmVnaXN0ZXJzIChMaW9u
ZWwpCj4gPj4KPiA+PiBDYzogVGFwYW5pIFDDpGxsaSA8dGFwYW5pLnBhbGxpQGludGVsLmNvbT4K
PiA+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4gQ2M6
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiA+PiBT
aWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNv
bT4KPiA+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiA+IC1DaHJpcwo+ID4KPiBSZXZpZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25l
bC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoKQW5kIHB1c2hlZCwgdGhhbmtzIGZvciB0aGUgZml4
dXAgYW5kIHRoZSBvcmlnaW5hbCBwYXRjaCEKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
