Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104F06BD1B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB546E184;
	Wed, 17 Jul 2019 13:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F419B6E184
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:35:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17371553-1500050 for multiple; Wed, 17 Jul 2019 14:35:37 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
 <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
 <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
 <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
 <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
Message-ID: <156337053617.4375.13675276970408492219@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 17 Jul 2019 14:35:36 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxNDoyMzo1NSkKPiAKPiBPbiAxNy8w
Ny8yMDE5IDE0OjE3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTE3IDE0OjA5OjAwKQo+ID4+Cj4gPj4gT24gMTYvMDcvMjAxOSAxNjozNywg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTE2IDE2OjI1OjIyKQo+ID4+Pj4KPiA+Pj4+IE9uIDE2LzA3LzIwMTkgMTM6NDksIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBGb2xsb3dpbmcgYSB0cnlfdG9fdW5tYXAoKSB3ZSBtYXkgd2Fu
dCB0byByZW1vdmUgdGhlIHVzZXJwdHIgYW5kIHNvIGNhbGwKPiA+Pj4+PiBwdXRfcGFnZXMoKS4g
SG93ZXZlciwgdHJ5X3RvX3VubWFwKCkgYWNxdWlyZXMgdGhlIHBhZ2UgbG9jayBhbmQgc28gd2UK
PiA+Pj4+PiBtdXN0IGF2b2lkIHJlY3Vyc2l2ZWx5IGxvY2tpbmcgdGhlIHBhZ2VzIG91cnNlbHZl
cyAtLSB3aGljaCBtZWFucyB0aGF0Cj4gPj4+Pj4gd2UgY2Fubm90IHNhZmVseSBhY3F1aXJlIHRo
ZSBsb2NrIGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpLiBTaW5jZSB3ZQo+ID4+Pj4+IGNhbid0IGJl
IHN1cmUgb2YgdGhlIGxvY2ssIHdlIGhhdmUgdG8gcmlzayBza2lwIGRpcnR5aW5nIHRoZSBwYWdl
LCBvcgo+ID4+Pj4+IGVsc2UgcmlzayBjYWxsaW5nIHNldF9wYWdlX2RpcnR5KCkgd2l0aG91dCBh
IGxvY2sgYW5kIHNvIHJpc2sgZnMKPiA+Pj4+PiBjb3JydXB0aW9uLgo+ID4+Pj4KPiA+Pj4+IFNv
IGlmIHRyeWxvY2sgcmFuZG9tbHkgZmFpbCB3ZSBnZXQgZGF0YSBjb3JydXB0aW9uIGluIHdoYXRl
dmVyIGRhdGEgc2V0Cj4gPj4+PiBhcHBsaWNhdGlvbiBpcyB3b3JraW5nIG9uLCB3aGljaCBpcyB3
aGF0IHRoZSBvcmlnaW5hbCBwYXRjaCB3YXMgdHJ5aW5nCj4gPj4+PiB0byBhdm9pZD8gQXJlIHdl
IGFibGUgdG8gZGV0ZWN0IHRoZSBiYWNraW5nIHN0b3JlIHR5cGUgc28gYXQgbGVhc3Qgd2UKPiA+
Pj4+IGRvbid0IHJpc2sgc2tpcHBpbmcgc2V0X3BhZ2VfZGlydHkgd2l0aCBhbm9ueW1vdXMvc2ht
ZW1mcz8KPiA+Pj4KPiA+Pj4gcGFnZS0+bWFwcGluZz8/Pwo+ID4+Cj4gPj4gV291bGQgcGFnZS0+
bWFwcGluZyB3b3JrPyBXaGF0IGlzIGl0IHRlbGxpbmcgdXM/Cj4gPiAKPiA+IEl0IGJhc2ljYWxs
eSB0ZWxscyB1cyBpZiB0aGVyZSBpcyBhIGZzIGFyb3VuZDsgYW55dGhpbmcgdGhhdCBpcyB0aGUg
bW9zdAo+ID4gYmFzaWMgb2YgbWFsbG9jIChldmVuIHRtcGZzL3NobWVtZnMgaGFzIHBhZ2UtPm1h
cHBpbmcpLgo+IAo+IE5vcm1hbCBtYWxsb2Mgc28gYW5vbnltb3VzIHBhZ2VzPyBPciB5b3UgbWVh
bnQgZXZlcnl0aGluZyBfYXBhcnRfIGZyb20gCj4gdGhlIG1vc3QgYmFzaWMgbWFsbG9jPwoKQXll
IG1pc3NlZCB0aGUgbm90LgoKPiA+Pj4gV2Ugc3RpbGwgaGF2ZSB0aGUgaXNzdWUgdGhhdCBpZiB0
aGVyZSBpcyBhIG1hcHBpbmcgd2Ugc2hvdWxkIGJlIHRha2luZwo+ID4+PiB0aGUgbG9jaywgYW5k
IHdlIG1heSBoYXZlIGJvdGggYSBtYXBwaW5nIGFuZCBiZSBpbnNpZGUgdHJ5X3RvX3VubWFwKCku
Cj4gPj4KPiA+PiBJcyB0aGlzIGEgcHJvYmxlbT8gT24gYSBwYXRoIHdpdGggbWFwcGluZ3Mgd2Ug
dHJ5bG9jayBhbmQgc28gc29sdmUgdGhlCj4gPj4gc2V0X2RpcnR5X2xvY2tlZCBhbmQgcmVjdXJz
aXZlIGRlYWRsb2NrIGlzc3VlcywgYW5kIHdpdGggbm8gbWFwcGluZ3MKPiA+PiB3aXRoIGFsd2F5
cyBkaXJ0eSB0aGUgcGFnZSBhbmQgYXZvaWQgZGF0YSBjb3JydXB0aW9uLgo+ID4gCj4gPiBUaGUg
cHJvYmxlbSBhcyBJIHNlZSBpdCBpcyAhcGFnZS0+bWFwcGluZyBhcmUgbGlrZWx5IGFuIGluc2ln
bmlmaWNhbnQKPiA+IG1pbm9yaXR5IG9mIHVzZXJwdHI7IGFzIEkgdGhpbmsgZXZlbiBtZW1mZCBh
cmUgZXNzZW50aWFsbHkgc2htZW1mcyAob3IKPiA+IGh1Z2V0bGJmcykgYW5kIHNvIGhhdmUgbWFw
cGluZ3MuCj4gCj4gQmV0dGVyIHRoZW4gbm90aGluZywgbm8/IElmIGVhc3kgdG8gZG8uLgoKQWN0
dWFsbHksIEkgZXJyaW5nIG9uIHRoZSBvcHBvc2l0ZSBzaWRlLiBQZWVraW5nIGF0IG1tLyBpbnRl
cm5hbHMgZG9lcwpub3QgYm9kZSBjb25maWRlbmNlIGFuZCBmZWVscyBpbmRlZmVuc2libGUuIEkn
ZCBtdWNoIHJhdGhlciB0aHJvdyBteQpoYW5kcyB1cCBhbmQgc2F5ICJ0aGlzIGlzIHRoZSBiZXN0
IHdlIGNhbiBkbyB3aXRoIHRoZSBBUEkgcHJvdmlkZWQsCnBsZWFzZSB0ZWxsIHVzIHdoYXQgd2Ug
c2hvdWxkIGhhdmUgZG9uZS4iIFRvIHdoaWNoIHRoZSBhbnN3ZXIgaXMKcHJvYmFibHkgdG8gbm90
IGhhdmUgdXNlZCBndXAgaW4gdGhlIGZpcnN0IHBsYWNlIDp8Ci1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
