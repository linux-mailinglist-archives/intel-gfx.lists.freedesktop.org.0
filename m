Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D8C179631
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 18:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C5F6E0CC;
	Wed,  4 Mar 2020 17:01:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5E96E0CC
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 17:01:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 09:01:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="287399394"
Received: from rantogno-mobl4.jf.intel.com (HELO
 rantogno-mobl4.amr.corp.intel.com) ([10.54.72.142])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Mar 2020 09:01:37 -0800
Date: Wed, 4 Mar 2020 09:01:37 -0800
From: Rafael Antognolli <rafael.antognolli@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200304170137.7qe3fhyo4obgfuxk@rantogno-mobl4.amr.corp.intel.com>
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
 <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
 <bcb82998-13c1-d047-4d37-0d89c306beca@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bcb82998-13c1-d047-4d37-0d89c306beca@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaDisableGPGPUMidThreadPreemption
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: piotr.zdunowski@intel.com, Intel-gfx@lists.freedesktop.org,
 Jason Ekstrand <jason.ekstrand@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMDQ6MjQ6MTNQTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gCj4gT24gMDQvMDMvMjAyMCAxNjowMiwgUmFmYWVsIEFudG9nbm9sbGkgd3JvdGU6
Cj4gPiBPbiBXZWQsIE1hciAwNCwgMjAyMCBhdCAwMzozMTo0NFBNICswMDAwLCBUdnJ0a28gVXJz
dWxpbiB3cm90ZToKPiA+ID4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiA+ID4gCj4gPiA+IEVuYWJsZSBGdHJQZXJDdHh0UHJlZW1wdGlvbkdyYW51bGFy
aXR5Q29udHJvbCBiaXQgYW5kIHNlbGVjdCB0aHJlYWQtCj4gPiA+IGdyb3VwIGFzIHRoZSBkZWZh
dWx0IHByZWVtcHRpb24gbGV2ZWwuCj4gPiA+IAo+ID4gPiB2MjoKPiA+ID4gICAqIFJlbW92ZSBy
ZWdpc3RlciB3aGl0ZWxpc3RpbmcgKFJhZmFlbCwgVG9ueSkuCj4gPiA+IAo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gPiBD
YzogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+ID4gPiBD
YzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4g
PiBDYzogcGlvdHIuemR1bm93c2tpQGludGVsLmNvbQo+ID4gPiBDYzogbWljaGFsLm1yb3pla0Bp
bnRlbC5jb20KPiA+ID4gQ2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgo+ID4gPiBDYzog
UmFmYWVsIEFudG9nbm9sbGkgPHJhZmFlbC5hbnRvZ25vbGxpQGludGVsLmNvbT4KPiA+IAo+ID4g
VGhhbmtzIGZvciBDQydpbmcgbWUuIEkgYWxzbyBzYXcgYSByZXBseSBmcm9tIEphc29uIHllc3Rl
cmRheSwgYnV0IEkKPiA+IGRvbid0IHNlZSBpdCBpbiB0aGUgbGlzdCBub3cgKHRob3VnaCBteSBt
YWlsIGNsaWVudCBhIG1lc3MgbGF0ZWx5KS4KPiAKPiBJIHNhdyBub3RoaW5nIGZyb20gSmFzb24s
IGJ1dCB0aGVyZSB3YXMgYW4gZW1haWwgZnJvbSB5b3UgYXNraW5nIGFib3V0Cj4gaW50ZXJmYWNl
IGRlc2NyaXB0b3JzIGFuZCB3aGl0ZWxpc3Rpbmcgd2hpY2ggaXMgd2h5IEkgY29waWVkIHlvdS4K
PiAKPiA+IEJ1dCBoZSBhc2tlZCB3aGV0aGVyIGl0J3MgcG9zc2libGUgZm9yIE1lZGlhIGFuZCBP
cGVuQ0wgZHJpdmVycyB0bwo+ID4gYWxzbyBkaXNhYmxlIG1pZC10aHJlYWQgcHJlZW1wdGlvbiB0
aHJvdWdoIHRoZQo+ID4gSU5URVJGQUNFX0RFU0NSSVBUT1JfREFUQSwgaW5zdGVhZCBvZiBmcm9t
IHRoZSBrZXJuZWwgc2lkZSwgc28gd2UgY291bGQKPiA+IHRyeSB0byBleHBlcmltZW50IHdpdGgg
aXQgaW4gdGhlIGZ1dHVyZS4KPiA+IAo+ID4gQWxzbywgZG8geW91IGhhdmUgYW4gaWRlYSBvZiBo
b3cgYnJva2VuIGl0IGlzPyBPciBpcyBpdCBqdXN0IG5vdCB0ZXN0ZWQKPiA+IGJlY2F1c2Ugbm8g
ZHJpdmVyIGlzIGN1cnJlbnRseSBpbXBsZW1lbnRpbmcgaXQ/IEFuZCBkbyB5b3Uga25vdyBpZiB0
aGUKPiA+IHdpbmRvd3MgM0QgZHJpdmVycyBpbXBsZW1lbnQgaXQgYXQgYWxsPyBJIHNlZSBjb2Rl
IGluIHRoZSBkcml2ZXIgdGhhdAo+ID4gc2VlbXMgdG8gbWUgdGhhdCBpdCdzIG9ubHkgZGlzYWJs
ZWQgaW4gY2VydGFpbiBjYXNlcy4uLgo+ID4gCj4gPiBUbyBzdW1tYXJpemUsIEkgdGhpbmsgd2Ug
c2hvdWxkIGVpdGhlcjoKPiA+ICAgICAxKSBEaXNhYmxlIG1pZC10aHJlYWQgcHJlZW1wdGlvbiBm
cm9tIHRoZSBrZXJuZWwgYW5kIG5vdCB3aGl0ZWxpc3QKPiA+ICAgICB0aGUgcmVnaXN0ZXIgKGp1
c3QgbGlrZSB5b3UgZG8gaW4gdGhpcyBwYXRjaCk7IG9yCj4gPiAgICAgMikgTm90IGRvIGFueXRo
aW5nIGF0IGFsbCBmcm9tIHRoZSBrZXJuZWwsIGFuZCBsZXQgdXNlcnNwYWNlIGRpc2FibGUKPiA+
ICAgICBpdCBpZiBuZWVkZWQuCj4gPiAKPiA+IEkgdGhpbmsgMikgaXMgYmV0dGVyLCBpZiBpdCdz
IG5vdCBhbiBpc3N1ZSB0byB0aGUgb3RoZXIgdXNlcnNwYWNlCj4gPiBkcml2ZXJzIChPcGVuQ0wg
YW5kIE1lZGlhKS4KPiAKPiBJIGtub3cgaXQgaXMgc29tZXdoYXQgYnJva2VuIGxpa2UgaW4KPiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xMjkzLgo+IAo+
IEFuZCBJIGtub3cgT3BlbkNMIGFuZCBNZWRpYSB3b3VsZCBwcmVmZXIgaTkxNSB0byBoYW5kbGUg
aXQsIGJ1dCB0aGF0J3MKPiBhbHdheXMgdGhlIGNhc2UuIDopIE9wZW5DTCBhbmQgTWVkaWEgZm9s
a3MgYXJlIG9uIHRoZSB0aHJlYWQgc28gY2FuIGNvbW1lbnQKPiBpZiB0aGV5IGFyZSBva2F5IHdp
dGggaGFuZGxpbmcgdGhpcyB0aGVtc2VsdmVzLgo+IAo+IEluZGVlZCBhIGJsYW5rZXQgYmFuIGlu
IGk5MTUgbWVhbnMgbm8gb25lIGNhbiB0cnkgaXQgb3V0IGxhdGVyIHdpdGhvdXQKPiBmdXJ0aGVy
IGtlcm5lbCBjaGFuZ2VzLgoKV2VsbCwgYmFzZWQgb24geW91ciBjb21tZW50IGZyb20gdGhlIHBy
ZXZpb3VzIHBhdGNoOgoKIkdlbmVyYWwgdGhpbmtpbmcgaXMsIHNpbmNlIE1UUCBpcyBjb25zaWRl
cmVkIG5vdCB2YWxpZGF0ZWQgLyBicm9rZW4gLwpkYW5nZXJvdXMsIGk5MTUgc2hvdWxkIGRlZmF1
bHQgaXQgb2ZmLiBCdXQgeWVzLCB3aGl0ZWxpc3Rpbmcgb3Igbm90IG9uCnRvcCBpcyBvcGVuLiIK
Ck1heWJlIHdlIHNob3VsZCBzaW1wbHkgYmFuIGl0IGFuZCBiZSBkb25lLiBTbyB0aGlzIHBhdGNo
IGlzOgoKQWNrZWQtYnk6IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZhZWwuYW50b2dub2xsaUBpbnRl
bC5jb20+Cgo+IFJlZ2FyZHMsCj4gCj4gVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
