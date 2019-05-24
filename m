Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ED329571
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 12:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABAF56E04B;
	Fri, 24 May 2019 10:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1786E04B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 10:07:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16666292-1500050 for multiple; Fri, 24 May 2019 11:07:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
 <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
 <6aa987f0-3825-ff37-7b8e-deb24840a3c9@intel.com>
 <155869095409.28319.17899714925932847048@skylake-alporthouse-com>
 <20477c2a-f4b7-9130-6e69-e6c08ff62f7e@intel.com>
In-Reply-To: <20477c2a-f4b7-9130-6e69-e6c08ff62f7e@intel.com>
Message-ID: <155869243871.28319.17151289879188051725@skylake-alporthouse-com>
Date: Fri, 24 May 2019 11:07:18 +0100
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yNCAxMDo1MTo0OSkKPiBPbiAyNC8w
NS8yMDE5IDEwOjQyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA1LTI0IDEwOjI4OjE2KQo+ID4+IE9uIDIxLzA1LzIwMTkgMTc6MzYsIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4gUXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0w
NS0yMSAxNTowODo1MikKPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPj4+
PiBpbmRleCBmMjYzYTgzNzQyNzMuLjJhZDk1OTc3ZjdhOCAxMDA2NDQKPiA+Pj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPj4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4+Pj4gQEAgLTIwODUsNyArMjA4NSw3IEBAIHN0
YXRpYyBpbnQgZ2VuOV9lbWl0X2JiX3N0YXJ0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+ID4+
Pj4gICAgICAgICAgIGlmIChJU19FUlIoY3MpKQo+ID4+Pj4gICAgICAgICAgICAgICAgICAgcmV0
dXJuIFBUUl9FUlIoY3MpOwo+ID4+Pj4gICAgCj4gPj4+PiAtICAgICAgICpjcysrID0gTUlfQVJC
X09OX09GRiB8IE1JX0FSQl9FTkFCTEU7Cj4gPj4+PiArICAgICAgICpjcysrID0gTUlfQVJCX09O
X09GRiB8IHJxLT5od19jb250ZXh0LT5hcmJfZW5hYmxlOwo+ID4+PiBNeSBwcmVkaWN0aW9uIGlz
IHRoYXQgdGhpcyB3aWxsIHJlc3VsdCBpbiB0aGlzIGNvbnRleHQgYmVpbmcgcmVzZXQgZHVlCj4g
Pj4+IHRvIHByZWVtcHRpb24gdGltZW91dHMgYW5kIHRoZSBjb250ZXh0IHVuZGVyIHByb2ZpbGUg
YmVpbmcgYmFubmVkLiBOb3RlCj4gPj4+IHRoYXQgcHJlZW1wdGlvbiB0aW1lb3V0cyB3aWxsIGJl
IHRoZSBwcmltYXJ5IG1lYW5zIGZvciBoYW5nIGRldGVjdGlvbgo+ID4+PiBmb3IgZW5kbGVzcyBi
YXRjaGVzLgo+ID4+PiAtQ2hyaXMKPiA+Pj4KPiA+PiBBbm90aGVyIHRob3VnaHQgOgo+ID4+Cj4g
Pj4gV2hhdCBpZiB3ZSByYW4gd2l0aCB0aGUgbWF4IHByaW9yaXR5Pwo+ID4+IEl0IHdvdWxkIGJl
IGZpbmUgdG8gaGF2ZSB0aGUgaGFuZ2NoZWNrIHByZWVtcHQgdGhlIHdvcmtsb2FkIChpdCdzIHBy
ZXR0eQo+ID4+IHNob3J0IGFuZCBzaG91bGRuJ3QgYWZmZWN0IHBlcmYgY291bnRlcnMgZnJvbSAz
ZC9jb21wdXRlIHBpcGVsaW5lIG11Y2gpCj4gPj4gYXMgbG9uZyBhcyBlbnN1cmUgbm90aGluZyBl
bHNlIHJ1bnMuCj4gPiBJdCdzIGNlcnRhaW5seSBzYWZlciBmcm9tIHRoZSBwb3YgdGhhdCB3ZSBk
b24ndCBibG9jayBwcmVlbXB0aW9uIGFuZCBzbwo+ID4gZG9uJ3QgaW5jdXIgZm9yY2VkIHJlc2V0
cy4gTm90IGtlZW4gb24gdGhlIHN5c3RlbSBiZWluZyBwZXJ0dXJiZWQgYnkgdGhlCj4gPiBhY3Qg
b2Ygb2JzZXJ2aW5nIGl0LCBhbmQgSSBzdGlsbCBkaXNsaWtlIHRoZSBub3Rpb24gb2YgcGVybWl0
dGluZyBvbmUKPiA+IGNsaWVudCB0byBob2cgdGhlIEdQVSBzbyBlYXNpbHkuIE1ha2VzIG1lIHRo
aW5rIG9mIFJUIHRocm90dGxpbmcsIGFuZAo+ID4gZ2VuZXJhbGx5IHRocm93aW5nIG91dCB0aGUg
YWJzb2x1dGUgcHJpb3JpdHkgc3lzdGVtIChpbiBleGNoYW5nZSBmb3IKPiA+IGNvbXB1dGVkIGRl
YWRsaW5lcyBvciBzb21ldGhpbmcpLgo+ID4gLUNocmlzCj4gPgo+IEkgZG9uJ3QgbGlrZSBpdCBt
dWNoIGVpdGhlciBidXQgSSBjYW4ndCBzZWUgaG93IHRvIGRvIG90aGVyd2lzZSB3aXRoIHRoZSAK
PiBoYXJkd2FyZSB3ZSBjdXJyZW50bHkgaGF2ZS4KPiAKPiBJJ20gdGhpbmtpbmcgb2YgMiBwcmlv
cml0aWVzIHZhbHVlcyBvbmUgb2Ygc2NoZWR1bGluZywgb25lIG9uY2UgcnVubmluZy4KCkl0J3Mg
bm90IHF1aXRlIHRoYXQgZWFzeSBhcyB5b3UgbWF5IHN0YXJ0IHJ1bm5pbmcgY29uY3VycmVudGx5
IHdpdGggb25lCm9mIHlvdXIgZGVwZW5kZW5jaWVzIGFuZCBtdXN0IHRoZXJlZm9yZSBtYW5hZ2Ug
dGhlIHByaW9yaXR5IGludmVyc2lvbiBpZgp5b3UgYm9vc3QgeW91cnNlbGYuIEFuZCBJJ3ZlIGp1
c3QgZ29uZSB0aHJvdWdoIGFuZCB0aHJvd24gb3V0IHRoZQpjdXJyZW50IGNvbXBsZXhpdHkgb2Yg
bWFuaXB1bGF0aW5nIHByaW9yaXR5IGFzIHRoZXkgcnVuIGJlY2F1c2UgaXQgbWFkZQp0aW1lc2xp
Y2luZyBtdWNoIGhhcmRlciAod2hlcmUgdGhlIHByaW9yaXR5IHdhcyBjaGFuZ2luZyBiZXR3ZWVu
CmV2YWx1YXRpbmcgdGhlIG5lZWQgZm9yIHRoZSBjb250ZXh0IHN3aXRjaCBhbmQgdGhlIGNvbnRl
eHQgc3dpdGNoCm9jY3VycmluZyAtLSBzdWNoIG1pc3Rha2VzIGNhbiBiZSBub3RpY2VkIGluIHRo
cm91Z2hwdXQgc2Vuc2l0aXZlCnRyYW5zY29kZSB3b3JrbG9hZHMpLgoKPiBNb3N0IGNvbnRleHRz
IHdvdWxkIGhhdmUgYm90aCB2YWx1ZXMgZXF1YWwuCj4gCj4gQ291bGQgbWl0aWdhdGUgdGhlIGlz
c3VlIGEgYml0PwoKQSBiaXQsIGl0IGdpdmVzIHlvdSBhIHNvZnQgbm90aW9uIG9mIGEgbm8tcHJl
ZW1wdCBmbGFnIHdpdGhvdXQgcXVldWUKanVtcGluZy4gcnFfcHJpbyhycSkgfCBpbnRlbF9jb250
ZXh0LT5lZmZlY3RpdmVfcHJpb3JpdHkgb3Igc29tZXN1Y2guCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
