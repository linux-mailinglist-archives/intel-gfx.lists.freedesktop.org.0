Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9941FEC1A6
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 12:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBE16E1F1;
	Fri,  1 Nov 2019 11:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2B46E1ED;
 Fri,  1 Nov 2019 11:21:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 04:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,254,1569308400"; d="scan'208";a="212752907"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga002.jf.intel.com with ESMTP; 01 Nov 2019 04:21:25 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1iQUzb-0005h8-Fk; Fri, 01 Nov 2019 13:21:23 +0200
Date: Fri, 1 Nov 2019 13:21:23 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191101112123.GK25209@platvala-desk.ger.corp.intel.com>
References: <20191101105106.12297-1-chris@chris-wilson.co.uk>
 <157260579755.17607.16001529023424116781@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157260579755.17607.16001529023424116781@skylake-alporthouse-com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel-ci: Relegate gem_exec_reloc to
 the shards
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
Cc: igt-dev@lists.freedesktop.org, Tomi Sarvela <tomi.p.sarvela@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMTA6NTY6MzdBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5LTExLTAxIDEwOjUxOjA2KQo+ID4gVGhl
IGdlbV9leGVjX3JlbG9jIGJhc2ljIHN1YnRlc3RzIGNvdmVyIGEgY291cGxlIGRvemVuIGJhc2lj
IEFCSQo+ID4gc2FuaXR5Y2hlY2tzLCBhaW1pbmcgdG8gcHJvdmUgdGhlIEFCSSB3b3Jrcy4gV2hp
bGUgcmVsb2NhdGlvbnMgdXNlZCB0bwo+ID4gYmUgZXNzZW50aWFsLCB0aGV5IGFyZSBubyBsb25n
ZXIgdGhlIGJhc2lzIG9mIGN1cnJlbnQgY2xpZW50cyB3aG8gYWxsCj4gPiBzb2Z0cGluLiBJdCBp
cyBhIHN0YWduYW50IHBvcnRpb24gb2YgdGhlIEFCSSB0aGF0IGRvZXMgbm90IGNvbnRyaWJ1dGUK
PiA+IG11Y2ggdG8gb3ZlcmFsbCBkcml2ZXIgaGVhbHRoICh0aGUgY29tcGxpY2F0ZWQgcG9ydGlv
bnMgb2YgcmVsb2NzIGFyZQo+ID4gY292ZXJlZCBpbiB0aGUgc21va2V0ZXN0cyBsaWtlIGdlbV9l
eGVjX3BhcmFsbGVsIGFuZCBnZW1fZXhlY19ndHRmaWxsKS4KPiA+IEhvd2V2ZXIsIGV2ZW4gdGhv
dWdoIGVhY2ggb2YgdGhlIGJhc2ljIHN1YnRlc3QgaXMgdHJpdmlhbCBhbmQgcnVucyBpbgo+ID4g
dmVyeSBsaXR0bGUgdGltZSwgc2luY2UgQ0kgaXMgcnVubmluZyBlYWNoIGluZGl2aWR1YWxseSB0
aGUgdGltZSBiZXR3ZWVuCj4gPiB0ZXN0cyBtb3VudHMgdXAgKGVzcGVjaWFsbHkgb24gZU1NQyBk
ZXZpY2VzIGxpa2UgZmkta2JsLXNvcmFrYSkuCj4gPiAKPiA+IEJ5IG1vdmluZyB0aGVzZSB0ZXN0
cyB0byB0aGUgc2hhcmRzIHdlIHNob3VsZCBzcGVlZCB1cCBCQVQgb24gdGhlCj4gPiByYXRlbGlt
aXRpbmcgZmkta2JsLXNvcmFrYSwgd2hpbGUgbG9zaW5nIG5vIGNvdmVyYWdlIG92ZXJhbGwgLS0g
YW5kCj4gPiBob3BlZnVsbHkgd2l0aG91dCBsb3NpbmcgYW55IG9mIHRoZSBwcmVkaWN0aXZlIGZh
aWx1cmUgY292ZXJhZ2UgaW4gQkFULgo+ID4gVGhpcyBzdGFnbmFudCBiaXQgb2YgdUFQSS91QUJJ
IHdpbGwgcmVtYWluIGNoZWNrZWQgYnkgdGhlIGlycmVndWxhciBpZGxlCj4gPiBydW5zLgo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5j
b20+Cj4gPiBDYzogVG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Cj4gPiBD
YzogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+Cj4gPiBDYzogTWFydGlu
IFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgo+IAo+IEJlZm9yZSBKb29uYXMg
d2VudCBmaXNoaW5nLCBoZSBnYXZlICsxLiBTbywKPiBBY2tlZC1ieTogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IAo+IFRvbWksIFBldHJpLCBNYXJ0
aW4gYW55IG9iamVjdGlvbnM/Cj4gLUNocmlzCgoKQWNrZWQtYnk6IFBldHJpIExhdHZhbGEgPHBl
dHJpLmxhdHZhbGFAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
