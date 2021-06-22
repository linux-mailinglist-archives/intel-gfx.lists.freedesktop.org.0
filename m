Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C11A23B0101
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 12:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E9CD6E0DD;
	Tue, 22 Jun 2021 10:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD11B6E0DD;
 Tue, 22 Jun 2021 10:11:39 +0000 (UTC)
IronPort-SDR: 9u1dH1upPunTLO8U3I3mRLDBmIuUAZROY6p9vgqEKZCknoB3bMnfsygG+cpbE7IjJGexQhMGIy
 RVtS7ScNBnzA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="204016491"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="204016491"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 03:11:26 -0700
IronPort-SDR: plzRNugId5emiyaj6/ElH+gRqbenQHqt3BTdkDxG2+2naX0hcn4xBCUpHFePvdpCjAZcyvL0VD
 wf3HDs0voyUQ==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="623417857"
Received: from clanggaa-mobl1.ger.corp.intel.com (HELO [10.249.254.95])
 ([10.249.254.95])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 03:11:24 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210622095843.132549-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <1aeeac85-07d7-b6d5-4253-386801088307@linux.intel.com>
Date: Tue, 22 Jun 2021 12:11:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210622095843.132549-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: consider all placements for
 the page alignment
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjIvMjEgMTE6NTggQU0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBKdXN0IGNoZWNraW5n
IHRoZSBjdXJyZW50IHJlZ2lvbiBpcyBub3QgZW5vdWdoLCBpZiB3ZSBsYXRlciBtaWdyYXRlIHRo
ZQo+IG9iamVjdCBzb21ld2hlcmUgZWxzZS4gRm9yIGV4YW1wbGUgaWYgdGhlIHBsYWNlbWVudHMg
YXJlIHtTTUVNLCBMTUVNfSwKPiB0aGVuIHdlIG1pZ2h0IGdldCB0aGlzIHdyb25nLiBBbm90aGVy
IGlkZWEgbWlnaHQgYmUgdG8gbWFrZSB0aGUKPiBwYWdlX2FsaWdubWVudCBwYXJ0IG9mIHRoZSB0
dG1fcGxhY2UsIGluc3RlYWQgb2YgdGhlIEJPLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhv
bWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAyMSArKysrKysrKysrKysrKysrKysrKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gaW5kZXggYzVkZWI4YjcyMjdjLi41ZDg5
NGJiYTY0MzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3R0bS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4g
QEAgLTc1Myw2ICs3NTMsMjUgQEAgdm9pZCBpOTE1X3R0bV9ib19kZXN0cm95KHN0cnVjdCB0dG1f
YnVmZmVyX29iamVjdCAqYm8pCj4gICAJCWNhbGxfcmN1KCZvYmotPnJjdSwgX19pOTE1X2dlbV9m
cmVlX29iamVjdF9yY3UpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB1NjQgaTkxNV9nZW1fb2JqZWN0
X3BhZ2Vfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICt7Cj4gKwl1NjQg
cGFnZV9zaXplOwo+ICsJaW50IGk7Cj4gKwo+ICsJaWYgKCFvYmotPm1tLm5fcGxhY2VtZW50cykK
PiArCQlyZXR1cm4gb2JqLT5tbS5yZWdpb24tPm1pbl9wYWdlX3NpemU7Cj4gKwo+ICsJcGFnZV9z
aXplID0gMDsKPiArCWZvciAoaSA9IDA7IGkgPCBvYmotPm1tLm5fcGxhY2VtZW50czsgaSsrKSB7
Cj4gKwkJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yID0gb2JqLT5tbS5wbGFjZW1lbnRz
W2ldOwo+ICsKPiArCQlwYWdlX3NpemUgPSBtYXhfdCh1NjQsIG1yLT5taW5fcGFnZV9zaXplLCBw
YWdlX3NpemUpOwo+ICsJfQo+ICsKPiArCUdFTV9CVUdfT04oIXBhZ2Vfc2l6ZSk7Cj4gKwlyZXR1
cm4gcGFnZV9zaXplOwo+ICt9Cj4gKwo+ICAgLyoqCj4gICAgKiBfX2k5MTVfZ2VtX3R0bV9vYmpl
Y3RfaW5pdCAtIEluaXRpYWxpemUgYSB0dG0tYmFja2VkIGk5MTUgZ2VtIG9iamVjdAo+ICAgICog
QG1lbTogVGhlIGluaXRpYWwgbWVtb3J5IHJlZ2lvbiBmb3IgdGhlIG9iamVjdC4KPiBAQCAtNzkz
LDcgKzgxMiw3IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QgaW50ZWxf
bWVtb3J5X3JlZ2lvbiAqbWVtLAo+ICAgCW9iai0+YmFzZS52bWFfbm9kZS5kcml2ZXJfcHJpdmF0
ZSA9IGk5MTVfZ2VtX3RvX3R0bShvYmopOwo+ICAgCXJldCA9IHR0bV9ib19pbml0KCZpOTE1LT5i
ZGV2LCBpOTE1X2dlbV90b190dG0ob2JqKSwgc2l6ZSwKPiAgIAkJCSAgYm9fdHlwZSwgJmk5MTVf
c3lzX3BsYWNlbWVudCwKPiAtCQkJICBtZW0tPm1pbl9wYWdlX3NpemUgPj4gUEFHRV9TSElGVCwK
PiArCQkJICBpOTE1X2dlbV9vYmplY3RfcGFnZV9zaXplKG9iaikgPj4gUEFHRV9TSElGVCwKCkht
bSwgY2FuJ3Qgd2UganVzdCBoYXZlIHRoZSBidWRkeSBtYW5hZ2VyIHNpbGVudGx5IGVuZm9yY2Ug
aXRzIAptaW5fcGFnZV9zaXplPwoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
