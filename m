Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8DD7AD50
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 18:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE636E5B8;
	Tue, 30 Jul 2019 16:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3426E5B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 16:13:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17734615-1500050 for multiple; Tue, 30 Jul 2019 17:13:23 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <7319e75d-19b6-b4b5-473f-7da5ff114967@intel.com>
References: <20190729222800.1010-1-daniele.ceraolospurio@intel.com>
 <156447447895.6373.14946537998785508903@skylake-alporthouse-com>
 <7319e75d-19b6-b4b5-473f-7da5ff114967@intel.com>
Message-ID: <156450320183.6373.10831812922218798216@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 17:13:21 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: don't enable communication
 twice on resume
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTMwIDE3OjA1OjE5KQo+IAo+
IAo+IE9uIDcvMzAvMTkgMToxNCBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTI5IDIzOjI4OjAwKQo+ID4+IFdoZW4gY29t
aW5nIG91dCBvZiBTMy9TNCB3ZSBzYW5pdGl6ZSBhbmQgcmUtaW5pdCB0aGUgSFcsIHdoaWNoIGlu
Y2x1ZGVzCj4gPj4gZW5hYmxpbmcgY29tbXVuaWNhdGlvbiBkdXJpbmcgdWNfaW5pdF9ody4gV2Ug
dGhlcmVmb3JlIGRvbid0IHdhbnQgdG8gZG8KPiA+PiB0aGF0IGFnYWluIGluIHVjX3Jlc3VtZSBh
bmQgY2FuIGp1c3QgdGVsbCBHdUMgdG8gcmVsb2FkIGl0cyBzdGF0ZS4KPiA+Pgo+ID4+IFNpZ25l
ZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0Bp
bnRlbC5jb20+Cj4gPj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgo+ID4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+PiAtLS0KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgfCAx
NiArKysrKysrKysrKysrKystCj4gPj4gICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Yy5jCj4gPj4gaW5kZXggZmFmYTliZTFlMTJhLi4zNDcwNmE3NTM3OTMgMTAwNjQ0Cj4gPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+ID4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiA+PiBAQCAtMjMzLDExICsyMzMsMTgg
QEAgc3RhdGljIHZvaWQgZ3VjX2Rpc2FibGVfaW50ZXJydXB0cyhzdHJ1Y3QgaW50ZWxfZ3VjICpn
dWMpCj4gPj4gICAgICAgICAgZ3VjLT5pbnRlcnJ1cHRzLmRpc2FibGUoZ3VjKTsKPiA+PiAgIH0K
PiA+PiAgIAo+ID4+ICtzdGF0aWMgYm9vbCBndWNfY29tbXVuaWNhdGlvbl9lbmFibGVkKHN0cnVj
dCBpbnRlbF9ndWMgKmd1YykKPiA+PiArewo+ID4+ICsgICAgICAgcmV0dXJuIGd1Yy0+c2VuZCAh
PSBpbnRlbF9ndWNfc2VuZF9ub3A7Cj4gPj4gK30KPiA+PiArCj4gPj4gICBzdGF0aWMgaW50IGd1
Y19lbmFibGVfY29tbXVuaWNhdGlvbihzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4gPj4gICB7Cj4g
Pj4gICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9fZ3QoZ3Vj
KS0+aTkxNTsKPiA+PiAgICAgICAgICBpbnQgcmV0Owo+ID4+ICAgCj4gPj4gKyAgICAgICBHRU1f
QlVHX09OKGd1Y19jb21tdW5pY2F0aW9uX2VuYWJsZWQoZ3VjKSk7Cj4gPj4gKwo+ID4+ICAgICAg
ICAgIHJldCA9IGludGVsX2d1Y19jdF9lbmFibGUoJmd1Yy0+Y3QpOwo+ID4+ICAgICAgICAgIGlm
IChyZXQpCj4gPj4gICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4+IEBAIC01NTgsNyAr
NTY1LDE0IEBAIGludCBpbnRlbF91Y19yZXN1bWUoc3RydWN0IGludGVsX3VjICp1YykKPiA+PiAg
ICAgICAgICBpZiAoIWludGVsX2d1Y19pc19ydW5uaW5nKGd1YykpCj4gPj4gICAgICAgICAgICAg
ICAgICByZXR1cm4gMDsKPiA+PiAgIAo+ID4+IC0gICAgICAgZ3VjX2VuYWJsZV9jb21tdW5pY2F0
aW9uKGd1Yyk7Cj4gPj4gKyAgICAgICAvKgo+ID4+ICsgICAgICAgICogV2hlbiBjb21pbmcgb3V0
IG9mIFMzL1M0IHdlIHNhbml0aXplIGFuZCByZS1pbml0IHRoZSBIVywgc28KPiA+PiArICAgICAg
ICAqIGNvbW11bmljYXRpb24gaXMgYWxyZWFkeSByZS1lbmFibGVkIGF0IHRoaXMgcG9pbnQgYW5k
IHdlIGp1c3QgbmVlZAo+ID4+ICsgICAgICAgICogdG8gdGVsbCBHdUMgdG8gcmVsb2FkIGl0cyBp
bnRlcm5hbCBzdGF0ZS4gRHVyaW5nIHJ1bnRpbWUgcmVzdW1lIHdlCj4gPj4gKyAgICAgICAgKiBp
bnN0ZWFkIHdhbnQgdG8gcmUtaW5pdCBldmVyeXRoaW5nLgo+ID4+ICsgICAgICAgICovCj4gPj4g
KyAgICAgICBpZiAoIWd1Y19jb21tdW5pY2F0aW9uX2VuYWJsZWQoZ3VjKSkKPiA+PiArICAgICAg
ICAgICAgICAgZ3VjX2VuYWJsZV9jb21tdW5pY2F0aW9uKGd1Yyk7Cj4gPiAKPiA+IFdlIGRpc3Rp
bmd1aXNoIHJ1bnRpbWVfc3VzcGVuZCBmcm9tIHN1c3BlbmQsIGJ1dCBub3QgcnVudGltZV9yZXN1
bWUgZnJvbQo+ID4gcmVzdW1lLiBJcyB0aGF0IGRpc3RpbmN0aW9uIHdvcnRod2hpbGUsIGNvdWxk
IHdlIHVzZSBpdCBiZSBtb3JlIHN0cmljdAo+ID4gb3ZlciB0aGUgZXhwZWN0ZWQgc3RhdGU/Cj4g
Cj4gVGhlIGFjdHVhbCBhY3Rpb25zIHdlIHdhbnQgdG8gcGVyZm9ybSBpbiBib3RoIGNhc2VzIGFy
ZSB0aGUgc2FtZSwgYXBhcnQgCj4gZnJvbSB0aGUgY29tbXVuaWNhdGlvbiBzaWRlLiBXaGF0IGFi
b3V0Ogo+IAo+IHN0YXRpYyBpbnQgX191Y19yZXN1bWUoc3RydWN0IGludGVsX3VjICp1YywgYm9v
bCBlbmFibGVfY29tbSkKPiB7Cj4gICAgICAgICBpZiAoIWludGVsX2d1Y19pc19ydW5uaW5nKCkp
Cj4gICAgICAgICAgICAgICAgIHJldHVybiAwOwo+IAo+ICAgICAgICAgR0VNX0JVR19PTihlbmFi
bGUgY29tbSA9PSBndWNfY29tbXVuaWNhdGlvbl9lbmFibGVkKCkpOwo+IAo+ICAgICAgICAgaWYg
KGVuYWJsZV9jb21tKQo+ICAgICAgICAgICAgICAgICBndWNfZW5hYmxlX2NvbW11bmljYXRpb24o
KTsKPiAKPiAgICAgICAgIGVyciA9IGludGVsX2d1Y19yZXN1bWUoKTsKPiB9Cj4gCj4gaW50ZWxf
dWNfcnVudGltZV9yZXN1bWUoKQo+IHsKPiAgICAgICAgIF9fdWNfcmVzdW1lKHVjLCB0cnVlKTsK
PiB9Cj4gCj4gaW50ZWxfdWNfcmVzdW1lKCkKPiB7Cj4gICAgICAgICBfX3VjX3Jlc3VtZSh1Yywg
ZmFsc2UpOwo+IH0KClRoYXQgd29ya3MgZm9yIG1lLiBIYXZpbmcgdWMtPnN1c3BlbmQgdW5uZXJ2
ZWQgbWUgd29ycnlpbmcgYWJvdXQgd2hhdApoYXBwZW5zIGlmIGdldHMgb3V0IG9mIHN5bmMuIEkg
bGlrZSBoYXZpbmcgdGhlIGxpbmsgZnJvbSBkcm1fcmVzdW1lIC0+CnVjX3Jlc3VtZSBhbmQgZHJt
X3J1bnRpbWVfcmVzdW1lIC0+IHVjX3J1bnRpbWVfcmVzdW1lLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
