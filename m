Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B88ACA030
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 16:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9E76E9F4;
	Thu,  3 Oct 2019 14:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 273FC6E9F4
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 14:18:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 07:18:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="203969527"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 03 Oct 2019 07:18:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Oct 2019 17:18:44 +0300
Date: Thu, 3 Oct 2019 17:18:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191003141844.GL1208@intel.com>
References: <20191003140231.24408-1-ville.syrjala@linux.intel.com>
 <157011193132.2173.15392278985624990382@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157011193132.2173.15392278985624990382@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement a better i945gm vblank
 irq vs. C-states workaround
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

T24gVGh1LCBPY3QgMDMsIDIwMTkgYXQgMDM6MTI6MTFQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0xMC0wMyAxNTowMjozMSkKPiA+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IFRoZSBjdXJyZW50ICJkaXNhYmxlIEMzKyIgd29ya2Fyb3VuZCBmb3IgdGhlIGRlbGF5ZWQg
dmJsYW5rCj4gPiBpcnFzIG9uIGk5NDVnbSBubyBsb25nZXIgd29ya3MuIEknbSBub3Qgc3VyZSB3
aGF0IGNoYW5nZWQsIGJ1dAo+ID4gbm93IEkgbmVlZCB0byBhbHNvIGRpc2FibGUgQzIuIEkgYWxz
byBnb3QgbXkgaGFuZHMgb24gYSBpOTE1Z20KPiA+IG1hY2hpbmUgdGhhdCBzdWZmZXJzIGZyb20g
dGhlIHNhbWUgaXNzdWUuCj4gPiAKPiA+IEFmdGVyIHNvbWUgZnVyaW91cyBwb2tpbmcgb2YgcmVn
aXN0ZXJzIEkgbWFuYWdlZCB0byBmaW5kIGEKPiA+IGJldHRlciB3b3JrYXJvdW5kOiBUaGUgIkRv
IG5vdCBUdXJuIG9mZiBDb3JlIFJlbmRlciBDbG9jayBpbiBDCj4gPiBzdGF0ZXMiIGJpdC4gV2l0
aCB0aGF0IEkgbm8gbG9uZ2VyIGhhdmUgdG8gZGlzYWJsZSBhbnkgQy1zdGF0ZXMsCj4gPiBhbmQg
YXMgYSBuaWNlIGJvbnVzIHRoZSBwb3dlciBjb3N0IGlzIG9ubHkgfjEvNCBvZiB0aGUKPiA+ICJk
aXNhYmxlIEMzKyIgbWV0aG9kICh3aGljaCBtaW5kIHlvdSBkb2Vzbid0IGV2ZW4gd29yayBhbnlt
b3JlLAo+ID4gYW5kIHNvIHdvdWxkIGhhdmUgYW4gZXZlbiBoaWdoZXIgcG93ZXIgY29zdCBpZiB3
ZSBtYWRlIGl0IHdvcmsKPiA+IGJ5IGFsc28gZGlzYWJsaW5nIEMyKS4KPiA+IAo+ID4gU28gbGV0
J3MgdGhyb3cgb3V0IGFsbCB0aGUgY3B1aWRsZS9xb3MgY3JhcCBhbmQganVzdCB0b2dnbGUKPiA+
IHRoZSBtYWdpYyBiaXQgYXMgbmVlZGVkLiBBbmQgd2UgZXh0ZW5kIHRoZSB3b3JrYXJvdW5kIHRv
IGNvdmVyCj4gPiBpOTE1Z20gYXMgd2VsbC4KPiAKPiBOaWNlIGRpc2NvdmVyeS4gU2NyYXRjaFBh
ZDAgc3VnZ2VzdHMgdGhhdCBpdCBtYXkgaGF2ZSBiZWVuIGEgbGF0ZQo+IGFkZGl0aW9uLCB0aGVy
ZSBtaWdodCBiZSBzb21lIGNoaXBzIG91dCB0aGVyZSB0aGF0IGRvbid0IGhhdmUgdGhlIG1hZ2lj
Cj4gYml0LiBXb3JraW5nIG9uIG1vc3QgaXMgYmV0dGVyIHRoYW4gYnJva2VuIG9uIGFsbC4KClll
YWguIEFuZCBhdCBsZWFzdCAxMDAlIG9mICpteSogYnJva2VuIG1hY2hpbmVzIG5vdyB3b3JrIDsp
Cgo+IAo+ID4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiAKPiBFbXBpcmljYWwgcmVzdWx0cyBydWxlLCBhbmQgSSBmb3Igb25lIGFtIG11Y2gg
aGFwcGllciB3aXRob3V0IG5lZWRpbmcKPiBxb3MgZG1hX2xhdGVuY3ksCj4gQWNrZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC1DaHJpcwoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
