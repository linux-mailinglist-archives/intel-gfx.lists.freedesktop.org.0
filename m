Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 704B6217570
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 19:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC4A89AEE;
	Tue,  7 Jul 2020 17:48:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC37589AEE
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 17:48:31 +0000 (UTC)
IronPort-SDR: kr+6eZclK1JSjNDr3vr8ZaRIw65o0/HnLdvKZYIrtEHUH1ZPHKHD9k5d5pMJKs9x7VLHspRpVk
 qWJ+cQ0Aqi7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="147676037"
X-IronPort-AV: E=Sophos;i="5.75,324,1589266800"; d="scan'208";a="147676037"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 10:48:31 -0700
IronPort-SDR: 7W10yDeENug5Wrk9fBPw3Ov+XPPLOb6U95WSspMd6j9Mr1TY+cu6soo9LZ+nmnnpgZrtZ7N4ij
 Xbc7dSn1eRqw==
X-IronPort-AV: E=Sophos;i="5.75,324,1589266800"; d="scan'208";a="305748436"
Received: from acohen2-mobl.ger.corp.intel.com (HELO [10.251.182.15])
 ([10.251.182.15])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 10:48:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200707171517.28183-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c78d5bb1-9bdb-b477-ed18-a08de4d354e4@linux.intel.com>
Date: Tue, 7 Jul 2020 18:48:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200707171517.28183-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix initial fb to use
 resource_size_t
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA3LzA3LzIwMjAgMTg6MTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBsb29rdXAgdXAg
dGhlIHBoeXNpY2FsIGFkZHJlc3Mgb2YgdGhlIGluaGVyaXRlZCBmcmFtZWJ1ZmZlciwgYW5kCj4g
cHJlc3VtZSB0aGF0IGlzIGFuIG9mZnNldCBpbnRvIHRoZSBzdG9sZW4gbWVtb3J5IHJlZ2lvbi4g
QXMgd2UgYXJlCj4gZGVhbGluZyB3aXRoIHBoeXNpY2FsIHJlc291cmNlcyBhbmQgdGhlaXIgYWRk
cmVzc2VzLCB3ZSBuZWVkIHRvIHVzZQo+IHJlc291cmNlX3NpemVfdCBhbmQgbm90IGFzc3VtZSBl
dmVyeXRoaW5nIGZpdHMgd2l0aGluIGEgcGxhaW4gdTMyIFtiYXNlZAo+IG9uIHByaW9yIGFzc3Vt
cHRpb25zIHRoYXQgd2Ugd2VyZSBzaW1wbGluZyBoYW5kbGluZyBvZmZzZXRzIGludG8gdGhlCj4g
R0dUVCBub3QgcGh5c2ljYWwgbWVtb3J5XS4KPiAKPiBXZSBtYWRlIHRoZSBzd2l0Y2ggdG8gdXNp
bmcgcmVzb3VyY2Vfc2l6ZV90IGZvciBzdG9sZW4gaW4gY29tbWl0Cj4gYjcxMjhlZjEyNWI0ICgi
ZHJtL2k5MTU6IHByZWZlciByZXNvdXJjZV9zaXplX3QgZm9yIGV2ZXJ5dGhpbmcgc3RvbGVuIikK
PiAKPiBSZXBvcnRlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPiBSZWZlcmVuY2VzOiBiNzEyOGVmMTI1YjQgKCJkcm0vaTkxNTogcHJlZmVyIHJlc291cmNl
X3NpemVfdCBmb3IgZXZlcnl0aGluZyBzdG9sZW4iKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDMgKystCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPiBpbmRleCBkZmY3YzE3ZjNkMmIuLjZiZmUzMTQ4ZjkyNyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTM0MDksNyArMzQwOSw4
IEBAIGluaXRpYWxfcGxhbmVfdm1hKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAg
ewo+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gICAJc3RydWN0IGk5MTVf
dm1hICp2bWE7Cj4gLQl1MzIgYmFzZSwgc2l6ZTsKPiArCXJlc291cmNlX3NpemVfdCBiYXNlOwo+
ICsJcmVzb3VyY2Vfc2l6ZV90IHNpemU7Cj4gICAKPiAgIAlpZiAocGxhbmVfY29uZmlnLT5zaXpl
ID09IDApCj4gICAJCXJldHVybiBOVUxMOwo+IAoKVGhlcmUgaXMgYWxzbzoKCgliYXNlID0gcm91
bmRfZG93bihwbGFuZV9jb25maWctPmJhc2UsCgkJCSAgSTkxNV9HVFRfTUlOX0FMSUdOTUVOVCk7
CgpzdHJ1Y3QgaW50ZWxfaW5pdGlhbF9wbGFuZV9jb25maWcgewogICAgICAgICBzdHJ1Y3QgaW50
ZWxfZnJhbWVidWZmZXIgKmZiOwogICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKICAgICAg
ICAgdW5zaWduZWQgaW50IHRpbGluZzsKICAgICAgICAgaW50IHNpemU7CiAgICAgICAgIHUzMiBi
YXNlOwogICAgICAgICB1OCByb3RhdGlvbjsKfTsKClNvIG5vdCBzdXJlLCBqdXN0IHRocm93aW5n
IGl0IG91dCB0aGVyZS4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
