Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D5EB078F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECE66EBCD;
	Thu, 12 Sep 2019 04:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD5E6E0E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 18:11:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="184558939"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 11 Sep 2019 11:11:50 -0700
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190909231445.23815-1-radhakrishna.sripada@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ee561b9f-ffa4-db0f-51da-42c298171dd7@intel.com>
Date: Wed, 11 Sep 2019 11:11:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909231445.23815-1-radhakrishna.sripada@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Implement Wa_1409142259
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

CgpPbiA5LzkvMTkgNDoxNCBQTSwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6Cj4gRGlzYWJs
ZSBDUFMgYXdhcmUgY29sb3IgcGlwZSBieSBzZXR0aW5nIGNoaWNrZW4gYml0Lgo+IAo+IEJTcGVj
OiA1Mjg5MAo+IEhTREVTOiAxNDA5MTQyMjU5Cj4gCj4gdjI6IE1vdmUgV0EgdG8gY3R4IFdBJ3Mo
RGFuaWVsZSkKPiAKPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4KPiBDYzogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGlu
dGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFA
aW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CgpEYW5pZWxlCgo+IC0tLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDMgKysrCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMSArCj4gICAyIGZpbGVzIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYwo+IGluZGV4IDI0M2QzZjc3YmUxMy4uOTVlZjJmMWRmZGJiIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTU2Nyw2ICs1
NjcsOSBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19p
bml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgIAkJCQkgICAgIHN0cnVjdCBp
OTE1X3dhX2xpc3QgKndhbCkKPiAgIHsKPiArCS8qIFdhXzE0MDkxNDIyNTkgKi8KPiArCVdBX1NF
VF9CSVRfTUFTS0VEKEdFTjExX0NPTU1PTl9TTElDRV9DSElDS0VOMywKPiArCQkJICBHRU4xMl9E
SVNBQkxFX0NQU19BV0FSRV9DT0xPUl9QSVBFKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCAwMDZjZmZkNTZiZTIuLjUzZTA3ODgyZWZi
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC03NjY4LDYgKzc2NjgsNyBAQCBl
bnVtIHsKPiAgIAo+ICAgI2RlZmluZSBHRU4xMV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMJCV9NTUlP
KDB4NzMwNCkKPiAgICAgI2RlZmluZSBHRU4xMV9CTEVORF9FTUJfRklYX0RJU0FCTEVfSU5fUkND
CSgxIDw8IDExKQo+ICsgICNkZWZpbmUgR0VOMTJfRElTQUJMRV9DUFNfQVdBUkVfQ09MT1JfUElQ
RQkoMSA8PCA5KQo+ICAgCj4gICAjZGVmaW5lIEhJWl9DSElDS0VOCQkJCQlfTU1JTygweDcwMTgp
Cj4gICAjIGRlZmluZSBDSFZfSFpfOFg4X01PREVfSU5fMVgJCQkJKDEgPDwgMTUpCj4gCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
