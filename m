Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD0421EE3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 22:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D223D89996;
	Fri, 17 May 2019 20:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 036F089996
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 20:09:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16593912-1500050 for multiple; Fri, 17 May 2019 21:08:58 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z1x4b4p0xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-6-michal.wajdeczko@intel.com>
 <155811069162.826.12709617970282077850@skylake-alporthouse-com>
 <op.z1x10tx6xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <155811324114.1890.9192023953163702697@skylake-alporthouse-com>
 <op.z1x4b4p0xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <155812373692.1890.6640785065464112472@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 21:08:56 +0100
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/uc: Skip reset preparation if
 GuC is already dead
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTE3IDE5OjAxOjA2KQo+IE9uIEZyaSwg
MTcgTWF5IDIwMTkgMTk6MTQ6MDEgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDUtMTcgMTg6MTE6MDcpCj4gPj4gT24gRnJpLCAxNyBNYXkgMjAxOSAxODozMTozMSArMDIw
MCwgQ2hyaXMgV2lsc29uCj4gPj4gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4g
Pj4KPiA+PiA+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAoMjAxOS0wNS0xNyAxNzoyMjoyNSkK
PiA+PiA+PiBXZSBtYXkgc2tpcCByZXNldCBwcmVwYXJhdGlvbiBzdGVwcyBpZiBHdUMgaXMgYWxy
ZWFkeSBzYW5pdGl6ZWQuCj4gPj4gPj4KPiA+PiA+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2Fq
ZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiA+PiA+PiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4gPj4gQ2M6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gPj4gPj4gLS0tCj4g
Pj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMgfCAzICsrKwo+ID4+ID4+ICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPj4gPj4KPiA+PiA+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+ID4+ID4+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdWMuYwo+ID4+ID4+IGluZGV4IDg2ZWRmYTVhZDcyZS4uMzZjNTNhNDI5
MjdjIDEwMDY0NAo+ID4+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMK
PiA+PiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4gPj4gPj4gQEAg
LTQ5OSw2ICs0OTksOSBAQCB2b2lkIGludGVsX3VjX3Jlc2V0X3ByZXBhcmUoc3RydWN0ICAKPiA+
PiBkcm1faTkxNV9wcml2YXRlCj4gPj4gPj4gKmk5MTUpCj4gPj4gPj4gICAgICAgICBpZiAoIVVT
RVNfR1VDKGk5MTUpKQo+ID4+ID4+ICAgICAgICAgICAgICAgICByZXR1cm47Cj4gPj4gPj4KPiA+
PiA+PiArICAgICAgIGlmICghaW50ZWxfZ3VjX2lzX2FsaXZlKGd1YykpCj4gPj4gPj4gKyAgICAg
ICAgICAgICAgIHJldHVybjsKPiA+PiA+Cj4gPj4gPiBEb2VzIGl0IG5vdCByZXBsYWNlICJpZiAo
IVVTRVNfR1VDKGk5MTUpKSI/Cj4gPj4KPiA+PiBZZXMgaXQgY2FuLCBhcyB3ZSB3aWxsIG5ldmVy
IGZldGNoL3VwbG9hZCBmdyBpZiB3ZSBkb24ndCBwbGFuIHRvIHVzZSBpdCAgCj4gPj4gOykKPiA+
Pgo+ID4+IEJ0dywgSSdtIHRoaW5raW5nIG9mIHJlbmFtaW5nIGludGVsX2d1Y19pc19hbGl2ZSB0
byBpbnRlbF9ndWNfaXNfbG9hZGVkCj4gPj4gb3IgaW50ZWxfZ3VjX2lzX3N0YXJ0ZWQgdG8gYmV0
dGVyIGRlc2NyaWJlIHdoYXQgdGhpcyBmdW5jdGlvbiBpcyAgCj4gPj4gcmVwb3J0aW5nLAo+ID4+
IGFzIG9uZSBjYW4gdGhpbmsgdGhhdCBpbnRlbF9ndWNfaXNfYWxpdmUgaXMgYWN0dWFsbHkgY2hl
Y2tpbmcgdGhhdCBHdUMgIAo+ID4+IGZ3Cj4gPj4gaXMgcmVzcG9uc2l2ZSwgd2hpY2ggaW4gZ2Vu
ZXJhbCBtaWdodCBub3QgYmUgdGhlIHNhbWUgYXMgImxvYWRlZCIKPiA+Cj4gPiBFaXRoZXIgc2Vl
bXMgcmVhc29uYWJsZSwgdGhvdWdoIHRoZXJlIG1pZ2h0IGJlIGdvb2QgcmVhc29uIHRvIGhhdmUg
Ym90aAo+ID4gOikKPiA+Cj4gPiBpbnRlbF9ndWNfaXNfbG9hZGVkCj4gPiBpbnRlbF9ndWNfaGFz
X3N0YXJ0ZWQgLyBpbnRlbF9ndWNfaXNfYWN0aXZlCj4gCj4gT24gR3VDIGxvYWQgZmFpbHVyZSwg
b3Igb24gcmVzZXQsIHdlIGltbWVkaWF0ZWx5IHNhbml0aXplIGZ3IGxvYWQgc3RhdHVzLAo+IHNv
IHVudGlsIHdlIHByb3ZpZGUgcmVhbCBydW50aW1lIGNvbm5lY3Rpdml0eSBjaGVjaywgaWYgZXZl
ciBiZSByZXF1aXJlZCwKPiBJIGFzc3VtZSB3ZSBjYW4gc3RheSB3aXRoIGp1c3Qgb25lIGZ1bmN0
aW9uOiBpbnRlbF9ndWNfaXNfbG9hZGVkLCBvaz8KCldvdWxkIGEgc2ltaWxhciBvbmUgZm9yIGh1
YyBhbHNvIHdvcms/IFdvdWxkIGl0IGJlIHJlbGlhYmxlIGVub3VnaCB0bwpyZXBsYWNlIEhVQ19T
VEFUVVMgcXVlcnk/IChTZWVtcyBzaWxseSB0byB3YWtlIHRoZSBkZXZpY2UgdXAganVzdCB0bwph
bnN3ZXIgaWYgd2UndmUgbG9hZGVkIHRoZSBmaXJtd2FyZSBzdWNjZXNzZnVsbHkuKQotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
