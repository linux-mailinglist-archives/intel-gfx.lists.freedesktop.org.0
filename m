Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5129E2D14D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 00:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071A66E027;
	Tue, 28 May 2019 22:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05966E027
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 22:03:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16712300-1500050 for multiple; Tue, 28 May 2019 23:03:18 +0100
MIME-Version: 1.0
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <841d0d2765421947fbbeeefc523fbd3cbb516da2.camel@intel.com>
References: <20190528200655.11605-1-chris@chris-wilson.co.uk>
 <841d0d2765421947fbbeeefc523fbd3cbb516da2.camel@intel.com>
Message-ID: <155908099612.1844.1298420303089312150@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 28 May 2019 23:03:16 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMDUtMjggMjE6NDU6MDUpCj4gT24gVHVlLCAy
MDE5LTA1LTI4IGF0IDIxOjA2ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSB3YW50
IHRoZSBpbmRleCBjb3JyZXNwb25kaW5nIHRvIHRoZSBzZXQgYml0IGJ1dCBmbHMoKSByZXR1cm5z
IHRoZQo+ID4gMS1pbmRleCB2YWx1ZS4KPiA+IAo+ID4gT3RoZXJ3aXNlLCB3ZSB0cmlnZ2VyIHRo
ZSBzYW5pdHljaGVjawo+ID4gICAgICAgaW50ZWxfc3NldV9nZXRfc3Vic2xpY2VzOjQ2IEdFTV9C
VUdfT04oc2xpY2UgPj0gc3NldS0KPiA+ID5tYXhfc2xpY2VzKQo+ID4gd2hlbiB3ZSBsb29rIHVw
IHRoZSBpbnZhbGlkIHNsaWNlLgo+ID4gCj4gPiBUaGUgb25seSByZW1haW5pbmcgcXVlc3Rpb24g
dGhlbiBpcyBqdXN0IGhvdyByZWxpYWJsZSB0aGUgcmVzdCBvZgo+ID4gaW50ZWxfY2FsY3VsYXRl
X21jcl9zX3NzX3NlbGVjdCgpIGlzIC0tIGhvdyBtYW55IG1vcmUgb2YgdGhvc2UgZmxzKCkKPiA+
IGFyZQo+ID4gYWxzbyBvZmYtYnktb25lLgo+ID4gCj4gPiBGaXhlczogMWFjMTU5ZTIzYzJjICgi
ZHJtL2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrIikKPiA+IEZpeGVzOiAxZTQwZDRhZWE1N2Ig
KCJkcm0vaTkxNS9jbmw6IEltcGxlbWVudAo+ID4gV2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGlj
ZVNwZWNpZmljTW1pb1JlYWRzIikKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4g
PGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+ID4gQ2M6IFN0dWFydCBTdW1tZXJzIDxz
dHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQu
bmF2YXJlQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKPiA+IGluZGV4IGZiYzg1MzA4NTgwOS4uNDg1Y2QxYzhlY2M0
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Ywo+ID4gQEAgLTc4MSw3ICs3ODEsNyBAQCB3YV9pbml0X21jcihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgc3RydWN0Cj4gPiBpOTE1X3dhX2xpc3QgKndhbCkKPiA+ICAgICAgICAgICAg
ICAgICogcmVhZCBGVVNFMyBmb3IgZW5hYmxlZCBMMyBCYW5rIElEcywgaWYgTDMgQmFuawo+ID4g
bWF0Y2hlcwo+ID4gICAgICAgICAgICAgICAgKiBlbmFibGVkIHN1YnNsaWNlLCBubyBuZWVkIHRv
IHJlZGlyZWN0IE1DUiBwYWNrZXQKPiA+ICAgICAgICAgICAgICAgICovCj4gPiAtICAgICAgICAg
ICAgIHUzMiBzbGljZSA9IGZscyhzc2V1LT5zbGljZV9tYXNrKTsKPiA+ICsgICAgICAgICAgICAg
dTMyIHNsaWNlID0gX19mbHMoc3NldS0+c2xpY2VfbWFzayk7Cj4gCj4gVGhlIGNvbmRpdGlvbiBh
cm91bmQgdGhpcyAoaXNfcG93ZXJfb2ZfMikgbWFrZXMgc3VyZSB3ZSBtZWV0IHRoZSBjYXNlCj4g
d2hlcmUgdGhlIHNsaWNlX21hc2sgaXMgdW5pbml0aWFsaXplZC4gVGhpcyBpcyBnb2luZyB0byB3
b3JrIGhlcmUsIGJ1dAo+IG1pZ2h0IG5vdCB3b3JrIGluIGFsbCBvdGhlciBwbGFjZXMuIElmIHdl
IHByb3BhZ2F0ZSB0aGlzIGNoYW5nZSB0byB0aGUKPiBvdGhlciBwbGFjZXMgd2UgY2FsbCBmbHMo
c2xpY2VfbWFzayksIHdoaWNoIEknZCByZWNvbW1lbmQsIHdlJ2xsIHdhbnQKPiB0byBtYWtlIHN1
cmUgd2UgY2hlY2sgZm9yIHRoYXQuCj4gCj4gT25jZSB3ZSBzaG93IHJlc3VsdHMgaW4gQ0k6Cj4g
UmV2aWV3ZWQtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+CgpU
aGlzIGJyb3VnaHQgaWNsIGJhY2sgZnJvbSB0aGUgZGVhZC4gVGhlIG90aGVyIGZscyBjYW4gYmUg
Zml4ZWQgdXAgYXQKbGVpc3VyZSEgVGEsCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
