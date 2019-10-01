Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4054C36C4
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE4F6E7D2;
	Tue,  1 Oct 2019 14:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B314F6E7CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:13:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18680781-1500050 for multiple; Tue, 01 Oct 2019 15:12:55 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001134353.12028-1-jani.nikula@intel.com>
References: <20191001134353.12028-1-jani.nikula@intel.com>
Message-ID: <156993916993.1880.15358337785059883105@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 01 Oct 2019 15:12:49 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: split out
 intel_vga_client.[ch]
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMC0wMSAxNDo0Mzo1MykKPiBTcGxpdCBvdXQgY29k
ZSByZWxhdGVkIHRvIHZnYSBjbGllbnQgYW5kIHZnYSBzd2l0Y2hlcm9vCj4gcmVnaXN0ZXIvdW5y
ZWdpc3RlciBhbmQgc3RhdGUgaGFuZGxpbmcgZnJvbSBpOTE1X2Rydi5jIGFuZAo+IGludGVsX2Rp
c3BsYXkuYy4KPiAKPiBJdCdzIGEgYml0IGRpZmZpY3VsdCB0byBkcmF3IHRoZSBsaW5lIGhvdyBt
dWNoIHRvIG1vdmUgdG8gdGhlIG5ldyBmaWxlCj4gZnJvbSBpOTE1X2Rydi5jLCBidXQgaXQgc2Vl
bWVkIHRvIG1lIGtlZXBpbmcgaTkxNV9zdXNwZW5kX3N3aXRjaGVyb28oKQo+IGFuZCBpOTE1X3Jl
c3VtZV9zd2l0Y2hlcm9vKCkgaW4gcGxhY2Ugd2FzIGNsZWFuZXN0Lgo+IAo+IE5vIGZ1bmN0aW9u
YWwgY2hhbmdlcy4KPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAK
PiAtLS0KPiAKPiBJdCdzIGFsc28gYSBiaXQgZnV6enkgaWYgdGhpcyBpcyBhIHNlbnNpYmxlIHNw
bGl0IGFueXdheS4gQ291bGQgYWxzbwo+IG5hbWUgaXQgaW50ZWxfdmdhIGFuZCBtb3ZlIHRoZXNl
IGZyb20gaW50ZWxfZGlzcGxheS5jIHRoZXJlPwoKTXkgaW5pdGlhbCB0aG91Z2h0IHRoYXQgdGhl
IHN3aXRjaGVyb28gaW50ZXJmYWNlIHdvdWxkIHJlbWFpbiBpbiBjb3JlLAp0aGF0IGl0IGlzIG1v
cmUgb2YgYSBnbG9iYWwgcG93ZXIgc3RhdGUgdGhhdCB3ZSBjdXJyZW50bHkganVzdCB1c2UgZm9y
CnRoZSBsZWdhY3kgdmdhIHN3aXRjaGluZy4KClRoZSBwYXRjaCBsb29rcyBmaW5lLCBvbiBhIHB1
cmUgbWVjaGFuaWNhbCBwb3YsClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KCkZvciB0aGUgc2FrZSBvZiBhcmd1bWVudCwgY291bGQgeW91IGZsb2F0
IHRoZSBzcGxpdCBpbiB0aGUgb3RoZXIKZGlyZWN0aW9uPwoKQW5kIG1heWJlIFZpbGxlIGhhcyBh
IGdvb2Qgb3BpbmlvbiBvbiBob3cgaXQgaXMgbWVhbnQgdG8gd29yayA6KQotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
