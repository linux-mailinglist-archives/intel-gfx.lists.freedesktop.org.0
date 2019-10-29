Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A33E9254
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 22:47:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9BCF6E794;
	Tue, 29 Oct 2019 21:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DACB6E794
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 21:47:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 14:47:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="198496576"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2019 14:47:07 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-6-matthew.auld@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b5e6ac2b-2b3a-d6f8-5df7-7e8f3c870874@intel.com>
Date: Tue, 29 Oct 2019 14:46:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191029095856.25431-6-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: don't allocate the ring in
 stolen if we lack aperture
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

CgpPbiAxMC8yOS8xOSAyOjU4IEFNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4gU2luY2Ugd2UgaGF2
ZSBubyB3YXkgYWNjZXNzIGl0IGZyb20gdGhlIENQVS4gRm9yIHN1Y2ggY2FzZXMganVzdAo+IGZh
bGxiYWNrIHRvIGludGVybmFsIG9iamVjdHMuCj4gCgpTaW5jZSB0aGUgcHJvYmxlbSBpcyBub3Qg
bGltaXRlZCB0byByaW5ncyBidXQgaXQgYXBwbGllcyB0byBhbGwgc3RvbGVuIApvYmplY3RzLCB3
b3VsZG4ndCBpdCBiZSBiZXR0ZXIgdG8ganVzdCBza2lwIHRoZSBzdG9sZW4gaW5pdGlhbGl6YXRp
b24gb3IgCnJldHVybiBhbiBlcnJvciBmcm9tIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVu
KCk/CgpEYW5pZWxlCgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmcu
YyB8IDQgKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5n
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMKPiBpbmRleCBmYTAxYzE0
MDc3NjAuLmVjZTIwNTA0ZDI0MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yaW5nLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5n
LmMKPiBAQCAtMTA4LDcgKzEwOCw5IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV9y
aW5nX3ZtYShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0LCBpbnQgc2l6ZSkKPiAgIAlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+ICAgCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+ICAgCj4g
LQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihpOTE1LCBzaXplKTsKPiArCW9i
aiA9IEVSUl9QVFIoLUVOT0RFVik7Cj4gKwlpZiAoaTkxNV9nZ3R0X2hhc19hcGVydHVyZShnZ3R0
KSkKPiArCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihpOTE1LCBzaXplKTsK
PiAgIAlpZiAoSVNfRVJSKG9iaikpCj4gICAJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVf
aW50ZXJuYWwoaTkxNSwgc2l6ZSk7Cj4gICAJaWYgKElTX0VSUihvYmopKQo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
