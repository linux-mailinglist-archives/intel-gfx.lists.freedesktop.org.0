Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 447AC4C899
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 09:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E166E51D;
	Thu, 20 Jun 2019 07:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97D8A6E51C
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 07:44:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16961795-1500050 for multiple; Thu, 20 Jun 2019 08:43:56 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190620010021.20637-5-daniele.ceraolospurio@intel.com>
References: <20190620010021.20637-1-daniele.ceraolospurio@intel.com>
 <20190620010021.20637-5-daniele.ceraolospurio@intel.com>
Message-ID: <156101663830.664.3523142208823093304@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 20 Jun 2019 08:43:58 +0100
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915: skip forcewake actions on
 forcewake-less uncore
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTIwIDAyOjAwOjE5KQo+IFdl
IGFsd2F5cyBjYWxsIHNvbWUgb2YgdGhlIHNldHVwL2NsZWFudXAgZnVuY3Rpb25zIGZvciBmb3Jj
ZXdha2UsIGV2ZW4KPiBpZiB0aGUgZmVhdHVyZSBpcyBub3QgYWN0dWFsbHkgYXZhaWxhYmxlLiBT
a2lwcGluZyB0aGVzZSBvcGVyYXRpb25zIGlmCj4gZm9yY2V3YWtlIGlzIG5vdCBhdmFpbGFibGUg
c2F2ZXMgdXMgc29tZSBvcGVyYXRpb25zIG9uIG9sZGVyIGdlbnMgYW5kCj4gcHJlcGFyZXMgdXMg
Zm9yIGhhdmluZyBhIGZvcmNld2FrZS1sZXNzIGRpc3BsYXkgdW5jb3JlLgo+IAo+IHYyOiBkbyBu
b3QgbWFrZSBzdXNwZW5kL3Jlc3VtZSBmdW5jdGlvbnMgZm9yY2V3YWtlLXNwZWNpZmljIChDaHJp
cywKPiBUdnJ0a28pLCB1c2UgR0VNX0JVR19PTiBpbiBpbnRlcm5hbCBmb3JjZXdha2Utb25seSBm
dW5jdGlvbnMgKFR2cnRrbykKPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGxpbnV4LmludGVsLmNvbT4KClRoYXQgbG9va2VkIG9rIHRvIG1lLCBJIGRvbid0IGhh
dmUgdG8gcmVsZWFybiBldmVyeXRoaW5nIGp1c3QgeWV0IDopCgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
