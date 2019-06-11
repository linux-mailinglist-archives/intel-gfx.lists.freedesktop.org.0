Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BE03C56D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 09:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 703BE89154;
	Tue, 11 Jun 2019 07:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECEAB89154
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 07:52:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16859604-1500050 for multiple; Tue, 11 Jun 2019 08:52:33 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190610215312.23772-2-jani.nikula@intel.com>
References: <20190610215312.23772-1-jani.nikula@intel.com>
 <20190610215312.23772-2-jani.nikula@intel.com>
Message-ID: <156023955173.8761.4241155784797676760@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Jun 2019 08:52:31 +0100
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915: move modesetting core code
 under display/
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0xMCAyMjo1MzoxMikKPiBOb3cgdGhhdCB3ZSBo
YXZlIGEgbmV3IHN1YmRpcmVjdG9yeSBmb3IgZGlzcGxheSBjb2RlLCBjb250aW51ZSBieSBtb3Zp
bmcKPiBtb2Rlc2V0dGluZyBjb3JlIGNvZGUuCj4gCj4gZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZl
ci5oIHN0aWNrcyBvdXQgbGlrZSBhIHNvcmUgdGh1bWIsIG90aGVyd2lzZSB0aGlzCj4gaXMsIGFn
YWluLCBhIHN1cnByaXNpbmdseSBjbGVhbiBvcGVyYXRpb24uCgpZdXAuIEkndmUgYSBwYXRjaCB0
byBkZWNvdXBsZSBpdCBmcm9tIEdFTSBzbGlnaHRseSwgYnV0IHdlIG1heSB3YW50IHRvCmdvIGZ1
bGwgb2JzZXJ2ZXIgbW9kZS4gQWx0aG91Z2ggdGhhdCBzZWVtcyBsaWtlIG92ZXJraWxsIGFzIHRo
ZQppbnRlbnRpb24gaXMgbWFrZSB1c2Vyc3BhY2UgZXhwbGljaXRseSBnZW5lcmF0ZSBzdWNoIG5v
dGlmaWNhdGlvbnMgKGkuZS4KYWxvbmcgdGhlIGxpbmVzIG9mIERJUlRZRkIpLiBIb3dldmVyLCB0
aGUgaW1wbGljaXQgYmFjay1jaGFubmVsCm5vdGlmaWNhdGlvbnMgYXJlIG11Y2ggZWFzaWVyIHRv
IG9yZ2FuaXNlLgoKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
