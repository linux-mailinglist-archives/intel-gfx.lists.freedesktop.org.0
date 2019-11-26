Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A821109DB1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 13:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B07B26E30E;
	Tue, 26 Nov 2019 12:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEDCB6E30E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 12:16:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 04:16:02 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="202700872"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 04:16:01 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191126065521.2331017-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1895e03c-22d5-6536-74ed-bda6c498c2f0@linux.intel.com>
Date: Tue, 26 Nov 2019 12:15:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126065521.2331017-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce nested
 prepare_remote_context() to a trylock
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

Ck9uIDI2LzExLzIwMTkgMDY6NTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBPbiBjb250ZXh0IHJl
dGlyaW5nLCB3ZSBtYXkgaW52b2tlIHRoZSBrZXJuZWxfY29udGV4dCB0byB1bnBpbiB0aGlzCj4g
Y29udGV4dC4gRWxzZXdoZXJlLCB3ZSBtYXkgdXNlIHRoZSBrZXJuZWxfY29udGV4dCB0byBtb2Rp
ZnkgdGhpcwo+IGNvbnRleHQuIFRoaXMgY3VycmVudGx5IGxlYWRzIHRvIGFuIEFCLUJBIGxvY2sg
aW52ZXJzaW9uLCBzbyB3ZSBuZWVkIHRvCj4gYmFjay1vZmYgZnJvbSB0aGUgY29udGVuZGVkIGxv
Y2ssIGFuZCByZXBlYXQuCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTczMgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5jIHwgNiArKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2NvbnRleHQuYwo+IGluZGV4IGVlOWQyYmNkMmMxMy4uNGZjYjk4Zjk2ZGE2IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+IEBAIC0zMTAsMTAgKzMxMCw4IEBA
IGludCBpbnRlbF9jb250ZXh0X3ByZXBhcmVfcmVtb3RlX3JlcXVlc3Qoc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlLAo+ICAgCUdFTV9CVUdfT04ocnEtPmh3X2NvbnRleHQgPT0gY2UpOwo+ICAgCj4g
ICAJaWYgKHJjdV9hY2Nlc3NfcG9pbnRlcihycS0+dGltZWxpbmUpICE9IHRsKSB7IC8qIHRpbWVs
aW5lIHNoYXJpbmchICovCj4gLQkJZXJyID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlX25lc3Rl
ZCgmdGwtPm11dGV4LAo+IC0JCQkJCQkgICAgICBTSU5HTEVfREVQVEhfTkVTVElORyk7Cj4gLQkJ
aWYgKGVycikKPiAtCQkJcmV0dXJuIGVycjsKPiArCQlpZiAoIW11dGV4X3RyeWxvY2soJnRsLT5t
dXRleCkpCj4gKwkJCXJldHVybiAtRUFHQUlOOwo+ICAgCj4gICAJCS8qIFF1ZXVlIHRoaXMgc3dp
dGNoIGFmdGVyIGN1cnJlbnQgYWN0aXZpdHkgYnkgdGhpcyBjb250ZXh0LiAqLwo+ICAgCQllcnIg
PSBpOTE1X2FjdGl2ZV9mZW5jZV9zZXQoJnRsLT5sYXN0X3JlcXVlc3QsIHJxKTsKPiAKClBsZWFz
ZSBqdXN0IGRyb3AgYSBzaG9ydCBjb21tZW50IGFib3ZlIHRoZSB0cnlsb2NrIHNpbmNlIHdpdGgg
Z2l0IGJsYW1lIAppdCBpcyBvZnRlbiB2ZXJ5IGhhcmQgdG8gZmluZCB0aGUgY29tbWl0LgoKUmV2
aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdh
cmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
