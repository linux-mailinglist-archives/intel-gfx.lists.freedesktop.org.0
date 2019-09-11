Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4626DAFE5C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 16:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56026EB15;
	Wed, 11 Sep 2019 14:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5795C6EB14
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 14:11:40 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 07:11:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="196901867"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 11 Sep 2019 07:11:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2019 17:11:36 +0300
Date: Wed, 11 Sep 2019 17:11:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190911141136.GB7482@intel.com>
References: <20190911135000.23272-1-ville.syrjala@linux.intel.com>
 <156821036908.3439.5160277708812427100@skylake-alporthouse-com>
 <20190911140824.GA7482@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911140824.GA7482@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DRM_I915_DEBUG IOMMU stuff
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

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMDU6MDg6MjRQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFdlZCwgU2VwIDExLCAyMDE5IGF0IDAyOjU5OjI5UE0gKzAxMDAsIENocmlz
IFdpbHNvbiB3cm90ZToKPiA+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0wOS0xMSAxNDo1
MDowMCkKPiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+ID4gCj4gPiA+IFdlIG5lZWQgdG8gc2VsZWN0IElPTU1VX1NVUFBPUlQgYXMg
d2VsbCwgb3RoZXJ3aXNlIHdlIGNhbiBiZSBsZWZ0Cj4gPiA+IHdpdGg6Cj4gPiA+ICBDT05GSUdf
SU9NTVVfSU9WQT1tCj4gPiA+ICAjIENPTkZJR19JT01NVV9TVVBQT1JUIGlzIG5vdCBzZXQKPiA+
ID4gIENPTkZJR19JTlRFTF9JT01NVT15Cj4gPiA+IAo+ID4gPiB3aGljaCBjb21wbGFpbnM6Cj4g
PiA+ICJXQVJOSU5HOiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBJTlRF
TF9JT01NVSIKPiA+ID4gCj4gPiA+IGFuZCBmYWlscyB0byBsaW5rOgo+ID4gPiBsZDogZHJpdmVy
cy9pb21tdS9pbnRlbC1pb21tdS5vOiBpbiBmdW5jdGlvbiBgZnJlZV9hbGxfY3B1X2NhY2hlZF9p
b3Zhcyc6Cj4gPiA+IC9ob21lL3ZzeXJqYWxhL3NyYy9saW51eC9idWlsZF9za2wvLi4vZHJpdmVy
cy9pb21tdS9pbnRlbC1pb21tdS5jOjQ0NjY6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGZyZWVf
Y3B1X2NhY2hlZF9pb3ZhcycKPiA+ID4gLi4uCj4gPiA+IAo+ID4gPiBPciBkbyB3ZSBtYXliZSB3
YW50IHNvbWV0aGluZyBsaWtlOgo+ID4gPiAgc2VsZWN0IDxpb21tdSB0aGluZz4gaWYgSU9NTVVf
U1VQUE9SVAo+ID4gPiBpbnN0ZWFkPwo+ID4gCj4gPiBIbW0uIE15IGdvYWwgZm9yIERSTV9JOTE1
X0RFQlVHIHdhcyBiYXNpY2FsbHkgdG8gZGljdGF0ZSB0aGUKPiA+IGNvbmZpZ3VyYXRpb24gb3B0
aW9ucyBmb3IgQ0kuIE5vdyBDSSBoYXMgZW50ZXJlZCBhIG5ldyBlcmEgb2YgZ2l0Cj4gPiBpdHNl
bGYsIHRoaXMgY291bGQgYmUgcmVpbmVkIGJhY2sgaW4gSSBndWVzcy4gQnV0IEkgc3RpbGwgbGlr
ZSBoYXZpbmcgYQo+ID4gc2luZ2xlIG9wdGlvbiB0aGF0IGVuYWJsZXMgYSBnb29kIHNldCBvZiBk
ZWJ1ZyBvcHRpb25zICh0aGF0IG1hdGNoIHdoYXQKPiA+IENJIGRvZXMgZm9yIGNvbnZlbmllbmNl
KS4KPiA+IAo+ID4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gPiA+IEZpeGVzOiAwMjIyOWFjYjM5MjYgKCJkcm0vaTkxNTogRm9yY2UgY29tcGlsYXRpb24g
d2l0aCBpbnRlbC1pb21tdSBmb3IgQ0kgdmFsaWRhdGlvbiIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IC0t
LQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyB8IDEgKwo+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L0tjb25maWcuZGVidWcKPiA+ID4gaW5kZXggYzVjMDBjYWQ2YmExLi5kOTQwMjgwZGY2YjkgMTAw
NjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwo+ID4gPiBAQCAtMjIsNiAr
MjIsNyBAQCBjb25maWcgRFJNX0k5MTVfREVCVUcKPiA+ID4gICAgICAgICAgZGVwZW5kcyBvbiBE
Uk1fSTkxNQo+ID4gPiAgICAgICAgIHNlbGVjdCBQQ0lfTVNJCj4gPiA+ICAgICAgICAgc2VsZWN0
IElPTU1VX0FQSQo+ID4gPiArICAgICAgIHNlbGVjdCBJT01NVV9TVVBQT1JUCj4gPiAKPiA+IEFs
cmVhZHkgaW4gdGhlIHVwZGF0ZWQKPiA+IDQxZGZkNWY2N2FlNCAoImRybS9pOTE1OiBGb3JjZSBj
b21waWxhdGlvbiB3aXRoIGludGVsLWlvbW11IGZvciBDSSB2YWxpZGF0aW9uIikKPiAKPiBUaGF0
J3Mgbm90IHVwc3RyZWFtIHRob3VnaC4gU28gbXkgYnVpbGQgaXMgc3RpbGwgYnJva2VuLgoKQmFo
LiBOZXZlciBtaW5kLiBJdCB3YXMgbW9yZSB0aGFuIHR3byBtaW51dGVzIHNpbmNlIG15IGxhc3Qg
Z2l0IGZldGNoCnNvIEkgd2FzIGhvcnJpYmx5IG91dCBvZiBkYXRlLiBTZWVtcyBmaW5lIG5vdy4K
Ci0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
