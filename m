Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815CB6D66A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 23:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929896E37F;
	Thu, 18 Jul 2019 21:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D42F6E37F
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 21:26:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17410513-1500050 for multiple; Thu, 18 Jul 2019 22:25:53 +0100
MIME-Version: 1.0
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190718211445.GC30177@intel.com>
References: <20190718204912.24149-1-rodrigo.vivi@intel.com>
 <156348349623.6999.4776587555290794879@skylake-alporthouse-com>
 <20190718211445.GC30177@intel.com>
Message-ID: <156348515103.7512.11898101333181763201@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 18 Jul 2019 22:25:51 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: We don't need display's
 suspend/resume operations when !HAS_DISPLAY
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2RyaWdvIFZpdmkgKDIwMTktMDctMTggMjI6MTQ6NDUpCj4gT24gVGh1LCBKdWwg
MTgsIDIwMTkgYXQgMDk6NTg6MTZQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVv
dGluZyBSb2RyaWdvIFZpdmkgKDIwMTktMDctMTggMjE6NDk6MTIpCj4gPiA+ICt2b2lkIGludGVs
X2Rpc3BsYXlfcG93ZXJfcmVzdW1lX2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQo+ID4gPiArewo+ID4gPiArICAgICAgIGlmICghSEFTX0RJU1BMQVkoaTkxNSkpCj4gPiA+ICsg
ICAgICAgICAgICAgICByZXR1cm47Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBpZiAoSU5URUxfR0VO
KGk5MTUpID49IDExIHx8IElTX0dFTjlfTFAoaTkxNSkpIHsKPiA+ID4gKyAgICAgICAgICAgICAg
IGdlbjlfc2FuaXRpemVfZGNfc3RhdGUoaTkxNSk7Cj4gPiAKPiA+IEFyZSB5b3Ugc3VyZSB0aGF0
IHdoYXRldmVyIHN0YXRlIHlvdSBhcmUgcmVzdW1pbmcgZnJvbSBhZ3JlZXMgd2l0aCB5b3VyCj4g
PiBub3Rpb24gb2YgIWRpc3BsYXk/IFRoZSBzYW5pdGl6ZSByb3V0aW5lcyBhcmUgc3VwcG9zZWQg
dG8gYmUgYWJvdXQKPiA+IGNsZWFuaW5nIHVwIGFmdGVyIHRoaXJkIHBhcnRpZXMgd2hvIGRvbid0
IHBsYXkgYnkgdGhlIHNhbWUgcnVsZXMuCj4gCj4gSSBkb24ndCBleHBlY3QgYW55IGZ1bmN0aW9u
IHNldHRpbmcgYW55IGtpbmQgb2YgZGMgc3RhdGVzIHdoZW4gd2UgZG9uJ3QKPiBoYXZlIGRpc3Bs
YXkuIEJlc2lkZXMgdGhlIHBhdGggdGhhdCBzZXRzIERDX1NUQVRFX0VOIGlzIGFuZCBuZWVlZHMg
dG8KPiBiZSBzYW5pdGl6ZWQgaXMgYWxzbyBjb3ZlcmVkIGJ5IHRoaXMgcGF0Y2ggYW5kIHRoaXMg
c2hvdWxkbid0IGhhcHBlbi4KPiAKPiBPciBhbSBJIG1pc3Npbmcgc29tZXRoaW5nIGVsc2U/CgpJ
dCdzIG5vdCBhYm91dCB1cywgaXQncyBhYm91dCB3aGF0ZXZlciBlbHNlIHJ1bnMgaW4gYmV0d2Vl
bi4gQW5kCnJlbWVtYmVyICFIQVNfRElTUExBWSgpIGlzIGFsc28gYSB1c2VyIHNldHRpbmcsIG5v
dCBtZXJlbHkgYSByZWZsZWN0aW9uCm9mIHByb2JlZCBody4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
