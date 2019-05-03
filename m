Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 288EF13444
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 21:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E45589243;
	Fri,  3 May 2019 19:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B0C89243
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 19:59:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 12:59:43 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga002.jf.intel.com with ESMTP; 03 May 2019 12:59:43 -0700
Date: Fri, 3 May 2019 13:00:06 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190503200006.GA6535@intel.com>
References: <20190425215041.28978-1-rodrigo.vivi@intel.com>
 <20190425215041.28978-3-rodrigo.vivi@intel.com>
 <155623059367.7476.17174153737530019257@skylake-alporthouse-com>
 <20190425225528.GQ588@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425225528.GQ588@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Move pm_imr and pm_ier to
 intel_irc.
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

T24gVGh1LCBBcHIgMjUsIDIwMTkgYXQgMDM6NTU6MjhQTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+IE9uIFRodSwgQXByIDI1LCAyMDE5IGF0IDExOjE2OjMzUE0gKzAxMDAsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+IFF1b3RpbmcgUm9kcmlnbyBWaXZpICgyMDE5LTA0LTI1IDIyOjUwOjM3
KQo+ID4gPiBObyBmdW5jdGlvbmFsIGNoYW5nZS4gQnV0IGJ5IG1ha2luZyB0aG9zZSBiaXRzIHRv
Z2V0aGVyCj4gPiA+IHdlIHdpbGwgYmUgYWJsZSB0byBjb252ZXJ0IG1hbnkgZnVuY3Rpb25zIHRv
IHBhc3MKPiA+ID4gaW50ZWxfaXJxIGluc3RlYWQgb2YgaTkxNV9wcml2YXRlIG9yIHVuY29yZS4K
PiA+ID4gCj4gPiA+IEZvciBnZW44KyAiZ3RfIiBwcmVmaXggd291bGQgYmUgYmV0dGVyIHRoYW4g
cG1fIG9uIHRoZW0KPiA+ID4gc2luY2UgdGhlc2UgcmVncyBpbmNsdWRlIG1vcmUgc3R1ZmYgdGhl
biBQTSwgYnV0IGxldCdzCj4gPiA+IGtlZXAgZm9yIGxlZ2FjeSByZWFzb25zLgo+ID4gCj4gPiBJ
IHN0aWxsIGRpc2FncmVlIHdpdGggdGhpcyBkaXJlY3Rpb24gYW5kIHdvdWxkIGxpa2UgdG8gZ2V0
IHRoZQo+ID4gY29uZmxpY3RpbmcgYnVnIGZpeGVzIHJldmlld2VkIGZpcnN0Lgo+IAo+IFNvcnJ5
LCBJIG1pc3N1bmRlcnN0b29kIHlvdSB0aGVuLi4uCj4gCj4gSSB0aG91Z2h0IHlvdSB3ZXJlIG9r
YXkgd2l0aCBpbnRlbF9pcnEgYXMgbG9uZyBhcyB3ZSBkaWRuJ3QKPiBtb3ZlIHJwcyByZWxhdGVk
IGlycSB0byBpdC4KPiAKPiBJIHN0aWxsIHdhbnQgdG8gc3BsaXQgZGUgZnJvbSBndCBpcnFzIHRo
b3VnaCwganVzdCBzdGFydGVkCj4gZnJvbSB0aGUgZWFzeSBsZXNzIHJpc2sgcGxhY2UgdG8gc3Rh
cnQuCj4gCj4gQWJvdXQgdGhlIGJ1Z3MgeW91IG1lbnRpb25lZCB5b3UgbWVhbiBsaWtlIHRoaXM6
Cj4gaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5ODMxCj4g
Pwo+IAo+IG9yIHdoYXQgZWxzZSBkbyB5b3UgaGF2ZSBpbiBtaW5kIHRoYXQgSSdtIG1pc3Npbmc/
Cj4gCj4gVGhhbmtzLAo+IFJvZHJpZ28KCkhpIENocmlzLCBjb3VsZCB5b3UgcGxlYXNlIGNsYXJp
Znkgd2hhdCBpcyBtaXNzaW5nIHRvIGdldAphIG5vIGZ1bmN0aW9uYWwgY2hhbmdlIGluPwoKPiAK
PiA+IC1DaHJpcwo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
