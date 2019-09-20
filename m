Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0031B8E69
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 12:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96186FB8E;
	Fri, 20 Sep 2019 10:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D6C6FB8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 10:21:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18556851-1500050 for multiple; Fri, 20 Sep 2019 11:21:25 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190920081254.18389-1-chris@chris-wilson.co.uk>
References: <20190920081254.18389-1-chris@chris-wilson.co.uk>
Message-ID: <156897488386.1196.4524056224347568585@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Sep 2019 11:21:23 +0100
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/tgl: Implement
 Wa_1406941453"
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjAgMDk6MTI6NTQpCj4gT3VyIHNhbml0eWNo
ZWNrcyBpbmRpY2F0ZSB0aGF0IHdoaWxlIHRoaXMgcmVnaXN0ZXIgaXMgY29udGV4dAo+IHNhdmVk
L3Jlc3RvcmUsIHRoZSBIVyBkb2VzIG5vdCBwcmVzZXJ2ZSB0aGlzIGJpdCB3aXRoaW4gdGhlIHJl
Z2lzdGVyIC0tCj4gaXQgbGlrZWx5IGRvZXNuJ3QgZXhpc3QsIG9yIG9uZSBvZiB0aG9zZSBteXRo
aWNhbCBiaXRzIHRoYXQgdGhlCj4gYXJjaGl0ZWN0cyBpbnNpc3QgZG9lcyBzb21ldGhpbmcgZGVz
cGl0ZSBhbGwgYXBwZWFyYW5jZXMgdG8gdGhlCj4gY29udHJhcnkuCj4gCj4gRm9yIHJlZmVyZW5j
ZSwgU0FNUExFUl9NT0RFIGlzIGFscmVhZHkgaW4gaTkxNV9yZWcuaCBhcwo+IEdFTjEwX1NBTVBM
RVJfTU9ERSBhbmQgaXMgYmVpbmcgc2V0dXAgaW4gaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KCkg
YXMKPiBvcHBvc2VkIHRvIHRoZSBjaG9zZW4gbG9jYXRpb24gaGVyZSBvZiByY3NfZW5naW5lX3dh
X2luaXQpLgo+IAo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMTE3NTQKPiBGaXhlczogN2YwY2MzNGI1MzQ5ICgiZHJtL2k5MTUvdGdsOiBJ
bXBsZW1lbnQgV2FfMTQwNjk0MTQ1MyIpCj4gVGVzdGNhc2U6IGlndC9pOTE1X3NlbGZ0ZXN0L2xp
dmVfd29ya2Fyb3VuZHMKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+Cj4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4g
Q2M6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+
Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KCkx1Y2FzIHNh
aWQgbGFzdCBuaWdodCBpbiByZXNwb25zZSB0byB0aGUgQ0kgZXJyb3IsCgoiWWVzLCBsZXQncyBy
ZXZlcnQgdW50aWwgSSBmaW5kIG91dCB3aGF0IEkgc2hvdWxkIHJlYWxseSBkby4iCgp3aGljaCBJ
IGFtIGdvaW5nIHRvIHRha2UgYXMgYSBwcmVlbXB0aXZlIGFjayA6KQpBY2tlZC1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
