Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4672CF1558
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 12:42:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5604C6ECDB;
	Wed,  6 Nov 2019 11:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CCD6ECDB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 11:42:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 03:42:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="232844393"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 06 Nov 2019 03:42:07 -0800
Date: Wed, 6 Nov 2019 17:12:28 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191106114228.GA2215@intel.com>
References: <20191105113029.4328-1-ramalingam.c@intel.com>
 <157295443686.14950.14625598446305857471@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157295443686.14950.14625598446305857471@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Create dumb buffer from LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMS0wNSBhdCAxMTo0NzoxNiArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1
b3RpbmcgUmFtYWxpbmdhbSBDICgyMDE5LTExLTA1IDExOjMwOjI5KQo+ID4gV2hlbiBMTUVNIGlz
IHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0ZWQgZnJvbSBMTUVN
Lgo+ID4gCj4gPiB2MjoKPiA+ICAgUGFyYW1ldGVycyBhcmUgcmVzaHVmZmxlZC4gW0NocmlzXQo+
ID4gdjM6Cj4gPiAgIHMvcmVnaW9uX2lkL21lbV90eXBlCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiA+IGNjOiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jIHwgMTcgKysrKysrKysrKysrKystLS0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMTQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jCj4gPiBpbmRleCAxNDNhODk1MmI3MzYuLmRiNzJhZjk4OTA1ZiAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+IEBAIC00NCw2ICs0NCw3IEBACj4gPiAgI2luY2x1
ZGUgImdlbS9pOTE1X2dlbV9jbGZsdXNoLmgiCj4gPiAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9j
b250ZXh0LmgiCj4gPiAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIKPiA+ICsjaW5j
bHVkZSAiZ2VtL2k5MTVfZ2VtX2xtZW0uaCIKPiA+ICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3Bt
LmgiCj4gPiAgI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91c2VyLmgiCj4gPiAgI2luY2x1ZGUg
Imd0L2ludGVsX2d0LmgiCj4gPiBAQCAtMTc1LDYgKzE3Niw3IEBAIGk5MTVfZ2VtX3BoeXNfcHdy
aXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gPiAgc3RhdGljIGludAo+ID4g
IGk5MTVfZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gPiAgICAgICAgICAgICAg
ICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gKyAgICAgICAgICAgICAg
IGVudW0gaW50ZWxfbWVtb3J5X3R5cGUgbWVtX3R5cGUsCj4gPiAgICAgICAgICAgICAgICAgdTY0
ICpzaXplX3AsCj4gPiAgICAgICAgICAgICAgICAgdTMyICpoYW5kbGVfcCkKPiA+ICB7Cj4gPiBA
QCAtMTg4LDcgKzE5MCwxMSBAQCBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxl
LAo+ID4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gIAo+ID4gICAgICAgICAv
KiBBbGxvY2F0ZSB0aGUgbmV3IG9iamVjdCAqLwo+ID4gLSAgICAgICBvYmogPSBpOTE1X2dlbV9v
YmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2LCBzaXplKTsKPiA+ICsgICAgICAgaWYgKG1lbV90
eXBlID09IElOVEVMX01FTU9SWV9MT0NBTCkKPiA+ICsgICAgICAgICAgICAgICBvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0oZGV2X3ByaXYsIHNpemUsIDApOwo+ID4gKyAgICAgICBl
bHNlCj4gPiArICAgICAgICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1l
bShkZXZfcHJpdiwgc2l6ZSk7Cj4gCj4gSGF2ZSB5b3Ugbm90IHRhbGtlZCBNYXR0aGV3IGludG8g
Y3JlYXRpbmcgYQo+IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKD9kZXZfcHJpdj8sCj4g
CQkJICAgICAgaW50ZWxfbWVtb3J5X3JlZ2lvbl9sb29rdXAoZGV2X3ByaXYsIG1lbV90eXBlKSwK
PiAJCQkgICAgICBzaXplLCBmbGFncykKU291bmRzIGEgZ29vZCBpZGVhIHRvIHNraXAgYSB3cmFw
cGVyIGZ1bmN0aW9uLgoKTWF0dCwgSXMgdGhhdCBvayB3aXRoIHlvdT8KCi1SYW0KPiB5ZXQ/Cj4g
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
