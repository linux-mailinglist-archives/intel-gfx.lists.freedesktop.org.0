Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF1888633
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 00:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F077E6EEEE;
	Fri,  9 Aug 2019 22:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EDCD6EEEE
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 22:46:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 15:46:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,367,1559545200"; d="scan'208";a="374629267"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 09 Aug 2019 15:46:32 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190809222643.23142-1-matthew.auld@intel.com>
 <20190809222643.23142-25-matthew.auld@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <6eee71bb-c544-c1a1-001f-e5a08f3b68e9@intel.com>
Date: Fri, 9 Aug 2019 15:46:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809222643.23142-25-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 24/37] drm/i915: set num_fence_regs to 0
 if there is no aperture
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzkvMTkgMzoyNiBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IEZyb206IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gCj4gV2Ug
Y2FuJ3QgZmVuY2UgYW55dGhpbmcgd2l0aG91dCBhcGVydHVyZS4KCldoZW4gSSB3cm90ZSB0aGlz
IHBhdGNoIChiZWZvcmUgTE1FTSB3YXMgaW4gdGhlIHBpY3R1cmUpIG1hcHBhYmxlIAphcGVydHVy
ZSB3YXMgc3VwcG9zZWQgdG8gb25seSBiZSBtaXNzaW5nIGluIGhlYWRsZXNzIHNjZW5hcmlvcyBz
byBJIApkaWRuJ3QgY29uc2lkZXIgdGhlIGRpc3BsYXkgY2FzZS4gRG8gd2Ugc3RpbGwgbmVlZC91
c2UgZmVuY2VzIGZvciBkaXJlY3QgCmFjY2VzcyBmcm9tIGRpc3BsYXkgSFcgdG8gTE1FTT8gaWYg
c28sIHdlIHNob3VsZCBkcm9wIHRoaXMuCgpEYW5pZWxlCgo+IAo+IFNpZ25lZC1vZmYtYnk6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4K
PiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMgfCA2ICsrKystLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYwo+IGluZGV4IGJjYWMzNTllYzY2MS4u
YmI3ZDkzMjFjYWRmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2ZlbmNlX3JlZy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2Vf
cmVnLmMKPiBAQCAtODA4LDggKzgwOCwxMCBAQCB2b2lkIGk5MTVfZ2d0dF9pbml0X2ZlbmNlcyhz
dHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQo+ICAgCj4gICAJZGV0ZWN0X2JpdF82X3N3aXp6bGUoaTkx
NSk7Cj4gICAKPiAtCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNyAmJgo+IC0JICAgICEoSVNfVkFM
TEVZVklFVyhpOTE1KSB8fCBJU19DSEVSUllWSUVXKGk5MTUpKSkKPiArCWlmICghSEFTX01BUFBB
QkxFX0FQRVJUVVJFKGk5MTUpKQo+ICsJCW51bV9mZW5jZXMgPSAwOwo+ICsJZWxzZSBpZiAoSU5U
RUxfR0VOKGk5MTUpID49IDcgJiYKPiArCQkgIShJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NI
RVJSWVZJRVcoaTkxNSkpKQo+ICAgCQludW1fZmVuY2VzID0gMzI7Cj4gICAJZWxzZSBpZiAoSU5U
RUxfR0VOKGk5MTUpID49IDQgfHwKPiAgIAkJIElTX0k5NDVHKGk5MTUpIHx8IElTX0k5NDVHTShp
OTE1KSB8fAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
