Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 604D85575D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 20:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242786E1D6;
	Tue, 25 Jun 2019 18:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D892B6E1D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 18:47:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17022506-1500050 for multiple; Tue, 25 Jun 2019 19:47:19 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z3ydosirxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190625174547.22164-1-chris@chris-wilson.co.uk>
 <op.z3ydosirxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156148843527.2637.1647850966438714639@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 25 Jun 2019 19:47:15 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Compact init params debug to
 a single line
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA2LTI1IDE5OjMwOjE4KQo+IE9uIFR1ZSwg
MjUgSnVuIDIwMTkgMTk6NDU6NDcgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBVc2UgaGV4X2R1bXBfdG9fYnVmZmVyKCkgdG8g
Y29tcHJlc3MgdGhlIHBhcmFtZXRlciBkZWJ1ZyBpbnRvIGEgc2luZ2xlCj4gPiBsaW5lIGZvciBs
ZXNzIHZlcmJvc2UgZGVidWcgbG9ncy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2d1Yy5jIHwgNiArKysrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ndWMuYyAgCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Yy5jCj4gPiBpbmRleCBjNDBhNmVmZGQzM2EuLjQ0N2YxZGUxNTI4OSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ndWMuYwo+ID4gQEAgLTM2Nyw2ICszNjcsNyBAQCBzdGF0aWMgdTMyIGd1
Y19jdGxfYWRzX2ZsYWdzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiA+ICB2b2lkIGludGVsX2d1
Y19pbml0X3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4gPiAgewo+ID4gICAgICAgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZ3VjX3RvX2k5MTUoZ3VjKTsKPiA+ICsg
ICAgIGNoYXIgYnVmW0dVQ19DVExfTUFYX0RXT1JEUyAqIDEwXTsKPiA+ICAgICAgIHUzMiBwYXJh
bXNbR1VDX0NUTF9NQVhfRFdPUkRTXTsKPiA+ICAgICAgIGludCBpOwo+ID4gQEAgLTM3OCw4ICsz
NzksOSBAQCB2b2lkIGludGVsX2d1Y19pbml0X3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMp
Cj4gPiAgICAgICBwYXJhbXNbR1VDX0NUTF9ERUJVR10gPSBndWNfY3RsX2RlYnVnX2ZsYWdzKGd1
Yyk7Cj4gPiAgICAgICBwYXJhbXNbR1VDX0NUTF9BRFNdID0gZ3VjX2N0bF9hZHNfZmxhZ3MoZ3Vj
KTsKPiA+IC0gICAgIGZvciAoaSA9IDA7IGkgPCBHVUNfQ1RMX01BWF9EV09SRFM7IGkrKykKPiA+
IC0gICAgICAgICAgICAgRFJNX0RFQlVHX0RSSVZFUigicGFyYW1bJTJkXSA9ICUjeFxuIiwgaSwg
cGFyYW1zW2ldKTsKPiA+ICsgICAgIGhleF9kdW1wX3RvX2J1ZmZlcihwYXJhbXMsIHNpemVvZihw
YXJhbXMpLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIDMyLCA0LCBidWYsIHNpemVvZihi
dWYpLCBmYWxzZSk7Cj4gCj4gaG1tLCBHVUNfQ1RMX01BWF9EV09SRFMgaXMgMTQsIHNvIGl0IHdp
bGwgYmUgNTYgYnl0ZXMgaW4gdG90YWwsCj4gYnV0IGhleF9kdW1wX3RvX2J1ZmZlciB3aWxsIGR1
bXAgb25seSAzMiBieXRlcyAuLi4gdW5sZXNzCj4gd2UgZXhwbGljaXRseSBsaW1pdCBvdXIgZHVt
cCB0byBjdXJyZW50bHkgdXNlZCBqdXN0IDUgZW50cmllcwo+ICgyMCBieXRlcykgYnV0IHRoZW4g
dGhpcyBtaWdodCBiZSBub3QgZnV0dXJlIHByb29mIGlmIG5ldyBmdwo+IHdpbGwgcmVxdWlyZS91
c2UgbW9yZSB0aGVuIDggcGFyYW1ldGVycwoKQWgsIGl0IG9ubHkgZG9lcyBvbmUgbGluZS4gSSBj
b21wbGV0ZWx5IGZvcmdvdCBhYm91dCB0aGF0LgoKPiA+ICsgICAgIERSTV9ERUJVR19EUklWRVIo
InBhcmFtc1slc11cbiIsIGJ1Zik7Cj4gCj4gdXNlIG9mIFslc10gbWF5IG1ha2UgdGhpcyBsZXNz
IHJlYWRhYmxlLCBzbyBtYXliZToKPiAKPiAgICAgICAgIERSTV9ERUJVR19EUklWRVIoIkd1QyBw
YXJhbXMgJXNcbiIsIGJ1Zik7Cj4gCj4gYnV0IEknbSBzdGlsbCBub3Qgc3VyZSBpZiB3ZSBzaG91
bGQgZ28gdGhhdCBwYXJ0aWFsIHdheSwgRGFuaWVsZSA/CgpIb3cgYWJvdXQsCgppZiAoZHJtX2Rl
YnVnICYgRFJNX1VUX0RSSVZFUikKCXByaW50X2hleF9kdW1wKEtFUk5fREVCVUcsICJndWMgaW5p
dCBwYXJhbXM6ICIsIDAsIDE2LCA0LAoJCSAgICAgICBwYXJhbXMsIHNpemVvZihwYXJhbXMpLCBm
YWxzZSk7Cgo+IHBzLiB3ZSBjYW4gYXNsbyB1c2UgdHdvIGxpbmVzIG9yIHR3byBidWZzIGZvciAw
Li43IGFuZCA4Li4xMyBwYXJhbXMKCldvdWxkIGFsc28gYmUgYW4gaW1wcm92ZW1lbnQgb3ZlciAx
NCA6KQoKRG8gd2UgZXZlbiBuZWVkIHRvIGR1bXAgdGhlbT8gVGhleSBhcmUgYWxtb3N0IGFsbCBz
dGF0aWMsIHdpdGggdGhlCmV4Y2VwdGlvbiBvZiBkZWJ1ZyBsZXZlbCBhbmQgYWRzIGFkZHJlc3M/
IElzIGl0IHVzZWZ1bD8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
