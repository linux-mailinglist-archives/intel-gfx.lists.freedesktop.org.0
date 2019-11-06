Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B4BF15E1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 13:12:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB4F6ECF8;
	Wed,  6 Nov 2019 12:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3431D6ECF8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 12:12:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 04:12:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="192445312"
Received: from robinyou-mobl.amr.corp.intel.com (HELO [10.255.230.200])
 ([10.255.230.200])
 by orsmga007.jf.intel.com with ESMTP; 06 Nov 2019 04:12:32 -0800
To: Ramalingam C <ramalingam.c@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20191105113029.4328-1-ramalingam.c@intel.com>
 <157295443686.14950.14625598446305857471@skylake-alporthouse-com>
 <20191106114228.GA2215@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <2e19dad8-792c-6ac9-87f9-fbc8c6cdaf18@intel.com>
Date: Wed, 6 Nov 2019 12:12:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106114228.GA2215@intel.com>
Content-Language: en-US
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDYvMTEvMjAxOSAxMTo0MiwgUmFtYWxpbmdhbSBDIHdyb3RlOgo+IE9uIDIwMTktMTEtMDUg
YXQgMTE6NDc6MTYgKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBSYW1hbGlu
Z2FtIEMgKDIwMTktMTEtMDUgMTE6MzA6MjkpCj4+PiBXaGVuIExNRU0gaXMgc3VwcG9ydGVkLCBk
dW1iIGJ1ZmZlciBwcmVmZXJyZWQgdG8gYmUgY3JlYXRlZCBmcm9tIExNRU0uCj4+Pgo+Pj4gdjI6
Cj4+PiAgICBQYXJhbWV0ZXJzIGFyZSByZXNodWZmbGVkLiBbQ2hyaXNdCj4+PiB2MzoKPj4+ICAg
IHMvcmVnaW9uX2lkL21lbV90eXBlCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBD
IDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+Pj4gY2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5h
dWxkQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jIHwgMTcgKysrKysrKysrKysrKystLS0KPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4+
PiBpbmRleCAxNDNhODk1MmI3MzYuLmRiNzJhZjk4OTA1ZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKPj4+IEBAIC00NCw2ICs0NCw3IEBACj4+PiAgICNpbmNsdWRlICJnZW0vaTkx
NV9nZW1fY2xmbHVzaC5oIgo+Pj4gICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIK
Pj4+ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIKPj4+ICsjaW5jbHVkZSAiZ2Vt
L2k5MTVfZ2VtX2xtZW0uaCIKPj4+ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9wbS5oIgo+Pj4g
ICAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKPj4+ICAgI2luY2x1ZGUgImd0L2lu
dGVsX2d0LmgiCj4+PiBAQCAtMTc1LDYgKzE3Niw3IEBAIGk5MTVfZ2VtX3BoeXNfcHdyaXRlKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4+PiAgIHN0YXRpYyBpbnQKPj4+ICAgaTkx
NV9nZW1fY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPj4+ICAgICAgICAgICAgICAgICAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+Pj4gKyAgICAgICAgICAgICAgIGVu
dW0gaW50ZWxfbWVtb3J5X3R5cGUgbWVtX3R5cGUsCj4+PiAgICAgICAgICAgICAgICAgIHU2NCAq
c2l6ZV9wLAo+Pj4gICAgICAgICAgICAgICAgICB1MzIgKmhhbmRsZV9wKQo+Pj4gICB7Cj4+PiBA
QCAtMTg4LDcgKzE5MCwxMSBAQCBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxl
LAo+Pj4gICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4+ICAgCj4+PiAgICAgICAg
ICAvKiBBbGxvY2F0ZSB0aGUgbmV3IG9iamVjdCAqLwo+Pj4gLSAgICAgICBvYmogPSBpOTE1X2dl
bV9vYmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2LCBzaXplKTsKPj4+ICsgICAgICAgaWYgKG1l
bV90eXBlID09IElOVEVMX01FTU9SWV9MT0NBTCkKPj4+ICsgICAgICAgICAgICAgICBvYmogPSBp
OTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0oZGV2X3ByaXYsIHNpemUsIDApOwo+Pj4gKyAgICAg
ICBlbHNlCj4+PiArICAgICAgICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9z
aG1lbShkZXZfcHJpdiwgc2l6ZSk7Cj4+Cj4+IEhhdmUgeW91IG5vdCB0YWxrZWQgTWF0dGhldyBp
bnRvIGNyZWF0aW5nIGEKPj4gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24oP2Rldl9wcml2
PywKPj4gCQkJICAgICAgaW50ZWxfbWVtb3J5X3JlZ2lvbl9sb29rdXAoZGV2X3ByaXYsIG1lbV90
eXBlKSwKPj4gCQkJICAgICAgc2l6ZSwgZmxhZ3MpCj4gU291bmRzIGEgZ29vZCBpZGVhIHRvIHNr
aXAgYSB3cmFwcGVyIGZ1bmN0aW9uLgo+IAo+IE1hdHQsIElzIHRoYXQgb2sgd2l0aCB5b3U/CgpT
dXJlLgoKPiAKPiAtUmFtCj4+IHlldD8KPj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
