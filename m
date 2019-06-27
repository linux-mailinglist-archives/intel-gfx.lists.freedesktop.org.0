Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F131A58064
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5781F6E117;
	Thu, 27 Jun 2019 10:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D636A6E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:28:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17041958-1500050 for multiple; Thu, 27 Jun 2019 11:28:41 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <878stnqq7r.fsf@intel.com>
References: <20190627091914.30795-1-jani.nikula@intel.com>
 <156163038452.20851.16048224810916743715@skylake-alporthouse-com>
 <878stnqq7r.fsf@intel.com>
Message-ID: <156163131792.20851.14129044268681177185@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 11:28:37 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/irq: make
 i945gm_vblank_work_func() static again
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0yNyAxMToyNjoxNikKPiBPbiBUaHUsIDI3IEp1
biAyMDE5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4g
PiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTA2LTI3IDEwOjE5OjE0KQo+ID4+IFRoZSBzdGF0
aWMga2V5d29yZCB3YXMgYXBwYXJlbnRseSBhY2NpZGVudGFsbHkgcmVtb3ZlZCBpbiBjb21taXQK
PiA+PiAwOGZhOGZkMGZhYTUgKCJkcm0vaTkxNTogU3dpdGNoIHRvIHBlci1jcnRjIHZibGFuayB2
ZnVuY3MiKSwgbGVhZGluZyB0bwo+ID4+IHNwYXJzZSB3YXJuaW5nOgo+ID4+IAo+ID4+IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmM6MzM4Mjo2OiB3YXJuaW5nOiBzeW1ib2wKPiA+PiAn
aTk0NWdtX3ZibGFua193b3JrX2Z1bmMnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBz
dGF0aWM/Cj4gPj4gCj4gPj4gTWFrZSB0aGUgZnVuY3Rpb24gc3RhdGljIGFnYWluLgo+ID4+IAo+
ID4+IEZpeGVzOiAwOGZhOGZkMGZhYTUgKCJkcm0vaTkxNTogU3dpdGNoIHRvIHBlci1jcnRjIHZi
bGFuayB2ZnVuY3MiKQo+ID4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgo+ID4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgo+ID4KPiA+IDMgcGVvcGxlICh3ZWxsIDIgYW5kIGEgcm9ib3QpIHNlbmQgcGF0Y2hlcyBm
b3IgdGhlIHNhbWUgY29tcGlsZXIKPiA+IHdhcm5pbmchIFRoYXQgbWVhbnMgc29tZXRoaW5nLCBy
aWdodD8KPiAKPiBUaGF0IHdyaXRpbmcgcGF0Y2hlcyBpcyBtb3JlIHJld2FyZGluZyB0aGFuIHJl
YWRpbmcgcGF0Y2hlcyB3cml0dGVuIGJ5Cj4gb3RoZXJzLi4uPyA7KQo+IAo+ID4gUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IAo+IFRoYW5rcywg
bGlrZXdpc2UsIGxldCdzIHNlZSB3aG9zZSBwYXRjaCBwYXNzZXMgQ0kgZmlyc3QuIExvb2tzIGxp
a2UgeW91cgo+IHBhdGNoIHJlZ3Jlc3NlcyBtb2R1bGUgcmVsb2FkLiA6RAoKTm93IGtub3duIHRv
IGNpYnVnbG9nLCB5b3UgY2hlYXQhCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
