Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 315CA105A04
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 19:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D1C6E088;
	Thu, 21 Nov 2019 18:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677886E088
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 18:54:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 10:54:36 -0800
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="201222667"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 10:54:36 -0800
Date: Thu, 21 Nov 2019 10:54:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191121185429.aqc2ga7ciiqkoovg@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191120234608.17775-1-lucas.demarchi@intel.com>
 <20191120234608.17775-3-lucas.demarchi@intel.com>
 <878so9wf4g.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878so9wf4g.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/i915: assume vbt is 4-byte
 aligned into oprom
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMDM6MDk6MDNQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj5PbiBXZWQsIDIwIE5vdiAyMDE5LCBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4gd3JvdGU6Cj4+IFRoZSB1bmFsaWduZWQgaW9yZWFkMzIoKSB3aWxsIG1ha2Ug
dXMgcmVhZCBieXRlIGJ5IGJ5dGUgbG9va2luZyBmb3IgdGhlCj4+IHZidC4gV2UgY291bGQganVz
dCBhcyB3ZWxsIGhhdmUgZG9uZSBhIGlvcmVhZDgoKSArIGEgc2hpZnQgYW5kIGF2b2lkIHRoZQo+
PiBleHRyYSBjb25mdXNpb24gb24gaG93IHdlIGFyZSBsb29raW5nIGZvciAiJFZCVCIuCj4+Cj4+
IEhvd2V2ZXIgd2hlbiB1c2luZyBBQ1BJIGl0J3MgZ3VhcmFudGVlZCB0aGUgVkJUIGlzIDQtYnl0
ZSBhbGlnbmVkCj4+IHBlciBzcGVjLCBzbyB3ZSBjYW4gcHJvYmFibHkgYXNzdW1lIGl0IGhlcmUg
YXMgd2VsbC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMgfCAxOSArKysrKystLS0tLS0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPj4gaW5kZXggYWE5YjE4MmVmZWU1Li42YmY1N2IxYWQw
NTYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4+
IEBAIC0xOTAyLDI3ICsxOTAyLDIwIEBAIHN0YXRpYyBzdHJ1Y3QgdmJ0X2hlYWRlciAqb3Byb21f
Z2V0X3ZidChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ICAJdm9pZCBfX2lv
bWVtICpwID0gTlVMTCwgKm9wcm9tOwo+PiAgCXN0cnVjdCB2YnRfaGVhZGVyICp2YnQ7Cj4+ICAJ
dTE2IHZidF9zaXplOwo+PiAtCXNpemVfdCBpLCBzaXplOwo+PiArCXNpemVfdCBzaXplOwo+Pgo+
PiAgCW9wcm9tID0gcGNpX21hcF9yb20ocGRldiwgJnNpemUpOwo+PiAgCWlmICghb3Byb20pCj4+
ICAJCXJldHVybiBOVUxMOwo+Pgo+PiAgCS8qIFNjb3VyIG1lbW9yeSBsb29raW5nIGZvciB0aGUg
VkJUIHNpZ25hdHVyZS4gKi8KPj4gLQlmb3IgKGkgPSAwOyBpICsgNCA8IHNpemU7IGkrKykgewo+
PiAtCQlpZiAoaW9yZWFkMzIob3Byb20gKyBpKSAhPSAqKChjb25zdCB1MzIgKikiJFZCVCIpKQo+
PiAtCQkJY29udGludWU7Cj4+IC0KPj4gLQkJcCA9IG9wcm9tICsgaTsKPj4gLQkJc2l6ZSAtPSBp
Owo+PiAtCQlicmVhazsKPj4gLQl9Cj4+IC0KPj4gLQlpZiAoIXApCj4+IC0JCWdvdG8gZXJyX3Vu
bWFwX29wcm9tOwo+PiArCWZvciAocCA9IG9wcm9tOyBzaXplID49IDQ7IHAgKz0gNCwgc2l6ZSAt
PSA0KQo+PiArCQlpZiAoaW9yZWFkMzIocCkgPT0gKigoY29uc3QgdTMyICopIiRWQlQiKSkKPj4g
KwkJCWJyZWFrOwo+Cj5JIHRoaW5rIHRoZSBvcmlnaW5hbCBpcyBlYXNpZXIgdG8gcmVhZC4gWW91
IG9ubHkgcmVhbGx5IG5lZWQgdG8gY2hhbmdlCj4iaSsrIiB0byAiaSArPSA0IiBhbmQgYmUgZG9u
ZSB3aXRoIGl0LgoKSSByZWFsbHkgbGlrZWQgdGhpcyB2ZXJzaW9uIG11Y2ggbW9yZS4uLiBzaG9y
dGVyIGFuZCB3aXRoIG9ubHkgb25lIGNvbnRyb2wKdmFyaWFibGUgcmF0aGVyIHRoYW4ga2VlcGlu
ZyB0aGUgY29udHJvbCBpbiAzIGRpZmZlcmVudCBwbGFjZXMgKGksIHNpemUKYW5kIHApLgoKTHVj
YXMgRGUgTWFyY2hpCgo+Cj5CUiwKPkphbmkuCj4KPj4KPj4gIAlpZiAoc2l6ZW9mKHN0cnVjdCB2
YnRfaGVhZGVyKSA+IHNpemUpIHsKPj4gLQkJRFJNX0RFQlVHX0RSSVZFUigiVkJUIGhlYWRlciBp
bmNvbXBsZXRlXG4iKTsKPj4gKwkJaWYgKHNpemUgPj0gNCkKPj4gKwkJCURSTV9ERUJVR19EUklW
RVIoIlZCVCBoZWFkZXIgaW5jb21wbGV0ZVxuIik7Cj4+ICAJCWdvdG8gZXJyX3VubWFwX29wcm9t
Owo+PiAgCX0KPgo+LS0gCj5KYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
