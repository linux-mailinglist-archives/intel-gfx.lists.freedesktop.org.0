Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11467163B6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 14:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747E36E7B8;
	Tue,  7 May 2019 12:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43EDD6E7B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 12:27:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16476656-1500050 for multiple; Tue, 07 May 2019 13:26:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
 <20190503115225.30831-11-chris@chris-wilson.co.uk>
 <0bd15b27-fb38-71d1-cf50-2dc7f16104df@linux.intel.com>
In-Reply-To: <0bd15b27-fb38-71d1-cf50-2dc7f16104df@linux.intel.com>
Message-ID: <155723201674.2489.2235204020376681080@skylake-alporthouse-com>
Date: Tue, 07 May 2019 13:26:56 +0100
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915: Pass i915_sched_node around
 internally
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wNyAxMzoxMjowNSkKPiAKPiBPbiAwMy8w
NS8yMDE5IDEyOjUyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUbyBzaW1wbGlmeSB0aGUgbmV4
dCBwYXRjaCwgdXBkYXRlIGJ1bXBfcHJpb3JpdHkgYW5kIHNjaGVkdWxlIHRvIGFjY2VwdAo+ID4g
dGhlIGludGVybmFsIGk5MTVfc2NoZWRfbmRvZSBkaXJlY3RseSBhbmQgbm90IGV4cGVjdCBhIHJl
cXVlc3QgcG9pbnRlci4KPiA+IAo+ID4gYWRkL3JlbW92ZTogMC8wIGdyb3cvc2hyaW5rOiAyLzEg
dXAvZG93bjogOC8tMTUgKC03KQo+ID4gRnVuY3Rpb24gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgb2xkICAgICBuZXcgICBkZWx0YQo+ID4gaTkxNV9zY2hlZHVsZV9idW1wX3By
aW9yaXR5ICAgICAgICAgICAgICAgICAgMTA5ICAgICAxMTMgICAgICArNAo+ID4gaTkxNV9zY2hl
ZHVsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDUwICAgICAgNTQgICAgICArNAo+
ID4gX19pOTE1X3NjaGVkdWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOTIyICAgICA5
MDcgICAgIC0xNQo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3NjaGVkdWxlci5jIHwgMzMgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCj4gPiBpbmRleCA0YTk1Y2YyMjAxYTcuLjM4
MGNiNzM0M2ExMCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2No
ZWR1bGVyLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMK
PiA+IEBAIC0xODksNyArMTg5LDcgQEAgc3RhdGljIHZvaWQga2lja19zdWJtaXNzaW9uKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgaW50IHByaW8pCj4gPiAgICAgICB0YXNrbGV0X2hp
X3NjaGVkdWxlKCZlbmdpbmUtPmV4ZWNsaXN0cy50YXNrbGV0KTsKPiA+ICAgfQo+ID4gICAKPiA+
IC1zdGF0aWMgdm9pZCBfX2k5MTVfc2NoZWR1bGUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4g
PiArc3RhdGljIHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3NjaGVkX25vZGUgKnJx
LAo+IAo+IENhbiB5b3Ugbm90IHVzZSBycSBmb3Igc2NoZWQgbm9kZSwgYnV0IHBlcmhhcHMgbm9k
ZT8KCldlIHVzZSBub2RlIGxhdGVyIG9uLiBJIGtlcHQgd2l0aCBycSB0byB0cnkgYW5kIGtlZXAg
dGhlIHBhdGNoIHNtYWxsLAphbmQgc3RpY2sgdG8gdGhlIGN1cnJlbnQgc2VtYW50aWNzLiBXZSBj
b3VsZCByZXVzZSBub2RlLi4uIFRoYXQgbG9va3MKbGlrZSBpdCBpcyBzZW1hbnRpY2FsbHkgY2xl
YW4uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
