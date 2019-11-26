Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 664F010A02D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 15:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4825988E14;
	Tue, 26 Nov 2019 14:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C85F6E3F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 14:22:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19345198-1500050 for multiple; Tue, 26 Nov 2019 14:22:16 +0000
MIME-Version: 1.0
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157477765031.23972.17834103213042211263@jlahtine-desk.ger.corp.intel.com>
References: <20191125162737.2161069-1-chris@chris-wilson.co.uk>
 <4740e8fe-7747-1eb5-803b-bcefb5d72959@linux.intel.com>
 <157477765031.23972.17834103213042211263@jlahtine-desk.ger.corp.intel.com>
Message-ID: <157477812978.15944.1544737161591341769@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 26 Nov 2019 14:22:09 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Default to more lenient force
 preempt timeout
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMTEtMjYgMTQ6MTQ6MTApCj4gKyBKYXNvbi9L
ZW4gZm9yIE1lc2EgZmVlZGJhY2sgKHBsZWFzZSBsb29rIGF0IEJ1Z3ppbGxhIGRpc2N1c3Npb24p
Cj4gCj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxMTozMjo0MikKPiA+IAo+
ID4gT24gMjUvMTEvMjAxOSAxNjoyNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBCYXNlZCBv
biBhIHNhbXBsaW5nIG9mIGEgbnVtYmVyIG9mIGJlbmNobWFya3MgYWNyb3NzIHBsYXRmb3Jtcywg
YnkKPiA+ID4gZGVmYXVsdCBvcHQgZm9yIGEgbW9yZSBtdWNoIGxlbmllbnQgdGltZW91dCBzbyB0
aGF0IHdlIHNob3VsZCBub3QKPiA+ID4gYWR2ZXJzZWx5IGFmZmVjdCBleGlzdGluZyBjbGllbnRz
Lgo+ID4gPiAKPiA+ID4gNjQwbXMgb3VnaHQgdG8gYmUgZW5vdWdoIGZvciBhbnlvbmUuCj4gPiA+
IAo+ID4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEyMTY5Cj4gPiA+IEZpeGVzOiAzYTdhOTJhYmE4ZmIgKCJkcm0vaTkxNS9leGVjbGlz
dHM6IEZvcmNlIHByZWVtcHRpb24iKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9v
bmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IEVlcm8gVGFtbWluZW4gPGVl
cm8udC50YW1taW5lbkBpbnRlbC5jb20+Cj4gPiA+IENjOiBEbWl0cnkgUm9nb3poa2luIDxkbWl0
cnkudi5yb2dvemhraW5AaW50ZWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9LY29uZmlnLnByb2ZpbGUgfCAyICstCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
S2NvbmZpZy5wcm9maWxlCj4gPiA+IGluZGV4IDE3OTk1MzdhMzIyOC4uYzI4MGI2YWUzOGViIDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCj4gPiA+IEBAIC0y
NSw3ICsyNSw3IEBAIGNvbmZpZyBEUk1fSTkxNV9IRUFSVEJFQVRfSU5URVJWQUwKPiA+ID4gICAK
PiA+ID4gICBjb25maWcgRFJNX0k5MTVfUFJFRU1QVF9USU1FT1VUCj4gPiA+ICAgICAgIGludCAi
UHJlZW1wdCB0aW1lb3V0IChtcywgamlmZnkgZ3JhbnVsYXJpdHkpIgo+ID4gPiAtICAgICBkZWZh
dWx0IDEwMCAjIG1pbGxpc2Vjb25kcwo+ID4gPiArICAgICBkZWZhdWx0IDY0MCAjIG1pbGxpc2Vj
b25kcwo+IAo+IE1heWJlIGp1c3QgYnVtcCB0byAxMDAwIG1zIGZvciBhIGdvb2QgbWVhc3VyZS4K
PiAKPiA2NDAgbXMgaXMgYWxyZWFkeSBhIHJhZGljYWwgc3RhbGwuCgpCdXQgNjQwbXMhIDopCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
