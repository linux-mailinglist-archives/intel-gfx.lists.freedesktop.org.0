Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C8CF1A42
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 16:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2926EDAB;
	Wed,  6 Nov 2019 15:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D037C6EDAB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 15:42:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 07:42:42 -0800
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="205869640"
Received: from cstylian-mobl.ger.corp.intel.com (HELO [10.251.95.7])
 ([10.251.95.7])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 06 Nov 2019 07:42:41 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191106144155.25727-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <de2d913d-f02c-c18e-9090-ff054460b63a@linux.intel.com>
Date: Wed, 6 Nov 2019 15:42:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106144155.25727-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Fix error path to unlock if
 the GEM context is closed
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA2LzExLzIwMTkgMTQ6NDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGVuIGluc2lkZSB0
aGUgbG9jaywgcmVtZW1iZXIgdG8gdW5sb2NrIGV2ZW4gaWYgeW91IHdhbnQgdG8gbGVhdmUKPiBl
YXJseS4KPiAKPiBSZXBvcnRlZC1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFj
bGUuY29tPgo+IEZpeGVzOiBhNGU3Y2NkYWMzOGUgKCJkcm0vaTkxNTogTW92ZSBjb250ZXh0IG1h
bmFnZW1lbnQgdW5kZXIgR0VNIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
b250ZXh0LmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMKPiBpbmRleCBhMDZjYzhlNjMyODEuLjc3NGQ3MWIxZWE5YiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+IEBAIC0xMTY4LDcgKzExNjgsNyBA
QCBzdGF0aWMgaW50IHNldF9wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxl
X3ByaXYsCj4gICAKPiAgIAlpZiAoaTkxNV9nZW1fY29udGV4dF9pc19jbG9zZWQoY3R4KSkgewo+
ICAgCQllcnIgPSAtRU5PRU5UOwo+IC0JCWdvdG8gb3V0Owo+ICsJCWdvdG8gdW5sb2NrOwo+ICAg
CX0KPiAgIAo+ICAgCWlmICh2bSA9PSByY3VfYWNjZXNzX3BvaW50ZXIoY3R4LT52bSkpCj4gCgpS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJl
Z2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
