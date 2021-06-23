Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8982D3B1954
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 13:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3516E8C0;
	Wed, 23 Jun 2021 11:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D536E8B9;
 Wed, 23 Jun 2021 11:51:34 +0000 (UTC)
IronPort-SDR: vNbiXM7YTx0fP3PCaeEQ1Pvr34fMf7Opo038dYX7JGCK0d7XDDB6viWDFWK2CDbXnwVwWCOwhx
 STMwriT214uQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="186932554"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="186932554"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 04:51:33 -0700
IronPort-SDR: yYn5u8zKIxVdvbaHtMgQPoVazoEaaRNlwtI08bdGqpAB72PoN+CGa+sBFTEEGcVk7UDrsnVlQm
 YQxk9/cAu3ow==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="641958748"
Received: from asortkjx-mobl.ger.corp.intel.com (HELO [10.249.254.136])
 ([10.249.254.136])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 04:51:31 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210623112637.266855-1-matthew.auld@intel.com>
 <20210623112637.266855-3-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <a5c0dca7-a586-15b6-6004-09d320b1159e@linux.intel.com>
Date: Wed, 23 Jun 2021 13:51:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210623112637.266855-3-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gtt: ignore min_page_size for
 paging structures
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

Ck9uIDYvMjMvMjEgMToyNiBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IFRoZSBtaW5fcGFnZV9z
aXplIGlzIG9ubHkgbmVlZGVkIGZvciBwYWdlcyBpbnNlcnRlZCBpbnRvIHRoZSBHVFQsIGFuZAo+
IGZvciBvdXIgcGFnaW5nIHN0cnVjdHVyZXMgd2Ugb25seSBuZWVkIGF0IG1vc3QgNEsgYnl0ZXMs
IHNvIHNpbXBseQo+IGlnbm9yZSB0aGUgbWluX3BhZ2Vfc2l6ZSByZXN0cmljdGlvbnMgaGVyZSwg
b3RoZXJ3aXNlIHdlIG1pZ2h0IHNlZSBzb21lCj4gc2V2ZXJlIG92ZXJhbGxvY2F0aW9uIG9uIHNv
bWUgZGV2aWNlcy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0
LmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jCj4gaW5kZXggMDg0ZWE2NWQ1OWMw
Li42MWU4YThjMjUzNzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYwo+IEBA
IC0xNiw3ICsxNiw3IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICphbGxvY19wdF9sbWVt
KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBpbnQgc3opCj4gICB7Cj4gICAJc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiAgIAo+IC0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0
X2NyZWF0ZV9sbWVtKHZtLT5pOTE1LCBzeiwgMCk7Cj4gKwlvYmogPSBfX2k5MTVfZ2VtX29iamVj
dF9jcmVhdGVfbG1lbV93aXRoX3BzKHZtLT5pOTE1LCBzeiwgc3osIDApOwo+ICAgCS8qCj4gICAJ
ICogRW5zdXJlIGFsbCBwYWdpbmcgc3RydWN0dXJlcyBmb3IgdGhpcyB2bSBzaGFyZSB0aGUgc2Ft
ZSBkbWEtcmVzdgo+ICAgCSAqIG9iamVjdCB1bmRlcm5lYXRoLCB3aXRoIHRoZSBpZGVhIHRoYXQg
b25lIG9iamVjdF9sb2NrKCkgd2lsbCBsb2NrCgpJIHRoaW5rIGZvciB0aGlzIG9uZSB0aGUgbmV3
IGd0IG1pZ3JhdGlvbiBjb2RlIG1pZ2h0IGJyZWFrLCBiZWNhdXNlIAp0aGVyZSB3ZSBpbnNlcnQg
ZXZlbiBQVCBwYWdlcyBpbnRvIHRoZSBHVFQsIHNvIGl0IG1pZ2h0IG5lZWQgYSBzcGVjaWFsIApp
bnRlcmZhY2U/IFJhbSBpcyBsb29raW5nIGF0IHN1cHBvcnRlciBsYXJnZXIgR1BVIFBURSBzaXpl
cyB3aXRoIHRoYXQgY29kZS4uCgovVGhvbWFzCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
