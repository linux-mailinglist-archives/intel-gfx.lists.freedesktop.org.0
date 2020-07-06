Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E008F215617
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 13:09:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3533B6E04A;
	Mon,  6 Jul 2020 11:09:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1746E03E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 11:09:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21727583-1500050 for multiple; Mon, 06 Jul 2020 12:08:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200706104953.139261-2-michal@hardline.pl>
References: <20200706104953.139261-1-michal@hardline.pl>
 <20200706104953.139261-2-michal@hardline.pl>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Michał Winiarski <michal@hardline.pl>, intel-gfx@lists.freedesktop.org
Date: Mon, 06 Jul 2020 12:08:56 +0100
Message-ID: <159403373626.24180.17760494358652710197@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Print caller when tainting
 for CI
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Michał Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAyMC0wNy0wNiAxMTo0OTo1MykKPiBXZSBjYW4g
YWRkIHRhaW50IGZyb20gbXVsdGlwbGUgcGxhY2VzLCBwcmludGluZyB0aGUgY2FsbGVyIGFsbG93
cyB1cyB0bwo+IGhhdmUgYSBiZXR0ZXIgb3ZlcnZpZXcgb2Ygd2hhdCBleGFjdGx5IGNhdXNlZCB1
cyB0byBkbyB0aGUgdGFpbnRpbmcuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBNaWNoYWwgV2FqZGVjemtv
IDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdp
bmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwu
d2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBp
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCB8IDEg
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV91dGlscy5oCj4gaW5kZXggMDNhNzNkMmJkNTBkLi4xZWQ1YzQ3ZWFlOGYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gQEAgLTQ0NCw2ICs0NDQsNyBAQCBzdGF0aWMgaW5saW5l
IHZvaWQgYWRkX3RhaW50X2Zvcl9DSSh1bnNpZ25lZCBpbnQgdGFpbnQpCj4gICAgICAgICAgKiBD
SSBjaGVja3MgdGhlIHRhaW50IHN0YXRlIGFmdGVyIGV2ZXJ5IHRlc3QgYW5kIHdpbGwgcmVib290
Cj4gICAgICAgICAgKiB0aGUgbWFjaGluZSBpZiB0aGUga2VybmVsIGlzIHRhaW50ZWQuCj4gICAg
ICAgICAgKi8KPiArICAgICAgIHByX2luZm8oIkNJIHRhaW50OiAlcHNcbiIsIF9fYnVpbHRpbl9y
ZXR1cm5fYWRkcmVzcygwKSk7Cgpwcl9ub3RlKCJDSSB0YWludGVkOiV4IGJ5ICVwc1xuIiwgdGFp
bnQsIF9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7CgpUaG91Z2ggaWYgd2UgYXJlIGFkZGlu
ZyBhIG1lc3NhZ2UgaGVyZSwgd2UgcHJvYmFibHkgc2hvdWxkIHBhc3MgaW4gdGhlCmk5MTUgc28g
d2UgY2FuIGRlY2xhcmUgd2hpY2ggZGV2aWNlIGNhdXNlZCB0aGUgdGFpbnQuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
