Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F25C2D151
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 00:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D85A46E027;
	Tue, 28 May 2019 22:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2286E027
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 22:05:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16712310-1500050 for multiple; Tue, 28 May 2019 23:05:05 +0100
MIME-Version: 1.0
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <155908099612.1844.1298420303089312150@skylake-alporthouse-com>
References: <20190528200655.11605-1-chris@chris-wilson.co.uk>
 <841d0d2765421947fbbeeefc523fbd3cbb516da2.camel@intel.com>
 <155908099612.1844.1298420303089312150@skylake-alporthouse-com>
Message-ID: <155908110296.1844.13801598652167240402@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 28 May 2019 23:05:02 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix off-by-one in looking up icl
 sseu slice
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
Cc: , Manasi@freedesktop.org, Landwerlin@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMjggMjM6MDM6MTYpCj4gUXVvdGluZyBTdW1t
ZXJzLCBTdHVhcnQgKDIwMTktMDUtMjggMjE6NDU6MDUpCj4gPiBPbiBUdWUsIDIwMTktMDUtMjgg
YXQgMjE6MDYgKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+ID4gV2Ugd2FudCB0aGUgaW5k
ZXggY29ycmVzcG9uZGluZyB0byB0aGUgc2V0IGJpdCBidXQgZmxzKCkgcmV0dXJucyB0aGUKPiA+
ID4gMS1pbmRleCB2YWx1ZS4KPiA+ID4gCj4gPiA+IE90aGVyd2lzZSwgd2UgdHJpZ2dlciB0aGUg
c2FuaXR5Y2hlY2sKPiA+ID4gICAgICAgaW50ZWxfc3NldV9nZXRfc3Vic2xpY2VzOjQ2IEdFTV9C
VUdfT04oc2xpY2UgPj0gc3NldS0KPiA+ID4gPm1heF9zbGljZXMpCj4gPiA+IHdoZW4gd2UgbG9v
ayB1cCB0aGUgaW52YWxpZCBzbGljZS4KPiA+ID4gCj4gPiA+IFRoZSBvbmx5IHJlbWFpbmluZyBx
dWVzdGlvbiB0aGVuIGlzIGp1c3QgaG93IHJlbGlhYmxlIHRoZSByZXN0IG9mCj4gPiA+IGludGVs
X2NhbGN1bGF0ZV9tY3Jfc19zc19zZWxlY3QoKSBpcyAtLSBob3cgbWFueSBtb3JlIG9mIHRob3Nl
IGZscygpCj4gPiA+IGFyZQo+ID4gPiBhbHNvIG9mZi1ieS1vbmUuCj4gPiA+IAo+ID4gPiBGaXhl
czogMWFjMTU5ZTIzYzJjICgiZHJtL2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrIikKPiA+ID4g
Rml4ZXM6IDFlNDBkNGFlYTU3YiAoImRybS9pOTE1L2NubDogSW1wbGVtZW50Cj4gPiA+IFdhUHJv
Z3JhbU1nc3JGb3JDb3JyZWN0U2xpY2VTcGVjaWZpY01taW9SZWFkcyIpCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiBDYzog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4K
PiA+ID4gQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNv
bT4KPiA+ID4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4g
PiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+ID4gPiAt
LS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAy
ICstCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYwo+ID4gPiBpbmRleCBmYmM4NTMwODU4MDkuLjQ4NWNkMWM4ZWNjNCAxMDA2NDQKPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiA+
IEBAIC03ODEsNyArNzgxLDcgQEAgd2FfaW5pdF9tY3Ioc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsIHN0cnVjdAo+ID4gPiBpOTE1X3dhX2xpc3QgKndhbCkKPiA+ID4gICAgICAgICAgICAg
ICAgKiByZWFkIEZVU0UzIGZvciBlbmFibGVkIEwzIEJhbmsgSURzLCBpZiBMMyBCYW5rCj4gPiA+
IG1hdGNoZXMKPiA+ID4gICAgICAgICAgICAgICAgKiBlbmFibGVkIHN1YnNsaWNlLCBubyBuZWVk
IHRvIHJlZGlyZWN0IE1DUiBwYWNrZXQKPiA+ID4gICAgICAgICAgICAgICAgKi8KPiA+ID4gLSAg
ICAgICAgICAgICB1MzIgc2xpY2UgPSBmbHMoc3NldS0+c2xpY2VfbWFzayk7Cj4gPiA+ICsgICAg
ICAgICAgICAgdTMyIHNsaWNlID0gX19mbHMoc3NldS0+c2xpY2VfbWFzayk7Cj4gPiAKPiA+IFRo
ZSBjb25kaXRpb24gYXJvdW5kIHRoaXMgKGlzX3Bvd2VyX29mXzIpIG1ha2VzIHN1cmUgd2UgbWVl
dCB0aGUgY2FzZQo+ID4gd2hlcmUgdGhlIHNsaWNlX21hc2sgaXMgdW5pbml0aWFsaXplZC4gVGhp
cyBpcyBnb2luZyB0byB3b3JrIGhlcmUsIGJ1dAo+ID4gbWlnaHQgbm90IHdvcmsgaW4gYWxsIG90
aGVyIHBsYWNlcy4gSWYgd2UgcHJvcGFnYXRlIHRoaXMgY2hhbmdlIHRvIHRoZQo+ID4gb3RoZXIg
cGxhY2VzIHdlIGNhbGwgZmxzKHNsaWNlX21hc2spLCB3aGljaCBJJ2QgcmVjb21tZW5kLCB3ZSds
bCB3YW50Cj4gPiB0byBtYWtlIHN1cmUgd2UgY2hlY2sgZm9yIHRoYXQuCj4gPiAKPiA+IE9uY2Ug
d2Ugc2hvdyByZXN1bHRzIGluIENJOgo+ID4gUmV2aWV3ZWQtYnk6IFN0dWFydCBTdW1tZXJzIDxz
dHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gCj4gVGhpcyBicm91Z2h0IGljbCBiYWNrIGZyb20g
dGhlIGRlYWQuIFRoZSBvdGhlciBmbHMgY2FuIGJlIGZpeGVkIHVwIGF0Cj4gbGVpc3VyZSEgVGEs
CgpPbmx5IGZvciBpdCB0byBkaWUgYXQKPDQ+WyAgIDEyLjA4MzMxNV0gV0FSTl9PTigoZW5hYmxl
ZF9tYXNrICYgZGlzYWJsZWRfbWFzaykgIT0gZW5hYmxlZF9tYXNrKQo8ND5bICAgMTIuMDgzMzcw
XSBXQVJOSU5HOiBDUFU6IDcgUElEOiAzODcgYXQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYzo3OTcgd2FfaW5pdF9tY3IrMHhmYS8weDExMCBbaTkxNV0KCk9ud2Fy
ZHMsCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
