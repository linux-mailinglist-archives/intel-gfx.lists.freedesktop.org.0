Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9864A1D6150
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 15:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC6C6E21B;
	Sat, 16 May 2020 13:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC306E21B
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 May 2020 13:29:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21214576-1500050 for multiple; Sat, 16 May 2020 14:28:58 +0100
MIME-Version: 1.0
In-Reply-To: <20200514123838.3017-3-ville.syrjala@linux.intel.com>
References: <20200514123838.3017-1-ville.syrjala@linux.intel.com>
 <20200514123838.3017-3-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158963573711.29850.17013270537649123013@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 16 May 2020 14:28:57 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915: Read out hrawclk on all
 gen3+ platforms
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA1LTE0IDEzOjM4OjM4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSSd2ZSBjaGVj
a2VkIGEgYnVuY2ggb2YgZ2VuMy80IG1hY2hpbmVzIGFuZCBhbGwgc2VlbSB0byBoYXZlCj4gY29u
c2lzdGVudCBGU0IgZnJlcXVlbmN5IGluZm9ybWF0aW9uIGluIHRoZSBDTEtDRkcgcmVnaXN0ZXIu
Cj4gU28gbGV0J3MgcmVhZCBvdXQgaHJhd2NsayBvbiBhbGwgZ2VuMysgbWFjaGluZXMuIEFsdGhv
dWdoCj4gYXBhcnQgZnJvbSBnNHgvcG52IGF1eC9wcHMgZGl2aWRlcnMgd2Ugb25seSByZWFsbHkg
bmVlZCB0aGlzCj4gZm9yIGZvciBpOTY1Zy9nbSBjcyB0aW1lc3RhbXAgaW5jcmVtZW50Lgo+IAo+
IFRoZSBDTEtDRkcgbWVtb3J5IGNsb2NrIHZhbHVlcyBzZWVtIGxlc3MgY29uc2lzdGVudCBidXQg
d2UKPiBkb24ndCBjYXJlIGFib3V0IHRob3NlIGhlcmUuCj4gCj4gRm9yIHBvc3Rlcml0eSBoZXJl
J3MgYSBsaXN0IG9mIENMS0NGRyB2cy4gRlNCIGR1bXBzIGZyb20KPiBhIGJ1bmNoIG9mIG1hY2hp
bmVzIChvbmx5IG1pc3NpbmcgbHB0IGZvciBhIGZ1bGwgc2V0KToKPiBtYWNoaW5lIENMS0NGRyAg
ICAgRlNCCj4gYWx2MSAgICAweDAwMDAxNDExIDUzMwo+IGFsdjIgICAgMHgwMDAwMDQyMCA0MDAg
KENocmlzKQo+IGdkZzEgICAgMHgyMDAwMDAyMiA4MDAKPiBnZGcyICAgIDB4MjAwMDAwMjIgODAw
Cj4gY3N0ICAgICAweDAwMDEwMDQzIDY2Ngo+IGJsYiAgICAgMHgwMDAwMjAzNCAxMzMzCj4gcG52
MSAgICAweDAwMDAwNDIzIDY2Ngo+IHBudjIgICAgMHgwMDAwMDQzMyA2NjYKPiA5NjVnbSAgIDB4
MDAwMDQzNDIgODAwCj4gOTQ2Z3ogICAweDAwMDAwMDIyIDgwMAo+IDk2NWcgICAgMHgwMDAwMDQy
MiA4MDAKPiBnMzUgICAgIDB4MDAwMDA0MzAgMTA2Ngo+ICAgICAgICAgMHgwMDAwMDQzNCAxMzMz
Cj4gY3RnMSAgICAweDAwNjQ0MDU2IDEwNjYKPiBjdGcyICAgIDB4MDA2NDQwNjYgMTA2Ngo+IGVs
azEgICAgMHgwMDAxMjQyMCAxMDY2Cj4gICAgICAgICAweDAwMDEyNDI0IDEzMzMKPiAgICAgICAg
IDB4MDAwMTI0MzYgMTYwMAo+ICAgICAgICAgMHgwMDAxMjQyMiA4MDAKPiBlbGsyICAgIDB4MDAw
MTIwNDAgMTA2Ngo+IAo+IEZvciB0aGUgbW9iaWxlIHBhcnRzIHRoZSBjaGlwc2V0IGRvY3MgZ2Vu
ZXJhbGx5IGhhdmUgdGhlc2UKPiBkb2N1bWVudGVkIHRvIHNvbWUgZGVncmVlIChhbHYgYmVpbmcg
dGhlIGV4Y2VwdGlvbikuCj4gCj4gVGhlIHR3byBzZXR0aW5ncyB3L28gYW55IGV2aWRlbmNlIGFy
ZSAweDU9NDAwTUh6IG9uIGRlc2t0b3AKPiBhbmQgMHg3PTEzMzNNSHogb24gbW9iaWxlLiBUaG91
Z2ggdGhlIG1vYmlsZSAxMzMzTUh6IGNhc2UKPiBwcm9iYWJseSBkb2Vzbid0IGV2ZW4gZXhpc3Qg
c2luY2UgY3RnIGlzIG9ubHkgZG9jdW1lbnRlZAo+IHRvIGdvIHVwIHRvIDEwNjZNSHouCj4gCj4g
djI6IEZpeCA0MDBtaHogcmVhZG91dCBmb3IgQ2hyaXMncyBhbHYvY2VsZXJvbiBtYWNoaW5lCj4g
ICAgIERvIGEgY2xlYW4gbW9iaWxlIHZzLiBkZWtzdG9wIHNwbGl0IHNpbmNlIHRoYXQncyByZWFs
bHkKPiAgICAgd2hhdCBzZWVtcyB0byBiZSBnb2luZyBvbgo+IAo+IENjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25l
bC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpIb2xkcyBmb3IgYWxsIG1hY2hpbmVz
IHdlIGFyZSBhYmxlIHRvIHRlc3QsCkFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
