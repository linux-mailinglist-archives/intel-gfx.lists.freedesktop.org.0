Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 911C8C082B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 17:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E216EEF4;
	Fri, 27 Sep 2019 15:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6D66EEF4
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 15:00:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 08:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="194508618"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2019 08:00:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2019 18:00:41 +0300
Date: Fri, 27 Sep 2019 18:00:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190927150041.GT1208@intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-16-maarten.lankhorst@linux.intel.com>
 <20190926130600.GM1208@intel.com>
 <ee604986-eb7b-05ce-ca2f-7c1789e1050c@linux.intel.com>
 <20190926160922.GN1208@intel.com> <20190926191155.GQ1208@intel.com>
 <ad1bccaa-86f4-aa75-b646-4207b00067ae@linux.intel.com>
 <20190927144149.GS1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927144149.GS1208@intel.com>
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

T24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgMDU6NDE6NDlQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIEZyaSwgU2VwIDI3LCAyMDE5IGF0IDEwOjU2OjE2QU0gKzAyMDAsIE1hYXJ0
ZW4gTGFua2hvcnN0IHdyb3RlOgo+ID4gT3AgMjYtMDktMjAxOSBvbSAyMToxMSBzY2hyZWVmIFZp
bGxlIFN5cmrDpGzDpDoKPiA+ID4gT24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMDc6MDk6MjJQTSAr
MDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+ID4gPj4gT24gVGh1LCBTZXAgMjYsIDIwMTkg
YXQgMDU6NTA6MDVQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gPiA+Pj4gT3Ag
MjYtMDktMjAxOSBvbSAxNTowNiBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiA+ID4+Pj4gT24g
RnJpLCBTZXAgMjAsIDIwMTkgYXQgMDE6NDI6MjhQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qg
d3JvdGU6Cj4gPiA+Pj4+PiBOb3cgdGhhdCB3ZSBjYW4gcHJvZ3JhbSBwbGFuZXMgZnJvbSB0aGUg
dXBkYXRlX3NsYXZlIGNhbGxiYWNrLCBhbmQKPiA+ID4+Pj4+IHdlIGhhdmUgZG9uZSBhbGwgZmIg
cGlubmluZyBjb3JyZWN0bHksIGl0J3MgdGltZSB0byBwcm9ncmFtIHRob3NlCj4gPiA+Pj4+PiBw
bGFuZXMgYXMgd2VsbC4KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBXZSB1c2UgdGhlIHVwZGF0ZV9zbGF2
ZSBjYWxsYmFjayBhcyBpdCBhbGxvd3MgdXMgdG8gdXNlIHRoZQo+ID4gPj4+Pj4gc2VwYXJhdGUg
c3RhdGVzIGNvcnJlY3RseS4KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gPj4+
Pj4gLS0tCj4gPiA+Pj4+PiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jIHwgNTMgKysrKysrKysrKysrKysrKysrKwo+ID4gPj4+Pj4gIC4uLi9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAyICsKPiA+ID4+Pj4+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNCArLQo+ID4gPj4+Pj4g
IDMgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4+
Pj4+Cj4gPiA+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljX3BsYW5lLmMKPiA+ID4+Pj4+IGluZGV4IGNjMDg4Njc2ZjBhMi4uNWRiMDkxZTRhZDZh
IDEwMDY0NAo+ID4gPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdG9taWNfcGxhbmUuYwo+ID4gPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ID4gPj4+Pj4gQEAgLTM2Niw2ICszNjYsNTkgQEAg
dm9pZCBza2xfdXBkYXRlX3BsYW5lc19vbl9jcnRjKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLAo+ID4gPj4+Pj4gIAl9Cj4gPiA+Pj4+PiAgfQo+ID4gPj4+Pj4gIAo+ID4gPj4+Pj4g
K3ZvaWQgaWNsX3VwZGF0ZV9iaWdqb2luZXJfcGxhbmVzX29uX2NydGMoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCj4gPiA+Pj4+PiArCQkJCQkgc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCj4gPiA+Pj4+IFRoaXMgcGxhbmUgc3R1ZmYgaXMgd2hlcmUgdGhpbmdzIGdvIHZlcnkgbXVj
aCBvZmYgdGhlIHJhaWxzIElNTy4KPiA+ID4+Pj4gUGxhbmVzIHNob3VsZCBub3QgaGF2ZSB0byBr
bm93IGFueXRoaW5nIGFib3V0IGJpZ2pvaW5lci4gVGhleSBzaG91bGQKPiA+ID4+Pj4ganVzdCBo
YXZlIHRoZWlyIGFwcHJvcHJpYXRlIGh3IHN0YXRlIGFuZCBibGluZGx5IGJhc2ggaXQgaW50byB0
aGUKPiA+ID4+Pj4gaGFyZHdhcmUuCj4gPiA+Pj4gV2UgYWxyZWFkeSBuZWVkIHRoaXMgZm9yIHBs
YW5hciBzbGF2ZS9tYXN0ZXIsIHdoYXQncyB0aGUgaXNzdWUgZXhhY3RseT8KPiA+ID4+IFRoYXQg
YWxyZWFkeSBpcyB0b28gZnJhZ2lsZS4gSSBkb24ndCB3YW50IHRoaXMgc3ByZWFkaW5nIGFsbCBv
dmVyCj4gPiA+PiB0aGUgZHJpdmVyIGFuZCBjb3VwbGluZyBldmVyeXRoaW5nIHRvIHRoZSBiaWdq
b2luZXIgbG9naWMuCj4gPiA+Pgo+ID4gPj4gSGVyZSdzIGEgY3J1ZGUgaWRlYSBob3cgSSB0aGlu
ayB3ZSBtaWdodCBhdm9pZCB0aGlzOgo+ID4gPj4gZ2l0Oi8vZ2l0aHViLmNvbS92c3lyamFsYS9s
aW51eC5naXQgdWFwaV9od19zdGF0ZV9zcGxpdAo+ID4gPj4KPiA+ID4+IEJ1dCBJIGRpZG4ndCBk
YXJlIGJvb3QgaXQgeWV0Li4uCj4gPiA+IEl0IHRvb2sgYSBoYW5kZnVsIGV4dHJhIGZpeGVzIHRv
IGdldCB0aGF0IHRvIGJvb3QuIEJ1dCBub3cgSSBhdCBsZWFzdAo+ID4gPiBnZXQgYSBwaWN0dXJl
IG9uIHRoZSBzY3JlZW4gaW5zdGVhZCBvZiBvb3BzZXMuCj4gPiA+Cj4gPiA+IEZpeGVzIHB1c2hl
ZCB0byB0aGUgc2FtZSBicmFuY2guCj4gPiA+Cj4gPiA+IExvb2tzIGxpa2Ugc3RpbGwgc29tZXRo
aW5nIGdvaW5nIHdyb25nIHdpdGggdGhlIGN1cnNvciBpb2N0bCB0aG91Z2guCj4gPiA+Cj4gPiBJ
J3ZlIGRvbmUgYSB1YXBpLWh3IHNwbGl0IGluIG15IHNlcmllcywgaXMgdGhhdCBvayB3aXRoIHlv
dT8KPiA+IAo+ID4gSSB3aWxsIGRvIGEgc2ltaWxhciBzcGxpdCBmb3IgcGxhbmVzLgo+IAo+IEkg
c2VudCBvdXQgc29tZSBwcmVwIGZpeGVzLCBhbmQgcmVzcHVuIG15IHRlc3QgYnJhbmNoIGFzCj4g
dWFwaV9od19zdGF0ZV9zcGxpdF8yLiBFdmVuIHRoZSBsZWdhY3kgY3Vyc29yIG5vdyB3b3Jrcy4K
PiBTbyBJIHRoaW5rIHdlIG1pZ2h0IGV2ZW4gaGF2ZSBhIGNoYW5jZSBvZiBtYWtpbmcgdGhpcyBz
dGF0ZQo+IHNwbGl0IHRoaW5nIHdvcmsuCgpEcmF0LiBBdCBsZWFzdCBrbXNfYmlnX2ZiIGlzIGJ1
c3RlZC4gTmVlZCB0byBmaWd1cmUgb3V0IHdoeS4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
