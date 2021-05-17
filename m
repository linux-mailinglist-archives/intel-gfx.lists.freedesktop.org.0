Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D87A2386B64
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 22:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617666E03A;
	Mon, 17 May 2021 20:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F44E6E03A
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 20:31:06 +0000 (UTC)
IronPort-SDR: ZOzOwf8p+cMFi+H7xgsGNa+l9633zEraakvW/faABYgxb+V6Fj37EetDSVf4c2Ad72ITT8osVI
 hoNOvKKK2iQg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="221604502"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="221604502"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 13:31:06 -0700
IronPort-SDR: mdU1rkS0G7MNSwyZ/QliySfqroeLDgEZYsaPMDThLLcCH9C17H9kuBLRButNK9bfRUsoDMSUXV
 pGMq7m7hHjVA==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472573765"
Received: from sudhirk1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.50.192])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 13:31:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>, "Vivi\,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <d2977a3b9dfe650aa1600b507c3902c884afc2d9.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210517202117.179303-1-jose.souza@intel.com>
 <d2977a3b9dfe650aa1600b507c3902c884afc2d9.camel@intel.com>
Date: Mon, 17 May 2021 23:31:00 +0300
Message-ID: <87o8d9f6gr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH CI] drm/i915: Initialize err in remap_io_sg()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxNyBNYXkgMjAyMSwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YUBpbnRlbC5jb20+
IHdyb3RlOgo+IFJvZHJpZ28sIEphbmk6IFNvICJpOTE1OiBmaXggcmVtYXBfaW9fc2cgdG8gdmVy
aWZ5IHRoZSBwZ3Byb3QiIHdhcyBub3QgbWVyZ2VkIGludG8gYW55IGRybS1pbnRlbCBicmFuY2gs
IGhvdyBzaG91bGQgSSBtZXJnZSB0aGlzIGFmdGVyIGdldCBDSSBncmVlbgo+IGxpZ2h0PwoKSSB0
aGluayBSb2RyaWdvIHNob3VsZCBkbyBhIGJhY2ttZXJnZS4KCkJSLApKYW5pLgoKCj4KPiBPbiBN
b24sIDIwMjEtMDUtMTcgYXQgMTM6MjEgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3Jv
dGU6Cj4+IElmIHRoZSBkbyB3aGlsZSBsb29wIGJyZWFrcyBpbiAnaWYgKCFzZ19kbWFfbGVuKHNn
bCkpJyBpbiB0aGUgZmlyc3QKPj4gaXRlcmF0aW9uLCBlcnIgaXMgdW5pbml0aWFsaXplZCBjYXVz
aW5nIGEgd3JvbmcgY2FsbCB0byB6YXBfdm1hX3B0ZXMoKS4KPj4gCj4+IEJ1dCB0aGF0IGlzIGlt
cG9zc2libGUgdG8gaGFwcGVuIGFzIGEgc2NhdHRlcmxpc3QgbXVzdCBoYXZlIGF0IGxlYXN0Cj4+
IG9uZSB2YWxpZCBzZWdtZW50Lgo+PiBBbnl3YXlzIHRvIGF2b2lkIG1vcmUgcmVwb3J0cyBmcm9t
IHN0YXRpYyBjaGVja2VycyBpbml0aWFsaXppbmcgcmV0Cj4+IGhlcmUuCj4+IAo+PiBGaXhlczog
YjEyZDY5MWVhNWUwICgiaTkxNTogZml4IHJlbWFwX2lvX3NnIHRvIHZlcmlmeSB0aGUgcGdwcm90
IikKPj4gUmV2aWV3ZWQtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+PiBDYzog
Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbWVzIEF1
c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9tbS5jIHwgMiArLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9tbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tbS5jCj4+IGluZGV4
IDRjOGNkMDhjNjcyZC4uMjU1NzZmYTczZmYwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X21tLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tbS5j
Cj4+IEBAIC00Nyw3ICs0Nyw3IEBAIGludCByZW1hcF9pb19zZyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1
Y3QgKnZtYSwKPj4gIAkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2wsIHJlc291cmNlX3NpemVfdCBp
b2Jhc2UpCj4+ICB7Cj4+ICAJdW5zaWduZWQgbG9uZyBwZm4sIGxlbiwgcmVtYXBwZWQgPSAwOwo+
PiAtCWludCBlcnI7Cj4+ICsJaW50IGVyciA9IDA7Cj4+ICAKPj4gIAkvKiBXZSByZWx5IG9uIHBy
ZXZhbGlkYXRpb24gb2YgdGhlIGlvLW1hcHBpbmcgdG8gc2tpcCB0cmFja19wZm4oKS4gKi8KPj4g
IAlHRU1fQlVHX09OKCh2bWEtPnZtX2ZsYWdzICYgRVhQRUNURURfRkxBR1MpICE9IEVYUEVDVEVE
X0ZMQUdTKTsKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50
ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
