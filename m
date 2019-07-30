Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E1E7A79E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 14:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E6496E4F9;
	Tue, 30 Jul 2019 12:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7FC6E4F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 12:05:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17728654-1500050 for multiple; Tue, 30 Jul 2019 13:05:33 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>, Matthew Auld <matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190730085822.GL15868@phenom.ffwll.local>
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-17-matthew.auld@intel.com>
 <20190730085822.GL15868@phenom.ffwll.local>
Message-ID: <156448833204.6373.14415976450526730937@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 13:05:32 +0100
Subject: Re: [Intel-gfx] [PATCH v2 16/37] drm/i915/lmem: support pread
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA3LTMwIDA5OjU4OjIyKQo+IE9uIFRodSwgSnVu
IDI3LCAyMDE5IGF0IDA5OjU2OjEyUE0gKzAxMDAsIE1hdHRoZXcgQXVsZCB3cm90ZToKPiA+IFdl
IG5lZWQgdG8gYWRkIHN1cHBvcnQgZm9yIHByZWFkJ2luZyBhbiBMTUVNIG9iamVjdC4KPiAKPiBX
aHk/IFVzYWdlIG91dHNpZGUgZnJvbSBpZ3RzIHNlZW1zIHByZXR0eSBkZWFkLCBhdCBsZWFzdCBs
b29raW5nIGF0IGlyaXMKPiBhbmQgYW52LiBUaGlzIHdhcyBraW5kYSBhIG5lYXQgdGhpbmcgZm9y
IHdoZW4gd2UgZGlkbid0IHlldCByZWFsaXplZCB0aGF0Cj4gZG9pbmcgY2xmbHVzaCBpbiB1c2Vy
c3BhY2UgaXMgYm90aCBwb3NzaWJsZSBhbmQgbW9yZSBlZmZpY2llbnQuCj4gCj4gU2FtZSBmb3Ig
cHdyaXRlLCBpcmlzIGp1c3QgZHJvcHBlZCBpdCwgYW52IGRvZXNuJ3Qgc2VlbSB0byB1c2UgaXQu
IEFuZCBJCj4gdGhvdWdodCBtZXNhIHBsYW4gaXMgdG8gZHJvcCB0aGUgb2xkIGNsYXNzaWMgZHJp
dmVyIGZvciB3aGVuIHdlJ2xsIG5lZWQKPiBsbWVtLiBJdCdzIG5vdCBtdWNoLCBidXQgd291bGQg
YWxsb3cgdXMgdG8gZHJvcCBhIGZldyB0aGluZ3MuCgpGcm9tIHRoZSBvcHBvc2l0ZSBwZXJzcGVj
dGl2ZSwgaXQgc2hvdWxkIG9ubHkgYmUgYSB3cmFwcGVyIGFyb3VuZCBjb2RlCnRoYXQgaXMgYmVp
bmcgdXNlZCBpbnRlcm5hbGx5IGZvciBzaW1pbGFyIHRyYW5zZmVycy4gKE9uZSBzaWRlLWVmZmVj
dCBpcwp0aGF0IGl0IGNhbiBiZSB1c2VkIHRvIHBva2UgbW9yZSBkaXJlY3RseSBhdCB0aG9zZSBp
bnRlcm5hbHMuKSBJdCBpcyBhbHNvCm5vdCBjbGVhciB3aGF0IHRoZSBwcmVmZXJyZWQgc3RyYXRl
Z3kgd2lsbCBiZSBpbiBmdXR1cmUsIGVzcGVjaWFsbHkgYXMKcGVvcGxlIHN0YXJ0IGRpc2N1c3Np
bmcgbWlncmF0aW9uLW9uLXBhZ2VmYXVsdC4KCkl0IGNvbWVzIGRvd24gdG8gd2hldGhlciB0aGUg
bWFpbnRlbmFuY2UgYnVyZGVuIG9mIG1haW50YWluaW5nIGEKY29uc2lzdGVudCBBUEkgaXMgd29y
dGggdGhlIG1haW50ZW5hbmNlIGJ1cmRlbiBvZiBub3QhCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
