Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC834BB28
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 16:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339226E411;
	Wed, 19 Jun 2019 14:19:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B7566E411
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 14:19:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 07:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="181645601"
Received: from mcostacx-wtg.ger.corp.intel.com (HELO localhost)
 ([10.249.47.136])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2019 07:19:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <156095231503.21217.7937740232634043125@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
 <20190619132459.25351-3-tvrtko.ursulin@linux.intel.com>
 <87lfxxlm8h.fsf@intel.com>
 <156095231503.21217.7937740232634043125@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 17:20:49 +0300
Message-ID: <87fto5lkqm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/33] drm/i915: Introduce struct intel_gt
 as replacement for anonymous i915->gt
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

T24gV2VkLCAxOSBKdW4gMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDYtMTkgMTQ6NDg6MzApCj4+
IE9uIFdlZCwgMTkgSnVuIDIwMTksIFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51
eC5pbnRlbC5jb20+IHdyb3RlOgo+PiA+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4+ID4KPj4gPiBXZSBoYXZlIGxvbmcgYmVlbiBzbGlnaGx0eSBhbm5v
eWVkIGJ5IHRoZSBhbm9ueW1vdXMgaTkxNS0+Z3QuCj4+ID4KPj4gPiBQcm9tb3RlIGl0IHRvIGEg
c2VwYXJhdGUgc3RydWN0dXJlIGFuZCBnaXZlIGl0IGl0cyBvd24gaGVhZGVyLgo+PiA+Cj4+ID4g
VGhpcyBpcyBhIGZpcnN0IHN0ZXAgdG93YXJkcyBjbGVhbmluZyB1cCB0aGUgc2VwYXJhdGlvbiBi
ZXR3ZWVuIGk5MTUgYW5kIGd0Lgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+ID4gLS0tCj4+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggfCA1MyArKysrKysrKysrKysrKysrKysrKysr
KysKPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8IDM0ICst
LS0tLS0tLS0tLS0tLQo+PiA+ICAyIGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDMy
IGRlbGV0aW9ucygtKQo+PiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndF90eXBlcy5oCj4+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gPiBpbmRleCAwMDAw
MDAwMDAwMDAuLmRjZGIxOGUwZGQ4NAo+PiA+IC0tLSAvZGV2L251bGwKPj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCj4+ID4gQEAgLTAsMCArMSw1MyBA
QAo+PiA+ICsvKgo+PiA+ICsgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCj4+ID4gKyAq
Cj4+ID4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4+ID4gKyAqLwo+
PiAKPj4gaHR0cDovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA2
MTUwNDMxNDIuR0ExODkwQG5pc2hhZAo+Cj4gSSB1dHRlcmx5IGFiaG9yIHRoYXQuIEJyZWFraW5n
IHByaW9yIGNvZGluZyBzdHlsZSBhbmQgY29uc2lzdGVuY3kganVzdAo+IGZvciB0aGUgc2FrZSBv
ZiBhIHBlcmwgc2NyaXB0LiBJIHdhbnQgdGhlIGNvcHlyaWdodCBpbmZvcm1hdGlvbiBhcyBwYXJ0
Cj4gb2YgdGhlIGxpY2VuY2UgZ3JhbnQgKGFzIGl0IGlzIHdobyBpcyBnaXZpbmcgdGhlIGxpY2Vu
Y2UgZ3JhbnQgaW4gdGhlIGZpcnN0Cj4gcGxhY2UpLgoKQWVzdGhldGljYWxseSBzcGVha2luZywg
SSdtIHdpdGggeW91LgoKSXQncyBqdXN0IHRoYXQgdGhlIHBvd2VycyB0aGF0IGJlIGhhdmUgaW4g
dGhlaXIgaW5maW5pdGUgd2lzZG9tIGRlY2lkZWQKb24gdGhlIG9uZSB0cnVlIHN0eWxlICgqKSB0
byBhZGQgU1BEWCBoZWFkZXJzLgoKSSdsbCBsb29rIHRoZSBvdGhlciB3YXksIGJ1dCBJJ20gYWxz
byBub3QgZ29pbmcgdG8gYmxvY2sgcGF0Y2hlcyBhZGRpbmcKbmV3IGZpbGVzIHdpdGggImNvbmZv
cm1pbmciIGhlYWRlcnMuIEknbSBub3Qgc3VyZSBob3cgbG9uZyB3ZSdsbCBiZSBhYmxlCnRvIGZl
bmQgb2ZmIHBhdGNoZXMgY29udmVydGluZyBleGlzdGluZyBoZWFkZXJzLCBlc3BlY2lhbGx5IGdp
dmVuIHRoYXQKU1BEWCBoZWFkZXJzIHdlcmUgKGFuZCBJIHRoaW5rIGFyZSBiZWluZykgYWRkZWQg
ZGlyZWN0bHkgdG8gTGludXMnIHRyZWUKYnlwYXNzaW5nIHN1YnN5c3RlbSB0cmVlcy4KCkZhaXIg
ZW5vdWdoPwoKCkJSLApKYW5pLgoKCigqKSBBaGVtLCB0aGUgdHdvIHRydWUgc3R5bGVzLCBkZXBl
bmRpbmcgb24gd2hldGhlciBpdCdzIGEgLmMgb3IgYSAuaC4KCgotLSAKSmFuaSBOaWt1bGEsIElu
dGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
