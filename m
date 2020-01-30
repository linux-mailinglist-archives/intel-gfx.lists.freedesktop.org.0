Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B3514DC72
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 15:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EDF76E838;
	Thu, 30 Jan 2020 14:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20ABC6E837
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 14:08:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20060507-1500050 for multiple; Thu, 30 Jan 2020 14:08:07 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200130135813.GB13686@intel.com>
References: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
 <158036696815.21034.751097000968180593@emeril.freedesktop.org>
 <158039146921.16598.16786857738481185551@skylake-alporthouse-com>
 <20200130135813.GB13686@intel.com>
Message-ID: <158039328550.16598.12823982178337123688@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 Jan 2020 14:08:05 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_extract_engine_WA_progr?=
 =?utf-8?q?amming_to_common_resume_function?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDEtMzAgMTM6NTg6MTMpCj4gT24gVGh1LCBK
YW4gMzAsIDIwMjAgYXQgMDE6Mzc6NDlQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
UXVvdGluZyBQYXRjaHdvcmsgKDIwMjAtMDEtMzAgMDY6NDk6MjgpCj4gPiA+ICMjIyMgUG9zc2li
bGUgcmVncmVzc2lvbnMgIyMjIwo+ID4gPiAKPiA+ID4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfYWN0aXZlOgo+ID4gPiAgICAgLSBmaS1id3ItMjE2MDogICAgICAgIFtQQVNTXVsxXSAtPiBb
RE1FU0ctV0FSTl1bMl0gKzEyIHNpbWlsYXIgaXNzdWVzCj4gPiA+ICAgIFsxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzg0MC9maS1id3ItMjE2MC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2FjdGl2ZS5odG1sCj4gPiA+ICAgIFsyXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTYzMjcvZmktYndyLTIx
NjAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9hY3RpdmUuaHRtbAo+ID4gCj4gPiBXZWxsIGl0IHdv
cmtzIG9uIENyZXN0bGluZS4gQnJvYWR3YXRlciBzbmFmdT8KPiAKPiBEb2VzIHRoZSB3L2EgdGhp
bmcgYWN0dWFsbHkgd29yayBjb3JyZWN0bHkgZm9yIG1hc2tlZCByZWdpc3RlcnM/Cj4gSXQgbG9v
ayB0byB1c2Ugcm13IGV2ZW4gZm9yIG1hc2tlZCByZWdpc3RlcnMgYW5kIElJUkMgc29tZSBtYXNr
ZWQKPiByZWdpc3RlcnMgcmV0dXJuIDB4ZmZmZiBmb3IgdGhlIG1hc2sgd2hlbiByZWFkLiBJIGxv
c3QgdHJhY2sgb2YgdGhlCj4gdmFsdWVzIGFuZCBtYXNrcyBiZWluZyBwYXNzZWQgYXJvdW5kIGJl
Zm9yZSBJIGdvdCBkb3duIHRoYXQgZGVlcCBzbwo+IGNhbid0IGltbWVkaWF0bHkgc2VlIGlmIHRo
ZSBjb2RlIGlzIGd1YXJhbnRlZWQgdG8gc2V0IG9ubHkgdGhlCj4gZXhwZWN0ZWQgbWFzayBiaXQo
cykgZm9yIHRoZSB3cml0ZS4KClRoZSByZWFkIGJhY2sgZ2l2ZXMgMHgxMDEwMSwgdGhlIHcvYSBp
cyB0byAweDQwMDA0MCAoYW5kIHdlIGV4cGVjdCB0bwpzZWUgMHg0MCBzZXQgaW4gdGhlIHJlYWRi
YWNrKS4KClRoYXQgcGFydCBsb29rcyBjb25zaXN0ZW50IChhbmQgaXMgcGFzc2luZyBvbiBnZW40
LWdlbjYgZXhjZXB0IGZvciBDSSdzCmJ3KS4KCkhtbSwgZG9uJ3QgcmVjYWxsIHRoYXQgaXQgdXNl
ZCBybXcgZm9yIHNldHRpbmcgdGhlIG1hc2tlZCBtbWlvLCBzbyBsZXRzCmNoZWNrIHRoYXQuCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
