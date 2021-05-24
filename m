Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E8138F2C6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 20:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE546E8E2;
	Mon, 24 May 2021 18:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4406E214;
 Mon, 24 May 2021 18:12:28 +0000 (UTC)
IronPort-SDR: Uom0dkArOJsA1fqx3sQkH//72xcf6lkRZz8XDBITzsSFzlv9XEKxxsRVK5NRgcuddpmbv9t/P3
 Wc8JPznMVVrA==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="223155277"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="223155277"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 11:12:28 -0700
IronPort-SDR: MzMrCTn+8MtjrwfYKbbu/od2RURmBiVbMlUuQsB7YxDVefBLGLkeEc+1a1FJlOr5Q6TGYzyvXi
 4vig1xd+o14A==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="475997705"
Received: from clanggaa-mobl1.ger.corp.intel.com ([10.249.254.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 11:12:26 -0700
Message-ID: <ba5cc30d2f5208aab3a7df8d9799f0c310f9989e.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 24 May 2021 20:12:23 +0200
In-Reply-To: <CAM0jSHNqr-kUGsRaBavEvk3w-vr_SRrdSzQb4y-CDYrFnQgXdQ@mail.gmail.com>
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
 <20210521153253.518037-8-thomas.hellstrom@linux.intel.com>
 <CAM0jSHNqr-kUGsRaBavEvk3w-vr_SRrdSzQb4y-CDYrFnQgXdQ@mail.gmail.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 07/12] drm,
 drm/i915: Move the memcpy_from_wc functionality to core drm
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTA1LTI0IGF0IDE3OjQ1ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
T24gRnJpLCAyMSBNYXkgMjAyMSBhdCAxNjozMywgVGhvbWFzIEhlbGxzdHLDtm0KPiA8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gCj4gPiBNZW1jcHkgZnJvbSB3
YyB3aWxsIGJlIHVzZWQgYXMgd2VsbCBieSBUVE0gbWVtY3B5Lgo+ID4gTW92ZSBpdCB0byBjb3Jl
IGRybSwgYW5kIG1ha2UgdGhlIGludGVyZmFjZSBkbyB0aGUgcmlnaHQgdGhpbmcKPiA+IGV2ZW4g
b24gIVg4Ni4KPiA+IAo+ID4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+
ID4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiA+
IC0tLQo+IAo+IDxzbmlwPgo+IAo+ID4gKwo+ID4gKyNpZmRlZiBDT05GSUdfWDg2Cj4gPiArYm9v
bCBkcm1fbWVtY3B5X2Zyb21fd2Modm9pZCAqZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVk
IGxvbmcKPiA+IGxlbik7Cj4gPiArYm9vbCBkcm1fbWVtY3B5X2Zyb21fd2NfZGJtKHN0cnVjdCBk
bWFfYnVmX21hcCAqZHN0LAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGRtYV9idWZfbWFwICpzcmMsCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25l
ZCBsb25nIGxlbik7Cj4gPiArdm9pZCBkcm1fdW5hbGlnbmVkX21lbWNweV9mcm9tX3djKHZvaWQg
KmRzdCwgY29uc3Qgdm9pZCAqc3JjLAo+ID4gdW5zaWduZWQgbG9uZyBsZW4pOwo+ID4gKwo+ID4g
Ky8qIFRoZSBtb3ZudGRxYSBpbnN0cnVjdGlvbnMgdXNlZCBmb3IgbWVtY3B5LWZyb20td2MgcmVx
dWlyZSAxNi0KPiA+IGJ5dGUgYWxpZ25tZW50LAo+ID4gKyAqIGFzIHdlbGwgYXMgU1NFNC4xIHN1
cHBvcnQuIGRybV9tZW1jcHlfZnJvbV93YygpIHdpbGwgcmVwb3J0IGlmCj4gPiBpdCBjYW5ub3QK
PiA+ICsgKiBwZXJmb3JtIHRoZSBvcGVyYXRpb24uIFRvIGNoZWNrIGJlZm9yZWhhbmQsIHBhc3Mg
aW4gdGhlCj4gPiBwYXJhbWV0ZXJzIHRvCj4gPiArICogZHJtX2Nhbl9tZW1jcHlfZnJvbV93Yygp
IC0gc2luY2Ugd2Ugb25seSBjYXJlIGFib3V0IHRoZSBsb3cgNAo+ID4gYml0cywKPiA+ICsgKiB5
b3Ugb25seSBuZWVkIHRvIHBhc3MgaW4gdGhlIG1pbm9yIG9mZnNldHMsIHBhZ2UtYWxpZ25lZAo+
ID4gcG9pbnRlcnMgYXJlCj4gPiArICogYWx3YXlzIHZhbGlkLgo+ID4gKyAqCj4gPiArICogRm9y
IGp1c3QgY2hlY2tpbmcgZm9yIFNTRTQuMSwgaW4gdGhlIGZvcmVrbm93bGVkZ2UgdGhhdCB0aGUK
PiA+IGZ1dHVyZSB1c2UKPiA+ICsgKiB3aWxsIGJlIGNvcnJlY3RseSBhbGlnbmVkLCBqdXN0IHVz
ZSBkcm1faGFzX21lbWNweV9mcm9tX3djKCkuCj4gPiArICovCj4gPiArI2RlZmluZSBkcm1fY2Fu
X21lbWNweV9mcm9tX3djKGRzdCwgc3JjLCBsZW4pIFwKPiA+ICvCoMKgwqDCoMKgwqAgZHJtX21l
bWNweV9mcm9tX3djKCh2b2lkICopKCh1bnNpZ25lZCBsb25nKShkc3QpIHwKPiA+ICh1bnNpZ25l
ZCBsb25nKShzcmMpIHwgKGxlbikpLCBOVUxMLCAwKQo+ID4gKwo+ID4gKyNkZWZpbmUgZHJtX2hh
c19tZW1jcHlfZnJvbV93YygpIFwKPiA+ICvCoMKgwqDCoMKgwqAgZHJtX21lbWNweV9mcm9tX3dj
KE5VTEwsIE5VTEwsIDApCj4gPiArCj4gPiArdm9pZCBkcm1fbWVtY3B5X2luaXRfZWFybHkodm9p
ZCk7Cj4gPiArCj4gPiArI2Vsc2UKPiA+ICsKPiA+ICsjZGVmaW5lIGRybV9tZW1jcHlfZnJvbV93
YyhfZHN0LCBfc3JjLCBfbGVuKSAoZmFsc2UpCj4gPiArI2RlZmluZSBkcm1fbWVtY3B5X2Zyb21f
d2NfZGJtKF9kc3QsIF9zcmMsIF9sZW4pIChmYWxzZSkKPiA+ICsjZGVmaW5lIGRybV9jYW5fbWVt
Y3B5X2Zyb21fd2MoX2RzdCwgX3NyYywgX2xlbikgKGZhbHNlKQo+ID4gKyNkZWZpbmUgZHJtX2hh
c19tZW1jcHlfZnJvbV93YygpIChmYWxzZSkKPiAKPiBEb2VzIHRoZSBjb21waWxlciBub3QgY29t
cGxhaW4gZm9yIHRoZXNlIG9uICF4ODYsIGlmIGNhbGxlZCB3aXRob3V0Cj4gY2hlY2tpbmcgdGhl
IHJlc3VsdCBvZiB0aGUgc3RhdGVtZW50PyBNYXliZSBqdXN0IG1ha2UgdGhlc2UgZnVuY3Rpb24K
PiBzdHVicz8KPiAKPiBPdGhlcndpc2UsCj4gUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4KCkhtbSwgeW91J3JlIHJpZ2h0LiBJJ2xsIGZpeC4gVGhhbmtz
IGZvciByZXZpZXdpbmchCgovVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
