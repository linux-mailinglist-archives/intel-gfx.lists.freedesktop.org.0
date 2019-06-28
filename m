Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3C85991A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 13:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 326D66E8DE;
	Fri, 28 Jun 2019 11:18:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC966E8DC;
 Fri, 28 Jun 2019 11:18:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 04:18:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="361040037"
Received: from intel.fi.intel.com (HELO intel.intel) ([10.237.72.61])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jun 2019 04:17:59 -0700
Date: Fri, 28 Jun 2019 14:17:59 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190628111759.GA4284@intel.intel>
References: <20190627102019.9019-1-tvrtko.ursulin@linux.intel.com>
 <20190627105343.9325-1-tvrtko.ursulin@linux.intel.com>
 <20190627201530.GA2876@intel.intel>
 <86d9e921-1bdc-83de-7e09-90a090c70896@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86d9e921-1bdc-83de-7e09-90a090c70896@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/i915/gem_ctx_switch: Update
 with engine discovery
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiA+ID4gK2dlbV9lYl9mbGFnc190b19lbmdpbmUodW5zaWduZWQgaW50IGZsYWdzKQo+ID4gPiAr
ewo+ID4gPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZTI7Cj4gPiA+
ICsKPiA+ID4gKwlfX2Zvcl9lYWNoX3N0YXRpY19lbmdpbmUoZTIpIHsKPiA+ID4gKwkJaWYgKGUy
LT5mbGFncyA9PSBmbGFncykKPiA+ID4gKwkJCXJldHVybiBlMjsKPiA+ID4gKwl9Cj4gPiA+ICsK
PiA+ID4gKwlyZXR1cm4gTlVMTDsKPiA+ID4gK30KPiA+IAo+ID4gdGhlIGFtb3VudCBvZiAiaGVs
cGVycyIgaXMgZ2V0dGluZyBhbG1vc3QgdW5iZWFyYWJsZSBmb3IgYSBzaW1wbGUKPiA+IG1pbmQg
bGlrZSBtaW5lLgo+ID4gCj4gPiBUaGlzIG1lYW5zIHRoYXQgd2UgY2FuIGdldCByaWQgb2YKPiA+
IAo+ID4gICBnZW1fZXhlY2J1Zl9mbGFnc190b19lbmdpbmVfY2xhc3MKPiA+ICAgZ2VtX3Jpbmdf
aXNfcGh5c2ljYWxfZW5naW5lCj4gPiAgIGdlbV9yaW5nX2hhc19waHlzaWNhbF9lbmdpbmUKPiA+
IAo+ID4gaW4gaWd0X2d0LmMsIHJpZ2h0Pwo+IAo+IElmL3doZW4gdGhlcmUgYXJlIG5vIGNhbGxl
cnMgbGVmdCB3ZSBjYW4gbGlrZSBldmVyeXRoaW5nLiBJIGRvbnQnIGtub3cgaWYKPiB0aGF0IGlz
IHRoZSBjYXNlIHJpZ2h0IG5vdy4KCk5vLCBub3QgeWV0LCBidXQgdGhpcyByZXBsYWNlcyB0aGUg
bG9naWNhbCBtZWFuaW5nIG9mIHRoZQpmdW5jdGlvbiBhYm92ZS4uLiBidXQuLi4gdGhlcmUgaXMg
c3RpbGwgbG90cyBvZiBsZWdhY3kgaW52b2x2ZWQgOigKCj4gPiA+ICsJcmV0dXJuIHBhcmFtLnNp
emU7Cj4gPiAKPiA+IGEgc21hbGwgbml0cGljazogYm9vbCB0byBtZSBtZWFucyAnMCcgb3IgJzEn
Lgo+ID4gCj4gPiBTbywgaWYgeW91IGRvICdyZXR1cm4gcGFyYW0uc2l6ZScsIEkgd291bGQgY2Fs
bCB0aGUgZnVuY3Rpb24KPiA+IGdlbV9jb250ZXh0X2dldF9wYXJhbV9zaXplLCBvdGhlcndpc2Ug
SSB3b3VsZCByZXR1cm4KPiA+ICchIXBhcmFtLnNpemUnIGFuZCBrZWVwIGl0IGJvb2wuCj4gCj4g
U29tZSBwZW9wbGUgd291bGQgdGhlbiBjb21wbGFpbiAhISB3YXMgbm90IG5lZWRlZC4gfm9+Cj4g
Cj4gQW5kIGFjdHVhbGx5IEkgdGhpbmsgSSB3YW50IHRvIHJlbW92ZSB0aGUgZGlzdGluY3Rpb24g
b2Ygbm8gbWFwIGFuZCBtYXAgd2l0aAo+IG5vIGVuZ2luZXMgZm9yIHRoZSBjYWxsZXJzIG9mIHRo
aXMgaGVscGVycy4gU28gcmV0dXJuaW5nIHNpemUgd291bGQgbm90IHdvcmsKPiBmb3IgdGhhdC4K
PiAKPiA+IChXZSBhcmUgYWxzbyBzb21laG93IGFidXNpbmcgb24gdGhlIHNpemUgZGVmaW5pdGlv
biBvZiBib29sIGluCj4gPiBDOTkvQzE3IG9yIHByZXZpb3VzLikKPiA+IAo+ID4gSSdtIG5vdCBh
c2tpbmcgeW91IHRvIGNoYW5nZSBpdCwgYnV0IGl0IHdvdWxkIG1ha2UgbWUgaGFwcGllciA6KQo+
IAo+IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgaXNzdWUgd2l0aCBzaXplIGRlZmluaXRpb24uIFNp
emUgaXMgdTMyIC0gd2lsbCBub3QKPiBpbXBsaWNpdCBjb252ZXJzaW9uIHRvIGJvb2wganVzdCB3
b3JrPwoKVGhpcyBpcyBmaW5lLCBpdCdzIGp1c3Qgc29tZSBwaGlsb3NvcGhpY2FsIHRoaW5raW5n
IHRoYXQgZm9yIG1lCmJvb2wgc2hvdWxkIGJlIHRydWUgZmFsc2UuCgotLS0tLS0tLS0tLS0tLS0t
LQooSWYgd2Ugd2FudCB0byBiZSBwdXJpc3RzLCB0aGlzIHdvdWxkIHJhdGhlciBiZQoKCXJldHVy
biBwYXJhbS5zaXplID8gdHJ1ZSA6IGZhbHNlOwoKd2hpY2ggYmFzaWNhbGx5IGNoYW5nZXMgbm90
aGluZywgYnV0IHN0aWNrcyB0byB0aGUgbWVhaW5pbmcgb2YKImJvb2wiIGFuZCBpdCB3b3VsZCBi
ZSB0byBtdWNoIGFueXdheSkKCj4gPiA+IC0JCXEgPSBBUlJBWV9TSVpFKGN0eCkgKiB0aW1lb3V0
ICogMWU5IC8gaWd0X25zZWNfZWxhcHNlZCgmdHYpIC8gOCArIDE7Cj4gPiA+ICsJCXEgPSBBUlJB
WV9TSVpFKGN0eCkgKiB0aW1lb3V0ICogMWU5IC8gaWd0X25zZWNfZWxhcHNlZCgmdHYpIC8KPiA+
ID4gKwkJICAgIDggKyAxOwo+ID4gCj4gPiBJIGRvbid0IGtub3cgd2hldGhlciBpdCdzIG1lIHdo
byBpcyBwYXJhbm9pYywgYnV0IHRoZSBjaGFuZ2UKPiA+IGFib3ZlIGRvZXNuJ3QgbWF0Y2ggdGhl
IGNvbW1pdCBsb2cuCj4gCj4gV2hhdCBkbyB5b3UgbWVhbjoKPiAKPiAiIiIKPiBBbHNvIGJld2Fy
ZSBvZiBkcml2ZS1ieSBmb3JtYXR0aW5nIGNoYW5nZXMuCj4gIiIiCj4gCj4gOykKPiAKPiBGaWxl
IHRvIG1hbnkgbGluZXMgZmFsbGluZyBvZiA4MCBjaGFyIHNvIEkgdGlkaWVkIGl0IGFsb25nc2lk
ZS4KCkknbSBub3Qgc2F5aW5nIHRoYXQgdGhpcyBjaGFuZ2UgaXMgd3JvbmcsIGp1c3QgdGhhdCBp
dCdzCm91dCBvZiB0aGUgY29udGV4dCBvZiB0aGUgcGF0Y2ggYW5kIGl0IHNob3VsZCBsYXkgaW4g
YSBkaWZmZXJlbnQKY2hhbmdlIChJJ20gbm90IHZlcnkgc3Ryb25nIGluIHRoaXMgY2FzZSwgdGhv
dWdoLCBidXQgSSd2ZSBzZWVuCnN1Y2ggY2FzZXMgdG9vIG1hbnkgdGltZXMgaW4gdGhpcyBsaXN0
KS4KCj4gPiBUaGUgcmVzdCBvZiB0aGUgcGF0Y2ggSSB0cnVzdCB5b3UgaXQgd29ya3MgOikKPiA+
IChob3dldmVyIHRoZSBkZXZvdGlvbiB0byB3aGF0ZXZlciBpcyBsZWdhY3kgZG9lc24ndCBsZWF2
ZSBtZSB3aXRoCj4gPiBhIGdvb2QgdGFzdGUgYWZ0ZXIgYWxsIHRoZSB3b3JrIGRvbmUpCj4gPiAK
PiA+IFlvdSBjYW4gYWRkIG15IFJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGlu
dGVsLmNvbT4KPiA+IAo+ID4gVGhhbmtzLCB0aGlzIHBhdGNoIGNsYXJpZmllcyBhIGZldyBtb3Jl
IHRoaW5ncyBhcyB3ZWxsLAo+IAo+IFRoYW5rcyEKClRoYW5rIHlvdSwKQW5kaQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
