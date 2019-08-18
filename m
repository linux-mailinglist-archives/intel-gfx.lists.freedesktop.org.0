Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40289161E
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 12:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF466E064;
	Sun, 18 Aug 2019 10:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D5AD6E064
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 10:27:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18179082-1500050 for multiple; Sun, 18 Aug 2019 11:27:32 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z6pqui1fxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190818095204.31568-1-michal.wajdeczko@intel.com>
 <20190818095204.31568-4-michal.wajdeczko@intel.com>
 <156612241165.25088.1515760153670282123@skylake-alporthouse-com>
 <op.z6pqui1fxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156612405021.25088.10150559420070888292@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 18 Aug 2019 11:27:30 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Never fail on HuC firmware
 errors
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE4IDExOjE2OjU2KQo+IE9uIFN1biwg
MTggQXVnIDIwMTkgMTI6MDA6MTEgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDgtMTggMTA6NTI6MDQpCj4gPj4gVGhlcmUgaXMgbm8gbmVlZCB0byBtYXJrIHdob2xlIEdQ
VSBhcyB3ZWRnZWQganVzdCBiZWNhdXNlCj4gPj4gb2YgdGhlIGN1c3RvbSBIdUMgZncgZmFpbHVy
ZSBhcyB1c2VycyBjYW4gYWx3YXlzIHZlcmlmeQo+ID4+IGFjdHVhbCBIdUMgZmlybXdhcmUgc3Rh
dHVzIHVzaW5nIGV4aXN0aW5nIEhVQ19TVEFUVVMgaW9jdGwuCj4gPgo+ID4gSWYgd2UgdHJ5IGFu
ZCBmYWlsLCB3b3VsZCBpdCBub3QgYmUgd29ydGggYSBkZXZfbm90aWNlPwo+IAo+IGlmIEd1QyBp
cyBvayBhbmQgaWYgSHVDIHdhcyBlbmFibGVkIHRoZXJlIHdpbGwgYmUgc29tZXRoaW5nIGxpa2Ug
dGhpczoKPiAKPiA8Nj4gaTkxNSAwMDAwOjAwOjAyLjA6IEd1QyBmaXJtd2FyZSBpOTE1L2tibF9n
dWNfMzMuMC4wLmJpbiB2ZXJzaW9uIDMzLjAgIAo+IHN1Ym1pc3Npb246ZGlzYWJsZWQKPiA8Nj4g
aTkxNSAwMDAwOjAwOjAyLjA6IEh1QyBmaXJtd2FyZSBpOTE1L2tibF9odWNfdmVyMDJfMDBfMTgx
MC5iaW4gdmVyc2lvbiAgCj4gMi4wIGF1dGhlbnRpY2F0ZWQ6bm8KPiAKPiBvdGhlcndpc2Ugd2Ug
c2hvdWxkIGdldDoKPiAKPiA8NT4gaTkxNSAwMDAwOjAwOjAyLjA6IEd1QyBpcyB1bmluaXRpYWxp
emVkCgpCdXQgY2FuIHdlIG5vdCBmYWlsIHRvIGxvYWQgSHVDIGxlYXZpbmcgR3VDIHNldHVwPyBF
LmcuIGZvciB0aGUgZmFibGVkCnN1Ym1pc3Npb24gYmFja2VuZD8KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
