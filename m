Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B744BDE2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 18:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 967C16E439;
	Wed, 19 Jun 2019 16:18:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A9336E439
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 16:18:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 09:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="358240078"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2019 09:18:49 -0700
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
 <20190619132459.25351-3-tvrtko.ursulin@linux.intel.com>
 <87lfxxlm8h.fsf@intel.com>
 <156095231503.21217.7937740232634043125@skylake-alporthouse-com>
 <87fto5lkqm.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bbe0297f-b688-8b36-193c-a49046ef899a@linux.intel.com>
Date: Wed, 19 Jun 2019 17:18:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <87fto5lkqm.fsf@intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE5LzA2LzIwMTkgMTU6MjAsIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIFdlZCwgMTkgSnVu
IDIwMTksIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPj4g
UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0xOSAxNDo0ODozMCkKPj4+IE9uIFdlZCwgMTkg
SnVuIDIwMTksIFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+
IHdyb3RlOgo+Pj4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4+Pj4KPj4+PiBXZSBoYXZlIGxvbmcgYmVlbiBzbGlnaGx0eSBhbm5veWVkIGJ5IHRoZSBh
bm9ueW1vdXMgaTkxNS0+Z3QuCj4+Pj4KPj4+PiBQcm9tb3RlIGl0IHRvIGEgc2VwYXJhdGUgc3Ry
dWN0dXJlIGFuZCBnaXZlIGl0IGl0cyBvd24gaGVhZGVyLgo+Pj4+Cj4+Pj4gVGhpcyBpcyBhIGZp
cnN0IHN0ZXAgdG93YXJkcyBjbGVhbmluZyB1cCB0aGUgc2VwYXJhdGlvbiBiZXR3ZWVuIGk5MTUg
YW5kIGd0Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPj4+PiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4+Pj4gLS0tCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF90eXBlcy5oIHwgNTMgKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgMzQgKy0tLS0tLS0tLS0t
LS0tCj4+Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9u
cygtKQo+Pj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3R5cGVzLmgKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Rf
dHlwZXMuaAo+Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+Pj4gaW5kZXggMDAwMDAwMDAwMDAw
Li5kY2RiMThlMGRkODQKPj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAo+Pj4+IEBAIC0wLDAgKzEsNTMgQEAKPj4+PiAr
LyoKPj4+PiArICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+Pj4+ICsgKgo+Pj4+ICsg
KiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgo+Pj4+ICsgKi8KPj4+Cj4+PiBo
dHRwOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDYxNTA0MzE0
Mi5HQTE4OTBAbmlzaGFkCj4+Cj4+IEkgdXR0ZXJseSBhYmhvciB0aGF0LiBCcmVha2luZyBwcmlv
ciBjb2Rpbmcgc3R5bGUgYW5kIGNvbnNpc3RlbmN5IGp1c3QKPj4gZm9yIHRoZSBzYWtlIG9mIGEg
cGVybCBzY3JpcHQuIEkgd2FudCB0aGUgY29weXJpZ2h0IGluZm9ybWF0aW9uIGFzIHBhcnQKPj4g
b2YgdGhlIGxpY2VuY2UgZ3JhbnQgKGFzIGl0IGlzIHdobyBpcyBnaXZpbmcgdGhlIGxpY2VuY2Ug
Z3JhbnQgaW4gdGhlIGZpcnN0Cj4+IHBsYWNlKS4KPiAKPiBBZXN0aGV0aWNhbGx5IHNwZWFraW5n
LCBJJ20gd2l0aCB5b3UuCj4gCj4gSXQncyBqdXN0IHRoYXQgdGhlIHBvd2VycyB0aGF0IGJlIGhh
dmUgaW4gdGhlaXIgaW5maW5pdGUgd2lzZG9tIGRlY2lkZWQKPiBvbiB0aGUgb25lIHRydWUgc3R5
bGUgKCopIHRvIGFkZCBTUERYIGhlYWRlcnMuCj4gCj4gSSdsbCBsb29rIHRoZSBvdGhlciB3YXks
IGJ1dCBJJ20gYWxzbyBub3QgZ29pbmcgdG8gYmxvY2sgcGF0Y2hlcyBhZGRpbmcKPiBuZXcgZmls
ZXMgd2l0aCAiY29uZm9ybWluZyIgaGVhZGVycy4gSSdtIG5vdCBzdXJlIGhvdyBsb25nIHdlJ2xs
IGJlIGFibGUKPiB0byBmZW5kIG9mZiBwYXRjaGVzIGNvbnZlcnRpbmcgZXhpc3RpbmcgaGVhZGVy
cywgZXNwZWNpYWxseSBnaXZlbiB0aGF0Cj4gU1BEWCBoZWFkZXJzIHdlcmUgKGFuZCBJIHRoaW5r
IGFyZSBiZWluZykgYWRkZWQgZGlyZWN0bHkgdG8gTGludXMnIHRyZWUKPiBieXBhc3Npbmcgc3Vi
c3lzdGVtIHRyZWVzLgo+IAo+IEZhaXIgZW5vdWdoPwoKSSBjYW4gY29udmVydCB0aGlzIGJlZm9y
ZSBtZXJnaW5nIG5vIHByb2JsZW0uIElmIG5vdGhpbmcgZWxzZSB3aWxsIGtlZXAgCmNoZWNrcGF0
Y2ggcXVpZXRlciBzbyBhdCBsZWFzdCBzb21lIGJlbmVmaXQuCgpSZWdhcmRzLAoKVHZydGtvCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
