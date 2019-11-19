Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0001024EB
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 13:55:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990516E22C;
	Tue, 19 Nov 2019 12:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6406E1EE;
 Tue, 19 Nov 2019 12:55:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 04:55:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="237321779"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2019 04:55:47 -0800
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1iX32n-0006zy-Hk; Tue, 19 Nov 2019 14:55:45 +0200
Date: Tue, 19 Nov 2019 14:55:45 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20191119125545.GB25209@platvala-desk.ger.corp.intel.com>
References: <20191107173820.2wj2b6ziehhnmoyo@ahiler-desk1.fi.intel.com>
 <157316097482.2228.167580740381610009@skylake-alporthouse-com>
 <20191108090405.yes2ktbqngt3vtlj@ahiler-desk1.fi.intel.com>
 <59485e6b-e06f-29c7-14d4-30de572e9022@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59485e6b-e06f-29c7-14d4-30de572e9022@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [ANNOUNCEMENT] Documenting tests with
 igt_describe()
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMTksIDIwMTkgYXQgMDI6Mzc6MTdQTSArMDIwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj4gT24gMDgvMTEvMjAxOSAxMTowNCwgQXJrYWRpdXN6IEhpbGVyIHdyb3RlOgo+
ID4gT24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMDk6MDk6MzRQTSArMDAwMCwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+ID4gPiBRdW90aW5nIEFya2FkaXVzeiBIaWxlciAoMjAxOS0xMS0wNyAxNzozODoy
MCkKPiA+ID4gPiBXZSBkb24ndCB3YW50IHlvdSB0byB0cmFuc2xhdGUgQyBpbnRvIEVuZ2xpc2gs
IHdlIHdhbnQgeW91IHRvIHByb3ZpZGUgYSBiaXQgb2YKPiA+ID4gPiB0aGF0IGV4dHJhIGluZm9y
bWF0aW9uIHRoYXQgeW91IHdvdWxkIGhhdmUgcHV0IGluIHRoZSBjb21tZW50cyBhbnl3YXkuCj4g
PiA+IFRoZSBjb21tZW50cyBzaG91bGQgZXhpc3QgYW5kIGFyZSBfaW5saW5lXyB3aXRoIHRoZSBj
b2RlLgo+ID4gQW5kIEkgZW5jb3VyYWdlIGRvaW5nIHNvLiBEZXRhaWxlZCBjb21tZW50cyB3aGF0
IHRoaXMgcGFydGljdWxhcgo+ID4gbm9uLW9idmlvdXMgY2h1bmsgb2YgY29kZSBpcyBkb2luZyBh
cmUgYWx3YXlzIHdlbGNvbWUuCj4gPiAKPiA+ID4gSW4gYWxsIHRoZSBleGFtcGxlcyBvZiBpZ3Rf
ZGVzY3JpYmUoKSBJIGhhdmUgc2VlbiwgaXQgaXMgbm93aGVyZSBuZWFyCj4gPiA+IHRoZSBjb2Rl
IHNvIGlzIHVzZWxlc3M7IHRoZSBpbmZvcm1hdGlvbiBjb252ZXllZCBkb2VzIG5vdCBhc3Npc3QK
PiA+ID4gYW55b25lIGluIGRpYWdub3Npbmcgb3IgZGVidWdnaW5nIHRoZSBwcm9ibGVtLCBzbyBJ
IHlldCB0byB1bmRlcnN0YW5kCj4gPiA+IGhvdyBpdCBoZWxwcy4KPiA+IFRoZXkgYXJlIHN1cHBv
c2VkIHRvIGRvY3VtZW50IG5vdCB0aGUgaW1wbGVtZW50YXRpb24gYnV0IHdoYXQgaXMgdGhlCj4g
PiBncmFuZCBpZGVhIGJlaGluZCBhIGdpdmVuIHN1YnRlc3QsIHNvIHRoZXkgYXJlIG9uIGEgc3Vi
dGVzdCBsZXZlbCAob3IgYQo+ID4gZ3JvdXAgb2Ygc3VidGVzdHMpLCB3aGljaCBpcyBvdXIgYmFz
aWMgdGVzdGluZyB1bml0IC0gdGhpcyBpcyB3aGF0IGZhaWxzCj4gPiBpbiBDSSwgdGhpcyBpcyB3
aGF0IHlvdSBleGVjdXRlIGxvY2FsbHkgdG8gcmVwcm9kdWNlIHRoZSBpc3N1ZS4KPiA+IAo+ID4g
Q2FuIHlvdSB0cnVseSBkZWJ1ZyBhbiBpc3N1ZSBvciB1bmRlcnN0YW5kIHdoYXQgdGhlIGZhaWx1
cmUgbWVhbnMKPiA+IHdpdGhvdXQga25vd2luZyB3aGF0IHRoZSB0ZXN0IGlzIHN1cHBvc2VkIHRv
IHByb3ZlPwo+ID4gCj4gPiBBIGxvdCBvZiBwZW9wbGUgaGVyZSBoYXZlIHN0cnVnZ2xlZCB3aXRo
IHRoaXMgYW5kIG9mdGVuIGl0IHRha2VzIGEgbG90Cj4gPiBvZiB0aW1lIGFuZCByZXF1aXJlcyBh
ZHZhbmNlZCBhcmNoZW9sb2d5IHdpdGggYGdpdCBibGFtZWAgaG9waW5nIHRoYXQKPiA+IHRoZXJl
IGlzIGF0IGxlYXN0IG9uZSBkZXRhaWxlZCBlbm91Z2ggY29tbWl0IG1lc3NhZ2UgaW4gdGhlcmUu
Cj4gPiAKPiA+IElmIG5vdCB0aGVuIHRhbGtpbmcgdG8gcGVvcGxlIGFuZCByZWx5aW5nIG9uIG91
ciB0cmliYWwga25vd2xlZGdlIGlzCj4gPiByZXF1aXJlZC4KPiA+IAo+ID4gQXMgSSBoYXZlIG1l
bnRpb25lZCAtIGdldHRpbmcgdGhlIGJpZ2dlciBwaWN0dXJlIGZyb20gaW1wbGVtZW50YXRpb24K
PiA+IGRldGFpbHMgaXMgaGFyZC4gSSBnZXQgdGhhdCB5b3UgYXJlIG5vdCBhZmZlY3RlZCBieSB0
aGlzLCBidXQgcGxlYXNlIGRvCj4gPiBub3QgZGVueSB0aGUgb3RoZXJzLgo+IAo+IAo+IEkga2lu
ZCBvZiBhZ3JlZSB3aXRoIENocmlzIHRoYXQgSSBkb24ndCBmaW5kIHRoYXQgYWRkaXRpb25hbCBt
YWNybyB1c2VmdWwKPiBmcm9tIHRoZSBwb2ludCBvZiB2aWV3IG9mIHJlYWRpbmcgYSBwYXJ0aWN1
bGFyIHRlc3QuCj4gCj4gQSBjb21tZW50IGFib3ZlIHRoZSB0ZXN0IGZ1bmN0aW9uIHNlZW1zIG1v
cmUgYXBwcm9wcmlhdGUsIGF0IGxlYXN0IHlvdSBkb24ndAo+IGhhdmUgdG8gbG9vayBhdCAyIGRp
ZmZlcmVudCBwbGFjZXMgdG8gZmluZCBvdXQgYWJvdXQgYSBwYXJ0aWN1bGFyIHRlc3QuCj4gCj4g
Cj4gVW5sZXNzIHRoZXJlIGlzIHNvbWUgdW50b2xkIGdvYWwgaGVyZSwgbGlrZSBwcm9kdWNpbmcg
c29tZSBraW5kIG9mIHJlcG9ydCBpbgo+IGFuIGF1dG9tYXRlZCB3YXkuCgoKTGlrZSB0aGlzIG9u
ZT8gaHR0cHM6Ly9kcm0ucGFnZXMuZnJlZWRlc2t0b3Aub3JnL2lndC1ncHUtdG9vbHMvaWd0LWtt
cy10ZXN0cy5odG1sI2ttc19jaGFtZWxpdW0KCgotLSAKUGV0cmkgTGF0dmFsYQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
