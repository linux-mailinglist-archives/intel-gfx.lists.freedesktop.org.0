Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C060D25673
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 19:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63E18953E;
	Tue, 21 May 2019 17:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2264A8953E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 17:17:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16631569-1500050 for multiple; Tue, 21 May 2019 18:17:28 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
 <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
 <c90e9682-0ee6-5f4a-d4fd-177ee0789aea@intel.com>
In-Reply-To: <c90e9682-0ee6-5f4a-d4fd-177ee0789aea@intel.com>
Message-ID: <155845904644.23981.2155227400765332509@skylake-alporthouse-com>
Date: Tue, 21 May 2019 18:17:26 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yMSAxNzo1MDozMCkKPiBPbiAyMS8w
NS8yMDE5IDE3OjM2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA1LTIxIDE1OjA4OjUyKQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCj4gPj4gaW5kZXggZjI2M2E4Mzc0MjczLi4yYWQ5NTk3N2Y3YTggMTAwNjQ0Cj4gPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4+IEBAIC0yMDg1LDcgKzIwODUsNyBA
QCBzdGF0aWMgaW50IGdlbjlfZW1pdF9iYl9zdGFydChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwK
PiA+PiAgICAgICAgICBpZiAoSVNfRVJSKGNzKSkKPiA+PiAgICAgICAgICAgICAgICAgIHJldHVy
biBQVFJfRVJSKGNzKTsKPiA+PiAgIAo+ID4+IC0gICAgICAgKmNzKysgPSBNSV9BUkJfT05fT0ZG
IHwgTUlfQVJCX0VOQUJMRTsKPiA+PiArICAgICAgICpjcysrID0gTUlfQVJCX09OX09GRiB8IHJx
LT5od19jb250ZXh0LT5hcmJfZW5hYmxlOwo+ID4gTXkgcHJlZGljdGlvbiBpcyB0aGF0IHRoaXMg
d2lsbCByZXN1bHQgaW4gdGhpcyBjb250ZXh0IGJlaW5nIHJlc2V0IGR1ZSAKPiA+IHRvIHByZWVt
cHRpb24gdGltZW91dHMgYW5kIHRoZSBjb250ZXh0IHVuZGVyIHByb2ZpbGUgYmVpbmcgYmFubmVk
LiAKPiA+IE5vdGUgdGhhdCBwcmVlbXB0aW9uIHRpbWVvdXRzIHdpbGwgYmUgdGhlIHByaW1hcnkg
bWVhbnMgZm9yIGhhbmcgCj4gPiBkZXRlY3Rpb24gZm9yIGVuZGxlc3MgYmF0Y2hlcy4gLUNocmlz
Cj4gCj4gVGhhbmtzLAo+IAo+IE9uZSBxdWVzdGlvbiA6IGhvdyBpcyB0aGF0IGRlYWx0IHdpdGgg
d2l0aCBjb21wdXRlIHdvcmtsb2FkcyBhdCB0aGUgbW9tZW50Pwo+IEkgdGhvdWdoIHRob3NlIHdo
ZXJlIHN0aWxsIG5vdCBmdWxseSBwcmVlbXB0YWJsZS4KCk5vdCBibG9ja2luZyBpcyB0aGUgY29u
ZGl0aW9uIHVuZGVyIHdoaWNoIHRoZXkgZ2V0IHRvIHVzZSBlbmRsZXNzLi4uCmNvbXB1dGUgam9i
cyBhcmUgcHJlZW1wdGlibGUgZnJvbSBnZW45IGFmYWlrLCBnZW44IHdhcyBwcm9ibGVtYXRpYyBh
bmQgc28KZGlzYWJsZWQuCiAKPiBJIG5lZWQgdG8gcmV3b3JrIHRoaXMgd2l0aCBhIG1vcmUgInNv
ZnR3YXJlIiBhcHByb2FjaCBob2xkaW5nIG9uIHByZWVtcHRpb24uCj4gQWRkaW5nIGEgY29uZGl0
aW9uIGluIGludGVsX2xyYy5jIG5lZWRfcHJlZW1wdCgpIGxvb2tzIGxpa2UgdGhlIHJpZ2h0IAo+
IGRpcmVjdGlvbj8KCkV2ZW4gbGVzcyBpZiB0aGF0IGlzIG91ciBtZWFucyBvZiBoYW5nY2hlY2su
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
