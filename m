Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E0011341A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 19:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B726F4FF;
	Wed,  4 Dec 2019 18:22:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9459D6F50A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 18:21:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19461262-1500050 for multiple; Wed, 04 Dec 2019 18:21:41 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <f34ede5d-9f6f-624f-3b98-214051647ee9@intel.com>
References: <20191129124846.949100-1-chris@chris-wilson.co.uk>
 <f34ede5d-9f6f-624f-3b98-214051647ee9@intel.com>
Message-ID: <157548370189.19640.3734189652377050292@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 04 Dec 2019 18:21:41 +0000
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: use a separate context
 for gpu relocs"
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEyLTAzIDIyOjE5OjA3KQo+IAo+
IAo+IE9uIDExLzI5LzE5IDQ6NDggQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFNpbmNlIGNv
bW1pdCBjNDVlNzg4ZDk1YjQgKCJkcm0vaTkxNS90Z2w6IFN1c3BlbmQgcHJlLXBhcnNlciBhY3Jv
c3MgR1RUCj4gPiBpbnZhbGlkYXRpb25zIiksIHdlIG5vdyBkaXNhYmxlIHRoZSBhZHZhbmNlZCBw
cmVwYXJzZXIgb24gVGlnZXJsYWtlIGZvciB0aGUKPiA+IGludmFsaWRhdGlvbiBwaGFzZSBhdCB0
aGUgc3RhcnQgb2YgdGhlIGJhdGNoLCB3ZSBubyBsb25nZXIgbmVlZCB0byBlbWl0Cj4gPiB0aGUg
R1BVIHJlbG9jYXRpb25zIGZyb20gYSBzZWNvbmQgY29udGV4dCBhcyB0aGV5IGFyZSBub3cgZmx1
c2hlZCBpbmxpbmVkLgo+ID4gCj4gCj4gYzQ1ZTc4OGQ5NWI0IG9ubHkgYXBwbGllcyB0byB0aGUg
UkNTIHRob3VnaCBhbmQgSUlSQyBJJ3ZlIHNlZW4gaXNzdWVzIAo+IHdpdGggdGhlIHJlbG9jYXRp
b25zIG9uIG90aGVyIGVuZ2luZXMgYXMgd2VsbCwgYWx0aG91Z2ggdGhleSB3ZXJlIG11Y2ggCj4g
cmFyZXIuIEFsc28sIHRoZSBjb21tZW50IGxlZnQgaW4gaW50ZWxfbHJjLmMgc3RpbGwgcmVmZXJl
bmNlcyByZWxvY19ncHUoKS4KClRoZSB0ZXN0cyB3ZSBoYXZlIGRvbid0IGRpc2NyaW1pbmF0ZSBi
ZXR3ZWVuIHRoZSBlbmdpbmVzLCBhbmQgdGhlCnNvIGZhciB3ZSd2ZSBvbmx5IG9ic2VydmVkIHRo
ZSBpc3N1ZSBvbiBSQ1MuIExvb2sgYXQgaWd0X2NzX3RsYiBhbmQgc2VlCndoYXQgaXQgbWlnaHQg
YmUgbWlzc2luZyB3cnQgdG8gdHJpZ2dlcmluZyB0aGUgaXNzdWUgb24gdGhlIG90aGVyCmVuZ2lu
ZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
