Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D90583F4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 15:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7589F6E36D;
	Thu, 27 Jun 2019 13:57:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D104B6E36D;
 Thu, 27 Jun 2019 13:57:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 06:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="183458033"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2019 06:57:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
In-Reply-To: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
Date: Thu, 27 Jun 2019 16:59:52 +0300
Message-ID: <87v9wrp1rb.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Silence Valgrind
 warning in synce_fence_status
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNyBKdW4gMjAxOSwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPgo+IExldCBWYWxncmluZCBrbm93IHRoZSBpb2N0bCBpbml0aWFsaXplcyB0
aGUgcGFzc2VkIGluIGluZm8gYmxvY2sgdG8gcmVkdWNlCj4gdGhlIG5vaXNlIHdoaWxlIGRlYnVn
Z2luZy4KPgo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4gLS0tCj4gIGxpYi9zd19zeW5jLmMgfCAxMSArKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2xpYi9zd19zeW5j
LmMgYi9saWIvc3dfc3luYy5jCj4gaW5kZXggZjIwODYwMzMxMmMyLi43M2YzZjcwMTVkOWQgMTAw
NjQ0Cj4gLS0tIGEvbGliL3N3X3N5bmMuYwo+ICsrKyBiL2xpYi9zd19zeW5jLmMKPiBAQCAtNDEs
NiArNDEsMTUgQEAKPiAgI2luY2x1ZGUgImRybXRlc3QuaCIKPiAgI2luY2x1ZGUgImlvY3RsX3dy
YXBwZXJzLmgiCj4gIAo+ICsjaWZkZWYgSEFWRV9WQUxHUklORAo+ICsjaW5jbHVkZSA8dmFsZ3Jp
bmQvdmFsZ3JpbmQuaD4KPiArI2luY2x1ZGUgPHZhbGdyaW5kL21lbWNoZWNrLmg+Cj4gKwo+ICsj
ZGVmaW5lIFZHKHgpIHgKPiArI2Vsc2UKPiArI2RlZmluZSBWRyh4KSBkbyB7fSB3aGlsZSAoMCkK
Ck9PQywgd2h5IG5vdCBqdXN0CgojZGVmaW5lIFZBTEdSSU5EX01BS0VfTUVNX0RFRklORUQoLi4u
KQoKQlIsCkphbmkuCgo+ICsjZW5kaWYKPiArCj4gIC8qKgo+ICAgKiBTRUNUSU9OOnN3X3N5bmMK
PiAgICogQHNob3J0X2Rlc2NyaXB0aW9uOiBTb2Z0d2FyZSBzeW5jIChmZW5jaW5nKSBzdXBwb3J0
IGxpYnJhcnkKPiBAQCAtMjE4LDYgKzIyNyw4IEBAIGludCBzeW5jX2ZlbmNlX3N0YXR1cyhpbnQg
ZmVuY2UpCj4gIAlpZiAoZmlsZV9pbmZvLm51bV9mZW5jZXMgIT0gMSkKPiAgCQlyZXR1cm4gLUVJ
TlZBTDsKPiAgCj4gKwlWRyhWQUxHUklORF9NQUtFX01FTV9ERUZJTkVEKCZmZW5jZV9pbmZvLCBz
aXplb2YoZmVuY2VfaW5mbykpKTsKPiArCj4gIAlyZXR1cm4gZmVuY2VfaW5mby5zdGF0dXM7Cj4g
IH0KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
