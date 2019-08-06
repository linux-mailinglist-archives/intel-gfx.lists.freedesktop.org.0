Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ECC83781
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 19:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0529F6E4AE;
	Tue,  6 Aug 2019 17:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC20D6E4AE
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 17:01:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 10:01:01 -0700
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="168352402"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Aug 2019 10:01:00 -0700
Date: Tue, 6 Aug 2019 10:01:35 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190806170135.GB25907@intel.com>
References: <20190718204912.24149-1-rodrigo.vivi@intel.com>
 <156348349623.6999.4776587555290794879@skylake-alporthouse-com>
 <20190718211445.GC30177@intel.com>
 <156348515103.7512.11898101333181763201@skylake-alporthouse-com>
 <20190718213811.GA25506@intel.com> <878ss6jyco.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878ss6jyco.fsf@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: We don't need display's
 suspend/resume operations when !HAS_DISPLAY
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDM6MDI6MzFQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVGh1LCAxOCBKdWwgMjAxOSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPiB3cm90ZToKPiA+IE9uIFRodSwgSnVsIDE4LCAyMDE5IGF0IDEwOjI1OjUxUE0gKzAx
MDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+PiBRdW90aW5nIFJvZHJpZ28gVml2aSAoMjAxOS0w
Ny0xOCAyMjoxNDo0NSkKPiA+PiA+IE9uIFRodSwgSnVsIDE4LCAyMDE5IGF0IDA5OjU4OjE2UE0g
KzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+PiA+ID4gUXVvdGluZyBSb2RyaWdvIFZpdmkg
KDIwMTktMDctMTggMjE6NDk6MTIpCj4gPj4gPiA+ID4gK3ZvaWQgaW50ZWxfZGlzcGxheV9wb3dl
cl9yZXN1bWVfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPj4gPiA+ID4g
K3sKPiA+PiA+ID4gPiArICAgICAgIGlmICghSEFTX0RJU1BMQVkoaTkxNSkpCj4gPj4gPiA+ID4g
KyAgICAgICAgICAgICAgIHJldHVybjsKPiA+PiA+ID4gPiArCj4gPj4gPiA+ID4gKyAgICAgICBp
ZiAoSU5URUxfR0VOKGk5MTUpID49IDExIHx8IElTX0dFTjlfTFAoaTkxNSkpIHsKPiA+PiA+ID4g
PiArICAgICAgICAgICAgICAgZ2VuOV9zYW5pdGl6ZV9kY19zdGF0ZShpOTE1KTsKPiA+PiA+ID4g
Cj4gPj4gPiA+IEFyZSB5b3Ugc3VyZSB0aGF0IHdoYXRldmVyIHN0YXRlIHlvdSBhcmUgcmVzdW1p
bmcgZnJvbSBhZ3JlZXMgd2l0aCB5b3VyCj4gPj4gPiA+IG5vdGlvbiBvZiAhZGlzcGxheT8gVGhl
IHNhbml0aXplIHJvdXRpbmVzIGFyZSBzdXBwb3NlZCB0byBiZSBhYm91dAo+ID4+ID4gPiBjbGVh
bmluZyB1cCBhZnRlciB0aGlyZCBwYXJ0aWVzIHdobyBkb24ndCBwbGF5IGJ5IHRoZSBzYW1lIHJ1
bGVzLgo+ID4+ID4gCj4gPj4gPiBJIGRvbid0IGV4cGVjdCBhbnkgZnVuY3Rpb24gc2V0dGluZyBh
bnkga2luZCBvZiBkYyBzdGF0ZXMgd2hlbiB3ZSBkb24ndAo+ID4+ID4gaGF2ZSBkaXNwbGF5LiBC
ZXNpZGVzIHRoZSBwYXRoIHRoYXQgc2V0cyBEQ19TVEFURV9FTiBpcyBhbmQgbmVlZWRzIHRvCj4g
Pj4gPiBiZSBzYW5pdGl6ZWQgaXMgYWxzbyBjb3ZlcmVkIGJ5IHRoaXMgcGF0Y2ggYW5kIHRoaXMg
c2hvdWxkbid0IGhhcHBlbi4KPiA+PiA+IAo+ID4+ID4gT3IgYW0gSSBtaXNzaW5nIHNvbWV0aGlu
ZyBlbHNlPwo+ID4+IAo+ID4+IEl0J3Mgbm90IGFib3V0IHVzLCBpdCdzIGFib3V0IHdoYXRldmVy
IGVsc2UgcnVucyBpbiBiZXR3ZWVuLiBBbmQKPiA+PiByZW1lbWJlciAhSEFTX0RJU1BMQVkoKSBp
cyBhbHNvIGEgdXNlciBzZXR0aW5nLCBub3QgbWVyZWx5IGEgcmVmbGVjdGlvbgo+ID4+IG9mIHBy
b2JlZCBody4KPiA+Cj4gPiBvdWNoLCB3ZSBuZWVkIHRvIGdldCByaWQgb2YgdGhvc2UgcnVudGlt
ZSB3cml0ZXMgdG8gaW5mbyBzdHJ1Y3QgOi8KPiA+Cj4gPiBJIHdvbmRlciBpZiBpdCB3b3J0aCB0
byBhZGQgYSBpbnRlbF9kaXNwbGF5X3Nhbml0aXplIHRvIGJlIGNhbGxlZAo+ID4gd2hlbiB0b2dn
bGluZyBpbmZvLW51bV9waXBlcyB0byAwIGFsb25nIHdpdGggdGhhdCBEUk1fRVJST1IuLi4KPiA+
Cj4gPiBvciBqdXN0IGNhbGwgaXQgYmVmb3JlICFIQVNfRElTUExBWSB3aXRoIGEgWFhYIGNvbW1l
bnQuLi4KPiA+Cj4gPiBvdGhlciBpZGVhcz8KPiAKPiBMZXQncyBzYXkgd2Ugb25seSBzdXBwb3J0
ZWQgdXNlciBzcGVjaWZpZWQgZGlzcGxheSBkaXNhYmxlIHZpYToKPiAKPiAjIG1vZHByb2JlIGk5
MTUKPiAjIG1vZHByb2JlIC1yIGk5MTUKPiAjIG1vZHByb2JlIGk5MTUgZGlzYWJsZV9kaXNwbGF5
PTEKPiAKPiBpLmUuIGJ5IGhhdmluZyBpOTE1IHRha2Ugb3ZlciBhbmQgZGlzYWJsZSBldmVyeXRo
aW5nIGZpcnN0LiBXb3VsZCB0aGF0Cj4gYmUgZW5vdWdoPwo+IAo+IEFsdGVybmF0aXZlbHksIGNv
dWxkIHdlIGRvIGRpc3BsYXkgZGlzYWJsZSBieSBmaXJzdCBwcm9iaW5nIGFsbW9zdAo+IGV2ZXJ5
dGhpbmcgYXMgd2Ugd291bGQgd2l0aCBkaXNhYmxlX2Rpc3BsYXk9MCwgdGhlbiB0aHJvd2luZwo+
IC1FUFJPQkVfREVGRVIgYW5kIGhhdmluZyB0aGUgZXJyb3IgaGFuZGxpbmcgY29kZSBjbGVhbiB1
cCB0aGUgaGFyZHdhcmUKPiBhZnRlciB1cy4gVGhlIHN1YnNlcXVlbnQgcHJvYmUgcmV0cnkgd291
bGQgdGhlbiBwcm9jZWVkIGFzc3VtaW5nIG5vCj4gZGlzcGxheSBoYXJkd2FyZS4KPiAKPiBUaG91
Z2h0cz8KCkl0IG1ha2VzIHNlbnNlIGZvciBtZS4gV291bGQgd2UgbmVlZCB0byBkZXRhY2ggZGlz
YWJsZV9kaXNwbGF5IGZyb20KbnVtX3BpcGVzIGZvciB0aGF0PwoKQW55d2F5cywgdGFraW5nIGFu
b3RoZXIgcXVpY2sgbG9vayB0byB0aGUgb25seSBjYXNlIHdlIG1vZGlmeSBudW1fcGlwZXMKb3V0
IG9mIHBsYXRmb3JtIGRlZmluaXRpb24gSSBkb24ndCBzZWUgbm93IGhvdyBpdCB3b3VsZCBzdWRk
ZW5seQpiZWNvbWUgMDoKCiBpZiAoZW5hYmxlZF9tYXNrID09IDAKIC4uLgogICAgICAgICAgICAg
ICAgZWxzZQogICAgICAgICAgICAgICAgICAgICAgICBpbmZvLT5udW1fcGlwZXMgPSBod2VpZ2h0
OChlbmFibGVkX21hc2spOwoKc28gbWF5YmUganVzdCBnbyB3aXRoIG15IHByZXZpb3VzIHZlcnNp
b24gaXMgc2FmZSBhZnRlciBhbGw/IQoKQnV0IGluZGVlZCBtYWtpbmcgaXQgbW9yZSBzb2xpZCBp
cyBhIGdvb2QgcGxhbi4KCj4gCj4gQlIsCj4gSmFuaS4KPiAKPiAKPiAtLSAKPiBKYW5pIE5pa3Vs
YSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
