Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CB09B435
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 18:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B43B6ECEB;
	Fri, 23 Aug 2019 16:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852ED6ECEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 16:06:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18242669-1500050 for multiple; Fri, 23 Aug 2019 17:06:10 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190823160307.180813-8-stuart.summers@intel.com>
References: <20190823160307.180813-1-stuart.summers@intel.com>
 <20190823160307.180813-8-stuart.summers@intel.com>
Message-ID: <156657636827.4019.3949216198348163988@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 23 Aug 2019 17:06:08 +0100
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Use subslice stride to set
 subslices for a given slice
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0yMyAxNzowMzowMykKPiBBZGQgYSBzdWJz
bGljZSBzdHJpZGUgY2FsY3VsYXRpb24gd2hlbiBzZXR0aW5nIHN1YnNsaWNlcy4gVGhpcwo+IGFs
aWducyBtb3JlIGNsb3NlbHkgd2l0aCB0aGUgdXNlcnNwYWNlIGV4cGVjdGF0aW9uIG9mIHRoZSBz
dWJzbGljZQo+IG1hc2sgc3RydWN0dXJlLgo+IAo+IHYyOiBVc2UgbG9jYWwgdmFyaWFibGUgZm9y
IHN1YnNsaWNlX21hc2sgb24gSFNXIGFuZAo+ICAgICBjbGVhbiB1cCBhIGZldyBvdGhlciBzdWJz
bGljZV9tYXNrIGxvY2FsIHZhcmlhYmxlCj4gICAgIGNoYW5nZXMKPiB2MzogQWRkIEdFTV9CVUdf
T04gZm9yIHNzX3N0cmlkZSB0byBwcmV2ZW50IGFycmF5IG92ZXJmbG93IChDaHJpcykKPiAgICAg
U3BsaXQgbWFpbiBzZXQgZnVuY3Rpb24gYW5kIHJlZmFjdG9ycyBpbiBpbnRlbF9kZXZpY2VfaW5m
by5jCj4gICAgIGludG8gc2VwYXJhdGUgcGF0Y2hlcyAoQ2hyaXMpCj4gdjQ6IFJlZHVjZSBzc19z
dHJpZGUgc2l6ZSBjaGVjayB3aGVuIHNldHRpbmcgc3Vic2xpY2VzIHBlciBzbGljZQo+ICAgICBi
YXNlZCBvbiBhY3R1YWwgZXhwZWN0ZWQgbWF4IHN0cmlkZSAoQ2hyaXMpCj4gICAgIE1vdmUgdGhh
dCBHRU1fQlVHX09OIGNoZWNrIGZvciB0aGUgc3Nfc3RyaWRlIG91dCB0byB0aGUgcGF0Y2gKPiAg
ICAgd2hpY2ggYWRkcyB0aGUgc3Nfc3RyaWRlCj4gdjU6IFVzZSBtZW1jcHkgaW5zdGVhZCBvZiBs
b29waW5nIHRocm91Z2ggZWFjaCBzdHJpZGUgaW5kZXgKPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdHVh
cnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
