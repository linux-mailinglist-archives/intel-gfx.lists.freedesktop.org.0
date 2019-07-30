Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 370ED7AD6E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 18:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187326E5BC;
	Tue, 30 Jul 2019 16:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4880D6E5BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 16:21:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 09:21:32 -0700
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="174279616"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Jul 2019 09:21:32 -0700
Date: Tue, 30 Jul 2019 09:22:07 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20190730162207.GA18653@intel.com>
References: <20190719004526.B0CC521850@mail.kernel.org>
 <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
 <20190724120657.GG3244@kroah.com>
 <05339e812e35a4cf1811f26a06bd5a4d1d652407.camel@intel.com>
 <20190724174029.GC30776@intel.com>
 <20190730151908.GA21970@intel.com>
 <20190730152724.GB31590@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730152724.GB31590@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH stable v5.2] drm/i915/vbt: Fix VBT parsing
 for the PSR section
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
Cc: "sashal@kernel.org" <sashal@kernel.org>,
 Jani Nikula <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDU6Mjc6MjRQTSArMDIwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAwODoxOTowOEFNIC0wNzAwLCBSb2RyaWdvIFZpdmkg
d3JvdGU6Cj4gPiBIaSBHcmVnLAo+ID4gCj4gPiBPbiBXZWQsIEp1bCAyNCwgMjAxOSBhdCAxMDo0
MDoyOUFNIC0wNzAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgSnVsIDI0LCAy
MDE5IGF0IDA1OjI3OjQyUE0gKzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOgo+ID4gPiA+IE9uIFdl
ZCwgMjAxOS0wNy0yNCBhdCAxNDowNiArMDIwMCwgR3JlZyBLSCB3cm90ZToKPiA+ID4gPiA+IE9u
IE1vbiwgSnVsIDIyLCAyMDE5IGF0IDA0OjEzOjI1UE0gLTA3MDAsIERoaW5ha2FyYW4gUGFuZGl5
YW4gd3JvdGU6Cj4gPiA+ID4gPiA+IEEgc2luZ2xlIDMyLWJpdCBQU1IyIHRyYWluaW5nIHBhdHRl
cm4gZmllbGQgZm9sbG93cyB0aGUgc2l4dGVlbgo+ID4gPiA+ID4gPiBlbGVtZW50Cj4gPiA+ID4g
PiA+IGFycmF5IG9mIFBTUiB0YWJsZSBlbnRyaWVzIGluIHRoZSBWQlQgc3BlYy4gQnV0LCB3ZSBp
bmNvcnJlY3RseQo+ID4gPiA+ID4gPiBkZWZpbmUKPiA+ID4gPiA+ID4gdGhpcyBQU1IyIGZpZWxk
IGZvciBlYWNoIG9mIHRoZSBQU1IgdGFibGUgZW50cmllcy4gQXMgYSByZXN1bHQsIHRoZQo+ID4g
PiA+ID4gPiBQU1IxCj4gPiA+ID4gPiA+IHRyYWluaW5nIHBhdHRlcm4gZHVyYXRpb24gZm9yIGFu
eSBwYW5lbF90eXBlICE9IDAgd2lsbCBiZSBwYXJzZWQKPiA+ID4gPiA+ID4gaW5jb3JyZWN0bHku
IFNlY29uZGx5LCBQU1IyIHRyYWluaW5nIHBhdHRlcm4gZHVyYXRpb25zIGZvciBWQlRzCj4gPiA+
ID4gPiA+IHdpdGggYmRiCj4gPiA+ID4gPiA+IHZlcnNpb24gPj0gMjI2IHdpbGwgYWxzbyBiZSB3
cm9uZy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+Cj4gPiA+ID4gPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KPiA+ID4gPiA+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmcKPiA+ID4gPiA+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgI3Y1LjIKPiA+ID4gPiA+
ID4gRml4ZXM6IDg4YTBkOTYwNmFmZiAoImRybS9pOTE1L3ZidDogUGFyc2UgYW5kIHVzZSB0aGUg
bmV3IGZpZWxkCj4gPiA+ID4gPiA+IHdpdGggUFNSMiBUUDIvMyB3YWtldXAgdGltZSIpCj4gPiA+
ID4gPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTEwODgKPiA+ID4gPiA+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVs
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjA0MTgzCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IERo
aW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+ID4gPiA+
ID4gPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+ID4gPiA+ID4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gPiA+ID4gPiBBY2tlZC1ieTogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gPiA+ID4gPiBUZXN0ZWQtYnk6IEZyYW7Dp29p
cyBHdWVycmF6IDxrdWJyaWNrQGZndjYubmV0Pgo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBS
b2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gPiA+ID4gPiA+IExpbms6IAo+
ID4gPiA+ID4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQv
MjAxOTA3MTcyMjM0NTEuMjU5NS0xLWRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tCj4gPiA+
ID4gPiA+IChjaGVycnkgcGlja2VkIGZyb20gY29tbWl0Cj4gPiA+ID4gPiA+IGI1ZWE5YzkzMzcw
MDdkNmU3MDAyODBjOGE2MGI0ZTEwZDA3MGZiNTMpCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoZXJl
IGlzIG5vIHN1Y2ggY29tbWl0IGluIExpbnVzJ3Mga2VybmVsIHRyZWUgOigKPiA+ID4gCj4gPiA+
IG5vdCB5ZXQuLi4gSXQgaXMgcXVldWVkIGZvciA1LjMgb24gZHJtLWludGVsLW5leHQtcXVldWVk
Lgo+ID4gPiAKPiA+ID4gVGhpcyBsaW5lIGlzIGF1dG9tYXRpY2FsbHkgYWRkZWQgYnkgImRpbSIg
dG9vbCB3aGVuCj4gPiA+IGNoZXJyeS1waWNraW5nIHF1ZXVlZCBzdHVmZiBmb3Igb3VyIGRybS1p
bnRlbCBmaXhlcyBicmFuY2hlcy4KPiA+IAo+ID4gV2hhdCBkbyB5b3UgbmVlZCBoZXIgZnJvbSB1
cyB0byBhY2NlcHQgdGhpcyBwYXRjaD8KPiAKPiBVbSwgeW91IGhhdmUgcmVhZCB0aGUgc3RhYmxl
IGtlcm5lbCBydWxlcywgcmlnaHQ/Cj4gICAgIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0
bWwvbGF0ZXN0L3Byb2Nlc3Mvc3RhYmxlLWtlcm5lbC1ydWxlcy5odG1sCj4KPiBUaGF0J3Mgd2hh
dCBJIG5lZWQgZm9yIGl0IHRvIGdvIGludG8gYSBzdGFibGUga2VybmVsIHJlbGVhc2UuCgpZZXMs
IEkgaGF2ZSByZWFkIGl0LiBNYXliZSB3aGF0IEkgZG9uJ3QgdW5kZXJzdGFuZCBpcyBqdXN0IHRo
ZSBmYWN0IHRoYXQgd2Ugd2lsbApsZXQgY3VzdG9tZXJzIGZhY2luZyBpc3N1ZXMgZm9yIDYgd2Vl
a3Mgb3IgbW9yZSB3aGlsZSB0aGUgb3JpZ2luYWwgcGF0Y2gKZG9lc24ndCBsYW5kIG9uIExpbnVz
IHRyZWUuIDooCgo+IAo+IHRoYW5rcywKPiAKPiBncmVnIGstaApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
