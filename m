Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 455CEBF9E6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 21:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8373A6EDEE;
	Thu, 26 Sep 2019 19:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 594E16EDEE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 19:11:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 12:11:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,553,1559545200"; d="scan'208";a="203925779"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 26 Sep 2019 12:11:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2019 22:11:55 +0300
Date: Thu, 26 Sep 2019 22:11:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190926191155.GQ1208@intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-16-maarten.lankhorst@linux.intel.com>
 <20190926130600.GM1208@intel.com>
 <ee604986-eb7b-05ce-ca2f-7c1789e1050c@linux.intel.com>
 <20190926160922.GN1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926160922.GN1208@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915: Program planes in bigjoiner
 mode.
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

T24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMDc6MDk6MjJQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFRodSwgU2VwIDI2LCAyMDE5IGF0IDA1OjUwOjA1UE0gKzAyMDAsIE1hYXJ0
ZW4gTGFua2hvcnN0IHdyb3RlOgo+ID4gT3AgMjYtMDktMjAxOSBvbSAxNTowNiBzY2hyZWVmIFZp
bGxlIFN5cmrDpGzDpDoKPiA+ID4gT24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMDE6NDI6MjhQTSAr
MDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gPiA+PiBOb3cgdGhhdCB3ZSBjYW4gcHJv
Z3JhbSBwbGFuZXMgZnJvbSB0aGUgdXBkYXRlX3NsYXZlIGNhbGxiYWNrLCBhbmQKPiA+ID4+IHdl
IGhhdmUgZG9uZSBhbGwgZmIgcGlubmluZyBjb3JyZWN0bHksIGl0J3MgdGltZSB0byBwcm9ncmFt
IHRob3NlCj4gPiA+PiBwbGFuZXMgYXMgd2VsbC4KPiA+ID4+Cj4gPiA+PiBXZSB1c2UgdGhlIHVw
ZGF0ZV9zbGF2ZSBjYWxsYmFjayBhcyBpdCBhbGxvd3MgdXMgdG8gdXNlIHRoZQo+ID4gPj4gc2Vw
YXJhdGUgc3RhdGVzIGNvcnJlY3RseS4KPiA+ID4+Cj4gPiA+PiBTaWduZWQtb2ZmLWJ5OiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gPj4g
LS0tCj4gPiA+PiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5j
IHwgNTMgKysrKysrKysrKysrKysrKysrKwo+ID4gPj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAyICsKPiA+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNCArLQo+ID4gPj4gIDMgZmlsZXMgY2hhbmdl
ZCwgNTcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4+Cj4gPiA+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiA+ID4+
IGluZGV4IGNjMDg4Njc2ZjBhMi4uNWRiMDkxZTRhZDZhIDEwMDY0NAo+ID4gPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ID4gPj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ID4g
Pj4gQEAgLTM2Niw2ICszNjYsNTkgQEAgdm9pZCBza2xfdXBkYXRlX3BsYW5lc19vbl9jcnRjKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gPj4gIAl9Cj4gPiA+PiAgfQo+ID4g
Pj4gIAo+ID4gPj4gK3ZvaWQgaWNsX3VwZGF0ZV9iaWdqb2luZXJfcGxhbmVzX29uX2NydGMoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiA+PiArCQkJCQkgc3RydWN0IGludGVs
X2NydGMgKmNydGMpCj4gPiA+IFRoaXMgcGxhbmUgc3R1ZmYgaXMgd2hlcmUgdGhpbmdzIGdvIHZl
cnkgbXVjaCBvZmYgdGhlIHJhaWxzIElNTy4KPiA+ID4gUGxhbmVzIHNob3VsZCBub3QgaGF2ZSB0
byBrbm93IGFueXRoaW5nIGFib3V0IGJpZ2pvaW5lci4gVGhleSBzaG91bGQKPiA+ID4ganVzdCBo
YXZlIHRoZWlyIGFwcHJvcHJpYXRlIGh3IHN0YXRlIGFuZCBibGluZGx5IGJhc2ggaXQgaW50byB0
aGUKPiA+ID4gaGFyZHdhcmUuCj4gPiAKPiA+IFdlIGFscmVhZHkgbmVlZCB0aGlzIGZvciBwbGFu
YXIgc2xhdmUvbWFzdGVyLCB3aGF0J3MgdGhlIGlzc3VlIGV4YWN0bHk/Cj4gCj4gVGhhdCBhbHJl
YWR5IGlzIHRvbyBmcmFnaWxlLiBJIGRvbid0IHdhbnQgdGhpcyBzcHJlYWRpbmcgYWxsIG92ZXIK
PiB0aGUgZHJpdmVyIGFuZCBjb3VwbGluZyBldmVyeXRoaW5nIHRvIHRoZSBiaWdqb2luZXIgbG9n
aWMuCj4gCj4gSGVyZSdzIGEgY3J1ZGUgaWRlYSBob3cgSSB0aGluayB3ZSBtaWdodCBhdm9pZCB0
aGlzOgo+IGdpdDovL2dpdGh1Yi5jb20vdnN5cmphbGEvbGludXguZ2l0IHVhcGlfaHdfc3RhdGVf
c3BsaXQKPiAKPiBCdXQgSSBkaWRuJ3QgZGFyZSBib290IGl0IHlldC4uLgoKSXQgdG9vayBhIGhh
bmRmdWwgZXh0cmEgZml4ZXMgdG8gZ2V0IHRoYXQgdG8gYm9vdC4gQnV0IG5vdyBJIGF0IGxlYXN0
CmdldCBhIHBpY3R1cmUgb24gdGhlIHNjcmVlbiBpbnN0ZWFkIG9mIG9vcHNlcy4KCkZpeGVzIHB1
c2hlZCB0byB0aGUgc2FtZSBicmFuY2guCgpMb29rcyBsaWtlIHN0aWxsIHNvbWV0aGluZyBnb2lu
ZyB3cm9uZyB3aXRoIHRoZSBjdXJzb3IgaW9jdGwgdGhvdWdoLgoKLS0gClZpbGxlIFN5cmrDpGzD
pApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
