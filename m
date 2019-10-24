Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0862BE2B27
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 09:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680376E124;
	Thu, 24 Oct 2019 07:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C656E124
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 07:32:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:32:27 -0700
X-IronPort-AV: E=Sophos;i="5.68,223,1569308400"; d="scan'208";a="192102228"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:32:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
In-Reply-To: <20191023155619.43e0013f0c8c673a5c508c1e@linux-foundation.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191023131308.9420-1-jani.nikula@intel.com>
 <20191023155619.43e0013f0c8c673a5c508c1e@linux-foundation.org>
Date: Thu, 24 Oct 2019 10:32:20 +0300
Message-ID: <877e4uegzf.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4] string-choice: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Vishal Kulkarni <vishal@chelsio.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMyBPY3QgMjAxOSwgQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9u
Lm9yZz4gd3JvdGU6Cj4gT24gV2VkLCAyMyBPY3QgMjAxOSAxNjoxMzowOCArMDMwMCBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPiB3cm90ZToKPgo+PiBUaGUga2VybmVsIGhhcyBw
bGVudHkgb2YgdGVybmFyeSBvcGVyYXRvcnMgdG8gY2hvb3NlIGJldHdlZW4gY29uc3RhbnQKPj4g
c3RyaW5ncywgc3VjaCBhcyBjb25kaXRpb24gPyAieWVzIiA6ICJubyIsIGFzIHdlbGwgYXMgdmFs
dWUgPT0gMSA/ICIiIDoKPj4gInMiOgo+PiAKPj4gJCBnaXQgZ3JlcCAnPyAieWVzIiA6ICJubyIn
IHwgd2MgLWwKPj4gMjU4Cj4+ICQgZ2l0IGdyZXAgJz8gIm9uIiA6ICJvZmYiJyB8IHdjIC1sCj4+
IDIwNAo+PiAkIGdpdCBncmVwICc/ICJlbmFibGVkIiA6ICJkaXNhYmxlZCInIHwgd2MgLWwKPj4g
MTk2Cj4+ICQgZ2l0IGdyZXAgJz8gIiIgOiAicyInIHwgd2MgLWwKPj4gMjUKPj4gCj4+IEFkZGl0
aW9uYWxseSwgdGhlcmUgYXJlIHNvbWUgb2NjdXJlbmNlcyBvZiB0aGUgc2FtZSBpbiByZXZlcnNl
IG9yZGVyLAo+PiBzcGxpdCB0byBtdWx0aXBsZSBsaW5lcywgb3Igb3RoZXJ3aXNlIG5vdCBjYXVn
aHQgYnkgdGhlIHNpbXBsZSBncmVwLgo+PiAKPj4gQWRkIGhlbHBlcnMgdG8gcmV0dXJuIHRoZSBj
b25zdGFudCBzdHJpbmdzLiBSZW1vdmUgZXhpc3RpbmcgZXF1aXZhbGVudAo+PiBhbmQgY29uZmxp
Y3RpbmcgZnVuY3Rpb25zIGluIGk5MTUsIGN4Z2I0LCBhbmQgVVNCIGNvcmUuIEZ1cnRoZXIKPj4g
Y29udmVyc2lvbiBjYW4gYmUgZG9uZSBpbmNyZW1lbnRhbGx5Lgo+PiAKPj4gVGhlIG1haW4gZ29h
bCBoZXJlIGlzIHRvIGFic3RyYWN0IHJlY3VycmluZyBwYXR0ZXJucywgYW5kIHNsaWdodGx5IGNs
ZWFuCj4+IHVwIHRoZSBjb2RlIGJhc2UgYnkgbm90IG9wZW4gY29kaW5nIHRoZSB0ZXJuYXJ5IG9w
ZXJhdG9ycy4KPgo+IEZhaXIgZW5vdWdoLgo+Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvaW5j
bHVkZS9saW51eC9zdHJpbmctY2hvaWNlLmgKPj4gQEAgLTAsMCArMSwzMSBAQAo+PiArLyogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwo+PiArLyoKPj4gKyAqIENvcHlyaWdodCDCqSAy
MDE5IEludGVsIENvcnBvcmF0aW9uCj4+ICsgKi8KPj4gKwo+PiArI2lmbmRlZiBfX1NUUklOR19D
SE9JQ0VfSF9fCj4+ICsjZGVmaW5lIF9fU1RSSU5HX0NIT0lDRV9IX18KPj4gKwo+PiArI2luY2x1
ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+ICsKPj4gK3N0YXRpYyBpbmxpbmUgY29uc3QgY2hhciAqeWVz
bm8oYm9vbCB2KQo+PiArewo+PiArCXJldHVybiB2ID8gInllcyIgOiAibm8iOwo+PiArfQo+PiAr
Cj4+ICtzdGF0aWMgaW5saW5lIGNvbnN0IGNoYXIgKm9ub2ZmKGJvb2wgdikKPj4gK3sKPj4gKwly
ZXR1cm4gdiA/ICJvbiIgOiAib2ZmIjsKPj4gK30KPj4gKwo+PiArc3RhdGljIGlubGluZSBjb25z
dCBjaGFyICplbmFibGVkZGlzYWJsZWQoYm9vbCB2KQo+PiArewo+PiArCXJldHVybiB2ID8gImVu
YWJsZWQiIDogImRpc2FibGVkIjsKPj4gK30KPj4gKwo+PiArc3RhdGljIGlubGluZSBjb25zdCBj
aGFyICpwbHVyYWwobG9uZyB2KQo+PiArewo+PiArCXJldHVybiB2ID09IDEgPyAiIiA6ICJzIjsK
Pj4gK30KPj4gKwo+PiArI2VuZGlmIC8qIF9fU1RSSU5HX0NIT0lDRV9IX18gKi8KPgo+IFRoZXNl
IGFyZW4ndCB2ZXJ5IGdvb2QgZnVuY3Rpb24gbmFtZXMuICBCZXR0ZXIgdG8gY3JlYXRlIGEga2Vy
bmVsLXN0eWxlCj4gbmFtZXNwYWNlIHN1Y2ggYXMgImNob2ljZV8iIGFuZCB0aGVuIGFkZCB0aGUg
ZXhwZWN0ZWQgdW5kZXJzY29yZXM6Cj4KPiBjaG9pY2VfeWVzX25vKCkKPiBjaG9pY2VfZW5hYmxl
ZF9kaXNhYmxlZCgpCj4gY2hvaWNlX3BsdXJhbCgpCgpJIHdhcyBtZXJlbHkgdXNpbmcgZXhpc3Rp
bmcgZnVuY3Rpb24gbmFtZXMgdXNlZCBpbiBzZXZlcmFsIGRyaXZlcnMgaW4KdGhlIGtlcm5lbC4g
QnV0IEkgY2FuIHJlbmFtZSBubyBwcm9ibGVtLgoKQXJlIHlvdXIgc3VnZ2VzdGlvbnMgdGhlIG5h
bWVzIHdlIGNhbiBzZXR0bGUgb24gbm93LCBvciBzaG91bGQgSSBleHBlY3QKdG8gcmVjZWl2ZSBt
b3JlIG9waW5pb25zLCBidXQgb25seSBhZnRlciBJIHNlbmQgdjU/Cgo+IChFeGFtcGxlOiBub3Rl
IHRoYXQgc2xhYmluZm8uYyBhbHJlYWR5IGhhcyBhbiAib25vZmYoKSIpLgoKVW5kZXIgdG9vbHMv
IHRob3VnaD8gSSBkaWQgbWVhbiB0byBhZGRyZXNzIGFsbCBjb25mbGljdHMgaW4gdGhpcyBwYXRj
aC4KCj4gQWxzbywgSSB3b3JyeSB0aGF0IG1ha2luZyB0aGVzZSBmdW5jdGlvbnMgaW5saW5lIG1l
YW5zIHRoYXQgZWFjaCAubwo+IGZpbGUgd2lsbCBjb250YWluIGl0cyBvd24gY29weSBvZiB0aGUg
c3RyaW5ncyAoInllcyIsICJubyIsICJlbmFibGVkIiwKPiBldGMpIGlmIHRoZSAuYyBmaWxlIGNh
bGxzIHRoZSByZWxldmFudCBoZWxwZXIuICBJJ20gbm90IHN1cmUgaWYgdGhlCj4gbGlua2VyIGlz
IHNtYXJ0IGVub3VnaCAoeWV0KSB0byBmaXggdGhpcyB1cC4gIElmIG5vdCwgd2Ugd2lsbCBlbmQg
dXAKPiB3aXRoIGEgc21hbGxlciBrZXJuZWwgYnkgdW5pbmxpbmluZyB0aGVzZSBmdW5jdGlvbnMu
IAo+IGxpYi9zdHJpbmctY2hvaWNlLmMgd291bGQgc3VpdC4KPgo+IEFuZCBkb2luZyB0aGlzIHdp
bGwgY2F1c2UgYWRkaXRpb25hbCBzYXZpbmdzOiBjYWxsaW5nIGEgc2luZ2xlLWFyZwo+IG91dC1v
Zi1saW5lIGZ1bmN0aW9uIGdlbmVyYXRlcyBsZXNzIC50ZXh0IHRoYW4gY2FsbGluZyB5ZXNubygp
LiAgV2hlbiBJCj4gZGlkIHRoaXM6IAo+Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9zdHJpbmctY2hv
aWNlLmh+c3RyaW5nLWNob2ljZS1hZGQteWVzbm8tb25vZmYtZW5hYmxlZGRpc2FibGVkLXBsdXJh
bC1oZWxwZXJzLWZpeAo+ICsrKyBhL2luY2x1ZGUvbGludXgvc3RyaW5nLWNob2ljZS5oCj4gQEAg
LTgsMTAgKzgsNyBAQAo+ICAKPiAgI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gIAo+IC1zdGF0
aWMgaW5saW5lIGNvbnN0IGNoYXIgKnllc25vKGJvb2wgdikKPiAtewo+IC0JcmV0dXJuIHYgPyAi
eWVzIiA6ICJubyI7Cj4gLX0KPiArY29uc3QgY2hhciAqeWVzbm8oYm9vbCB2KTsKPiAgCj4gIHN0
YXRpYyBpbmxpbmUgY29uc3QgY2hhciAqb25vZmYoYm9vbCB2KQo+ICB7Cj4KPiBUaGUgdGV4dCBz
ZWdtZW50IG9mIGRyaXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYjQvY3hnYjRfZGVidWdm
cy5vCj4gKDc4IGNhbGxzaXRlcykgc2hydW5rIGJ5IDExOCBieXRlcy4KClNvIHdlJ3ZlIGFscmVh
ZHkgYmVlbiBiYWNrIGFuZCBmb3J0aCBvbiB0aGF0IHBhcnRpY3VsYXIgdG9waWMgaW4gdGhlCmhp
c3Rvcnkgb2YgdGhpcyBwYXRjaC4gdjIgaGFkIGxpYi9zdHJpbmctY2hvaWNlLmMgYW5kIG5vIGlu
bGluZXMgWzFdLgoKSW4gdGhlIGVuZCwgc3RhcnRpbmcgdG8gdXNlIGZ1bmN0aW9ucywgaW5saW5l
IG9yIG5vdCwgd2lsbCBsZXQgdXMgcmV3b3JrCnRoZSBpbXBsZW1lbnRhdGlvbiBhcyB3ZSBzZWUg
Zml0LCB3aXRob3V0IHRvdWNoaW5nIHRoZSBjYWxsZXJzLgoKQWdhaW4sIGl0J3Mgbm8gcHJvYmxl
bSB0byBnbyBiYWNrIHRvIGxpYi9zdHJpbmctY2hvaWNlLmMsICpvbmNlKiBtb3JlLAphbmQgdGhl
IGVmZm9ydCBpcyB0cml2aWFsLCBidXQgdGhlIHBpbmctcG9uZyBpcyBnZXR0aW5nIG9sZC4KCgpC
UiwKSmFuaS4KCgpbMV0gaHR0cDovL2xvcmUua2VybmVsLm9yZy9yLzIwMTkwOTMwMTQxODQyLjE1
MDc1LTEtamFuaS5uaWt1bGFAaW50ZWwuY29tCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4g
U291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
