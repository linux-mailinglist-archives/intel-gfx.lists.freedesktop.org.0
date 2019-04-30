Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C6CF38A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 11:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A97D891BE;
	Tue, 30 Apr 2019 09:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F8A891BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 09:56:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16405229-1500050 for multiple; Tue, 30 Apr 2019 10:55:56 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <155660904725.8345.13603335266649148461@jlahtine-desk.ger.corp.intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
 <770f5f1c2dd99e4d6a314b70184e71b928a6d362.1556540890.git.jani.nikula@intel.com>
 <155654191148.27886.16635270994402996173@skylake-alporthouse-com>
 <87a7g9rmje.fsf@intel.com>
 <155660904725.8345.13603335266649148461@jlahtine-desk.ger.corp.intel.com>
Message-ID: <155661815505.27886.11790876927043670788@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Apr 2019 10:55:55 +0100
Subject: Re: [Intel-gfx] [PATCH 19/21] drm/i915: move some leftovers to
 intel_pm.h from i915_drv.h
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMDQtMzAgMDg6MjQ6MDcpCj4gUXVvdGluZyBK
YW5pIE5pa3VsYSAoMjAxOS0wNC0yOSAxNjowMzozMykKPiA+IE9uIE1vbiwgMjkgQXByIDIwMTks
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4gUXVv
dGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNC0yOSAxMzoyOTozNykKPiA+ID4+IENvbW1pdCA2OTYx
NzNiMDY0YzYgKCJkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF9wbS5oIGZyb20gaW50ZWxfZHJ2Lmgi
KQo+ID4gPj4gbWlzc2VkIHRoZSBkZWNsYXJhdGlvbnMgaW4gaTkxNV9kcnYuaC4KPiA+ID4KPiA+
ID4gRndpdywgSSB3YW50IHRvIHB1bGwgdGhlc2UgYWxvbmcgd2l0aCBndCBwb3dlcm1hbmFnZW1l
bnQgYW5kIHJwcyBpbnRvCj4gPiA+IGd0L2ludGVsX2d0X3BtLmMgYW5kIGEgZmV3IGZyaWVuZHMu
Cj4gPiA+Cj4gPiA+IERvZXNuJ3QgbWFrZSBtdWNoIGRpZmZlcmVuY2UgZm9yIHRoaXMgcGF0Y2g7
IGp1c3QgcGxhbm5lZCBvYnNvbGVzY2VuY2UuCj4gPiAKPiA+IEknbSBmaW5lIGVpdGhlciB3YXks
IHZpYSB0aGlzIHBhdGNoIG9yIGRpcmVjdGx5Lgo+ID4gCj4gPiBJbiBnZW5lcmFsIEkgbGlrZSBo
b3cgaXQncyBlYXNpZXIgdG8gbG9vayBhdCB0aGUgbmV3IGhlYWRlcnMgYW5kIHdvbmRlcgo+ID4g
d2h5IG9uIGVhcnRoIHNvbWUgZnVuY3Rpb25zIGFyZSBpbiB0aGUgZmlsZXMgdGhleSBhcmUsIGFu
ZCB0cnkgdG8gY29tZQo+ID4gdXAgd2l0aCBiZXR0ZXIgZGl2aXNpb24gaW50byBmaWxlcy4KPiA+
IAo+ID4gLS0tCj4gPiAKPiA+IEknbSBhbHNvIHRyeWluZyB0byBwcm9iZSBmZWVkYmFjayBvbiBz
b21lIHN0eWxlIGd1aWRlbGluZXMgSSBtaWdodCBsaWtlCj4gPiB0byBlbmZvcmNlIGluIHRoZSBm
dXR1cmU6Cj4gPiAKPiA+IDEpIEEgZmlsZSBhbmQgdGhlIG5vbi1zdGF0aWMgZnVuY3Rpb25zIGlu
IGl0IHNob3VsZCBoYXZlIHRoZSBzYW1lCj4gPiAgICBwcmVmaXgsIGkuZS4gaW50ZWxfZm9vLmMg
aGFzIGZ1bmN0aW9ucyBwcmVmaXhlZCBpbnRlbF9mb29fKi4KPiA+IAo+ID4gMikgTm8gZmlsZSBz
aG91bGQgaGF2ZSBwbGF0Zm9ybSBzcGVjaWZpYyBub24tc3RhdGljIGZ1bmN0aW9ucywgaS5lLiBh
bGwKPiA+ICAgIHRoZSBub24tc3RhdGljIGZ1bmN0aW9ucyBzaG91bGQgYmUgaW50ZWxfZm9vXyog
YW5kIHRoaXMgc2hvdWxkCj4gPiAgICBpbnRlcm5hbGx5IHNwbGl0IHRvIHBsYXRmb3JtX2Zvb18q
IGluc3RlYWQgb2YgbGVhdmluZyB0aGUgaWYgbGFkZGVycwo+ID4gICAgb3IgZnVuY3Rpb24gcG9p
bnRlciBpbml0aWFsaXphdGlvbnMgdG8gdGhlIGNhbGxlcnMuCj4gCj4gQWdyZWVkIG9uIHRoZXNl
LiBHRU0gc2lkZSBoYXMgYmVlbiBtb3ZpbmcgdG8gdGhpcyBkaXJlY3Rpb24gc2xvd2x5Lgo+IAo+
ID4gU28sIHRob3VnaHRzIG9uIG5hbWluZyB0aGUgZnVuY3Rpb25zIGludGVsX2d0X3BtXyogdXBv
biBtb3ZpbmcgdGhlbT8KPiAKPiBTb3VuZHMgcmVhc29uYWJsZSB0byBtZS4KCkFuZCBpbmRlZWQg
dGhlIHBhdGNoZXMgZnJvbSBsYXN0IHllYXIgd2hlcmUgYWxyZWFkeSBtYWtpbmcgdGhhdAp0cmFu
c2Zvcm1hdGlvbiA6KQoKTmV4dCBnZW5lcmF0aW9uIG9mIHBhdGNoZXMgYXJlIGFpbWluZyB0byBz
cGxpdCB1cCB0aGUgZGlmZmVyZW50CmZ1bmN0aW9ucyB1bmRlciB0aGUgaW50ZWxfZ3RfcG0gdW1i
cmVsbGEsIGJ1dCBzdGlsbCBmb2xsb3dpbmcgdGhlIHNhbWUKcHJpbmNpcGxlLgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
