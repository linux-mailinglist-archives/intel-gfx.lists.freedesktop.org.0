Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A59BB1B3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 11:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE506E82E;
	Mon, 23 Sep 2019 09:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28086E82E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 09:52:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 02:52:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="213271096"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2019 02:52:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190923094004.15324-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fb9a1cfe-bf4c-cd17-1114-e00ba750242c@linux.intel.com>
Date: Mon, 23 Sep 2019 10:52:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923094004.15324-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Drop redundant
 list_del_init(&rq->sched.link)
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

Ck9uIDIzLzA5LzIwMTkgMTA6NDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSBhbWFsZ2Ft
YXRpbmcgdGhlIHF1ZXVlZCBhbmQgYWN0aXZlIGxpc3RzIGluIGNvbW1pdCA0MjJkN2RmNGYwOTAK
PiAoImRybS9pOTE1OiBSZXBsYWNlIGVuZ2luZS0+dGltZWxpbmUgd2l0aCBhIHBsYWluIGxpc3Qi
KSwgcGVyZm9ybWluZyBhCj4gaTkxNV9yZXF1ZXN0X3N1Ym1pdCgpIHdpbGwgcmVtb3ZlIHRoZSBy
ZXF1ZXN0IGZyb20gdGhlIGV4ZWNsaXN0cwo+IHByaW9yaXR5IHF1ZXVlLgo+IAo+IFJlZmVyZW5j
ZXM6IDQyMmQ3ZGY0ZjA5MCAoImRybS9pOTE1OiBSZXBsYWNlIGVuZ2luZS0+dGltZWxpbmUgd2l0
aCBhIHBsYWluIGxpc3QiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAx
IC0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKPiBpbmRleCAxYTJiNzExNTdmMDguLjgxZjE2YjhlYTBkMCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTI1MTQsNyArMjUxNCw2IEBAIHN0
YXRpYyB2b2lkIGV4ZWNsaXN0c19jYW5jZWxfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQo+ICAgCQlpbnQgaTsKPiAgIAo+ICAgCQlwcmlvbGlzdF9mb3JfZWFjaF9yZXF1
ZXN0X2NvbnN1bWUocnEsIHJuLCBwLCBpKSB7Cj4gLQkJCWxpc3RfZGVsX2luaXQoJnJxLT5zY2hl
ZC5saW5rKTsKPiAgIAkJCV9faTkxNV9yZXF1ZXN0X3N1Ym1pdChycSk7Cj4gICAJCQlkbWFfZmVu
Y2Vfc2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1FSU8pOwo+ICAgCQkJaTkxNV9yZXF1ZXN0X21hcmtf
Y29tcGxldGUocnEpOwo+IAoKVGhhbmtzISA6KQoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
