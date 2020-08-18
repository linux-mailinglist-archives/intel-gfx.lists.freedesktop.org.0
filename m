Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE86248DC0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 20:13:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D7989FAC;
	Tue, 18 Aug 2020 18:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8EF89FAC
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 18:12:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22166312-1500050 for multiple; Tue, 18 Aug 2020 19:12:44 +0100
MIME-Version: 1.0
In-Reply-To: <20200818174919.GA3311723@intel.com>
References: <CA+GA0_srCED0nX7XkiuOBxsxPy8xskG0Z-Lu9bWnD=tknnJNww@mail.gmail.com>
 <159775188083.667.5734044425203263287@build.alporthouse.com>
 <20200818174919.GA3311723@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 18 Aug 2020 19:12:46 +0100
Message-ID: <159777436613.667.9944724436707992703@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: obey "reset" module
 parameter
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
Cc: intel-gfx@lists.freedesktop.org, Marcin Ślusarz <marcin.slusarz@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2RyaWdvIFZpdmkgKDIwMjAtMDgtMTggMTg6NDk6MTkpCj4gT24gVHVlLCBBdWcg
MTgsIDIwMjAgYXQgMTI6NTg6MDBQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVv
dGluZyBNYXJjaW4gxZpsdXNhcnogKDIwMjAtMDgtMTggMTI6MzY6MDcpCj4gPiA+IEZyb206IE1h
cmNpbiDFmmx1c2FyeiA8bWFyY2luLnNsdXNhcnpAaW50ZWwuY29tPgo+ID4gPiAKPiA+ID4gRm9y
IHNvbWUgcmVhc29uIGludGVsX2d0X3Jlc2V0IGF0dGVtcHRzIHRvIHJlc2V0IHRoZSBHUFUgdHdp
Y2UuCj4gPiA+IE9uIG9uZSBjb2RlIHBhdGggKGRvX3Jlc2V0KSAicmVzZXQiIHBhcmFtZXRlciBp
cyBvYmV5ZWQsIGJ1dCBpcwo+ID4gPiBub3Qgb24gdGhlIG90aGVyIG9uZSAoX19pbnRlbF9ndF9z
ZXRfd2VkZ2VkKS4KPiA+IAo+ID4gSXQncyBub3QgdGhhdCBzaW1wbGUsIHdlIGRvIHdhbnQgdG8g
Zm9yY2UgX19pbnRlbF9ndF9zZXRfd2VkZ2VkKCkgdG8KPiA+IGNhbmNlbCB3aGF0ZXZlciBpcyBy
dW5uaW5nIG9uIHRoZSBHUFUgYXMgaXQgaXMgdXNlZCBmb3IgbW9yZSB0aGFuIGp1c3QKPiA+IGZh
aWxpbmcgcmVzZXRzIChlLmcuIGFyb3VuZCBjb250cm9sIGJvdW5kYXJpZXMpIHJlZ2FyZGxlc3Mg
b2Ygd2hhdCB0aGUKPiA+IHVzZXIgbWF5IHdhbnQuCj4gPiAKPiA+IEknbSBsb2F0aGUgdG8gYWRk
IGEgcGFyYW1ldGVyIGp1c3QgdG8gZW5hYmxlIHVuc2FmZSBiZWhhdmlvdXIsIGJ1dCB0aGF0Cj4g
PiBtYXkgYmUgdGhlIGNvbXByb21pc2UuCj4gCj4gd2UgcHJvYmFibHkgbmVlZCB0aGlzIGNvbXBy
b21pc2UgZm9yIHRoZXNlIGNhc2VzIE1hcmNpbiBmYWNlZC4uLgoKWW91IGNhbiBhbHdheXMgc2F5
IHRob3NlIHdobyByaXNrIHVuc2FmZSBwYXJhbWV0ZXJzIGFyZSBhbHdheXMgY2FwYWJsZQpvZiBw
YXRjaGluZyB0aGUga2VybmVsIHRvIGJyZWFrIGl0LgoKPiB3aGF0IGFib3V0IG1vdmluZyB0aGlz
IHRvIGludGVsX2dldF9ncHVfcmVzZXQoKT8KCldoZW4gaXQgd2FzIHRoZXJlLCB3ZSBkaWRuJ3Qg
aGF2ZSB0aGUgcmVhc29uIHdoeSwgc28gd2UgZW5kZWQgdXAKZHVwbGljYXRpbmcgdGhlIHRlc3Rz
IGFueXdheSB0byBzdXBwcmVzcyB0aGUgZXJyb3IgbWVzc2FnZXMgZm9yIENJLgoKQW5kIGl0IGJy
ZWFrcyB0aGUgY29udHJvbCBib3VuZGFyeSBjYXNlcyB3aGVyZSB3ZSBoYXZlIHRvIHJlc2V0IHRo
ZSBHUFUsCm9yIHdoZW4gd2UgbmVlZCB0aGUgd2VkZ2UgdG8gdW5kZWFkbG9jayBtb2Rlc2V0dGlu
ZyB3aGljaCB3aWxsIGFsc28KbG9ja3VwIHRoZSBtYWNoaW5lLiBJbiBzaG9ydCwgd2Ugc2hvdWxk
IHJlbW92ZSB0aGUgcGFyYW1ldGVyOyB3ZSdsbApzdGlsbCBlbmQgdXAgaGF2aW5nIHRvIGJpc2Vj
dCB0aHJvdWdoIHRoZSBHUFUgZmVhdHVyZXMgW2F0b21pYyBvcHMsIGl0J3MKYWx3YXlzIGF0b21p
YyBvcHNdIHRvIGZpbmQgd2hpY2ggb25lIGlzIGtpbGxpbmcgdGhlIG1hY2hpbmUuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
