Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDAB10D862
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 17:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4987989D84;
	Fri, 29 Nov 2019 16:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A134F89D84
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 16:25:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 08:25:12 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="203778036"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 29 Nov 2019 08:25:11 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191129151845.1092933-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d3295ef5-84f9-1e8c-1685-70e419174f40@linux.intel.com>
Date: Fri, 29 Nov 2019 16:25:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191129151845.1092933-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Take timeline->mutex to walk
 list-of-requests
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI5LzExLzIwMTkgMTU6MTgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaG91Z2ggdGhlIGNv
bnRleHQgaXMgY2xvc2VkIGFuZCBzbyBubyBtb3JlIHJlcXVlc3RzIGNhbiBiZSBhZGRlZCB0byB0
aGUKPiB0aW1lbGluZSwgcmV0aXJlbWVudCBjYW4gc3RpbGwgYmUgcmVtb3ZpbmcgcmVxdWVzdHMu
IEl0IGNhbiBldmVuIGJlCj4gcmVtb3ZpbmcgdGhlIHZlcnkgcmVxdWVzdCB3ZSBhcmUgaW5zcGVj
dGluZyBhbmQgc28gY2F1c2UgdXMgdG8gd2FuZGVyCj4gaW50byBkZWFkIGxpbmtzLgo+IAo+IFNl
cmlhbGlzZSB3aXRoIHRoZSByZXRpcmVtZW50IGJ5IHRha2luZyB0aGUgdGltZWxpbmUtPm11dGV4
IHVzZWQgZm9yCj4gZ3VhcmRpbmcgdGhlIHRpbWVsaW5lLT5yZXF1ZXN0cyBsaXN0Lgo+IAo+IEJ1
Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTI0
MDQKPiBGaXhlczogNGEzMTc0MTUyMTQ3ICgiZHJtL2k5MTUvZ2VtOiBSZWZpbmUgb2NjdXBhbmN5
IHRlc3QgaW4ga2lsbF9jb250ZXh0KCkiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+
IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4g
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgNCAr
Ky0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+IGluZGV4
IGExNzllMTcwYzkzNi4uOWYxZGM5NmIxMGE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTQwMyw3ICs0MDMsNyBAQCBzdGF0aWMgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqYWN0aXZlX2VuZ2luZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCj4gICAJaWYgKCFjZS0+dGltZWxpbmUpCj4gICAJCXJldHVybiBOVUxMOwo+ICAgCj4gLQly
Y3VfcmVhZF9sb2NrKCk7Cj4gKwltdXRleF9sb2NrKCZjZS0+dGltZWxpbmUtPm11dGV4KTsKPiAg
IAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3JldmVyc2UocnEsICZjZS0+dGltZWxpbmUtPnJlcXVlc3Rz
LCBsaW5rKSB7Cj4gICAJCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKPiAgIAkJCWJy
ZWFrOwo+IEBAIC00MTMsNyArNDEzLDcgQEAgc3RhdGljIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmFjdGl2ZV9lbmdpbmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ICAgCQlpZiAoZW5naW5l
KQo+ICAgCQkJYnJlYWs7Cj4gICAJfQo+IC0JcmN1X3JlYWRfdW5sb2NrKCk7Cj4gKwltdXRleF91
bmxvY2soJmNlLT50aW1lbGluZS0+bXV0ZXgpOwo+ICAgCj4gICAJcmV0dXJuIGVuZ2luZTsKPiAg
IH0KPiAKCklmIHJldGlyZSB3b3VsZCB1c2UgbGlzdF9kZWxfcmN1IGNvdWxkIHdlIGdldCBhd2F5
IHdpdGggbm8gbG9ja2luZyBoZXJlPyAKKEFuZCBsaXN0X2FkZF90YWlsX3JjdSB3aGVuIGFkZGlu
ZyB0byB0aGUgdGltZWxpbmUuKSBJdCdzIG5vdCBhIApjb250ZW5kZWQgcGF0aCBJIGtub3cuIFNv
IHRoaXMgd29ya3MgYXMgd2VsbC4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
