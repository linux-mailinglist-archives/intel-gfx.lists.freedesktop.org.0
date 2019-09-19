Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E31FAB7E38
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 17:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CC86F7EA;
	Thu, 19 Sep 2019 15:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3999A6F7EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 15:32:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18548003-1500050 for multiple; Thu, 19 Sep 2019 16:31:20 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <3dfcf6edec33a4485c5d29eec39d4f58f4d829df.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
 <3dfcf6edec33a4485c5d29eec39d4f58f4d829df.1568901239.git.jani.nikula@intel.com>
Message-ID: <156890707854.1196.12620391477483853298@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Sep 2019 16:31:18 +0100
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915: abstract
 intel_panel_sanitize_ssc() from intel_modeset_init()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOS0xOSAxNTowMzo1MSkKPiBUaGUgY29kZSBpcyB0
b28gc3BlY2lmaWMgYW5kIGRldGFpbGVkIHRvIGhhdmUgb3BlbiBpbiBhIGhpZ2ggbGV2ZWwKPiBm
dW5jdGlvbi4gQWJzdHJhY3QgYXdheS4gQXMgYSBkcml2ZS1ieSBpbXByb3ZlbWVudCBzd2l0Y2gg
dG8gdXNpbmcKPiBlbmFibGVkZGlzYWJsZWQoKSBpbiBsb2dnaW5nLiBObyBmdW5jdGlvbmFsIGNo
YW5nZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAzOSArKysrKysrKysrKy0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0
aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBjMGZjNjY5MDNmZWMuLmVlMGQzNGQ3NmIwOCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
QEAgLTc1MzksNiArNzUzOSwyNyBAQCBpbnRlbF9saW5rX2NvbXB1dGVfbV9uKHUxNiBiaXRzX3Bl
cl9waXhlbCwgaW50IG5sYW5lcywKPiAgICAgICAgICAgICAgICAgICAgIGNvbnN0YW50X24pOwo+
ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBpbnRlbF9wYW5lbF9zYW5pdGl6ZV9zc2Moc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICt7Cj4gKyAgICAgICAvKgo+ICsgICAgICAgICog
VGhlcmUgbWF5IGJlIG5vIFZCVDsgYW5kIGlmIHRoZSBCSU9TIGVuYWJsZWQgU1NDIHdlIGNhbgo+
ICsgICAgICAgICoganVzdCBrZWVwIHVzaW5nIGl0IHRvIGF2b2lkIHVubmVjZXNzYXJ5IGZsaWNr
ZXIuICBXaGVyZWFzIGlmIHRoZQo+ICsgICAgICAgICogQklPUyBpc24ndCB1c2luZyBpdCwgZG9u
J3QgYXNzdW1lIGl0IHdpbGwgd29yayBldmVuIGlmIHRoZSBWQlQKPiArICAgICAgICAqIGluZGlj
YXRlcyBhcyBtdWNoLgo+ICsgICAgICAgICovCj4gKyAgICAgICBpZiAoSEFTX1BDSF9JQlgoZGV2
X3ByaXYpIHx8IEhBU19QQ0hfQ1BUKGRldl9wcml2KSkgewo+ICsgICAgICAgICAgICAgICBib29s
IGJpb3NfbHZkc191c2Vfc3NjID0gISEoSTkxNV9SRUFEKFBDSF9EUkVGX0NPTlRST0wpICYKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSRUZfU1NDMV9FTkFC
TEUpOwoKWW91IGNvdWxkIGRyaXZlLWJ5IHJlbW92ZSAhISBhcyB3ZWxsLgpSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
