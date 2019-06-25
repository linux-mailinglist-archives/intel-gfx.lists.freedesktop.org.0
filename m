Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7315292E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 12:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EB56E0C8;
	Tue, 25 Jun 2019 10:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E216E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 10:13:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17015900-1500050 for multiple; Tue, 25 Jun 2019 11:13:34 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87ef3i572x.fsf@gaia.fi.intel.com>
References: <20190625070829.25277-1-kenneth@whitecape.org>
 <20190625090655.19220-1-chris@chris-wilson.co.uk>
 <87ef3i572x.fsf@gaia.fi.intel.com>
Message-ID: <156145760989.2637.9780027070420704421@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 25 Jun 2019 11:13:29 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable SAMPLER_STATE prefetching
 on all Gen11 steppings.
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
Cc: Kenneth Graunke <kenneth@whitecape.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI1IDEwOjQ4OjIyKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBGcm9tOiBLZW5uZXRo
IEdyYXVua2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9yZz4KPiA+Cj4gPiBUaGUgRGVtYW5kIFByZWZl
dGNoIHdvcmthcm91bmQgKGJpbmRpbmcgdGFibGUgcHJlZmV0Y2hpbmcpIG9ubHkgYXBwbGllcwo+
ID4gdG8gSWNlbGFrZSBBMC9CMC4gIEJ1dCB0aGUgU2FtcGxlciBQcmVmZXRjaCB3b3JrYXJvdW5k
IG5lZWRzIHRvIGJlCj4gPiBhcHBsaWVkIHRvIGFsbCBHZW4xMSBzdGVwcGluZ3MsIGFjY29yZGlu
ZyB0byBhIHByb2dyYW1taW5nIG5vdGUgaW4gdGhlCj4gPiBTQVJDSEtNRCBkb2N1bWVudGF0aW9u
Lgo+ID4KPiA+IFVzaW5nIHRoZSBJbnRlbCBHYWxsaXVtIGRyaXZlciwgSSBoYXZlIHNlZW4gaW50
ZXJtaXR0ZW50IGZhaWx1cmVzIGluCj4gPiB0aGUgZEVRUC1HTEVTMzEuZnVuY3Rpb25hbC5jb3B5
X2ltYWdlLm5vbl9jb21wcmVzc2VkLiogdGVzdHMuICBBZnRlcgo+ID4gYXBwbHlpbmcgdGhpcyB3
b3JrYXJvdW5kLCB0aGUgdGVzdHMgcmVsaWFibHkgcGFzcy4KPiA+Cj4gPiB2MjogUmVtb3ZlIHRo
ZSBvdmVybGFwIHdpdGggYSBwcmUtcHJvZHVjdGlvbiB3L2EKPiA+Cj4gPiBCU3BlYzogOTY2Mwo+
ID4gU2lnbmVkLW9mZi1ieTogS2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gCj4gUmV2aWV3ZWQtYnk6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKQW5kIHB1c2hlZC4gVGhh
bmtzIGZvciB0aGUgcGF0Y2ghCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
