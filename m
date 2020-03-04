Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0AA179444
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 17:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D381F6E02E;
	Wed,  4 Mar 2020 16:02:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86F446E02E
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 16:02:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 08:02:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="441051164"
Received: from rantogno-mobl4.jf.intel.com (HELO
 rantogno-mobl4.amr.corp.intel.com) ([10.54.72.142])
 by fmsmga006.fm.intel.com with ESMTP; 04 Mar 2020 08:02:45 -0800
Date: Wed, 4 Mar 2020 08:02:45 -0800
From: Rafael Antognolli <rafael.antognolli@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
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

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMDM6MzE6NDRQTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBFbmFibGUgRnRyUGVyQ3R4dFByZWVtcHRpb25HcmFudWxhcml0eUNvbnRyb2wgYml0IGFu
ZCBzZWxlY3QgdGhyZWFkLQo+IGdyb3VwIGFzIHRoZSBkZWZhdWx0IHByZWVtcHRpb24gbGV2ZWwu
Cj4gCj4gdjI6Cj4gICogUmVtb3ZlIHJlZ2lzdGVyIHdoaXRlbGlzdGluZyAoUmFmYWVsLCBUb255
KS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgo+IENjOiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5j
b20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNv
bT4KPiBDYzogcGlvdHIuemR1bm93c2tpQGludGVsLmNvbQo+IENjOiBtaWNoYWwubXJvemVrQGlu
dGVsLmNvbQo+IENjOiBUb255IFllIDx0b255LnllQGludGVsLmNvbT4KPiBDYzogUmFmYWVsIEFu
dG9nbm9sbGkgPHJhZmFlbC5hbnRvZ25vbGxpQGludGVsLmNvbT4KClRoYW5rcyBmb3IgQ0MnaW5n
IG1lLiBJIGFsc28gc2F3IGEgcmVwbHkgZnJvbSBKYXNvbiB5ZXN0ZXJkYXksIGJ1dCBJCmRvbid0
IHNlZSBpdCBpbiB0aGUgbGlzdCBub3cgKHRob3VnaCBteSBtYWlsIGNsaWVudCBhIG1lc3MgbGF0
ZWx5KS4KCkJ1dCBoZSBhc2tlZCB3aGV0aGVyIGl0J3MgcG9zc2libGUgZm9yIE1lZGlhIGFuZCBP
cGVuQ0wgZHJpdmVycyB0bwphbHNvIGRpc2FibGUgbWlkLXRocmVhZCBwcmVlbXB0aW9uIHRocm91
Z2ggdGhlCklOVEVSRkFDRV9ERVNDUklQVE9SX0RBVEEsIGluc3RlYWQgb2YgZnJvbSB0aGUga2Vy
bmVsIHNpZGUsIHNvIHdlIGNvdWxkCnRyeSB0byBleHBlcmltZW50IHdpdGggaXQgaW4gdGhlIGZ1
dHVyZS4KCkFsc28sIGRvIHlvdSBoYXZlIGFuIGlkZWEgb2YgaG93IGJyb2tlbiBpdCBpcz8gT3Ig
aXMgaXQganVzdCBub3QgdGVzdGVkCmJlY2F1c2Ugbm8gZHJpdmVyIGlzIGN1cnJlbnRseSBpbXBs
ZW1lbnRpbmcgaXQ/IEFuZCBkbyB5b3Uga25vdyBpZiB0aGUKd2luZG93cyAzRCBkcml2ZXJzIGlt
cGxlbWVudCBpdCBhdCBhbGw/IEkgc2VlIGNvZGUgaW4gdGhlIGRyaXZlciB0aGF0CnNlZW1zIHRv
IG1lIHRoYXQgaXQncyBvbmx5IGRpc2FibGVkIGluIGNlcnRhaW4gY2FzZXMuLi4KClRvIHN1bW1h
cml6ZSwgSSB0aGluayB3ZSBzaG91bGQgZWl0aGVyOgogICAxKSBEaXNhYmxlIG1pZC10aHJlYWQg
cHJlZW1wdGlvbiBmcm9tIHRoZSBrZXJuZWwgYW5kIG5vdCB3aGl0ZWxpc3QKICAgdGhlIHJlZ2lz
dGVyIChqdXN0IGxpa2UgeW91IGRvIGluIHRoaXMgcGF0Y2gpOyBvcgogICAyKSBOb3QgZG8gYW55
dGhpbmcgYXQgYWxsIGZyb20gdGhlIGtlcm5lbCwgYW5kIGxldCB1c2Vyc3BhY2UgZGlzYWJsZQog
ICBpdCBpZiBuZWVkZWQuCgpJIHRoaW5rIDIpIGlzIGJldHRlciwgaWYgaXQncyBub3QgYW4gaXNz
dWUgdG8gdGhlIG90aGVyIHVzZXJzcGFjZQpkcml2ZXJzIChPcGVuQ0wgYW5kIE1lZGlhKS4KCi0t
ClJhZmFlbAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyB8IDkgKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jCj4gaW5kZXggY2I3ZDg1YzQyZjEzLi43YmU3MWExYTU3MTkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAtNjAxLDYgKzYwMSwx
MSBAQCBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLAo+ICAJICovCj4gIAl3YV9hZGQod2FsLCBGRl9NT0RFMiwgRkZfTU9E
RTJfVERTX1RJTUVSX01BU0ssCj4gIAkgICAgICAgRkZfTU9ERTJfVERTX1RJTUVSXzEyOCwgMCk7
Cj4gKwo+ICsJLyogV2FEaXNhYmxlR1BHUFVNaWRUaHJlYWRQcmVlbXB0aW9uOnRnbCAqLwo+ICsJ
V0FfU0VUX0ZJRUxEX01BU0tFRChHRU44X0NTX0NISUNLRU4xLAo+ICsJCQkgICAgR0VOOV9QUkVF
TVBUX0dQR1BVX0xFVkVMX01BU0ssCj4gKwkJCSAgICBHRU45X1BSRUVNUFRfR1BHUFVfVEhSRUFE
X0dST1VQX0xFVkVMKTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQKPiBAQCAtMTQ3NSw4ICsxNDgw
LDggQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwg
c3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ICAJCQkgICAgIFBTRFVOSVRfQ0xLR0FURV9ESVMp
Owo+ICAJfQo+ICAKPiAtCWlmIChJU19HRU5fUkFOR0UoaTkxNSwgOSwgMTEpKSB7Cj4gLQkJLyog
RnRyUGVyQ3R4dFByZWVtcHRpb25HcmFudWxhcml0eUNvbnRyb2w6c2tsLGJ4dCxrYmwsY2ZsLGNu
bCxpY2wgKi8KPiArCWlmIChJU19HRU5fUkFOR0UoaTkxNSwgOSwgMTIpKSB7Cj4gKwkJLyogRnRy
UGVyQ3R4dFByZWVtcHRpb25HcmFudWxhcml0eUNvbnRyb2w6c2tsLGJ4dCxrYmwsY2ZsLGNubCxp
Y2wsdGdsICovCj4gIAkJd2FfbWFza2VkX2VuKHdhbCwKPiAgCQkJICAgICBHRU43X0ZGX1NMSUNF
X0NTX0NISUNLRU4xLAo+ICAJCQkgICAgIEdFTjlfRkZTQ19QRVJDVFhfUFJFRU1QVF9DVFJMKTsK
PiAtLSAKPiAyLjIwLjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
