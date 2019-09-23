Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9ADBB1D0
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA04D6E836;
	Mon, 23 Sep 2019 10:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3AA26E836
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:01:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:01:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="188097867"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 23 Sep 2019 03:01:13 -0700
Date: Mon, 23 Sep 2019 15:31:00 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190923100100.GA21342@intel.com>
References: <20190919180433.12442-1-ramalingam.c@intel.com>
 <156892350961.1196.1328671197355986285@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156892350961.1196.1328671197355986285@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Create dumb buffer from LMEM
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

T24gMjAxOS0wOS0xOSBhdCAyMTowNTowOSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1
b3RpbmcgUmFtYWxpbmdhbSBDICgyMDE5LTA5LTE5IDE5OjA0OjMzKQo+ID4gV2hlbiBMTUVNIGlz
IHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0ZWQgZnJvbSBMTUVN
Lgo+ID4gCj4gPiBUaGlzIGlzIGRldmVsb3BlZCBvbiB0b3Agb2YgdjMgTE1FTSBzZXJpZXMKPiA+
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTY2ODMvLgo+ID4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4g
PiBjYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDE4ICsrKysrKysrKysrKysrLS0tLQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+IGluZGV4IGU0NTg1MDdiMTU1OC4uYzBkZWNi
ZDAyMGNlIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ID4gQEAgLTE2MSw3ICsx
NjEsNyBAQCBzdGF0aWMgaW50Cj4gPiAgaTkxNV9nZW1fY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAq
ZmlsZSwKPiA+ICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCj4gPiAgICAgICAgICAgICAgICAgdTY0ICpzaXplX3AsCj4gPiAtICAgICAgICAgICAgICAg
dTMyICpoYW5kbGVfcCkKPiA+ICsgICAgICAgICAgICAgICB1MzIgKmhhbmRsZV9wLCBlbnVtIGlu
dGVsX3JlZ2lvbl9pZCBtZW1fcmVnaW9uKQo+IAo+IEdlbmVyYWwgcGF0dGVybiBpcyB0byBrZWVw
IG91dHBhcmFtcyBsYXN0LgoKTW9kaWZpZWQgdGhlIG9yZGVyIG9mIHRoZSBwYXJhbWV0ZXJzLiBU
aGFua3MgQ2hyaXMhCgotUmFtCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
