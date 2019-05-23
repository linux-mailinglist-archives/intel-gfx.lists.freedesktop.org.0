Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177F128BE1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 22:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21EF76E072;
	Thu, 23 May 2019 20:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D366E072
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 20:50:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16660748-1500050 for multiple; Thu, 23 May 2019 21:50:32 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190523172555.2780-1-michal.wajdeczko@intel.com>
References: <20190522193203.23932-9-michal.wajdeczko@intel.com>
 <20190523172555.2780-1-michal.wajdeczko@intel.com>
Message-ID: <155864463192.28319.3175675755765306064@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 21:50:31 +0100
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/uc: Stop talking with GuC
 when resetting
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIzIDE4OjI1OjU1KQo+IEtub3dpbmcg
dGhhdCBHdUMgd2lsbCBiZSByZXNldCBzb29uLCB3ZSBtYXkgc3RvcCBhbGwgY29tbXVuaWNhdGlv
bgo+IGltbWVkaWF0ZWx5IHdpdGhvdXQgZG9pbmcgZ3JhY2VmdWwgY2xlYW51cCBhcyBpdCBpcyBu
b3QgbmVlZGVkLgo+IAo+IFRoaXMgcGF0Y2ggd2lsbCBhbHNvIGhlbHAgdXMgY2FwdHVyZSBhbnkg
dW53YW50ZWQvdW5leHBlY3RlZCBhdHRlbXB0cwo+IHRvIHRhbGsgd2l0aCBHdUMgYWZ0ZXIgd2Ug
ZGVjaWRlZCB0byByZXNldCBpdC4gQW5kIHdlIG5lZWQgdG8ga2VlcAo+ICdkaXNhYmxlJyBwYXJ0
IGFzIGN1cnJlbnQgYW5kIHVwY29taW5nIGZpcm13YXJlIHN0aWxsIGV4cGVjdCBncmFjZWZ1bAo+
IGNsZWFudXAuCj4gCj4gdjI6IHVwZGF0ZSBjb21taXQgbXNnCj4gCj4gU2lnbmVkLW9mZi1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKSSdtIGEgYml0IG1vcmUg
cmVhc3N1cmVkIG5vdyB0aGF0IHRoZXJlIGlzIHNvbWUgcHVycG9zZSB0byB0aGlzIDopCgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
