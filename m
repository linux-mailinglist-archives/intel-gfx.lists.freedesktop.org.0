Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703EA12B8C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 12:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B177689BAC;
	Fri,  3 May 2019 10:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 401B089BAC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 10:36:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 03:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="140940253"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2019 03:36:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <48f515a3-9327-e6cb-59c2-585fd7741124@linux.intel.com>
Date: Fri, 3 May 2019 11:36:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501114541.10077-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915/hangcheck: Track context
 changes
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

Ck9uIDAxLzA1LzIwMTkgMTI6NDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBHaXZlbiBzdWZmaWNp
ZW50IHByZWVtcHRpb24sIHdlIG1heSBzZWUgYSBidXN5IHN5c3RlbSB0aGF0IGRvZXNuJ3QKPiBh
ZHZhbmNlIHNlcW5vIHdoaWxlIHBlcmZvcm1pbmcgd29yayBhY3Jvc3MgbXVsdGlwbGUgY29udGV4
dHMsIGFuZCBnaXZlbgo+IHN1ZmZpY2llbnQgcGF0aG9sb2d5IG5vdCBldmVuIG5vdGljZSBhIGNo
YW5nZSBpbiBBQ1RIRC4gV2hhdCBkb2VzIGNoYW5nZQo+IGJldHdlZW4gdGhlIHByZWVtcHRpbmcg
Y29udGV4dHMgaXMgdGhlaXIgUklORywgc28gdGFrZSBub3RlIG9mIHRoYXQgYW5kCj4gdHJlYXQg
YSBjaGFuZ2UgaW4gdGhlIHJpbmcgYWRkcmVzcyBhcyBiZWluZyBhbiBpbmRpY2F0aW9uIG9mIGZv
cndhcmQKPiBwcm9ncmVzcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfdHlwZXMuaCB8ICAxICsKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hh
bmdjaGVjay5jICAgIHwgMTIgKysrKysrKysrLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKPiBpbmRleCA5ZDY0ZTMzZjg0MjcuLmMwYWIxMWIxMmUx
NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlw
ZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5o
Cj4gQEAgLTUzLDYgKzUzLDcgQEAgc3RydWN0IGludGVsX2luc3Rkb25lIHsKPiAgIAo+ICAgc3Ry
dWN0IGludGVsX2VuZ2luZV9oYW5nY2hlY2sgewo+ICAgCXU2NCBhY3RoZDsKPiArCXUzMiBsYXN0
X3Jpbmc7Cj4gICAJdTMyIGxhc3Rfc2Vxbm87Cj4gICAJdTMyIG5leHRfc2Vxbm87Cj4gICAJdW5z
aWduZWQgbG9uZyBhY3Rpb25fdGltZXN0YW1wOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2hhbmdjaGVjay5jCj4gaW5kZXggZTVlYWEwNmZlNzRkLi43MjFhYjc0YTM4MmYgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYwo+IEBAIC0yNyw2ICsy
Nyw3IEBACj4gICAKPiAgIHN0cnVjdCBoYW5nY2hlY2sgewo+ICAgCXU2NCBhY3RoZDsKPiArCXUz
MiByaW5nOwo+ICAgCXUzMiBzZXFubzsKPiAgIAllbnVtIGludGVsX2VuZ2luZV9oYW5nY2hlY2tf
YWN0aW9uIGFjdGlvbjsKPiAgIAl1bnNpZ25lZCBsb25nIGFjdGlvbl90aW1lc3RhbXA7Cj4gQEAg
LTEzNCw2ICsxMzUsNyBAQCBzdGF0aWMgdm9pZCBoYW5nY2hlY2tfbG9hZF9zYW1wbGUoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgewo+ICAgCWhjLT5hY3RoZCA9IGludGVsX2Vu
Z2luZV9nZXRfYWN0aXZlX2hlYWQoZW5naW5lKTsKPiAgIAloYy0+c2Vxbm8gPSBpbnRlbF9lbmdp
bmVfZ2V0X2hhbmdjaGVja19zZXFubyhlbmdpbmUpOwo+ICsJaGMtPnJpbmcgPSBFTkdJTkVfUkVB
RChlbmdpbmUsIFJJTkdfU1RBUlQpOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZCBoYW5nY2hl
Y2tfc3RvcmVfc2FtcGxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiBAQCAtMTQx
LDE4ICsxNDMsMjIgQEAgc3RhdGljIHZvaWQgaGFuZ2NoZWNrX3N0b3JlX3NhbXBsZShzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICB7Cj4gICAJZW5naW5lLT5oYW5nY2hlY2suYWN0
aGQgPSBoYy0+YWN0aGQ7Cj4gICAJZW5naW5lLT5oYW5nY2hlY2subGFzdF9zZXFubyA9IGhjLT5z
ZXFubzsKPiArCWVuZ2luZS0+aGFuZ2NoZWNrLmxhc3RfcmluZyA9IGhjLT5yaW5nOwo+ICAgfQo+
ICAgCj4gICBzdGF0aWMgZW51bSBpbnRlbF9lbmdpbmVfaGFuZ2NoZWNrX2FjdGlvbgo+ICAgaGFu
Z2NoZWNrX2dldF9hY3Rpb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgCQkg
ICAgIGNvbnN0IHN0cnVjdCBoYW5nY2hlY2sgKmhjKQo+ICAgewo+IC0JaWYgKGVuZ2luZS0+aGFu
Z2NoZWNrLmxhc3Rfc2Vxbm8gIT0gaGMtPnNlcW5vKQo+IC0JCXJldHVybiBFTkdJTkVfQUNUSVZF
X1NFUU5POwo+IC0KPiAgIAlpZiAoaW50ZWxfZW5naW5lX2lzX2lkbGUoZW5naW5lKSkKPiAgIAkJ
cmV0dXJuIEVOR0lORV9JRExFOwo+ICAgCj4gKwlpZiAoZW5naW5lLT5oYW5nY2hlY2subGFzdF9y
aW5nICE9IGhjLT5yaW5nKQo+ICsJCXJldHVybiBFTkdJTkVfQUNUSVZFX1NFUU5POwo+ICsKPiAr
CWlmIChlbmdpbmUtPmhhbmdjaGVjay5sYXN0X3NlcW5vICE9IGhjLT5zZXFubykKPiArCQlyZXR1
cm4gRU5HSU5FX0FDVElWRV9TRVFOTzsKPiArCj4gICAJcmV0dXJuIGVuZ2luZV9zdHVjayhlbmdp
bmUsIGhjLT5hY3RoZCk7Cj4gICB9Cj4gICAKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKVGhpcyBzaG91bGQgYmUgYXNzb2NpYXRlZCB3
aXRoIGVuZ2luZSBzZXFubyByZW1vdmFsLCByaWdodD8gTm90IHN1cmUgaWYgCml0IHRyaWdnZXJz
IGluIHJlYWxpdHkgdG8gYmUgcmVhbGx5IG5lZWRlZC4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
