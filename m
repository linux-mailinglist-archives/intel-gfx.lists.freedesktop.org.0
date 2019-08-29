Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3D1A1E24
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 16:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AC66E154;
	Thu, 29 Aug 2019 14:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C86466E152;
 Thu, 29 Aug 2019 14:59:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18305916-1500050 for multiple; Thu, 29 Aug 2019 15:59:16 +0100
MIME-Version: 1.0
To: igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190829145416.31626-2-chris@chris-wilson.co.uk>
References: <20190829145416.31626-1-chris@chris-wilson.co.uk>
 <20190829145416.31626-2-chris@chris-wilson.co.uk>
Message-ID: <156709075411.12323.11012570791319711328@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 29 Aug 2019 15:59:14 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] lib/intel_mmio: add additional
 api for multiple devices
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 =?utf-8?q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjkgMTU6NTQ6MTYpCj4gRnJvbTogRGFuaWVs
IE1yenlnbG9kIDxkYW5pZWwudC5tcnp5Z2xvZEBpbnRlbC5jb20+Cj4gCj4gTGlicmFyeSAgd2Fz
IGxpbWl0ZWQgZm9yIHJlYWRpbmcgcmVnaXN0ZXJzIGZvciBvbmx5Cj4gb25lIGRldmljZSBhdCBh
IHRpbWUgaW4gaWd0IHRlc3RzLgo+IENoYW5nZXMgaW4gdGhpcyBwYXRjaCBnaXZlIGFzIG9wb3J0
dW5pdHkgdG8gdGVzdCBtdWx0aXBsZSBkZXZpY2VzIGluCj4gdGhlIHNhbWUgdGltZS4KPiAKPiB2
ODogcGFjayBhbmQgcmVuYW1lIHN0cnVjdHVyZSwgcmVtb3ZlIHVubmVjZXNzYXJ5IGZpZWxkCj4g
djc6IHJlbW92ZSB1bm5lY2Vzc2FyeSBjb2RlCj4gdjY6IFJld29yZCBwYXRjaC4gQ29zbWV0aWMg
Y2hhbmdlcy4KPiAKPiBDYzogQW50b25pbyBBcmdlbnppYW5vIDxhbnRvbmlvLmFyZ2Vuemlhbm9A
aW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIFNwdXJpbyBDZXJhb2xvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgo+IENjOiBLYXRhcnp5bmEgRGVjIDxrYXRhcnp5bmEuZGVjQGludGVs
LmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6
IFBldHJpIExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgo+IENjOiBaYmlnbmlldyBL
ZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KPiBDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
TXJ6eWdsb2QgPGRhbmllbC50Lm1yenlnbG9kQGludGVsLmNvbT4KCkxvb2tzIG9rLApSZXZpZXdl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpXaWxsIG5lZWQg
dG8gYWN0dWFsbHkgY2hlY2sgaW50ZWxfcmVnIHdvcmtzIHdpdGhvdXQgaTkxNS5rbyBsb2FkZWQg
b3IKZWxzZSBpdCB3aWxsIGJlIHJldmVydGVkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
