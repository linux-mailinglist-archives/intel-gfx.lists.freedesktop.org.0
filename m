Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1E589A06
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 11:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96666E4D2;
	Mon, 12 Aug 2019 09:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDBF6E4BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:41:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 02:41:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="200064611"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 12 Aug 2019 02:41:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8D8E15C1E5F; Mon, 12 Aug 2019 12:40:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156560239394.2301.9628837087953957097@skylake-alporthouse-com>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <871rxq91jf.fsf@gaia.fi.intel.com>
 <156560239394.2301.9628837087953957097@skylake-alporthouse-com>
Date: Mon, 12 Aug 2019 12:40:22 +0300
Message-ID: <87v9v27md5.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/execlists: Avoid sync calls
 during park
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEyIDEwOjI3OjE2KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBTaW5jZSB3ZSBhbGxvdyBv
dXJzZWx2ZXMgdG8gdXNlIG5vbi1wcm9jZXNzIGNvbnRleHQgZHVyaW5nIHBhcmtpbmcsIHdlCj4+
ID4gY2Fubm90IGFsbG93IG91cnNlbHZlcyB0byBzbGVlcCBhbmQgaW4gcGFydGljdWxhciBjYW5u
b3QgY2FsbAo+PiA+IGRlbF90aW1lcl9zeW5jKCkgLS0gYnV0IHdlIGNhbiB1c2UgYSBwbGFpbiBk
ZWxfdGltZXIoKS4KPj4gPgo+PiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzNzUKPj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gPiAtLS0KPj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAyICstCj4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKPj4gPiBpbmRleCBiYjc0OTU0ODg5ZGQuLmI5NzA0N2Q1OGQzZCAxMDA2NDQKPj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+PiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+ID4gQEAgLTI3MjgsNyArMjcyOCw3
IEBAIHN0YXRpYyB1MzIgKmdlbjhfZW1pdF9maW5pX2JyZWFkY3J1bWJfcmNzKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCj4+ID4gIAo+PiA+ICBzdGF0aWMgdm9pZCBleGVj
bGlzdHNfcGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4+ID4gIHsKPj4gPiAt
ICAgICBkZWxfdGltZXJfc3luYygmZW5naW5lLT5leGVjbGlzdHMudGltZXIpOwo+PiA+ICsgICAg
IGRlbF90aW1lcigmZW5naW5lLT5leGVjbGlzdHMudGltZXIpOwo+PiAKPj4gVGhlcmUgd2lsbCBi
ZSBhbm90aGVyIHN5bmMgcG9pbnQgdGhlbiBzb21ld2hlcmUgZWxzZSBvciBub3QgbmVlZGVkPwo+
Cj4gTm90IHJlcXVpcmVkLCBhcyBpdCBtZWFucyB0aGUgdGltZXIgaWYgY3VycmVudGx5IHJ1bm5p
bmcgYW5kIHdpbGwganVzdAo+IGtpY2sgdGhlIHRhc2tsZXQgKGFzIGl0IGRvZXMgdG9kYXkpLiBU
aGUgdGFza2xldCBydW5uaW5nIGFmdGVyIHdlIHBhcmsKPiBpcyBub3QgYSBodWdlIGlzc3VlIGFz
IGl0IGRvZXNuJ3QgdG91Y2ggSFcgLS0gaXQgY2hlY2tzIGEgQ1BVIG1hcHBpbmcKPiBhbmQgaW4g
dGhlIHByb2Nlc3MgZHJhaW5zIHRoZSBHVCB3YWtlcmVmLgo+ICAKPj4gQWxzbyBhcmUgaXJxIHNh
ZmUgdGltZXJzIHdoZXJlIHdlIGNvdWxkIGRvIGEgc3luYyBkZWxldGlvbi4gCj4+IAo+PiBTbyBt
eSBxdWVzdGlvbiBpcyB3aHkgdGhlIG5lZWQgZm9yIGEgc3luYyBwb2ludCBkaXNhcHBlYXJlZD8K
Pgo+IFdlIGRpZG4ndCB1c2UgaXQgY29ycmVjdGx5IHRvIGJlZ2luIHdpdGggOikgVG8gY29tcGxl
dGUgdGhlIHN5bmMsIHdlCj4gc2hvdWxkIGhhdmUgcHV0IGEgdGFza2xldF9raWxsKCZleGVjbGlz
dHMtPnRhc2tsZXQpOyBhZnRlcndhcmRzLgoKT2ssClNvIG5vIG5lZWQgZm9yIGZhbmNleSBpcnEg
c2FmZSB0aW1lcnMgZWl0aGVyLgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
