Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A11958328
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 15:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DFF96E287;
	Thu, 27 Jun 2019 13:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9976E287
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 13:12:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17044916-1500050 for multiple; Thu, 27 Jun 2019 14:12:21 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156163131792.20851.14129044268681177185@skylake-alporthouse-com>
References: <20190627091914.30795-1-jani.nikula@intel.com>
 <156163038452.20851.16048224810916743715@skylake-alporthouse-com>
 <878stnqq7r.fsf@intel.com>
 <156163131792.20851.14129044268681177185@skylake-alporthouse-com>
Message-ID: <156164113891.9225.16334818063056253113@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 14:12:18 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMjcgMTE6Mjg6MzcpCj4gUXVvdGluZyBKYW5p
IE5pa3VsYSAoMjAxOS0wNi0yNyAxMToyNjoxNikKPiA+IE9uIFRodSwgMjcgSnVuIDIwMTksIENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4gUXVvdGlu
ZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0yNyAxMDoxOToxNCkKPiA+ID4+IFRoZSBzdGF0aWMga2V5
d29yZCB3YXMgYXBwYXJlbnRseSBhY2NpZGVudGFsbHkgcmVtb3ZlZCBpbiBjb21taXQKPiA+ID4+
IDA4ZmE4ZmQwZmFhNSAoImRybS9pOTE1OiBTd2l0Y2ggdG8gcGVyLWNydGMgdmJsYW5rIHZmdW5j
cyIpLCBsZWFkaW5nIHRvCj4gPiA+PiBzcGFyc2Ugd2FybmluZzoKPiA+ID4+IAo+ID4gPj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYzozMzgyOjY6IHdhcm5pbmc6IHN5bWJvbAo+ID4g
Pj4gJ2k5NDVnbV92Ymxhbmtfd29ya19mdW5jJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQg
YmUgc3RhdGljPwo+ID4gPj4gCj4gPiA+PiBNYWtlIHRoZSBmdW5jdGlvbiBzdGF0aWMgYWdhaW4u
Cj4gPiA+PiAKPiA+ID4+IEZpeGVzOiAwOGZhOGZkMGZhYTUgKCJkcm0vaTkxNTogU3dpdGNoIHRv
IHBlci1jcnRjIHZibGFuayB2ZnVuY3MiKQo+ID4gPj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4gPgo+ID4gPiAzIHBlb3BsZSAod2VsbCAyIGFuZCBh
IHJvYm90KSBzZW5kIHBhdGNoZXMgZm9yIHRoZSBzYW1lIGNvbXBpbGVyCj4gPiA+IHdhcm5pbmch
IFRoYXQgbWVhbnMgc29tZXRoaW5nLCByaWdodD8KPiA+IAo+ID4gVGhhdCB3cml0aW5nIHBhdGNo
ZXMgaXMgbW9yZSByZXdhcmRpbmcgdGhhbiByZWFkaW5nIHBhdGNoZXMgd3JpdHRlbiBieQo+ID4g
b3RoZXJzLi4uPyA7KQo+ID4gCj4gPiA+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiA+IAo+ID4gVGhhbmtzLCBsaWtld2lzZSwgbGV0J3Mgc2Vl
IHdob3NlIHBhdGNoIHBhc3NlcyBDSSBmaXJzdC4gTG9va3MgbGlrZSB5b3VyCj4gPiBwYXRjaCBy
ZWdyZXNzZXMgbW9kdWxlIHJlbG9hZC4gOkQKPiAKPiBOb3cga25vd24gdG8gY2lidWdsb2csIHlv
dSBjaGVhdCEKCkkgY2FsbGVkIGl0IGEgZHJhdyBhbmQgcHVzaGVkIGJvdGggbWVyZ2VkIGludG8g
b25lIDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
